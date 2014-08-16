AC_INIT(coan,6.0)
AC_CONFIG_MACRO_DIRS([m4])
AC_PREREQ(2.59)
AM_INIT_AUTOMAKE(1.10 no-define)
AC_CHECK_HEADERS(strings.h)
AM_CONFIG_HEADER(config.h)
${CXXFLAGS=""}
AC_LANG([C++])
AC_PROG_CXX
AX_CXX_COMPILE_STDCXX_11([noext],[mandatory])
AC_CONFIG_FILES(Makefile src/Makefile man/Makefile test_coan/Makefile)
AC_OUTPUT
AM_CONDITIONAL([HAVE_DEBUG_OPT],[test -z "`echo $CXXFLAGS | grep '\-g' -`"])
AM_COND_IF([HAVE_DEBUG_OPT],\
	[AC_MSG_NOTICE([By default debugging info is not included in the executable, \
as it increases the executable's size by a factor of ~12. ./configure with `CXXFLAGS=-g` to get debugging info])])
