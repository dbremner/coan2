/**ARGS: symbols --locate --ifs --cant -DFOO=0 -UBAR */
/**SYSCODE: = 0 */
#ifdef FOO
#if FOO == 1
#endif
#else
#if FOO == 1
#endif
#endif
#ifndef BAR
#if BAR == 1
#endif
#else
#if BAR == 1
#endif
#endif
 
