
#include "global.h"

// ************** ALLOCATE TASK TO RUN NETWORK INTERFACE **************
// EXTRA_TASK is available in Mosaic IDE Plus revisions 1500+.
// This allocates memory for a task in a separate 2K area of on-chip RAM
// otherwise unused by the C linker or the QED-Forth operating system,
// at 0x800-0xFFF.  At most ONE task may be declared with EXTRA_TASK,
// and the memory it uses will not be counted in the total reported on build.
EXTRA_TASK ether_control_task;

_Q void Ether_Task_Setup_Default( void )
// performs full initialization of the Ether_Info struct and mailboxes for the
// modulenum specified by the E_MODULENUM constant, and
// builds and activates an ethernet control task to service the EtherSmart Wildcard
// Note: GCC for V6.xx platforms requires that we explicitly call BUILD_C_TASK as shown here
// This is why we do not use the driver's ETHER_Task_Setup routine here (see glossary for details).
{
 // NEXT_TASK = TASKBASE;    // empties task loop; comment out if other tasks are allowed
	Ether_Setup_Default(E_MODULENUM); // allocate&init ~3Kbyte ram buffers, see glossary entry
	BUILD_C_TASK(0, 0, &ether_control_task );					// build the service task
	ACTIVATE(Ether_Service_Loop, &ether_control_task );	// activate the service routine
}

_Q void WiFi_Task_Setup_Default( void )
// same as Ether_Task_Setup_Default, but marks Wildcard as WiFi
// performs full initialization of the Ether_Info struct and mailboxes for the
// modulenum specified by the E_MODULENUM constant, and
// builds and activates an ethernet control task to service the WiFi Wildcard
// Note: GCC for V6.xx platforms requires that we explicitly call BUILD_C_TASK as shown here
// This is why we do not use the driver's WiFi_Task_Setup routine here (see glossary for details).
{
 // NEXT_TASK = TASKBASE;    // empties task loop; comment out if other tasks are allowed
	WiFi_Setup_Default(E_MODULENUM); // allocate&init ~3Kbyte ram buffers, see glossary entry
	BUILD_C_TASK(0, 0, &ether_control_task );					// build the service task
	ACTIVATE(Ether_Service_Loop, &ether_control_task );	// activate the service routine
}

// ***************** INTERACTIVE CONFIGURATION AND REPORTING ************

_Q int Ether_Set_Defaults( void )
// works for xport or wiport (ethernet/wifi)
// call this AFTER calling main() or Ether_Web_Demo or Ether_Task_Setup_Default()
// or WiFi_Web_Demo or WiFi_Task_Setup_Default.
// sets mosaic factory defaults; returns error code
// sets local IP and gateway to 0.0.0.0 = unassigned, so IP address
// gets assigned via DHCP (Dynamic Host Configuration Protocol) by the LAN's gateway.
// see user guide for more information.
{
  printf("\rSetting defaults...\r");
  Ether_XPort_Defaults(E_MODULENUM); // works for xport or wiport (ethernet/wifi)
  return((int) Ether_Await_Response(E_MODULENUM)); // error code is in lsword
}

