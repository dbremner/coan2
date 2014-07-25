/**ARGS: source  -DX */
/**SYSCODE: = 6 */
/**NO-OUTPUT */
#define FOO(x) x##
#if FOO(a)
KEEP ME
#else
KEEP ME
#endif
