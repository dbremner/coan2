/**ARGS: source -DFOO1 -UFOO2 */
/**SYSCODE: = 1 | 16 */
#if 1 && defined(FOO1)
KEEP ME
#else
KEEP ME
#endif
