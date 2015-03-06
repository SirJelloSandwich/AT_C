
#include "global.h"

#define PMmax 3750
float Fan = 0;
float EAT = 0;
float VarF(char VAR)
{
    return FetchFloat(PAGED_RAM_XADDR + VAR * sizeof( float ));
}

void  VarS(char VAR, float val)
{
    StoreFloat(val, PAGED_RAM_XADDR + VAR * sizeof( float ));
}


float VarTm;

const char LoP=1,      HiP=2,
         highFlowPSI=3,       P4=4,
         SucSat=5,   DisSat=6,
         LowTemp=7,   HiTemp=8,
         OAT=9,      
         degF_Lo=11, degF_Hi=12,
         LiqSC=13,   IEn=14,
         OEn=15,     GPM=16,
         MF=17,      R_Eff=18,
         BTUH=19,    tons=20,
         EnergykW=21,    EERv=22,
         MFPM=23,    Rho=24,
         VapSH=25,   Mew=26,
         SAT=27,      LAT=28,
         ERH=29;

const char  Blower=31, Damper=32;
const char Hcal=33, Fcal=34, m=35, b=36;

const char P1off=37, P2off=38, P3off=39, T1off=40, T2off=41, T3off=42, EAToff=43, T5off=44, T6off=45,Woff=46;

char X1=0;

float CalcTherm(float T)
{
  //float Offset;
  T = 10000.0f * T / ( 65536.0f - T );
  T = 1.0f / ( ( logf( T / 10000.0f ) / ( 0.0f - 0.9555f * logf( T ) * logf( T ) - 37.937f * logf( T ) + 4014.8f ) ) + 1.0f / 298.15f )-273.15f;
  T = 9.0f/5.0f*T+32.0f;

  return T;
}

void CalcPwr( void )
{
    if( CatchVars[0] == 1 )
    {
      VarTm= VarF(EnergykW)*PMmax/1024.0f;
      VarS(EnergykW, VarTm);
    }
    else if( CatchVars[0] == 2 )
    {
      VarTm = sqrtf(3.0f)*VarF(EnergykW)*PMmax/1024.0f;
      VarS(EnergykW, VarTm);
    }
    else if( CatchVars[0] == 3 )
    {
      VarTm = sqrtf(3.0f)*VarF(EnergykW)*PMmax/1024.0f;
      VarS(EnergykW, VarTm);
    }
}

