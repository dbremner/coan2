#!/usr/bin/perl

my @extra_args = @ARGV;
exit system("perl -I ../perl coan_case_tester.pl @extra_args --onerun=\"source -DFOO\" --rc=19 test_cases/test0286.c test_cases/test0287.c") >> 8; 
