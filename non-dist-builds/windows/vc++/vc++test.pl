#  Copyright (C) 2007-2011 Mike Kinghan, imk@burroingroingjoing.com
# All rights reserved.  
# Run all the applicable coan test scripts for VC++ 32 and 64 bit builds

use File::Spec;
use File::chdir;
use Cwd;
use Cwd 'abs_path';
use Win32::Process;

my $default_root = File::Spec->catfile("c:","dev","coan");
my $exe = "coan.exe";
my $cur_test = 0;

my $root = $ARGV[0] ? abs_path($ARGV[0]) : undef;
sub check_dir($);
sub check_file($);
sub run_test($$);

if (!$root) {
	$root = $default_root;
}
check_dir($root);
my $vc_proj_dir = File::Spec->catfile($root,"non-dist-builds","windows","vc++","coan"); 
check_dir($vc_proj_dir);
my $vc_32_debug_dir = File::Spec->catfile($vc_proj_dir,"Debug");
check_dir($vc_32_debug_dir);
my $vc_32_release_dir = File::Spec->catfile($vc_proj_dir,"Release");
check_dir($vc_32_release_dir);
my $vc_64_proj_dir = File::Spec->catfile($vc_proj_dir,"x64");
check_dir($vc_64_proj_dir);
my $vc_64_debug_dir = File::Spec->catfile($vc_64_proj_dir,"Debug");
check_dir($vc_64_debug_dir);
my $vc_64_release_dir = File::Spec->catfile($vc_64_proj_dir,"Release");
check_dir($vc_64_release_dir);
my @test_dirs = ($vc_32_debug_dir,$vc_32_release_dir,$vc_64_debug_dir,$vc_64_release_dir);
my $test_coan_dir = File::Spec->catfile($root,"test_coan");
check_dir($test_coan_dir);
my $wordsize_exe = File::Spec->catfile($test_coan_dir,"wordsize.exe");
check_file($wordsize_exe);

foreach my $test_dir (@test_dirs) {
	my $exe_path = File::Spec->catfile($test_dir,$exe);
	check_file($exe_path);
}

my $case_test_cmd = "perl -I ../perl coan_case_tester.pl -b -w -e "; 
my $bulk_test_cmd = "perl -I ../perl coan_bulk_tester.pl --bail -w -e "; 
my $symbol_rewind_test_cmd = "perl -I ../perl coan_symbol_rewind_tester.pl -b -w -e "; 
my $spin_test_cmd = "perl -I ../perl coan_spin_tester.pl -b -w -e "; 
my @test_scripts = ($case_test_cmd,$bulk_test_cmd,$symbol_rewind_test_cmd,$spin_test_cmd);
my $tests = @test_dirs * @test_scripts;
foreach my $test_script (@test_scripts) {
	foreach my $test_dir (@test_dirs) {
		run_test($test_script,$test_dir);
	}
}
exit 0;

sub check_dir($)
{
	my $dir = shift;
	if (!-d $dir) {
		die("No such directory as \"$dir\"\n");
	}	
}

sub check_file($)
{
	my $file = shift;
	if (!-f $file) {
		die("No such file as \"file\"\n");
	}	
}

sub run_test($$)
{
	my ($test_opts,$dir) = @_;
	my $cmd = $test_opts . $dir;
	$test_opts =~ /((coan_.*)\.pl)/;
	my $test_name = $2;
	my $test_script = $1;
	my $arch = ($dir =~ /x64/) ? "32" : "64";
	my $type = ($dir =~ /Debug/) ? "debug" : "release";
	my $cur_dir = getcwd;
	++$cur_test;
	print "###################################################\n";
	print "### Starting test $cur_test of $tests\n";
	print "### $test_name: $arch" . "-bit: " . "$type\n";  
	print "###################################################\n";
	$CWD = $test_coan_dir;
	my $test_script_path = abs_path($test_script);
	check_file($test_script_path);
	my $perl = $^X;
	$perl = qq{"$perl"} if $perl =~ /\s/;
	my $process;
	my $result = 0;
	Win32::Process::Create($process,$perl,$cmd,0,
                                NORMAL_PRIORITY_CLASS,
                                ".")
		or die "Could not create process: " . $!;
	$process->Wait(INFINITE);
	$process->GetExitCode($result);
	$CWD = $cur_dir;
	if (!$result) {
		print "#########################################\n";
		print "### Done test $cur_test of $tests. OK\n";
		print "#########################################\n";
	}
	else {
		print "#############################################\n";
		print "### Done test $cur_test of $tests. Failed $result\n";
		print "#############################################\n";
		exit 1;
	}
}
