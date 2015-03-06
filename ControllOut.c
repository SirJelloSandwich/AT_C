
#include "global.h"

#define MS_PER_SECOND  1000
#define ONE_MS  625     // 625 counts of 1.6us TCNT = 1 ms
#define DEFAULT_TIME_PERIOD  5000   // Execute TheFunction() once per 5 second
#define DEFAULT_TIME_PERIOD2  200
                                   // (that is, every 1000 milliseconds
//float CalcTM=0.0f;
static long start_time;     // saves starting count of TIMESLICE_COUNT
static int ms_counter = 0;  // runs from 0 to 65,535 before rolling over
static uint time_period = DEFAULT_TIME_PERIOD;
static int next_execution_time = DEFAULT_TIME_PERIOD;
static char SScheck = 0, SSresult=0;     // state is toggled by TheFunction()

static int next_execution_time2 = DEFAULT_TIME_PERIOD2;


float SS_EERs[3], SSeerAVG=0, SSfanEFs[3];


void FunctionTimer( void )
{
    ms_counter++;

    if(ms_counter == next_execution_time2)
    {   SendMSG=1;
        next_execution_time2 +=DEFAULT_TIME_PERIOD2;
    }
    if( ms_counter == next_execution_time )
    {
        SScheck = 1;//TheFunction();
        next_execution_time = next_execution_time + time_period;
    }

    TC3 += ONE_MS;      // set OC3 count for next interrupt in 1 ms.
}

MAKE_ISR( FunctionTimer );      // Make the function into an ISR


void StartFunctionTimer( void )
{
    ATTACH( FunctionTimer, ECT3_ID ); // post the interrupt service routine
    ECTFastClear();
    ms_counter = 0;
    time_period = next_execution_time = DEFAULT_TIME_PERIOD;   // once per second
    OCAction( OC_NO_ACTION, 3 ); // confirm that no automatic pin action occurs on PT3
    OutputCompare( 3 );      // set channel 3 as output compare
    OCRegWrite( TCNT + ONE_MS, 3 ); // starts in 1 ms, same as: TC3 = TCNT + ONE_MS;
    ECTClearInterruptFlag( 3 );  // clear flag, same as: TFLG1 = OC3_MASK;
    ECTInterruptEnable( 3 );     // locally enable OC3, same as: TMSK1 |= OC3_MASK;
}

//----------------------------------------------------

int mn( int a ) {return ( ( a ) > ( 0 ) ? ( a ) : ( 0 ) );}
int mx( int b ) {return ( ( b ) < ( 999 ) ? ( b ) : ( 999 ) );}// 10bit=1024 12bit=4095; 16bit=65535; pwm limit=999
int FLR( int c ) {return ( mn( mx( c ) ) );}

TASK ControllOut_task;
TASK SScheck_task;

//float Vout, Vout2;
int fanEF, fanCF, DS, FanTm, BlowerFan;
int B14[3], EERopt=0;
float VarTm2;


int t0, Ep, Spt, dt, IN, OT;
#define Kp 1
#define Ki 1
#define Kd 1
int P, I, D;