_Q int Ether_Set_Local_IP(int my_ip1, int my_ip2, int my_ip3,  int my_ip4)
// call this AFTER calling main() or Ether_Web_Demo or Ether_Task_Setup_Default()
// or WiFi_Web_Demo or WiFi_Task_Setup_Default.
// sets the IP address of the EtherSmart Wildcard specified by E_MODULENUM as:
//   ip1.ip2.ip3.ip4
// For example, to set the IP address to 10.0.1.22, pass to this function the parameters:
//   10 0 1 22
// returns error code
// NOTES: type DECIMAL at the monitor before invoking this function interactively!
//        The input types are declared as int to simplify interactive calling,
//        as the interactive debugger would require char specifiers before each input
//        parameter if the char type were used.
// NOTE: assigning a nonzero IP address disables DHCP!
{
  printf("\rSetting local IP address...\r");
  Ether_Local_IP(my_ip1, my_ip2, my_ip3,  my_ip4, E_MODULENUM);
  Ether_XPort_Update(E_MODULENUM);  // works for xport or wiport (ethernet/wifi)
  return((int) Ether_Await_Response(E_MODULENUM)); // error code is in lsword
}
/*
_Q void Ether_IP_Report(void)
// call this AFTER calling main() or Ether_Web_Demo or Ether_Task_Setup_Default()
// or WiFi_Web_Demo or WiFi_Task_Setup_Default.
// takes 7 seconds to execute, so be patient.
// Report is of the form:
// IP 010.000.001.019 GW 010.000.001.022 Mask 255.255.255.000
// which summarizes the IP address, gateway address, and netmask, respectively.
{
  Ether_IP_Info_Report(E_MODULENUM);
}*/

_Q void Ether_Ping(int remote_ip1, int remote_ip2, int remote_ip3,  int remote_ip4)
/* call this AFTER calling main() or Ether_Web_Demo or Ether_Task_Setup_Default()
// or WiFi_Web_Demo or WiFi_Task_Setup_Default.
// on error, prints " Couldn't enter monitor mode!" or " No response from remote".
// takes thirteen seconds to execute, so be patient.
// Report is of the form (summarizes response time from specified remote host):
// Seq 001 time 10ms
// Seq 002 time 10ms
// Seq 003 time 10ms
// Seq 004 time 10ms
// Seq 005 time 10ms
// Seq 006 time 10ms
// NOTES: type DECIMAL at the monitor before invoking this function interactively!
//        The input types are declared as int to simplify interactive calling,
//        as the interactive debugger would require char specifiers before each input
//        parameter if the char type were used.*/
{  Ether_Ping_Report(remote_ip1, remote_ip2, remote_ip3, remote_ip4, E_MODULENUM);  }



// To be called by the EtherSmart driver on reception of a websocket frame.
// The frame is in a Forth counted long string at a paged address returned
// by the call to WS_Frame_Inbuf().  This address is passed to the websocket
// driver handler function Wbskt_Handle_Frame().
void websocket_handler( int modulenum )
{
    xaddr inbuf = WS_Frame_Inbuf( modulenum );

    // Uncomment to see incoming JSON messages in terminal.
    // Printed JSON messages may be mixed with websocket task messages.
    //unsigned inbuf_size = FetchInt( inbuf );
    //xaddr inbuf_text = AddXaddrOffset( inbuf, sizeof(int) );
    //DumpBinary( inbuf_text, inbuf_size );
    //Cr();

    Wbskt_Handle_Frame( inbuf, modulenum );
}



_Q void Ether_Web_Demo( void )
// for EtherSmart Wildcard: point browser to raw ip or to
//  ip/index.html to see the home web page.  urls are case sensitive.
// any other url's serve out: page not found.
// returns nonzero error if too many handlers were added
// (limited by AUTOSERVE_DEFAULT_ROWS passed to ether_init)
{
  Ether_Task_Setup_Default();
  WS_Add_Handler( COMMON_XADDR( websocket_handler ), E_MODULENUM );
}


SAVE_STRING( PDQ_Init, "\ninit done\n");
//PP0


