#!/usr/bin/perl

use strict;
use Getopt::Long;
use File::Path;
use File::Spec;
use File::Find;
use Cwd 'abs_path';
use CoanLib;

my $pkgdir;
my $execdir = "../src";
my $keep = 0,
my $help;
my $verbosity = 'progress';
my $windows_exe;
my $bail;

my $spindir;
my $arg_spindir;
my $infiles = 0;
my $outfiles = 0;
my @infiles = ();
my @outfiles = ();
my @in_dirs = ();
my $fails = 0;
my @extensions = windows() ? ('h') : ('c','cpp','h');
my $stderr_file = "stderr.temp.txt";
my $stdout_file = "stdout.temp.txt";
my $in_file_list = "spin-test-infiles.txt";
my $out_file_list = "spin-test-outfiles.txt";
my $diagnostic = "abend 0x0100e: The spin directory cannot include or be included by or identical with any input directory";
my $epilogue = "progress 0x02101: Completed ABNORMALLY, exit code 0x08";

sub gather_in_file();
sub gather_out_file();
sub run(@);
sub slurp($);
sub verify_spin_files;
sub check_test_result(@);

my %optmap = (	'pkgdir' => \$pkgdir,
				'execdir' => \$execdir,
				'keep' => \$keep,
				'help' => \$help,
				'verbosity' => \$verbosity,
				'bail' => \$bail,
                'winexe' => \$windows_exe);				

my $prog = "coan_spin_tester";

END {
    if ( -d "$spindir") {	
	   rmtree("$spindir") unless $keep;
	}   
	unless($fails || $keep) {
		unlink("$stderr_file") if ( -f "$stderr_file");
		unlink("$stdout_file") if ( -f "$stdout_file");
		unlink ($in_file_list), if (-f $in_file_list);
		unlink ($out_file_list), if (-f $out_file_list);
	}
}

set_prog($prog);

set_usage(
	"$prog: Exercise coan in generating spins. " .
	"Usage:\n" .
	"$prog [--verbosity=LEVEL] [--pkgdir PKGDIR] [--execdir EXECDIR] [--keep] " .
	"[--bail] [--winexe]\n" .
	"$prog --help\n" .
	"Arguments:\n" .
	"-v | --verbosity LEVEL   Display diagnostics with severity >= LEVEL, where " .
    "LEVEL = 'progress', 'info', 'warning', 'error' or 'fatal. Default = 'progress'\n" . 
	"-h | --help              Display this information on stdout.\n" .
	"-p | --pkgdir PKGDIR     The coan package directory. Default '..'\n" .
	"-e | --execdir EXECDIR   Directory beneath PKGDIR from which to run coan: Default 'src'.\n " .
	"-k | --keep              Do not delete the directory tree or console logs at exit.\n" .
	"-b | --bail			  Quit at the first test failure.\n" .
	"-w | --winexe          The coan executable is a native windows executable\n");


GetOptions(	\%optmap,
			'pkgdir=s',
			'execdir=s',
			'keep!',
			'help!',
			'verbosity=s',
			'bail!',
            'winexe!')  or usage_error();

set_verbosity($verbosity);

if ($help) {
	help();
	exit(0);
}

unlink ($in_file_list), if (-f $in_file_list);
unlink ($out_file_list), if (-f $out_file_list);

unless (defined($pkgdir)) {
	if (defined($ENV{'COAN_PKGDIR'})) {
		$pkgdir = "$ENV{'COAN_PKGDIR'}";
	}
	else {
		$pkgdir = File::Spec->updir();
	}
}

$execdir = "$pkgdir/src" unless (defined($execdir));

$pkgdir = abs_path($pkgdir);
$execdir = abs_path($execdir);
$spindir = File::Spec->catfile("$pkgdir","test_coan","spin");

system("chmod -R +w $pkgdir") unless windows();

if ($windows_exe && cygwin()) {
    $arg_spindir = cyg2win($spindir);
}
else {
    $arg_spindir = $spindir;    
}

rmtree($spindir);
# Get list of the .c, .h and .cpp files in the package dir
push(@in_dirs,(abs_path(File::Spec->catfile("$pkgdir","src")),
				abs_path(File::Spec->catfile("$pkgdir","test_coan","test_cases"))));
foreach my $in_dir (@in_dirs) { 
	find(\&gather_in_file,("$in_dir"));
}

$infiles = @infiles;

bail(1,"*** No test data found! Bailing out confused ***") if $infiles == 0;
progress("*** Spin Test 1: to process $infiles  files ***");
# Testing input of several directory structures containing eligible files
run("$execdir/coan spin  --keepgoing -DWINDOWS --verbose --filter " . join(',',@extensions) .
	" --dir $arg_spindir " . join(' ',@in_dirs) . " 2> $stderr_file 1> $stdout_file");
progress("*** Done Test 1 ***");
verify_spin_files();
check_test_result(1);

rmtree($spindir);
progress("*** Spin Test 2: to process $infiles files ***");
# Testing input of the same eligible files as a flat list.
run("$execdir/coan spin  --keepgoing -DWINDOWS --verbose --filter " . join(',',@extensions) .
	" --dir $arg_spindir " . join(' ',@infiles) . " --keepgoing 2> $stderr_file 1> $stdout_file");
