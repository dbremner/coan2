noinst_PROGRAMS = wordsize
wordsize_SOURCES = wordsize.cpp
TESTS = coan_case_tester.py coan_bulk_tester.py coan_spin_tester.py \
coan_symbol_rewind_tester.py coan_softlink_tester.py \
coan_test_metrics.py

AM_TESTS_ENVIRONMENT = COAN_PKGDIR=$(top_srcdir); \
	COAN_BUILDDIR=$(top_builddir); rm -f coan.test_timer.time.txt; \
	export COAN_PKGDIR; export COAN_BUILDDIR;
LOG_COMPILER = $(PYTHON)	
 
.phony: clean

clean:
	rm -f *.o wordsize *.tmp *.time.txt *.size.txt
	cd $(top_srcdir)/test_coan/test_cases && \
		rm -f *.stderr *.stdout *.output

distclean-local: clean
