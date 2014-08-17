noinst_PROGRAMS = wordsize
wordsize_SOURCES = wordsize.cpp
TESTS = coan_case_tester.py coan_bulk_tester.py coan_spin_tester.py \
coan_symbol_rewind_tester.py coan_softlink_tester.py coan_test_metrics.py

AM_TESTS_ENVIRONMENT = COAN_PKGDIR=$(top_srcdir); \
	COAN_BUILDDIR=$(top_builddir); rm -f coan.test_timer.time.txt; \
	export COAN_PKGDIR; export COAN_BUILDDIR;
LOG_COMPILER = $(PYTHON)	
 
.phony: clean distclean-local cat-failure-logs

cat-failure-logs: test-suite.log
	@for trs in *.trs; do \
		if test ! -z "`cat $$trs | grep -E ':test-result: FAIL' -`"; then \
			log_file=$${trs%%.trs}.log; \
			echo '---------------- BEGIN failure log' $$log_file \
				'----------------'; \
			cat $$log_file; \
			echo '---------------- END failure log' $$log_file \
				'----------------'; \
		fi; \
	done

check: cat-failure-logs

clean:
	rm -f *.o wordsize *.tmp *.time.txt *.size.txt
	cd $(top_srcdir)/test_coan/test_cases && \
		rm -f *.stderr *.stdout *.output

distclean-local: clean
