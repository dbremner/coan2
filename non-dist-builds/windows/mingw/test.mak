# gmake makefile to test mingw32 builds of coan under windows

projdir = $(realpath .)
pkgdir = $(realpath ..)
testdir = $(pkgdir)\test_coan
reldir = $(projdir)\bin\Release
wordsize = $(testdir)\wordsize.exe

.phony: all case_tester bulk_tester symbol_rewind_tester

all: case_tester bulk_tester symbol_rewind_tester

$(wordsize):
	copy "$(reldir)\wordsize.exe" $(testdir)
	
case_tester: $(wordsize) 
	cd $(testdir) && perl -I ..\perl coan_case_tester.pl -w -e $(reldir) --bail
	
bulk_tester: $(wordsize) 
	cd $(testdir) && perl -I ..\perl coan_bulk_tester.pl -w -e $(reldir) --bail
	
symbol_rewind_tester: $(wordsize)
	cd $(testdir) && perl -I ..\perl coan_symbol_rewind_tester.pl -w -e $(reldir)

