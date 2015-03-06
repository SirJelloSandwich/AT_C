#include <mosaic\allqed.h>
#define PAGED_RAM_XADDR 0x148000

float  VarF(char VAR);
void   VarS(char , float );
extern float VarTm;
extern const char    LoP,     HiP,
               highFlowPSI,      P4,
               SucSat,  DisSat,
               LowTemp,  HiTemp,
               OAT,      
               degF_Lo, degF_Hi,
               LiqSC,   IEn,
               OEn,     GPM,
               MF,      R_Eff,
               BTUH,    tons,
               EnergykW,    EERv,
               MFPM,    Rho,
               VapSH, SAT, LAT, ERH;//   Vt;

extern const char  Blower, Damper;

extern const char Hcal, Fcal, m, b;

extern const char P1off, P2off, P3off, T1off, T2off, T3off, EAToff, T5off, T6off, Woff;

void CALCULATER410a( void );
void CALCULATER22( void );

float EAT;
float Fan;
