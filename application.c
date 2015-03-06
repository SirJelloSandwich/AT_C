
#include "global.h"

boolean B12;

unsigned char CatchVars[8];
float tempRef;
float temporaryOffset;
float _eeprom _tempRef;


/*#define WBSKT_LONG( NAME, INITIAL_VALUE ) \
char wbskt_typeof_##NAME() { return WBSKT_TYPE_LONG; }    \
SAVE_STRING( wbskt_nameof_##NAME, #NAME );                \
SAVE_STRING( wbskt_argsof_##NAME, "" );                   \
volatile long NAME = INITIAL_VALUE*/

WBSKT_LONG( HTMLPwrC, 0 );
WBSKT_LONG( HTMLRfgtC, 0 );
WBSKT_LONG( CtrlMode, 0 );
WBSKT_LONG( RSV, 0 );
WBSKT_LONG( CFhtml, 0 );
WBSKT_LONG( EFhtml, 0 );
WBSKT_LONG( DShtml, 0 );
WBSKT_LONG( FlowSetZero, 0 );

/*#define WBSKT_FLOAT( NAME, INITIAL_VALUE ) \
char wbskt_typeof_##NAME() { return WBSKT_TYPE_FLOAT; }   \
SAVE_STRING( wbskt_nameof_##NAME, #NAME );                \
SAVE_STRING( wbskt_argsof_##NAME, "" );                   \
volatile float NAME = INITIAL_VALUE*/

WBSKT_FLOAT( M, 0.0f );
WBSKT_FLOAT( B, 0.0f );
WBSKT_FLOAT( p1off, 0.0f );
WBSKT_FLOAT( p2off, 0.0f );
WBSKT_FLOAT( p3off, 0.0f );
WBSKT_FLOAT( tRef, 0.0f );
WBSKT_FLOAT( t2off, 0.0f );
WBSKT_FLOAT( t3off, 0.0f );
WBSKT_FLOAT( t4off, 0.0f );
WBSKT_FLOAT( t5off, 0.0f );
WBSKT_FLOAT( t6off, 0.0f );
WBSKT_FLOAT( woff, 0.0f );

char ConState;

// This runs one time at the start of the program
void Application_Run_Once( void )
{
    PORTM = 0x00;//Turn all bits low

	temporaryOffset = 0.0f;
    tempRef = 0.0f;

/*#define WBSKT_CATCH( NAME ) { char metadata_type = wbskt_typeof_##NAME(); \
json_object* object_wrapper = metadata_type ? json_object_new_long( metadata_type ) \
: Wbskt_Event_Parse_Params( wbskt_argsof_##NAME() ); LOAD_STRING( wbskt_nameof_##NAME ); \
json_object_object_add( wbskt_catch_pointers, LOADED_STRING, json_object_new_long( (unsigned)&NAME ) ); \
json_object_object_add( wbskt_catch_types,    LOADED_STRING, object_wrapper ); }*/

    WBSKT_CATCH( HTMLPwrC );
    WBSKT_CATCH( HTMLRfgtC );
    WBSKT_CATCH( CtrlMode );
    WBSKT_CATCH( RSV );
    WBSKT_CATCH( CFhtml );
    WBSKT_CATCH( EFhtml );
    WBSKT_CATCH( DShtml );

    WBSKT_CATCH( FlowSetZero );
    WBSKT_CATCH( M );
    WBSKT_CATCH( B );

    WBSKT_CATCH( p1off );
    WBSKT_CATCH( p2off );
    WBSKT_CATCH( p3off );

    WBSKT_CATCH( tRef);
    WBSKT_CATCH( t2off );
    WBSKT_CATCH( t3off );
    WBSKT_CATCH( t4off );
    WBSKT_CATCH( t5off );
    WBSKT_CATCH( t6off );

    WBSKT_CATCH( woff );

}

SAVE_STRING( PDQ_welcome, "\nPDQ: Connection Established!\n" );

SAVE_STRING( varname_LoP, "LoP" );
SAVE_STRING( varname_SucSat, "SucSat" );
SAVE_STRING( varname_LowTemp, "LowTemp" );
SAVE_STRING( varname_degF_Lo, "degF_Lo" );

SAVE_STRING( varname_HiP, "HiP" );
SAVE_STRING( varname_highFlowPSI, "highFlowPSI");
SAVE_STRING( varname_DisSat, "DisSat" );
SAVE_STRING( varname_HiTemp, "HiTemp" );
SAVE_STRING( varname_degF_Hi, "degF_Hi" );

SAVE_STRING( varname_Watt, "Watt" );
SAVE_STRING( varname_kWPton, "kWPton" );

