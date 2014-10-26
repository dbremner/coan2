/**ARGS: source -DFOO1 -UFOO2 */
/**SYSCODE: = 1 | 2 | 16 */
#undef FOO1
#ifdef FOO1
DELETE ME
#else
KEEP ME
#endif

