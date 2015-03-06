#ifndef _GLOBAL_H_
#define _GLOBAL_H_

#include <mosaic\allqed.h> // include all of the qed and C utilities
#include <math.h>

#include "application.h"
#include "acquire.h"
#include "ControllOut.h"
#include "CalculateR.h"

// For PDQ line platforms, the driver is enabled by simply including the header file below.
#include <wwifi.h>
#include <waim.h>
#include <websocket.h>
//#include <mosaic\memory.h>

// *************** IMPORTANT: SET MODULENUM TO MATCH HARDWARE JUMPERS ******************

// NOTE: YOU MUST MAKE SURE THAT THIS CONSTANT CORRESPONDS TO YOUR MODULE SELECT JUMPERS!
// For example, to access the Wildcard at address 4:
//    remove both module select jumper caps and mount the card on Wildcard Module Bus 1
#define E_MODULENUM	0//	4
// Note: if you are using a QScreen or Handheld, accessing a wildcard at module address 0
// is not allowed; this module address is reserved for the GUI on the QScreen and Handheld.
#define WAIM_MODULE_NUM 4


#endif