SAVE_STRING( varname_EERv, "EERv" );
SAVE_STRING( varname_BTUH, "BTUH" );
SAVE_STRING( varname_tons, "tons" );
SAVE_STRING( varname_Evap, "Evap" );

SAVE_STRING( varname_MFPM, "MFPM" );
SAVE_STRING( varname_EnergykW, "EnergykW" );

SAVE_STRING( varname_hliq, "hliq" );
SAVE_STRING( varname_hvap, "hvap" );
SAVE_STRING( varname_Dh, "Dh" );
SAVE_STRING( varname_Rho, "Rho" );

SAVE_STRING( varname_Flow, "Flow" );

SAVE_STRING( varname_OAT, "OAT" );
SAVE_STRING( varname_SAT, "SAT" );
SAVE_STRING( varname_EAT, "EAT" );
SAVE_STRING( varname_LAT, "LAT" );
SAVE_STRING( varname_ERH, "ERH" );
SAVE_STRING( varname_FAN, "FAN" );
SAVE_STRING( varname_BLOWER, "BLOWER" );
SAVE_STRING( varname_DAMPER, "DAMPER" );

static xaddr outbuf;
static unsigned outbuf_size;

// Assumes value to send is in global VarTm, name is in LOADED_STRING (Forth task pad),
// and globals outbuf and outbufsize have been initialized with WS_Frame_Outbuf[size].
void Send_VarTm()
{
    unsigned result_len = Wbskt_Float_LoadFrame( outbuf, outbuf_size, LOADED_STRING, "dummy_attr", VarTm );
    if( result_len )
	{
		WS_Send_Frame( outbuf, result_len, E_MODULENUM );
		Ether_Await_Response( E_MODULENUM );
	}

}

#define SEND_FLOAT_NAMED( NAME ) VarTm = VarF( NAME ); LOAD_STRING( varname_##NAME ); Send_VarTm()


char SendMSG=0;

void RECvars(int II, long HTMLvar)
{
    if( CatchVars[II] != HTMLvar && (II > 2 ? TRUE : (HTMLvar != 0)))
    {
        CatchVars[II] = HTMLvar;
    }

}
// RECvars2(T1off,t1off);
void RECvars2(unsigned char II, float HTMLvar)
{
    VarTm = VarF(II);

    if( VarTm != HTMLvar)
    {
		VarTm = HTMLvar;
        VarS (II,VarTm);
    }

}

SAVE_STRING( pdq_connected_jsstr, " 'PDQ: Connection Established!' " );
SAVE_STRING( ethersmart_error_msgfmt, "EtherSmart driver error %#x\n" );