progress("*** Done Test 2 ***");
verify_spin_files();
check_test_result(2);

rmtree($spindir);
progress("*** Spin Test 3: to process $infiles files ***");
# Reapeat test 1 with a --prefix
run("$execdir/coan spin  --keepgoing -DWINDOWS --verbose --filter " . join(',',@extensions) .
	" --prefix $pkgdir --dir $arg_spindir " . 
	join(' ',@infiles) . " --keepgoing 2> $stderr_file 1> $stdout_file");
progress("*** Done Test 3 ***");
verify_spin_files($pkgdir);
check_test_result(3);


$infiles = 0;

progress("*** Spin Test 4: to process $infiles files and abort ***");
# Testing detection of spin dir same as an input dir
run("$execdir/coan spin  --keepgoing -DWINDOWS --verbose --filter " . join(',',@extensions) .
	" --dir $arg_spindir $arg_spindir 2> $stderr_file 1> $stdout_file");
progress("*** Done Test 4 ***");
check_test_result(4,$diagnostic,$epilogue);

my $bad_dir = File::Spec->catfile($arg_spindir,"src");

progress("*** Spin Test 5: to process $infiles files and abort ***");
# Testing detection of spin dir parent of an input dir
run("$execdir/coan spin  --keepgoing -DWINDOWS --verbose --filter " . join(',',@extensions) .
	" --dir $arg_spindir $bad_dir 2> $stderr_file 1> $stdout_file");
progress("*** Done Test 5***");
check_test_result(5,$diagnostic,$epilogue);

progress("*** Spin Test 6: to process $infiles files and abort ***");
# Testing detection of spin dir child of an input dir
run("$execdir/coan spin  --keepgoing -DWINDOWS --verbose --filter " . join(',',@extensions) .
	" --dir $bad_dir $arg_spindir 2> $stderr_file 1> $stdout_file");
progress("*** Done Test 6 ***");
check_test_result(6,$diagnostic,$epilogue);

exit($fails);

sub check_test_result(@)
{
	my $fail = 0;
	my $test = shift;
	my $pattern = shift;
	my $stderr_text = slurp("$stderr_file");
	if ($pattern) {
		while ($pattern and !$fail) {
			if ($stderr_text !~ m/$pattern/) {
				$fail = 1;
			}
			$pattern = shift;
		}	
	}
	elsif ($stderr_text !~ m/info 0x02201: $infiles out of $infiles input files were reached/) {
		$fail = 1;
	}
	if ($fail) {
		++$fails;
	}
	if ($fails) {
		error("*** Spin test $test: Failed! See $stderr_file ****");
		if ($bail) {
		  exit($fails);
    	}
	}
}

sub gather_in_file()
{
	my $file = $File::Find::name;
	if (windows()) {
		#IMK $file =~ s/^(.:)//;
		$file =~ s/\//\\/g;
	}
	$file =~ m/\.(.{1,3})$/;
	my $extension = $1;
	push(@infiles,"\"$file\"") if $1 && grep(/^$extension$/,@extensions);
}

sub gather_out_file()
{
	my $file = $File::Find::name;
	if (windows()) {
		$file =~ s/\//\\/g;
	}
	$file =~ m/\.(.{1,3})$/;
	my $extension = $1;
	push(@outfiles,"\"$file\"") if $1 && grep(/^$extension$/,@extensions);
}

sub run(@)
{
	my @cmd = @_;
	progress("@cmd");
	my $ret = system(@cmd);
	return $ret >> 8;
}

sub slurp($)
{
	my $terminator = $/;
	open IN,"<$_[0]" or die("Cannot open file \"$_[0]\" for reading\n");
	undef $/;
	my $text = <IN>;
	close(IN);
	$/ = $terminator;
	return $text;
}

sub verify_spin_files($)
{
	my $prefix = shift;
	$outfiles = 0;
	@outfiles = ();
	if (windows()) {
		$prefix =~ s/\//\\\\/g;
		$prefix =~ s/^(.:)//;

	}
	find(\&gather_out_file,("$spindir"));
	foreach (@infiles) {
		my $infile = $_;
		my $quotes = ($infile =~ s/\"//g);
		if (windows()) {
			$infile =~ s/^(.:)//;
		}
		if ($prefix) {
			$infile =~ s/^$prefix//;
		}
		$infile =~ s/^\///;
		$infile = File::Spec->catfile($spindir,$infile);
		if ($quotes) {
			$infile = "\"$infile\"";
		}
		foreach my $outfile (@outfiles) {
			$outfiles += ($infile eq $outfile);
		}
	}
	if ($outfiles != $infiles) {
		open INFILES, ">$in_file_list" or die("Cannot open file \"$in_file_list\" for writing\n");
		print INFILES join("\n",@infiles) . "\n";
		close(INFILES);
		open OUTFILES, ">$out_file_list" or die("Cannot open file \"$out_file_list\" for writing\n");
		print OUTFILES join("\n",@outfiles) . "\n";
		close(OUTFILES);
		error("*** Failed to name-match output files with input files: See $in_file_list and $in_file_list ****");
		++$fails;
	}
}


