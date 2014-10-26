/**ARGS: source -DFOO1 -UFOO2 */
/**SYSCODE: = 1 | 2 | 16 */
#ifndef FOO2
#define FOO2
KEEP ME
#endif
#ifdef FOO2
KEEP ME
#else
DELETE ME
#endif