int main( void )
{
  LEFT_PLACES=3;
  RIGHT_PLACES=1;
  
  //FIXED = Sets the default printing format used by FPtoString() and PrintFP() to fixed.  
  //Numbers are decimal aligned, and RIGHT_PLACES and LEFT_PLACES determine the field width.  
  //See the glossary entry for FPtoString() for more details.
  FIXED();
  setvbuf( stdout, NULL, _IONBF, 0 );
  
  PORTM_DIRECTION=0xFF;//All outputs
  PORTM = 0x00;//turn all bits low
  
  PORTT_DIRECTION = 0xE0;//1110 0000 ; PT5-PT7 = DO  / PT0-PT4 = DI
  
  CatchVars[0] = 2; 
  CatchVars[1] = 2;
  CatchVars[2] = 2;

  FS0s = 0;

  VarS(Hcal,0.0f);
  VarS(Fcal,0.0f);
  VarS(m, 0.036568f);
  VarS(b, 3.64744);
  VarS(P1off,0);
  VarS(P2off,0);
  VarS(P3off,0);
  VarS(T1off,0);
  VarS(T2off,0);
  VarS(T3off,0);
  VarS(EAToff,0);
  VarS(T5off,0);
  VarS(T6off,0);
  VarS(Woff,0);

  ATDOn( 0 );
  ATDOn( 8 );
  
  //The input parameter is a 16-bit mask.  
  //Each 1 bit in the mask configures the corresponding AN0-AN15 bit on the processor’s PortAD0 and PortAD1 as a digital input, 
  //and each 0 bit configures the corresponding pin as an analog input.  
  //If you are using some of the AN0-AN15 pins as analog inputs and others as digital inputs, 
  //call this routine after invoking the ATDOn() function, as ATDOn() configures a set of 8 pins 
  //(either PORTAD0 or PORTAD1) as analog inputs; consult the ATDOn() glossary entry.
  ATDDigitalInputs(0x0700);

  PWMPrescaler( PWM_CLOCKA, 1 );
  PWMPrescaler( PWM_CLOCKB, 1 );
  //void PWMSetup( int active_high, int scaled_clock, int centered, int period, int duty, int channel_id )
  PWMSetup( FALSE, FALSE, FALSE, 1000, 999, PWM01 );
  PWMSetup( TRUE,  FALSE, FALSE, 1000, 999, PWM45 );
  PWMSetup( FALSE,  FALSE, FALSE, 1000, 999, PWM23 );
  
//PWMEnable(): Enables the PWM (pulse-width modulated) signal on the PORTP pin specified by channel_id.  
//Valid channel_id parameters for 8-bit PWM channels are in the range 0 to 7. 
//Valid 16-bit (concatenated) channel_id constants are PWM01, PWM23, PWM45, and PWM67; 
//concatenated outputs are available on the numerically higher channel pin mentioned in each named constant.  
//See PWMDisable() and PWMSetup(); the latter’s glossary entry describes a set of useful PWM configuration utiltities and provides an example of use.  
//To enable multiple channels at once, use PWMEnableMultiple().
//Implementation detail: Sets the relevant bit(s) in the PWME register.  
//If a concatenated channel_id is passed to this function, 
//only the numerically higher bit in the PWME register is set, as this controls the concatenated channel.  
//After a power-up or hardware reset, the PWM channels are disabled by default.
  PWMEnable(PWM45);
  PWMEnable(PWM01);
  PWMEnable(PWM23);

  Ether_Web_Demo();

  Ether_Set_Local_IP(0, 0, 0,  0);//Ether_Set_Local_IP(192, 168, 2,  89);
  Ether_IP_Info_Report(E_MODULENUM);

  Ether_Local_Port(8181, E_MODULENUM);
  Ether_XPort_Update(E_MODULENUM);
  Ether_Await_Response(E_MODULENUM);

  //Ether_IP_Info_Report(E_MODULENUM);
  //Acquire_Task_Setup_Default();

  // blocking_errors parameter specifies whether an incoming frame error that occurs
  // when a previous error is still pending will block the websocket task until the
  // previous error is retrieved with Wbskt_Incoming_Error().
  // If FALSE, new errors immediately overwrite previous errors.
  Wbskt_Init( FALSE );


  Init_Application();
  Init_Acquire();
  Init_ControllOut();
  Init_SScheck();
  FLASH_PRINT( PDQ_Init );
  //print( "\ninit done\n");
  return 0;
}