void ControllOut_loop( void )
{
	float SS_EERslope[2];      //EERslope[0]=Slope1:3 || EERslope[1]=Slope1:2
    SS_EERslope[0] = 0;
    SS_EERslope[1] = 0;


    SS_EERs[0]   = EERv;
    CatchVars[2] = 2;
    CatchVars[3] = 100;
    CatchVars[4] = 100;
    Ep           = 0;
    t0           = ms_counter;
    BlowerFan    = PWMDutyRead(PWM45);

    while( 1 )
    {
		GET( &data_resource );

		PORTT = 0x00;//set PT5-7 High or to 1

        if(CatchVars[2] == 1 && SSresult ==1 )
        {
			//print("\nStarted Auto control");
               VarTm2 = VarF(OAT);
               //----For the Codenser Fan-----
               if(VarTm2 < 80.0f)
			   {
                   FanTm = (int) (1.2399f * VarTm2 + 0.8063f);
                   FanTm = FLR((int) FanTm);
               }
			   else if(VarTm2 >= 80 && VarTm2 < 85)
			   {
                   FanTm = (int) (172.18f - 0.9023f * VarTm2);
                   FanTm = FLR((int) FanTm);
               } else if(VarTm2 >= 85)
			   {
                   FanTm = (int) (80.15f - .1805f * VarTm2);
                   FanTm = FLR((int) FanTm);
               }
               FanTm = 10 * FanTm;
               PWMDutyWrite(FanTm, PWM01);

               VarTm2 = VarF(ERH);
               if(VarTm2 >= 50.0f && VarTm2 <= 60.0f)
			   {
                   FanTm = (int) (1000.0f * VarTm2 / 100.0f - 500.0f);
               }
			   else if(VarTm2 < 50.0f)
               {
				   FanTm = 0;
			   }
			   else if(VarTm2 > 60.0f)
               {
				   FanTm = 100;
			   }

               FanTm *= 100 / 15;
               PWMDutyWrite(FanTm, PWM23);

               if(VarTm2 >= 50.0f && VarTm2 <= 60.0f)
			   {
                   VarTm2 = 79.0f - 45.0f * VarTm2 / 100.0f;
               }
			   else if(VarTm2 < 50.0f)
               {
				   VarTm2 = 56.5f;
				}
				else if(VarTm2 > 60.0f)
               {
				   VarTm2 = 52.0f;
				}

               dt =
               ms_counter - t0;
               t0 = dt - t0;
               P = 100 * (VarTm2 - VarF(SAT)) / VarTm2;
               I = I + P * dt;
               D = (P-Ep) / dt;
               Ep = P;
               BlowerFan = BlowerFan + BlowerFan * (Kp*P+Ki*I+Kd*D)/100;
               BlowerFan = FLR(BlowerFan);
               PWMDutyWrite(BlowerFan, PWM45);

        }
		else if(CatchVars[2] == 2)
        {
            fanEF  = ( int )(CatchVars[4] * 1000.0f / 100.0f); //(Vout*4095/200);//(long) (EFhtml*4095/5);//
            fanCF  = ( int )(CatchVars[3] * 1000.0f / 100.0f );
            DS     = ( int )(CatchVars[6] * 1000.0f / 100.0f );
            fanEF  = FLR( fanEF );
            fanCF  = FLR( fanCF );
            DS     = FLR( DS  );

			//void PWMDutyWrite( uint value, int channel_id )
			//This function writes an 8-bit duty value if the specified channel is a single PWM channel,
			//PWM01 = Output 16 bit resolution  to PP1
			//PWM23 = Output 16 bit resolution  to PP3
			//PWM45 = Output 16 bit resolution  to PP5
            PWMDutyWrite(fanEF, PWM01);
			PWMDutyWrite(DS, PWM23);
            PWMDutyWrite(fanCF, PWM45);


            PORTM ^= (PORTM^CatchVars[5]);

        }
		else if(CatchVars[2]==3)//OEM
        {
			//void PWMDutyWrite( uint value, int channel_id )
			//Valid 16-bit (concatenated) channel_id constants are PWM01, PWM23, PWM45, and PWM67;
			//concatenated outputs are available on the numerically higher channel pin mentioned in each named constant.
			PWMDutyWrite(999, PWM01);
			PWMDutyWrite(0  , PWM23);
            PWMDutyWrite(999, PWM45);

        }
        else
		{
			//print("\nSomehow neighter control");
        }

		//uint PWMDutyRead( int channel_id )
		//Returns the contents of the specified PWM (pulse-width modulated) duty register.
		//Valid channel_id parameters for 8-bit PWM channels are in the range 0 to 7.
        VarTm = PWMDutyRead(PWM01)/10.0f;
        //VarS(Fan, VarTm);
		Fan = VarTm;
		
		 VarTm = PWMDutyRead(PWM23)/10.0f;
        VarS(Damper, VarTm);
        VarTm = PWMDutyRead(PWM45)/10.0f;
        VarS(Blower, VarTm);


        RELEASE( &data_resource );
        Pause();
    }

}


float EERlast5[5], EERavg=0 ,dEER;
void SScheck_loop( void )
{
	int XX     = 4;
    start_time = 0;         // init variable
    InitElapsedTime();      // init TIMESLICE_COUNT
    StartFunctionTimer();   // enable OC3 interrupt to call TheFunction() each second
    StartTimeslicer();      // start timeslicer; also calls ENABLE_INTERRUPTS
//  ENABLE_INTERRUPTS();    // would be needed if StartTimeslicer weren't present

    print("\nSS loop on\n");
    while( 1 )
    {
        if(SScheck == 1)
        {  //print("\nSS check\n");

            EERavg=0.0f;

            GET( &data_resource );
            for(XX = 4; XX > 0; XX --)
            {
				EERlast5[XX] = EERlast5[XX-1];
                EERavg      += EERlast5[XX];

            }
            VarTm       = VarF(EERv);
            EERlast5[0] = VarTm;
			EERavg     += EERlast5[0];

            EERavg = EERavg/5.0f;



            if(EERlast5[0] < EERavg * 1.05f && EERlast5[0] > EERavg * 0.95f)
            {

				SS_EERs[2] = SS_EERs[1];
                SS_EERs[1] = SS_EERs[0];
                SS_EERs[0] = EERlast5[0];

                SSresult = 1;

            }

            RELEASE( &data_resource );
            SScheck = 0;
        }
        Pause();
    }
}


void Init_ControllOut( void )
{   //To_DAC12( 4095/2,  DAC12_CH0, WAIM_MODULE_NUM );
    PWMDutyWrite(500, PWM01);
    BUILD_C_TASK( 0, 0, &ControllOut_task );        // build the service task
    ACTIVATE( ControllOut_loop, &ControllOut_task ); // activate the service routine
}

void Init_SScheck( void )
{   print("\nSS init\n");
    BUILD_C_TASK( 0, 0, &SScheck_task );        // build the service task
    ACTIVATE( SScheck_loop, &SScheck_task ); // activate the service routine
}


