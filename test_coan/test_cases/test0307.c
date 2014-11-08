/**ARGS: symbols -L -d -u --expand --cant -DFOO -DSTR=string */
/**SYSCODE: = 2 */
#ifdef FOO
#define FOO 1
#define STR
#else
#define BAR
#endif
