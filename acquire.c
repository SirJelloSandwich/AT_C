
#include "global.h"

TASK data_taskbase;  // Declare our data acquisition task in common memory (occupies 2KByte):
RESOURCE data_resource;    // A RESOURCE ( mutex ) to protect the data buffer


unsigned char CSwitches = 0;
unsigned char FS0s      = 0;
unsigned char latest_portt_state = 0;

void Init_Acquire( void )
{
    BUILD_C_TASK( 0, 0, &data_taskbase );  // build the task in RAM
    ACTIVATE( Aquire_Data, &data_taskbase ); // activate the service routine
}


void Aquire_Data ( void )
{
	//INT_2V_DAC12 : A constant (= 0x06) that, when passed as a parameter to the Init_Analog_IO function,
	//configures the 12-bit DAC to use its own internally generated 2.048 volt as its reference.
    //With this option, the DAC output range is 0 to 4.096 volts.
    Init_Analog_IO( INT_2V_DAC12, WAIM_MODULE_NUM );

    while( 1 )
    {
        GET( &data_resource );

        CSwitches = PORTAD1;

		latest_portt_state = PORTT_IN;

		//uint ATDSingle( int channel_id )
//This routine converts a single specified Analog To Digital (ATD) channel (0 ≤ channel_id ≤ 15), waits for the conversion to complete,
//and returns the result.  Note that the conversion uses the current data format, which is set by ATDOn() as 10-bit resolution,
// with the 10-bit data left justified in a 16-bit unsigned result; the least significant 6 bits of each result equal zero.
//For mathematical simplicity each result can be interpreted as a 16-bit unsigned number spanning the range 0x0000 to 0xFFFF
//(decimal 0 to 65,535).  For example, converting a 2.5 Volt signal (representing half the 0 to 5V ATD input span) yields
//a result of 0x8000 (decimal 32768).  Before calling this routine, make sure that you have called ATDOn() for the specified ATD port.

//10 AI bit below on PDQ Analog header

		//PDQ Channel 2 Analog Header Pin 22 EAT
        EAT = (float) (ATDSingle(2));
		
		//PDQ Channel 1 Analog Header Pin 23 ERH
        VarTm  =  (float) ((ATDSingle(1)>>6)&0x3ff);
        VarTm *=5.0f/1024.0f;
        VarS(ERH, VarTm);

		//PDQ Channel 0 Analog Header Pin 24
        VarTm  =  (float) ((ATDSingle(0)>>6)&0x3ff);
		VarS(EnergykW, VarTm);



/*******************************************************************************/

//16 AI bit below on Wildcard

        //Analog I/O Wildcard Channel 0 Pin 14
        VarTm =  (float)AD16_Sample( AD16_CH0, WAIM_MODULE_NUM );
        VarS(HiTemp, VarTm);

        //Analog I/O Wildcard Channel 1 Pin
        VarTm =  (float)AD16_Sample( AD16_CH1, WAIM_MODULE_NUM );
        VarS(LowTemp, VarTm);

        //Analog I/O Wildcard Channel 2 Pin
        VarTm =  (float)AD16_Sample( AD16_CH2, WAIM_MODULE_NUM );
        VarS(OAT, VarTm);

        //Analog I/O Wildcard Channel 3 Pin
        VarTm =  (float)AD16_Sample( AD16_CH3, WAIM_MODULE_NUM );
        VarS(SAT, VarTm);

        //Analog I/O Wildcard Channel 4 Pin
        VarTm =  (float)AD16_Sample( AD16_CH4, WAIM_MODULE_NUM );
        VarS(LAT, VarTm);

        // Analog I/O Wildcard Channel 5 Pin 9
        VarTm =  (float)AD16_Sample( AD16_CH5, WAIM_MODULE_NUM );
        VarTm *= 5.0f / 65536.0f;
        VarTm =  500.0f * ( ( VarTm - 0.5f ) / 4.0f );
        VarTm = VarTm-VarF(P1off);
        VarS(HiP, VarTm);

		 //Analog I/O Wildcard Channel 6 Pin 8
        VarTm =  (float)AD16_Sample( AD16_CH6, WAIM_MODULE_NUM );
        VarTm *= 5.0f / 65536.0f;
        VarTm =  500.0f * ( ( VarTm - 0.5f ) / 4.0f );
        VarTm = VarTm-VarF(P3off);
        VarS(highFlowPSI, VarTm);

        //Analog I/O Wildcard Channel 7 Pin
        VarTm =  (float)AD16_Sample( AD16_CH7, WAIM_MODULE_NUM );
        VarTm *= 5.0f / 65536.0f;
        VarTm =  500.0f * ( ( VarTm - 0.5f ) / 4.0f );
        VarTm = VarTm-VarF(P2off);
        VarS(LoP, VarTm);

        if(FS0s == 1)
        {
            VarTm = VarF(HiP);
            VarS(Hcal,VarTm);
            VarTm = VarF(highFlowPSI);
            VarS(Fcal,VarTm);
            FS0s = 0;
        }

        if( CatchVars[1] == 1 )
		{
			CALCULATER22();
		}
        else if( CatchVars[1] == 2 )
		{
			CALCULATER410a();
		}
        else
		{
			iprintf( "\nNo Calc, RfgtC=%d", CatchVars[1] );
		}

        RELEASE( &data_resource );

        Pause(); // Allow other tasks to run.

    }
}