void Application_Loop( void )
{
    int websocket_open, last_websocket_status;
    unsigned long last_uptime, this_uptime;
    Wbskt_Error_Type wbskt_err;
    unsigned result_len, eth_err;
    //float i[3] = {1.0f, 1.0f, 1.0f}; //,j;

    // These values are constant after Ethernet Wildcard initialization.
    outbuf = WS_Frame_Outbuf( E_MODULENUM );
    outbuf_size = WS_Frame_Outbufsize( E_MODULENUM );

    last_websocket_status = FALSE;

    while( 1 )
    {
        websocket_open = WS_Is_Open( E_MODULENUM );

        if( last_websocket_status != websocket_open && websocket_open )
        {
            LOAD_STRING( pdq_connected_jsstr );
            result_len = Wbskt_Event_LoadFrame( outbuf, outbuf_size, "Log", LOADED_STRING );
            if( result_len )
            {
                WS_Send_Frame( outbuf, result_len, E_MODULENUM );
                Ether_Await_Response( E_MODULENUM );
            }

            FLASH_PRINT( PDQ_welcome );

        } last_websocket_status = websocket_open;

        if( websocket_open )
        {

            GET( &data_resource );

            if(SendMSG==1)
			{

                // QED-Forth floating point formatting.  See glossary entry for FPtoString().

				//LEFT_PLACES = A 16-bit user variable that specifies the number of digits
				//to be displayed to the left of the decimal point when a floating point
				//number is displayed in FIXED format.
                LEFT_PLACES = 3;
                RIGHT_PLACES = 3;

				//A user variable that holds the number of digits to be displayed in the
				//mantissa when a floating point number is displayed in SCIENTIFIC format.
				// Only used if number won't fit in FIXED format.
                MANTISSA_PLACES = 6;

				//#define SEND_FLOAT_NAMED( NAME ) VarTm = VarF( NAME ); LOAD_STRING( varname_##NAME ); Send_VarTm()

                SEND_FLOAT_NAMED( LoP );
                SEND_FLOAT_NAMED( SucSat );
                SEND_FLOAT_NAMED( LowTemp );
                SEND_FLOAT_NAMED( degF_Lo );
                SEND_FLOAT_NAMED( HiP );
				SEND_FLOAT_NAMED( highFlowPSI);
                SEND_FLOAT_NAMED( DisSat );
                SEND_FLOAT_NAMED( HiTemp );
                SEND_FLOAT_NAMED( degF_Hi );

                LOAD_STRING( varname_Watt );   VarTm = VarF(EnergykW); Send_VarTm();

                LOAD_STRING( varname_kWPton ); VarTm = VarF(EnergykW) / ( 1000.0f * VarF(tons) ); Send_VarTm();

                SEND_FLOAT_NAMED( EERv );
                SEND_FLOAT_NAMED( BTUH );
                SEND_FLOAT_NAMED( tons );

                LOAD_STRING( varname_Evap ); VarTm = VarF(R_Eff); Send_VarTm();

                SEND_FLOAT_NAMED( MFPM );

                LOAD_STRING( varname_EnergykW ); VarTm = VarF(EnergykW) / 1000.0f; Send_VarTm();

                LOAD_STRING( varname_hliq ); VarTm = VarF(IEn); Send_VarTm();

                LOAD_STRING( varname_hvap ); VarTm = VarF(OEn); Send_VarTm();

                LOAD_STRING( varname_Dh );   VarTm = VarF(R_Eff); Send_VarTm();

                SEND_FLOAT_NAMED( Rho );

                LOAD_STRING( varname_Flow ); VarTm = VarF(GPM); Send_VarTm();

                LOAD_STRING( varname_OAT );  VarTm = VarF(OAT); Send_VarTm();

              	LOAD_STRING( varname_EAT );  VarTm = EAT ; Send_VarTm();

                LOAD_STRING( varname_SAT );  VarTm = VarF(SAT); Send_VarTm();

                LOAD_STRING( varname_LAT );  VarTm = VarF(LAT); Send_VarTm();

                SEND_FLOAT_NAMED( ERH );

                LOAD_STRING( varname_FAN );    VarTm = VarF(Fan); Send_VarTm();

                LOAD_STRING( varname_BLOWER ); VarTm = VarF(Blower); Send_VarTm();

                LOAD_STRING( varname_DAMPER ); VarTm = VarF(Damper); Send_VarTm();

                SendMSG=0;
            }

                RECvars(0,HTMLPwrC);
                RECvars(1,HTMLRfgtC);
                RECvars(2,CtrlMode);
                RECvars(3,CFhtml);
                RECvars(4,EFhtml);
                RECvars(5,RSV);
                RECvars(6,DShtml);

                RECvars2(m,M);
                RECvars2(b,B);

                if(FlowSetZero!=FS0s && FlowSetZero!=0)
				{
					FS0s = (unsigned char)FlowSetZero;
				}

                RECvars2(P1off,p1off);
                RECvars2(P2off,p2off);
                RECvars2(P3off,p3off);

                if (tempRef != tRef)
                {
                    tempRef = tRef;
					printf("tempCal %f\n",tempRef);

					StoreEEFloat(tempRef, &_tempRef);
                }


				//RECvars2(x,y) y gets stored into x
                //RECvars2(T1off,t1off);
				//RECvars2(T1off,t1off);
				//printf("T1off %f\n",T1off);
                //RECvars2(T2off,t2off);
                // RECvars2(T3off,t3off);
                //RECvars2(T4off,t4off);
                //RECvars2(T5off,t5off);
                //RECvars2(T6off,t6off);

                RECvars2(Woff,woff);

            RELEASE( &data_resource );
        }

        this_uptime = ReadElapsedSeconds();
        if( this_uptime != last_uptime )
        {
            WBSKT_SEND_HEARTBEAT( E_MODULENUM );
            last_uptime = this_uptime;
        }

        wbskt_err = Wbskt_Incoming_Error( E_MODULENUM );
        if( wbskt_err )
        {
            Wbskt_ErrMsg_Puts( wbskt_err );
            WBSKT_SEND_ERRMSG( wbskt_err, E_MODULENUM );
        }

        eth_err = Ether_Error( E_MODULENUM );
        if( eth_err )
        {
            Ether_Error_Clear( E_MODULENUM );
            FLASH_IPRINTF( ethersmart_error_msgfmt, eth_err );
        }

        Pause();
    }
}

TASK application_task;  // allocate task area

void Init_Application( void )
{
    Application_Run_Once();

    BUILD_C_TASK( 0, 0, &application_task );                // build the service task
    ACTIVATE( Application_Loop, &application_task ); // activate the service routine
}
