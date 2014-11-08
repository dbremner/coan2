/**ARGS: includes -l --cant -DFOO --locate --once-only */
/**SYSCODE: = 0 */
#ifdef FOO
#include <foo.h>
#include "bar.h"
#include <foo.h>
#else
#include "bar.h"
#include <foo.h>
#include "bar.h"
#endif
 
