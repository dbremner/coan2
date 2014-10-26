/**ARGS: source -UG0 -UG4 --no-idempotence */
/**SYSCODE: = 1 | 2 | 16  */
#ifndef G0
#define G0

	#ifndef G1
	#define G1
	KEEP ME G1
	#else
	KEEP ME G1
	#endif
	
	#ifndef G1
	#define G1
	KEEP ME G1
	#else
	KEEP ME G1
	#endif
	
	#ifndef G2
	// A comment
	#define G2
	KEEP ME G2
	#else
	KEEP ME G2
	#endif

	#ifndef G3
	#undef G3
	#define G3
	KEEP ME G3
	#else
	KEEP ME G3
	#endif
	
	#if ! defined(G4)
	#define G4
	KEEP ME G4
	#else
	DELETE ME G4
	#endif
	
	#if ! defined(G4)
	#define G4
	DELETE ME G4
	#else
	KEEP ME G4
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
