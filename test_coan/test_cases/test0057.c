/**ARGS: source -DFOO1 -UFOO2 */
/**SYSCODE: = 1 | 16 */
#ifdef UNKNOWN
KEEP ME
#define FOO2
#endif
#ifdef FOO2
DELETE ME
#else
KEEP ME
#endif
