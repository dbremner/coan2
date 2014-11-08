/**ARGS: symbols -DG0 -UG2 --may */
/**SYSCODE: = 2 */
#ifdef G0

	#ifdef G1
	#define KEEP_G1_1
	#else
	#define KEEP_G1_2
	#endif
	
	#ifdef G2
	#define DROP_G2_1
	#else
	#define KEEP_G2_2
	#endif
	
#endif
