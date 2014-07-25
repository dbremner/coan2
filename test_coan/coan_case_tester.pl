#!/usr/bin/perl

use strict;
use Getopt::Long;
use CoanLib;
use File::Path;
use File::Spec;
use File::Copy;
use Cwd 'abs_path';

my $verbosity;
my $pkgdir;
my $execdir = "../src";
my $help = 0;
my $bail = 0;
my $windows_exe;
my $one_run_args;
my $rc = 0;
my $testdir = "test_cases";
my %optmap = (	'verbosity' => \$verbosity,
				'pkgdir' => \$pkgdir,
				'execdir' => \$execdir,
				'help' => \$help,
				'bail' => \$bail,
				'onerun' => \$one_run_args,
				'rc' => \$rc,
                'winexe' => \$windows_exe);

my $prog = "coan_case_tester";
my $tests = 0;
my $fails = 0;
my $passes = 0;
my @testfiles;

sub parse_testfile($);
sub compose_test_command($$$);
sub run_test($$$$$$$);
sub parse_syscode_from_stderr($);
sub verify_output($$$);
sub match_words($$);
sub get_wordsize();
sub cat($);

set_prog($prog);
set_usage(
		"$prog: - Run a coan test case\n" .
		"Usage:\n" .
		"$prog [--pkgdir PKGDIR] [--execdir DIR] [--verbosity=LEVEL] [--bail ] [--winexe] [--onerun=ARGS -rc=N] [TESTFILE...]\n" .
		"$prog --help\n" .
		"Arguments:\n" .
		"-h | --help              Display this information on stdout.\n" .
		"-p | --pkgdir PKGDIR     The coan package directory. Default '..'\n" .
		"-e | --execdir EXECDIR   Directory from which to run coan: Default '../src'.\n " .
		"-v | --verbosity LEVEL   Display diagnostics with severity >= LEVEL, where " .
    	"LEVEL = 'progress', 'info', 'warning', 'error' or 'fatal. Default = 'progress'\n" . 
		"-b | --bail              Bail at the first error. " .
		"Default: Keep going through errors.\n" .
		"-o | --onerun=ARGS       Pass all test files to coan in a single run to be processed with arguments ARGS\n" .
		"Default: Run each test file individually with argments parsed from the test file.\n" .
		"-r | --rc=N              Expect return code N with --onerun. Default=0\n" .		
		"-w | --winexe            The coan executable is a native windows executable.\n" .
		"TESTFILE\t\tThe test case specification file.\n" .
		"If TESTFILE... is absent then PKGDIR/test_coan/test_cases/*.c is assumed\n" . 
		"\tTESTFILE contains sample code on which coan is to be tested. " .
		"If there exists a file called TESTFILE.expect then that file contains " .
		"the code that coan is expected to emit from the test case. " .
		"Surplus whitespace is ignored for the purpose of " .
		"comparing TESTFILE with TESTFILE.expect.\n" .
		"\tTESTFILE has a mandatory header comment of the form:\n" .
		"\t\t/**ARGS:\n" .
		"\t\t\tARGS_BODY\n" .
		"\t\t*/\n" .
		"where ARGS_BODY comprises the commandline options to be passed to " .
		"coan.\n" .
		"\tOptionally, TESTFILE also has a header comment of the form:\n" .
		"\t\t/**ALTFILES:\n" .
		"\t\t\tFILENAME1 [FILENAME2...]\n" .
		"\t\t*/\n" .
		"The listed files will be input to coan with the arguments " .
		"ARGS_BODY instead of TESTFILE itself.\n" .
		"If FILEENAMEn is relative then it is assumed to be relative to PKGDIR/test_coan.\n" .
		"\tOptionally, TESTFILE also has a header comment of the form:\n" .
		"\t\t/**SYSCODE:\n" .
		"\t\t\t[=]FLAGS\n" .
		"\t\t*/\n" .
		"where FLAGS is a bitset to be satisfied by the coan return code " .
		"from running the test case. If the prefix `=' is present then the " .
		"return code must exactly match FLAGS. Otherwise the bitset " .
		"is satisfied provided that all bits set in FLAGS are set in the " .
		"return code. FLAGS may be a decimal numeral or an |-combination " .
		"of decimal numerals.\n");

