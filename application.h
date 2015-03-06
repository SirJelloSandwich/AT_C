#include <mosaic\allqed.h>
#ifndef _APPLICATION_H_
#define _APPLICATION_H_

void Init_Application( void );
//void Application_Task_Setup_Default( void );
void Application_Loop( void );
//extern int PwrC, RfgtC;
//extern boolean B12;
extern unsigned char CatchVars[8];
extern char SendMSG;
extern float tempRef;
extern float temporaryOffset;
extern float _eeprom _tempRef;
#endif
