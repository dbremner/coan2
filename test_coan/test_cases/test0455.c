/**ARGS: directives --active --locate -DFOO -UBAR */
/**SYSCODE: = 0 */
/**NO-OUTPUT */
#ifdef U1
	#ifdef FOO
	#define KEEP1
	#else
	#define DROP1 
	#endif
	#ifndef BAR
	#define KEEP2
	#else
	#define DROP2 
	#endif
#endif