GetOptions(\%optmap, 'verbosity=s', 'pkgdir=s', 'execdir=s', 'help!', 'bail!', 'onerun=s', 'rc=s', 'winexe!')  or usage_error();

if ($help) {
	help();
	exit(0);
}

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

system("chmod -R +w $pkgdir") unless windows();
	
if (@ARGV != 0) {
	@testfiles = <@ARGV>;
}
else {
	@testfiles = <$pkgdir/test_coan/test_cases/*.c>;
}

bail(1,"*** No tests found! ***") unless(@testfiles);

my $executable = "$execdir/coan";

my $archbits = get_wordsize();
bail(1,"*** Cannot determine wordsize of this machine! ***") unless($archbits);

unless($one_run_args) {
	$tests = @testfiles;
	foreach my $testfile (@testfiles) {
		my ($test_args,$test_syscode,$test_exact,$no_output,$test_altfiles,$tally_lines) =
			parse_testfile($testfile);    	
		if ($test_args && !run_test($testfile,
						$test_args,
						$test_syscode,
						$test_exact,
						$no_output,
						$test_altfiles,
						$tally_lines)) {
			last if (++$fails && $bail);
		}
	}
} else {
	foreach my $testfile (@testfiles) {
		unlink glob "$testfile.coan.test.bak.*";
	}
	$tests = 1;
	$one_run_args =~ s/^\s+//;
	$one_run_args =~ s/\s+$//;
	if ($one_run_args =~ /^source /) {
		$one_run_args .= " --replace --backup .coan.test.bak";
	}
	if (!run_test(join(' ',@testfiles),$one_run_args,$rc,1,0,"",0)) {
		++$fails;
	}	
}


print "$fails out of $tests failed\n", if (!$bail || !$fails);

exit($fails);


sub get_wordsize()
{
	my ($prog,$wordsize);
	if (windows()) {
		$prog = ".\\wordsize.exe";
	}
	else {
		$prog = "./wordsize";
	}
	bail(1,"*** Program \"$prog\" not found in test_coan. Have you built wordsize.c? ***"), unless ( -x "$prog");
	$wordsize = `$prog`;
	return $wordsize * 8;
}


sub parse_syscode_from_stderr($)
{
	my $stderr = shift;
	my $syscode = "";
	open IN,"<$stderr" or bail(1,"*** Cannot open \"$stderr\" for reading ***");
	my $line = "";
	while ($line = <IN>) {
		chomp $line;
		if ($line =~ m/exit code (0x[a-fA-F0-9]+)/) {
			$syscode = $1;
			last;
		}
	}
	close(IN);
	return $syscode;
}

sub match_words($$)
{
	my ($actual_word,$expected_word) = @_;
	return 1 if ($actual_word eq $expected_word);
	return 0 unless ($expected_word =~ m#^\./(test_cases/(altfiles/)?test\d{4}(-\d)?\.c)(\(\d+\):*)$#);
	my $filename = $1;
	my $lineno = $4;
	my $expected_len = length($expected_word) - 2;
	my $actual_len = length($actual_word);
	$filename =~ s#/#\\#g if ($windows_exe);
	my $substring = substr($actual_word,$actual_len - $expected_len);
	if (substr($actual_word,$actual_len - $expected_len) eq "$filename$lineno") {
		$filename = "$pkgdir/test_coan/$filename";
		if ($windows_exe) {
    	   $filename =~ s#/#\\#g;
    	   $filename =~ s#\\cygdrive\\(\w)\\#$1:\\#g if cygwin();
		}
		return 1 if ("$actual_word" eq "$filename$lineno");		
	}
	return 0;
}

sub verify_output($$$)
{
	my ($expected_output,$output,$tally_lines) = @_;
	if ($tally_lines) {
		my @expected_lines = ();
		my @output_lines = ();
		open IN, "<$expected_output" or
			bail(1,"*** Cannot open \"$expected_output\"for reading ***");
		@expected_lines = <IN>;
		close(IN);
		open IN, "<$output" or
			bail(1,"*** Cannot open \"$output\" for reading***");
		@output_lines = <IN>;
		close(IN);
		return 0, if $#expected_lines != $#output_lines;
	}
	local $/;
	open IN, "<$expected_output" or
		bail(1,"*** Cannot open \"$expected_output\"for reading ***");
	my $expected_text = <IN>;
	close(IN);
	open IN, "<$output" or
		bail(1,"*** Cannot open \"$output\" for reading***");
	my $actual_text = <IN>;
	close(IN);
	my @expected_words = split(/\s+/,"$expected_text");
	my @actual_words = split(/\s+/,"$actual_text");
	my $awords = @actual_words;
	my $ewords = @expected_words;
	return 0 if (@actual_words != @expected_words);
	for (my $word = 0; $word < @actual_words; ++$word) {
		return 0 unless
			match_words($actual_words[$word],$expected_words[$word]);
	}
	return 1;
}

sub run_test($$$$$$$)
{
	my (	$testfiles,
			$test_args,
			$test_syscode,
			$test_exact,
			$no_output,
			$test_altfiles,
			$tally_lines) = @_;

	my ($test_command,$stderr_file,$stdout_file) = compose_test_command($test_args,
											$testfiles,
											$test_altfiles);
	my $syscode_correct = 0;
	my $output_correct = 1;

	progress("*** Running test file(s) \"$testfiles\"");
	progress("*** ARGS: $test_args");
	if ($test_altfiles) {
		progress("*** ALTFILES: $test_altfiles");
	}
	if ($test_exact) {
		progress("*** SYSCODE: = 0x%04x",$test_syscode);
	}
	else {
		progress("*** SYSCODE: match 0x%04x",$test_syscode);
	}
	if (!$windows_exe) {
		system($test_command);
	}
	else {
		# For Windows under Wine, need to wrap the test command in a batch file
		# to avoid the system() call misinterpreting coan commandlines
		# that piping or redirection characters.  
		open TST,">coan_test_run.bat" or die "$!\n";
		print TST "\@$test_command\n";
		close TST;
		system("coan_test_run.bat");
		unlink "coan_test_run.bat";
	}
	my $actual_syscode = parse_syscode_from_stderr($stderr_file);
	bail(1,"*** Could not parse system code from $stderr_file ***") unless ($actual_syscode);
	$actual_syscode = hex($actual_syscode); 
	if ($test_exact) {
		$syscode_correct = ($actual_syscode == $test_syscode);
	}
	else {
		$syscode_correct = (($actual_syscode & $test_syscode) == $actual_syscode);
	}
	if ($test_args =~ /--replace/) {
		foreach my $testfile (split(/ /,$testfiles)) {
			$output_correct = verify_output("$testfile.expect","$testfile",0);
			copy("$testfile","$testfile.output") or
				die("Cannot copy \"$testfile\" -> \"$testfile.output\": $!"); 
			copy("$testfile.coan.test.bak",$testfile) or
				die("Cannot copy \"$testfile.coan.test.bak\" -> \"$testfile\": $!"); 
			unlink("$testfile.coan.test.bak");
			last, unless ($output_correct);			
		}
	}
	else {
		$output_correct = $no_output ? 1 : verify_output("$testfiles.expect","$testfiles.output",$tally_lines);
	}
	error("*** FAILED test file(s) \"%s\". Unexpected system code 0x%04x",
			$testfiles,$actual_syscode)
		unless $syscode_correct;
	error( "*** FAILED test file(s) \"$testfiles\". Unexpected output")
		unless $output_correct;
	if ($syscode_correct && $output_correct) {
		progress("*** PASSED");
		return 1;
	} else {
		info(">>> Begin failing output >>>");
		cat($stdout_file);
		info("<<< End failing output <<<");
		
	}
	return 0;
}

sub compose_test_command($$$)
{
	my ($test_args,$testfiles,$test_altfiles) = @_;
	my ($test_command,$stdout_file,$stderr_file);
	my $testfile = $testfiles;
	if ($test_altfiles) {
		my @altfiles = split(/\s/,$test_altfiles);
		foreach (@altfiles) {
			$_ = File::Spec->rel2abs($_,"$pkgdir/test_coan") unless (File::Spec->file_name_is_absolute($_));
		}
		$testfiles = join(' ',@altfiles);
	}
	if ($windows_exe) {
	   $testfiles =~ s#/#\\\\#g;
	   $testfiles =~ s#\\\\cygdrive\\\\(\w)\\\\#$1:\\\\#g;
    	}
	if ($test_args =~ /--replace/) {
		$stdout_file = "coan.stdout.tmp";
		$stderr_file = "coan.stderr.tmp";
	}
	else {
		$stdout_file = "$testfile.output";
		$stderr_file = "$testfile.stderr";
	}
	$test_command = "\"$executable\" $test_args --verbose $testfiles 1>$stdout_file 2>$stderr_file";	
	return ($test_command,$stderr_file,$stdout_file);
}

sub parse_testfile($)
{
	my $testfile = shift;
	my $test_args = "";
	my $test_syscode = 0;
	my $test_exact = 0;
	my $no_output = 0;
	my $test_altfiles = "";
	my $tally_lines = 0;
	my $line_end = $/;

	open (TESTFILE, "<$testfile") or
		bail(1, "*** Cannot open file \"$testfile\" for reading ***");
	undef $/;
	my $text = <TESTFILE>;
	close TESTFILE;
	$/ = $line_end;

	if ($text =~ m#\/\*\*ARGS:\s*(.+?)\s*\*\/#) {
		$test_args = $1;
		if ($test_args =~ /(--discard\s+blank|--discard\s+comment|-kb|-kc)/) {
			$tally_lines = 1;
			print "Tally lines\n";
		}
	}
	if ($text =~ m#\/\*\*SYSCODE:\s*(.+?)\s*\*\/#) {
		$test_syscode = $1;
		if ($test_syscode =~ m/^\s*(=)\s*(.+)$/) {
			$test_exact = 1;
			$test_syscode = $2;
		}
		$test_syscode = eval($test_syscode);
	}
	if ($text =~ m#\/\*\*NO-OUTPUT\s*\*\/#) {
		$no_output = 1;
	}
	if ($^O =~ /MSWin/ && $text =~ m#\/\*\*NOT-WINDOWS\s*\*\/#) {
	   progress("*** Skipping non-Windows-compatible test file \"$testfile\"");
	   return (0);
    }
	if ($^O =~ /linux/ && $text =~ m#\/\*\*NOT-LINUX\s*\*\/#) {
	   progress("*** Skipping non-Linux-compatible test file \"$testfile\"");
	   return (0);
    }
	if ($text =~ m#\/\*\*WORDSIZE=(\d+)\s*\*\/# and $1 != $archbits) {
	   progress("*** Skipping test file \"$testfile\" because WORDSIZE=$1 is not satisfied");
	   return (0);
    }		
	if ($text =~ m#\/\*\*ALTFILES:\s*(.+?)\s*\*\/#) {
		$test_altfiles = $1;
	}
	return ($test_args,$test_syscode,$test_exact,$no_output,$test_altfiles,$tally_lines);
}

sub cat($)
{
	my $file = shift;
	open (OUT, "<$file") or
		bail(1, "*** Cannot open file \"$file\" for reading ***");
	while(<OUT>) {
		print $_;
	}
	close OUT;
}

