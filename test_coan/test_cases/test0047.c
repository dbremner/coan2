/**ARGS: source -DFOO1 -UFOO2 */
/**SYSCODE: = 1 | 2 | 16 */
#ifdef FOO1
#undef FOO1
KEEP ME
#endif
#ifdef FOO1
DELETE ME
#else
KEEP ME
#endif
