# gmake makefile to test vc++ builds of coan

projdir = $(realpath .)
pkgdir = $(realpath ..)
testdir = $(pkgdir)\test_coan
wordsize = $(testdir)\wordsize.exe

ifeq ($(plat),win32)
reldir = $(projdir)\Release
else ifeq ($(plat),win64)
reldir = $(projdir)\x64\Release
endif


.phony: all win32 win64 test case_tester bulk_tester symbol_rewind_tester

ifeq ($(plat),)
all: win32 win64
else
all: test
endif

win32:
	-del $(wordsize)
	$(MAKE) -f test.mak plat=win32 test

win64:
	-del $(wordsize)
	$(MAKE) -f test.mak plat=win64 test

test: $(wordsize) case_tester bulk_tester symbol_rewind_tester

$(wordsize):
	copy "$(reldir)\wordsize.exe" $(testdir)
	
case_tester:
	cd $(testdir) && perl -I ..\perl coan_case_tester.pl -w -e $(reldir) --bail
	
bulk_tester:
	cd $(testdir) && perl -I ..\perl coan_bulk_tester.pl -w -e $(reldir) --bail
	
symbol_rewind_tester:
	cd $(testdir) && perl -I ..\perl coan_symbol_rewind_tester.pl -w -e $(reldir)

