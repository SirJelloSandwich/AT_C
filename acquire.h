#ifndef _DATA_BUFFER_H_
#define _DATA_BUFFER_H_

#include <mosaic\allqed.h>

// Forward declare a resource variable to control access to our data
extern RESOURCE data_resource;

// Forward declare our data acquisition task
extern TASK data_taskbase;
extern unsigned char CSwitches;
extern unsigned char FS0s;
unsigned char latest_portt_state;
void Init_Acquire( void );
void InitAnalog(void);
void Build_DATA_Task ( void );
void Aquire_Data ( void );



#endif
