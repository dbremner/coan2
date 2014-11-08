/**ARGS: source -DBAR --no-override */
/**SYSCODE: = 1 | 4  */
/**NO-OUTPUT*/
#ifdef BAR
#undef BAR
#endif
