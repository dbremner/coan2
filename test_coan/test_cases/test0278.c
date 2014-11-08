/**ARGS: source -m -DFOO=1 -UBAR */
/**SYSCODE: = 1 | 2 | 4 */
/**NO-OUTPUT */
#if BAR
DELETE ME
#else
KEEP ME
#endif
#define BAR
#if BAR
DELETE ME
#else
KEEP ME
#endif

