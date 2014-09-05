AC_INIT(coan,6.0.1)
AC_CONFIG_MACRO_DIRS([m4])
AC_PREREQ(2.59)
AM_INIT_AUTOMAKE(1.13 no-define)
AC_CHECK_HEADERS(strings.h)
AC_MSG_CHECKING(for big-endian host)
AC_TRY_RUN([main () {
  /* Are we little or big endian?  From Harbison&amp;Steele.  */
  union
  {
    long l;
    char c[sizeof (long)];
  } u;
  u.l = 1;
  exit (u.c[sizeof (long) - 1] == 1);
}], BIG_ENDIAN=no, BIG_ENDIAN=yes)
AC_MSG_RESULT([$BIG_ENDIAN])
AM_CONDITIONAL([IS_BIG_ENDIAN],[test "$BIG_ENDIAN" = "yes"])
AM_COND_IF([IS_BIG_ENDIAN],\
	[AC_MSG_ERROR([Sorry. Coan is buggy on big-endian systems])])
AC_CHECK_PROG([PYTHON],[python],[yes],[no])
AC_CHECK_PROG([TIME],[time],[yes],[no])
AM_CONFIG_HEADER(config.h)
${CXXFLAGS=""}
AC_LANG([C++])
AC_PROG_CXX
AX_CXX_COMPILE_STDCXX_11([noext],[mandatory])
AC_SUBST([AM_CXXFLAGS], [-O2])
AC_CONFIG_FILES(Makefile src/Makefile man/Makefile test_coan/Makefile)
AC_OUTPUT
AM_CONDITIONAL([HAVENT_PYTHON],[test "$PYTHON" = "no"])
AM_COND_IF([HAVENT_PYTHON],\
	[AC_MSG_WARN([`python` is not in your `PATH`. You will not be able to run `make check`])])
AM_CONDITIONAL([HAVE_DEBUG_OPT],[test -z "`echo $CXXFLAGS | grep '\-g' -`"])
AM_COND_IF([HAVE_DEBUG_OPT],\
	[AC_MSG_NOTICE([By default debugging info is not included in the executable, \
as it increases the executable's size by a factor of ~12. ./configure with `CXXFLAGS=-g` to get debugging info])])