void CALCULATER410a( void )
{

    VarTm=3.0f;

    VarTm=VarF(LoP);
    VarTm = ( 0.8279f - 0.0016f *   VarTm) *  VarTm - 35.455f;
    VarS(SucSat, VarTm);//!---SucSat=Sst,  in HTML---!//

    VarTm = VarF(HiP);
    VarTm = ( 0.3784f - 0.0002f *  VarTm) * VarTm + 3.2373f;
    VarS(DisSat, VarTm);//!---DisSat=Slt,  in HTML---!//

/***********************************
    VarTm = VarF( HiTemp );
    VarTm = CalcTherm( VarTm )-VarF(T1off);
    VarS(HiTemp, VarTm);

    VarTm = VarF( LowTemp );
    VarTm = CalcTherm( VarTm )-VarF(T2off);
    VarS(LowTemp, VarTm);

    VarTm = VarF( OAT );
    VarTm = CalcTherm( VarTm )-VarF(T3off);
    VarS(OAT, VarTm);

    VarTm = VarF( SAT );
    VarTm = CalcTherm( VarTm )-VarF(T5off);
    VarS(SAT, VarTm);

    VarTm = VarF( LAT );
    VarTm = CalcTherm( VarTm )-VarF(T6off);
    VarS(LAT, VarTm);
***********************************************/

/***********************************/
    VarTm = VarF( HiTemp );
	VarTm = CalcTherm( VarTm );
	temporaryOffset = (tempRef - VarTm);
	VarTm = (VarTm + temporaryOffset);
    VarS(HiTemp, VarTm);

    VarTm = VarF( LowTemp );
    VarTm = CalcTherm( VarTm )-VarF(T2off);
    VarS(LowTemp, VarTm);

    VarTm = VarF( OAT );
    VarTm = CalcTherm( VarTm )-VarF(T3off);
    VarS(OAT, VarTm);

    VarTm = VarF( SAT );
    VarTm = CalcTherm( VarTm )-VarF(T5off);
    VarS(SAT, VarTm);

    VarTm = VarF( LAT );
    VarTm = CalcTherm( VarTm )-VarF(T6off);
    VarS(LAT, VarTm);
/***********************************************/
    VarTm = VarF(DisSat) - VarF(HiTemp);
    VarS(LiqSC , VarTm);
    VarTm=fabsf(VarTm);
    VarS(degF_Hi ,  VarTm);

    VarTm = VarF(LowTemp)-VarF(SucSat);
    VarS(VapSH , VarTm); //Done
    VarTm=fabsf(VarTm);
    VarS(degF_Lo , VarTm );

    VarTm = 0.39046f * VarF(DisSat) + 73.52976f - ( ( 0.0000116f * ( VarF(HiTemp) + VarF(DisSat) ) / 2.0f - 0.0001515f ) * ( VarF(HiTemp) + VarF(DisSat) ) / 2.0f + 0.3535818f ) * VarF(LiqSC); // Done
    VarS(IEn , VarTm);

    VarTm = ( 0.125127f - 0.000754f * VarF(SucSat) ) * VarF(SucSat) + 178.103733f - ( ( 0.00002f * ( VarF(LowTemp) + VarF(SucSat) ) / 2.0f - 0.0003063f ) * ( VarF(LowTemp) + VarF(SucSat) ) / 2.0f + 0.2557576f ) * VarF(VapSH);
    VarS(OEn , VarTm);

    VarTm=VarF(HiP)-VarF(Hcal)-(VarF(highFlowPSI)-VarF(Fcal));

    VarTm = fabsf(VarTm);
    VarTm = VarF(m)*VarTm+VarF(b);

    VarS(GPM , VarTm);

    VarTm = VarF(DisSat);
    VarTm =( 76.96405f - 0.00047f * VarTm * VarTm - 0.10604f * VarTm ) / 7.48052f; //  lbm/Gal
    VarS(Rho, VarTm);

    VarTm = VarF(GPM)* VarF(Rho);//VarF(GPM) * 67.6f/7.48052f;
    VarS(MFPM , VarTm); //  lbm/min
    VarTm*=60.0f;
    VarS(MF , VarTm); //  lbm/hr

    VarTm = VarF(OEn) - VarF(IEn);
    VarS(R_Eff , VarTm); // Done
    VarTm = VarTm * VarF(MF);
    VarS(BTUH , VarTm); // Done
    VarTm=VarTm/12000.0f;
    VarS(tons , VarTm );

    CalcPwr();

    VarTm = VarF(BTUH) / VarF(EnergykW);

    VarS(EERv , VarTm);

    VarTm = VarF(ERH);
    VarTm = 14.37f* VarTm*VarTm + 3.4209f*VarTm -1.9207f*VarTm*VarTm*VarTm - 12.421f;
    VarTm= VarTm-VarF(Woff);
    VarS(ERH, VarTm);
	
	/**********************************/
	VarTm = EAT;
	//VarTm = 10000.0f * VarTm / ( 1024.0f - VarTm );
	VarTm = 10000.0f * VarTm / ( 65536.0f - VarTm );
	VarTm = logf(VarTm);
	VarTm = 454.38f - 0.1032f*VarTm*VarTm*VarTm + 4.4502f*VarTm*VarTm - 78.855f*VarTm;
	VarTm = 9.0f/5.0f*VarTm+32.0f;
	EAT = VarTm;    
/***********************************************************************************************/

    if(!(CSwitches & 00000111))
    {
        VarS(EERv , 0.0f);
        VarS(EnergykW , 0.0f);//WaTs is "PWR" in HTML and Energy.kW in JS
		Fan = 0.0f;
    }
	
	/*
	if(!(CSwitches & 01110000))
    {
        VarS(EERv , 0.0f);
        VarS(EnergykW , 0.0f);//WaTs is "PWR" in HTML and Energy.kW in JS
		Fan = 0.0f;
    }
	*/
}


void CALCULATER22( void )
{

}


