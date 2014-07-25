noinst_PROGRAMS = wordsize
wordsize_SOURCES = wordsize.cpp
# Python test harness is ready to go but not yet supported
# on all target linux platforms
TESTS_ENVIRONMENT = COAN_PKGDIR=$(top_srcdir) \
	COAN_BUILDDIR=$(top_builddir) rm -f coan.test_timer.time.txt && python
TESTS = coan_case_tester.py coan_bulk_tester.py coan_spin_tester.py \
coan_symbol_rewind_tester.py coan_softlink_tester.py \
coan_test_metrics.py
#TESTS_ENVIRONMENT = COAN_PKGDIR=$(top_srcdir) perl -Mstrict -I $(top_srcdir)/perl -w
#TESTS = coan_case_tester.pl coan_bulk_tester.pl coan_spin_tester.pl \
#coan_symbol_rewind_tester.pl coan_softlink_tester.pl

.phony: clean

clean:
	rm -f *.o wordsize *.tmp  *.time.txt *.size.txt
	cd $(top_srcdir)/test_coan/test_cases && \
		rm -f *.stderr *.stdout *.output

