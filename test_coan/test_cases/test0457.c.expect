/**ARGS: source -DFOO --no-idempotence */
/**SYSCODE: = 0 */
#ifndef G0
#define G0

	#ifndef G1
	#define G1
	KEEP ME
	#else
	DELETE ME
	#endif
	
	#ifndef G1
	#define G1
	DELETE ME
	#else
	KEEP ME
	#endif
	
	#ifndef G2
	// A comment
	#define G2
	KEEP ME
	#else
	DELETE ME
	#endif

	#ifndef G3
	#undef G3
	#define G3
	KEEP ME
	#else
	KEEP ME
	#endif
	
	#if ! defined(G4)
	#define G4
	KEEP ME
	#else
	DELETE ME
	#endif
	
	#if ! defined(G4)
	#define G4
	DELETE ME
	#else
	KEEP ME
	#endif
	
	#if ! defined G5
	#define G5
	KEEP ME
	#else
	DELETE ME
	#endif
	
	#if ! defined G5
	#define G5
	DELETE ME
	#else
	KEEP ME
	#endif

#endif
