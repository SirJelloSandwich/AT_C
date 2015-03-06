;;;-----------------------------------------
;;; Start MC68HCS12 gcc assembly output
;;; gcc compiler 3.3.6-m68hc1x-20070214
;;; Command:	C:\MosaicPlus\c\tools\gcc\bin\..\lib\gcc-lib\m6811-elf\3.3.6-m68hc1x-20070214\cc1.exe -quiet -IC:/MosaicPlus/c/libraries/include -iprefix C:\MosaicPlus\c\tools\gcc\bin\../lib/gcc-lib/m6811-elf\3.3.6-m68hc1x-20070214\ -D__GNUC__=3 -D__GNUC_MINOR__=3 -D__GNUC_PATCHLEVEL__=6 -Dmc68hc1x -D__mc68hc1x__ -D__mc68hc1x -D__HAVE_SHORT_INT__ -D__INT__=16 -Dmc6812 -DMC6812 -Dmc68hcs12 -D__USE_RTC__ ControllOut.c -quiet -dumpbase ControllOut.c -minmax -mshort -mlong-calls -m68hcs12 -mauto-incdec -auxbase-strip C:/MosaicPlus/my_projects/Rev7/asms/ControllOut -g -Wall -fverbose-asm -o C:/MosaicPlus/my_projects/Rev7/asms/ControllOut.s
;;; Compiled:	Fri Mar 06 13:43:00 2015
;;; (META)compiled by GNU C version 3.4.2 (mingw-special).
;;;-----------------------------------------
	.file	"ControllOut.c"
	.mode mshort
; GNU C version 3.3.6-m68hc1x-20070214 (m6811-elf)
;	compiled by GNU C version 3.4.2 (mingw-special).
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -IC:/MosaicPlus/c/libraries/include -iprefix
; -D__GNUC__=3 -D__GNUC_MINOR__=3 -D__GNUC_PATCHLEVEL__=6 -Dmc68hc1x
; -D__mc68hc1x__ -D__mc68hc1x -D__HAVE_SHORT_INT__ -D__INT__=16 -Dmc6812
; -DMC6812 -Dmc68hcs12 -D__USE_RTC__ -minmax -mshort -mlong-calls -m68hcs12
; -mauto-incdec -auxbase-strip -g -Wall -fverbose-asm
; options enabled:  -fpeephole -ffunction-cse -fkeep-static-consts
; -fpcc-struct-return -fgcse-lm -fgcse-sm -fsched-interblock -fsched-spec
; -fbranch-count-reg -fcommon -fverbose-asm -fgnu-linker -fargument-alias
; -fzero-initialized-in-bss -fident -fmath-errno -ftrapping-math -mshort
; -mauto-incdec -minmax -mlong-calls -mrelax -m68hc12 -m68hcs12 -m6812
; -m68S12 -msoft-reg-count=0

	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.sect	.text
.Ltext0:
; Begin inline assembler code
#APP
	   .globl _start
	   .macro place_rom_object symname filename
		.sect .text
		.skip 2
	   .globl \symname
	   .type \symname, @object
	\symname:
		.incbin \filename
	   .byte 0x00
	   .endm
	   .macro make_wrapper cfuncname wfuncname inparms outparms
		  .pushsection .text
		  .globl \wfuncname
		  .type \wfuncname,@function
	\wfuncname:
	   ldx 0x1000
	   ldd 26,x
	   pshy
	   pshd
	   sty 26,x
	   sty 0x1004
	   .ifeq \inparms-2
	     ldd 0,y
	   .endif
		call \cfuncname
	   ldx 0x1000
	   puly
	   sty 26,x
	   sty 0x1004
	   puly
	   .ifeq \outparms-1
		  clra
	   .endif
	   .if \inparms
	     .ifeq \outparms
	       iny
	       iny
	     .endif
	   .endif
	   .if \outparms
	     .ifeq \inparms
	       dey
	       dey
	     .endif
		  std 0,y
	   .endif
		rts
		.size \wfuncname, .-\wfuncname
		.popsection
	   .endm
	.weak	wbskt_linker_reference_sniprintf
	.set	wbskt_linker_reference_sniprintf,sniprintf
	.weak	wbskt_linker_reference_free
	.set	wbskt_linker_reference_free,free
	.weak	wbskt_linker_reference_malloc
	.set	wbskt_linker_reference_malloc,malloc
	.weak	wbskt_linker_reference_realloc
	.set	wbskt_linker_reference_realloc,realloc
	.weak	wbskt_linker_reference_calloc
	.set	wbskt_linker_reference_calloc,calloc
	.weak	wbskt_linker_reference_strdup
	.set	wbskt_linker_reference_strdup,strdup
	.weak	wbskt_linker_reference_strtol
	.set	wbskt_linker_reference_strtol,strtol
	.weak	wbskt_linker_reference_strtof
	.set	wbskt_linker_reference_strtof,strtof
	.weak	wbskt_linker_reference_abort
	.set	wbskt_linker_reference_abort,abort
	.weak	wbskt_linker_reference_strnlen
	.set	wbskt_linker_reference_strnlen,strnlen
; End of inline assembler code
#NO_APP
	.local	ms_counter
	.comm	ms_counter,2,1
	.sect	.data
	.type	time_period, @object
	.size	time_period, 2
time_period:
	.word	5000
	.type	next_execution_time, @object
	.size	next_execution_time, 2
next_execution_time:
	.word	5000
	.local	SScheck
	.comm	SScheck,1,1
	.local	SSresult
	.comm	SSresult,1,1
	.type	next_execution_time2, @object
	.size	next_execution_time2, 2
next_execution_time2:
	.word	200
	.globl	SSeerAVG
	.type	SSeerAVG, @object
	.size	SSeerAVG, 4
SSeerAVG:
	.long	0
	; extern	SendMSG
	; extern	_io_ports
	.sect	.text
	.globl	FunctionTimer
	.type	FunctionTimer,@function
	.far	FunctionTimer
FunctionTimer:
.LFB7:
.LM1:
	movw	_.frame,2,-sp
	sts	_.frame
.LM2:
	ldy	ms_counter	;  ms_counter
	tfr	y,d
	addd	#1
	std	ms_counter	;  ms_counter
.LM3:
	ldd	ms_counter	;  ms_counter
	cpd	next_execution_time2	;  next_execution_time2
	bne	.L4
.LM4:
	movb	#1,SendMSG	;  SendMSG
.LM5:
	ldy	next_execution_time2	;  next_execution_time2
	tfr	y,d
	addd	#200
	std	next_execution_time2	;  next_execution_time2
.L4:
.LM6:
	ldd	ms_counter	;  ms_counter
	cpd	next_execution_time	;  next_execution_time
	bne	.L5
.LM7:
	movb	#1,SScheck	;  SScheck
.LM8:
	ldd	next_execution_time	;  next_execution_time
	addd	time_period	;  time_period
	std	next_execution_time	;  next_execution_time
.L5:
.LM9:
	ldy	_io_ports+86
	tfr	y,d
	addd	#625
	std	_io_ports+86
.LM10:
	movw	2,sp+,_.frame
	rtc
.LFE7:
	.size	FunctionTimer, .-FunctionTimer
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	FunctionTimer_ISR
	.type	FunctionTimer_ISR,@function
	FunctionTimer_ISR:
	call	FunctionTimer
	rts
	.size	FunctionTimer_ISR, .-FunctionTimer_ISR
	.popsection
	.pushsection	.text
	.globl	FunctionTimer_ISR_get_xaddr
	.type	FunctionTimer_ISR_get_xaddr,@function
	.far	FunctionTimer_ISR_get_xaddr
FunctionTimer_ISR_get_xaddr:
	clra
	ldab	#%page(FunctionTimer_ISR)
	ldx	#%addr(FunctionTimer_ISR)
	exg	d,x
	rtc
	.size	FunctionTimer_ISR_get_xaddr, .-FunctionTimer_ISR_get_xaddr
	.popsection
	; extern	Attach
	; extern	FunctionTimer_ISR_get_xaddr
	; extern	ECTFastClear
	; extern	OCAction
	; extern	OutputCompare
	; extern	OCRegWrite
	; extern	ECTClearInterruptFlag
	; extern	ECTInterruptEnable
; End of inline assembler code
#NO_APP
	.globl	StartFunctionTimer
	.type	StartFunctionTimer,@function
	.far	StartFunctionTimer
StartFunctionTimer:
.LFB9:
.LM11:
	movw	_.frame,2,-sp
	sts	_.frame
.LM12:
	call	FunctionTimer_ISR_get_xaddr
	movw	#1432,2,-sp
	call	Attach
	leas	2,sp
.LM13:
	call	ECTFastClear
.LM14:
	clr	ms_counter	;  ms_counter
	clr	ms_counter+1	;  ms_counter
.LM15:
	movw	#5000,next_execution_time	;  next_execution_time
	movw	#5000,time_period	;  time_period
.LM16:
	movw	#3,2,-sp
	ldd	#0
	call	OCAction
	leas	2,sp
.LM17:
	ldd	#3
	call	OutputCompare
.LM18:
	ldy	_io_ports+68
	tfr	y,d
	addd	#625
	movw	#3,2,-sp
	call	OCRegWrite
	leas	2,sp
.LM19:
	ldd	#3
	call	ECTClearInterruptFlag
.LM20:
	ldd	#3
	call	ECTInterruptEnable
.LM21:
	movw	2,sp+,_.frame
	rtc
.LFE9:
	.size	StartFunctionTimer, .-StartFunctionTimer
	.globl	mn
	.type	mn,@function
	.far	mn
mn:
.LFB11:
.LM22:
	movw	_.frame,2,-sp
	pshx
	pshx
	sts	_.frame
	ldx	_.frame
	std	0,x	;  a
.LM23:
	ldx	_.frame
	movw	0,x,2,x	;  a
	ldx	_.frame
	ldd	2,x
	cpd	#0
	bge	.L8
	ldx	_.frame
	clr	2,x
	clr	3,x
.L8:
	ldx	_.frame
	ldd	2,x
	pulx
	pulx
	movw	2,sp+,_.frame
	rtc
.LFE11:
	.size	mn, .-mn
	.globl	mx
	.type	mx,@function
	.far	mx
mx:
.LFB13:
.LM24:
	movw	_.frame,2,-sp
	pshx
	pshx
	sts	_.frame
	ldx	_.frame
	std	0,x	;  b
.LM25:
	ldx	_.frame
	movw	0,x,2,x	;  b
	ldx	_.frame
	ldd	2,x
	cpd	#999
	ble	.L10
	ldx	_.frame
	movw	#999,2,x
.L10:
	ldx	_.frame
	ldd	2,x
	pulx
	pulx
	movw	2,sp+,_.frame
	rtc
.LFE13:
	.size	mx, .-mx
	.globl	FLR
	.type	FLR,@function
	.far	FLR
FLR:
.LFB15:
.LM26:
	movw	_.frame,2,-sp
	pshx
	sts	_.frame
	ldx	_.frame
	std	0,x	;  c
.LM27:
	ldx	_.frame
	ldd	0,x	;  c
	call	mx
	call	mn
	pulx
	movw	2,sp+,_.frame
	rtc
.LFE15:
	.size	FLR, .-FLR
	.globl	EERopt
	.sect	.data
	.type	EERopt, @object
	.size	EERopt, 2
EERopt:
	.word	0
	; extern	EERv
	; extern	CatchVars
	; extern	PWMDutyRead
	; extern	Get
	; extern	data_resource
	; extern	VarF
	; extern	OAT
	; extern	PWMDutyWrite
	; extern	ERH
	; extern	SAT
	; extern	VarTm
	; extern	VarS
	; extern	Damper
	; extern	Blower
	; extern	Release
	; extern	Pause
	.globl	__floatunsisf
	.globl	__ltsf2
	.globl	__mulsf3
	.globl	__addsf3
	.globl	__fixsfsi
	.globl	__gesf2
	.globl	__subsf3
	.globl	__lesf2
	.globl	__divsf3
	.globl	__gtsf2
	.globl	__floatsisf
	.globl	__floatunsisf
	.globl	__floatunsisf
	.globl	__floatunsisf
	.sect	.text
	.globl	ControllOut_loop
	.type	ControllOut_loop,@function
	.far	ControllOut_loop
ControllOut_loop:
.LFB17:
.LM28:
	movw	_.frame,2,-sp
	leas	-13,sp
	sts	_.frame
.LM29:
	ldx	_.frame
.LBB2:
	clr	2,x	;  SS_EERslope
	clr	3,x	;  SS_EERslope
	clr	0,x
	clr	1,x
.LM30:
	ldy	_.frame
	clr	6,y	;  SS_EERslope
	clr	7,y	;  SS_EERslope
	clr	4,y
	clr	5,y
.LM31:
	ldx	#0
	clra
	ldab	EERv	;  EERv
	bsr	__floatunsisf
	std	SS_EERs+2	;  SS_EERs
	stx	SS_EERs
.LM32:
	ldx	#CatchVars
	movb	#2,2,x	;  CatchVars
.LM33:
	ldx	#CatchVars
	movb	#100,3,x	;  CatchVars
.LM34:
	ldx	#CatchVars
	movb	#100,4,x	;  CatchVars
.LM35:
	clr	Ep	;  Ep
	clr	Ep+1	;  Ep
.LM36:
	movw	ms_counter,t0	;  ms_counter,  t0
.LM37:
	ldd	#261
	call	PWMDutyRead
	std	BlowerFan	;  BlowerFan
.L13:
.LM38:
	clr	1,-sp
	clr	1,-sp
	ldd	#data_resource
	call	Get
	leas	2,sp
.LM39:
	clr	_io_ports+576
.LM40:
	ldx	#CatchVars
	ldab	2,x	;  CatchVars
	cmpb	#1
	bne	.L16
	ldab	SSresult	;  SSresult
	cmpb	#1
	bne	.L16
.LM41:
	ldab	OAT	;  OAT
	call	VarF
	std	VarTm2+2	;  VarTm2
	stx	VarTm2
.LM42:
	clr	1,-sp
	clr	1,-sp
	movw	#17056,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__ltsf2
	leas	4,sp
	cpd	#0
	blt	.L18
	bra	.L17
.L18:
.LM43:
	movw	#-19189,2,-sp
	movw	#16286,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	bsr	__mulsf3
	leas	4,sp
	movw	#27053,2,-sp
	movw	#16206,2,-sp
	bsr	__addsf3
	leas	4,sp
	call	__fixsfsi
	std	FanTm	;  FanTm
.LM44:
	ldd	FanTm	;  FanTm
	call	FLR
	std	FanTm	;  FanTm
	bra	.L19
.L17:
.LM45:
	clr	1,-sp
	clr	1,-sp
	movw	#17056,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__gesf2
	leas	4,sp
	cpd	#0
	bge	.L21
	bra	.L20
.L21:
	clr	1,-sp
	clr	1,-sp
	movw	#17066,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__ltsf2
	leas	4,sp
	cpd	#0
	blt	.L22
	bra	.L20
.L22:
.LM46:
	movw	#-734,2,-sp
	movw	#16230,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	bsr	__mulsf3
	leas	4,sp
	pshd
	pshx
	ldd	#11796
	ldx	#17196
	bsr	__subsf3
	leas	4,sp
	call	__fixsfsi
	std	FanTm	;  FanTm
.LM47:
	ldd	FanTm	;  FanTm
	call	FLR
	std	FanTm	;  FanTm
	bra	.L19
.L20:
.LM48:
	clr	1,-sp
	clr	1,-sp
	movw	#17066,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__gesf2
	leas	4,sp
	cpd	#0
	bge	.L25
	bra	.L19
.L25:
.LM49:
	movw	#-11010,2,-sp
	movw	#15928,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	bsr	__mulsf3
	leas	4,sp
	pshd
	pshx
	ldd	#19661
	ldx	#17056
	bsr	__subsf3
	leas	4,sp
	call	__fixsfsi
	std	FanTm	;  FanTm
.LM50:
	ldd	FanTm	;  FanTm
	call	FLR
	std	FanTm	;  FanTm
.L19:
.LM51:
	ldx	FanTm	;  FanTm
	ldd	#10
	exg	x,y
	emul
	exg	x,y
	std	FanTm	;  FanTm
.LM52:
	movw	#257,2,-sp
	ldd	FanTm	;  FanTm
	call	PWMDutyWrite
	leas	2,sp
.LM53:
	ldab	ERH	;  ERH
	call	VarF
	std	VarTm2+2	;  VarTm2
	stx	VarTm2
.LM54:
	clr	1,-sp
	clr	1,-sp
	movw	#16968,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__gesf2
	leas	4,sp
	cpd	#0
	bge	.L27
	bra	.L26
.L27:
	clr	1,-sp
	clr	1,-sp
	movw	#17008,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__lesf2
	leas	4,sp
	cpd	#0
	ble	.L28
	bra	.L26
.L28:
.LM55:
	clr	1,-sp
	clr	1,-sp
	movw	#17530,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	bsr	__mulsf3
	leas	4,sp
	clr	1,-sp
	clr	1,-sp
	movw	#17096,2,-sp
	bsr	__divsf3
	leas	4,sp
	clr	1,-sp
	clr	1,-sp
	movw	#17402,2,-sp
	bsr	__subsf3
	leas	4,sp
	call	__fixsfsi
	std	FanTm	;  FanTm
	bra	.L29
.L26:
.LM56:
	clr	1,-sp
	clr	1,-sp
	movw	#16968,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__ltsf2
	leas	4,sp
	cpd	#0
	blt	.L31
	bra	.L30
.L31:
.LM57:
	clr	FanTm	;  FanTm
	clr	FanTm+1	;  FanTm
	bra	.L29
.L30:
.LM58:
	clr	1,-sp
	clr	1,-sp
	movw	#17008,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__gtsf2
	leas	4,sp
	cpd	#0
	bgt	.L34
	bra	.L29
.L34:
.LM59:
	movw	#100,FanTm	;  FanTm
.L29:
.LM60:
	ldx	FanTm	;  FanTm
	ldd	#6
	exg	x,y
	emul
	exg	x,y
	std	FanTm	;  FanTm
.LM61:
	movw	#259,2,-sp
	ldd	FanTm	;  FanTm
	call	PWMDutyWrite
	leas	2,sp
.LM62:
	clr	1,-sp
	clr	1,-sp
	movw	#16968,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__gesf2
	leas	4,sp
	cpd	#0
	bge	.L36
	bra	.L35
.L36:
	clr	1,-sp
	clr	1,-sp
	movw	#17008,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__lesf2
	leas	4,sp
	cpd	#0
	ble	.L37
	bra	.L35
.L37:
.LM63:
	clr	1,-sp
	clr	1,-sp
	movw	#16948,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	bsr	__mulsf3
	leas	4,sp
	clr	1,-sp
	clr	1,-sp
	movw	#17096,2,-sp
	bsr	__divsf3
	leas	4,sp
	pshd
	pshx
	ldd	#0
	ldx	#17054
	bsr	__subsf3
	leas	4,sp
	std	VarTm2+2	;  VarTm2
	stx	VarTm2
	bra	.L38
.L35:
.LM64:
	clr	1,-sp
	clr	1,-sp
	movw	#16968,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__ltsf2
	leas	4,sp
	cpd	#0
	blt	.L40
	bra	.L39
.L40:
.LM65:
	clr	VarTm2+2	;  VarTm2
	clr	VarTm2+3	;  VarTm2
	movw	#16994,VarTm2
	bra	.L38
.L39:
.LM66:
	clr	1,-sp
	clr	1,-sp
	movw	#17008,2,-sp
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	call	__gtsf2
	leas	4,sp
	cpd	#0
	bgt	.L43
	bra	.L38
.L43:
.LM67:
	clr	VarTm2+2	;  VarTm2
	clr	VarTm2+3	;  VarTm2
	movw	#16976,VarTm2
.L38:
.LM68:
	ldd	ms_counter	;  ms_counter
	subd	t0	;  t0
	std	dt	;  dt
.LM69:
	ldd	dt	;  dt
	subd	t0	;  t0
	std	t0	;  t0
.LM70:
	ldab	SAT	;  SAT
	call	VarF
	pshd
	pshx
	ldd	VarTm2+2	;  VarTm2
	ldx	VarTm2
	bsr	__subsf3
	leas	4,sp
	clr	1,-sp
	clr	1,-sp
	movw	#17096,2,-sp
	bsr	__mulsf3
	leas	4,sp
	ldy	_.frame
	std	11,y
	stx	9,y
	movw	VarTm2+2,2,-sp	;  VarTm2
	movw	VarTm2,2,-sp
	ldy	_.frame
	ldd	11,y
	ldx	9,y
	bsr	__divsf3
	leas	4,sp
	call	__fixsfsi
	std	P	;  P
.LM71:
	ldx	P	;  P
	ldd	dt	;  dt
	exg	x,y
	emul
	exg	x,y
	ldy	I	;  I
	xgdy
	leay	d,y
	xgdy
	std	I	;  I
.LM72:
	ldd	P	;  P
	subd	Ep	;  Ep
	ldx	dt	;  dt
	idivs
	xgdx
	std	(D)	;  D
.LM73:
	movw	P,Ep	;  P,  Ep
.LM74:
	ldd	P	;  P
	addd	I	;  I
	ldx	(D)	;  D
	leax	d,x
	ldd	BlowerFan	;  BlowerFan
	exg	x,y
	emul
	exg	x,y
	ldx	#100
	idivs
	xgdx
	ldy	BlowerFan	;  BlowerFan
	xgdy
	leay	d,y
	xgdy
	std	BlowerFan	;  BlowerFan
.LM75:
	ldd	BlowerFan	;  BlowerFan
	call	FLR
	std	BlowerFan	;  BlowerFan
.LM76:
	movw	#261,2,-sp
	ldd	BlowerFan	;  BlowerFan
	call	PWMDutyWrite
	leas	2,sp
	bra	.L44
.L16:
.LM77:
	ldx	#CatchVars
	ldab	2,x	;  CatchVars
	cmpb	#2
	bne	.L45
.LM78:
	ldx	#CatchVars
	clra
	ldab	4,x	;  CatchVars
	ldx	#0
	tsta
	bpl	.L49
	dex
.L49:
	call	__floatsisf
	clr	1,-sp
	clr	1,-sp
	movw	#17530,2,-sp
	bsr	__mulsf3
	leas	4,sp
	clr	1,-sp
	clr	1,-sp
	movw	#17096,2,-sp
	bsr	__divsf3
	leas	4,sp
	call	__fixsfsi
	std	fanEF	;  fanEF
.LM79:
	ldx	#CatchVars
	clra
	ldab	3,x	;  CatchVars
	ldx	#0
	tsta
	bpl	.L50
	dex
.L50:
	call	__floatsisf
	clr	1,-sp
	clr	1,-sp
	movw	#17530,2,-sp
	bsr	__mulsf3
	leas	4,sp
	clr	1,-sp
	clr	1,-sp
	movw	#17096,2,-sp
	bsr	__divsf3
	leas	4,sp
	call	__fixsfsi
	std	fanCF	;  fanCF
.LM80:
	ldx	#CatchVars
	clra
	ldab	6,x	;  CatchVars
	ldx	#0
	tsta
	bpl	.L51
	dex
.L51:
	call	__floatsisf
	clr	1,-sp
	clr	1,-sp
	movw	#17530,2,-sp
	bsr	__mulsf3
	leas	4,sp
	clr	1,-sp
	clr	1,-sp
	movw	#17096,2,-sp
	bsr	__divsf3
	leas	4,sp
	call	__fixsfsi
	std	DS	;  DS
.LM81:
	ldd	fanEF	;  fanEF
	call	FLR
	std	fanEF	;  fanEF
.LM82:
	ldd	fanCF	;  fanCF
	call	FLR
	std	fanCF	;  fanCF
.LM83:
	ldd	DS	;  DS
	call	FLR
	std	DS	;  DS
.LM84:
	movw	#257,2,-sp
	ldd	fanEF	;  fanEF
	call	PWMDutyWrite
	leas	2,sp
.LM85:
	movw	#259,2,-sp
	ldd	DS	;  DS
	call	PWMDutyWrite
	leas	2,sp
.LM86:
	movw	#261,2,-sp
	ldd	fanCF	;  fanCF
	call	PWMDutyWrite
	leas	2,sp
.LM87:
	ldx	#CatchVars
	ldab	_io_ports+592
	eorb	5,x	;  CatchVars
	ldy	_.frame
	stab	8,y
	ldab	_io_ports+592
	ldx	_.frame
	eorb	8,x
	stab	_io_ports+592
	bra	.L44
.L45:
.LM88:
	ldx	#CatchVars
	ldab	2,x	;  CatchVars
	cmpb	#3
	bne	.L44
.LM89:
	movw	#257,2,-sp
	ldd	#999
	call	PWMDutyWrite
	leas	2,sp
.LM90:
	movw	#259,2,-sp
	ldd	#0
	call	PWMDutyWrite
	leas	2,sp
.LM91:
	movw	#261,2,-sp
	ldd	#999
	call	PWMDutyWrite
	leas	2,sp
.L44:
.LM92:
	ldd	#257
	call	PWMDutyRead
	ldx	#0
	bsr	__floatunsisf
	clr	1,-sp
	clr	1,-sp
	movw	#16672,2,-sp
	bsr	__divsf3
	leas	4,sp
	std	VarTm+2	;  VarTm
	stx	VarTm
.LM93:
	movw	VarTm+2,Fan+2	;  VarTm,  Fan
	movw	VarTm,Fan
.LM94:
	ldd	#259
	call	PWMDutyRead
	ldx	#0
	bsr	__floatunsisf
	clr	1,-sp
	clr	1,-sp
	movw	#16672,2,-sp
	bsr	__divsf3
	leas	4,sp
	std	VarTm+2	;  VarTm
	stx	VarTm
.LM95:
	movw	VarTm+2,2,-sp	;  VarTm
	movw	VarTm,2,-sp
	ldab	Damper	;  Damper
	call	VarS
	leas	4,sp
.LM96:
	ldd	#261
	call	PWMDutyRead
	ldx	#0
	bsr	__floatunsisf
	clr	1,-sp
	clr	1,-sp
	movw	#16672,2,-sp
	bsr	__divsf3
	leas	4,sp
	std	VarTm+2	;  VarTm
	stx	VarTm
.LM97:
	movw	VarTm+2,2,-sp	;  VarTm
	movw	VarTm,2,-sp
	ldab	Blower	;  Blower
	call	VarS
	leas	4,sp
.LM98:
	clr	1,-sp
	clr	1,-sp
	ldd	#data_resource
	call	Release
	leas	2,sp
.LM99:
	call	Pause
	bra	.L13
.LM100:
.LBE2:
.LFE17:
	.size	ControllOut_loop, .-ControllOut_loop
	.globl	EERavg
	.sect	.data
	.type	EERavg, @object
	.size	EERavg, 4
EERavg:
	.long	0
	; extern	InitElapsedTime
	; extern	StartTimeslicer
	; extern	print
	.section	.rodata
.LC0:
	.string	"\nSS loop on\n"
	.sect	.text
	.globl	SScheck_loop
	.type	SScheck_loop,@function
	.far	SScheck_loop
SScheck_loop:
.LFB19:
.LM101:
	movw	_.frame,2,-sp
	pshx
	sts	_.frame
.LM102:
	ldx	_.frame
.LBB3:
	movw	#4,0,x	;  XX
.LM103:
	clr	start_time+2	;  start_time
	clr	start_time+3	;  start_time
	clr	start_time
	clr	start_time+1
.LM104:
	call	InitElapsedTime
.LM105:
	call	StartFunctionTimer
.LM106:
	call	StartTimeslicer
.LM107:
	ldd	#.LC0
	call	print
.L53:
.LM108:
	ldab	SScheck	;  SScheck
	cmpb	#1
	bne	.L56
.LM109:
	clr	EERavg+2	;  EERavg
	clr	EERavg+3	;  EERavg
	clr	EERavg
	clr	EERavg+1
.LM110:
	clr	1,-sp
	clr	1,-sp
	ldd	#data_resource
	call	Get
	leas	2,sp
.LM111:
	ldy	_.frame
	movw	#4,0,y	;  XX
.L57:
	ldy	_.frame
	ldd	0,y	;  XX
	cpd	#0
	bgt	.L60
	bra	.L58
.L60:
.LM112:
	ldy	_.frame
	ldx	0,y	;  XX
	ldd	#4
	exg	x,y
	emul
	exg	x,y
	sty	_.z
	tfr	d,y
	leay	EERlast5,y
	sty	_.xy
	ldy	_.frame
	ldx	0,y	;  XX
	ldd	#4
	exg	x,y
	emul
	exg	x,y
	tfr	d,x
	leax	EERlast5-4,x
	sty	_.z
	ldy	_.xy
	movw	2,x,2,y	;  EERlast5,  EERlast5
	movw	0,x,0,y
.LM113:
	ldy	_.frame
	ldx	0,y	;  XX
	ldd	#4
	exg	x,y
	emul
	exg	x,y
	tfr	d,x
	leax	EERlast5,x
	movw	2,x,2,-sp	;  EERlast5
	movw	0,x,2,-sp
	ldd	EERavg+2	;  EERavg
	ldx	EERavg
	bsr	__addsf3
	leas	4,sp
	std	EERavg+2	;  EERavg
	stx	EERavg
.LM114:
	ldx	_.frame
	ldy	0,x	;  XX
	tfr	y,d
	addd	#-1
	stx	_.z
	ldx	_.frame
	std	0,x	;  XX
	bra	.L57
.L58:
.LM115:
	ldab	EERv	;  EERv
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
.LM116:
	movw	VarTm+2,EERlast5+2	;  VarTm,  EERlast5
	movw	VarTm,EERlast5
.LM117:
	movw	EERlast5+2,2,-sp	;  EERlast5
	movw	EERlast5,2,-sp
	ldd	EERavg+2	;  EERavg
	ldx	EERavg
	bsr	__addsf3
	leas	4,sp
	std	EERavg+2	;  EERavg
	stx	EERavg
.LM118:
	clr	1,-sp
	clr	1,-sp
	movw	#16544,2,-sp
	ldd	EERavg+2	;  EERavg
	ldx	EERavg
	bsr	__divsf3
	leas	4,sp
	std	EERavg+2	;  EERavg
	stx	EERavg
.LM119:
	movw	#26214,2,-sp
	movw	#16262,2,-sp
	ldd	EERavg+2	;  EERavg
	ldx	EERavg
	bsr	__mulsf3
	leas	4,sp
	pshd
	pshx
	ldd	EERlast5+2	;  EERlast5
	ldx	EERlast5
	call	__ltsf2
	leas	4,sp
	cpd	#0
	blt	.L62
	bra	.L61
.L62:
	movw	#13107,2,-sp
	movw	#16243,2,-sp
	ldd	EERavg+2	;  EERavg
	ldx	EERavg
	bsr	__mulsf3
	leas	4,sp
	pshd
	pshx
	ldd	EERlast5+2	;  EERlast5
	ldx	EERlast5
	call	__gtsf2
	leas	4,sp
	cpd	#0
	bgt	.L63
	bra	.L61
.L63:
.LM120:
	movw	SS_EERs+6,SS_EERs+10	;  SS_EERs,  SS_EERs
	movw	SS_EERs+4,SS_EERs+8
.LM121:
	movw	SS_EERs+2,SS_EERs+6	;  SS_EERs,  SS_EERs
	movw	SS_EERs,SS_EERs+4
.LM122:
	movw	EERlast5+2,SS_EERs+2	;  EERlast5,  SS_EERs
	movw	EERlast5,SS_EERs
.LM123:
	movb	#1,SSresult	;  SSresult
.L61:
.LM124:
	clr	1,-sp
	clr	1,-sp
	ldd	#data_resource
	call	Release
	leas	2,sp
.LM125:
	clr	SScheck	;  SScheck
.L56:
.LM126:
	call	Pause
	bra	.L53
.LM127:
.LBE3:
.LFE19:
	.size	SScheck_loop, .-SScheck_loop
	; extern	memset
	; extern	BuildTask
	; extern	Activate
	.section	.rodata
.LC1:
	.string	"C"
	.sect	.text
	.globl	Init_ControllOut
	.type	Init_ControllOut,@function
	.far	Init_ControllOut
Init_ControllOut:
.LFB21:
.LM128:
	movw	_.frame,2,-sp
	sts	_.frame
.LM129:
	movw	#257,2,-sp
	ldd	#500
	call	PWMDutyWrite
	leas	2,sp
.LM130:
	clr	ControllOut_task+1536	;  <variable>._errno
	clr	ControllOut_task+1537	;  <variable>._errno
	movw	#ControllOut_task+1887,ControllOut_task+1538	;  <variable>._stdin
	movw	#ControllOut_task+1937,ControllOut_task+1540	;  <variable>._stdout
	movw	#ControllOut_task+1987,ControllOut_task+1542	;  <variable>._stderr
	clr	ControllOut_task+1544	;  <variable>._inc
	clr	ControllOut_task+1545	;  <variable>._inc
	movw	#1,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#ControllOut_task+1546
	call	memset
	leas	4,sp
	clr	ControllOut_task+1547	;  <variable>._current_category
	clr	ControllOut_task+1548	;  <variable>._current_category
	movw	#.LC1,ControllOut_task+1549	;  <variable>._current_locale
	clr	ControllOut_task+1551	;  <variable>.__sdidinit
	clr	ControllOut_task+1552	;  <variable>.__sdidinit
	clr	ControllOut_task+1553	;  <variable>.__cleanup
	clr	ControllOut_task+1554	;  <variable>.__cleanup
	clr	ControllOut_task+1555	;  <variable>._result
	clr	ControllOut_task+1556	;  <variable>._result
	clr	ControllOut_task+1557	;  <variable>._result_k
	clr	ControllOut_task+1558	;  <variable>._result_k
	clr	ControllOut_task+1559	;  <variable>._p5s
	clr	ControllOut_task+1560	;  <variable>._p5s
	clr	ControllOut_task+1561	;  <variable>._freelist
	clr	ControllOut_task+1562	;  <variable>._freelist
	clr	ControllOut_task+1563	;  <variable>._cvtlen
	clr	ControllOut_task+1564	;  <variable>._cvtlen
	clr	ControllOut_task+1565	;  <variable>._cvtbuf
	clr	ControllOut_task+1566	;  <variable>._cvtbuf
	clr	ControllOut_task+1567	;  <variable>._new._reent._unused_rand
	clr	ControllOut_task+1568	;  <variable>._new._reent._unused_rand
	clr	ControllOut_task+1569	;  <variable>._new._reent._strtok_last
	clr	ControllOut_task+1570	;  <variable>._new._reent._strtok_last
	clr	ControllOut_task+1571	;  <variable>._new._reent._asctime_buf
	movw	#18,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#ControllOut_task+1572
	call	memset
	leas	4,sp
	clr	ControllOut_task+1590	;  <variable>._new._reent._gamma_signgam
	clr	ControllOut_task+1591	;  <variable>._new._reent._gamma_signgam
	ldx	#ControllOut_task+1592
	movw	#1,6,x	;  <variable>._new._reent._rand_next
	clr	4,x
	clr	5,x
	clr	2,x
	clr	3,x
	clr	0,x
	clr	1,x
	movw	#13070,ControllOut_task+1600	;  <variable>._new._reent._r48._seed
	movw	#-21555,ControllOut_task+1602	;  <variable>._new._reent._r48._seed
	movw	#4660,ControllOut_task+1604	;  <variable>._new._reent._r48._seed
	movw	#-6547,ControllOut_task+1606	;  <variable>._new._reent._r48._mult
	movw	#-8468,ControllOut_task+1608	;  <variable>._new._reent._r48._mult
	movw	#5,ControllOut_task+1610	;  <variable>._new._reent._r48._mult
	movw	#11,ControllOut_task+1612	;  <variable>._new._reent._r48._add
	clr	ControllOut_task+1614	;  <variable>._new._reent._mblen_state.__count
	clr	ControllOut_task+1615	;  <variable>._new._reent._mblen_state.__count
	clr	ControllOut_task+1616	;  <variable>._new._reent._mblen_state.__value.__wch
	clr	ControllOut_task+1617	;  <variable>._new._reent._mblen_state.__value.__wch
	clr	ControllOut_task+1620	;  <variable>._new._reent._mbtowc_state.__count
	clr	ControllOut_task+1621	;  <variable>._new._reent._mbtowc_state.__count
	clr	ControllOut_task+1622	;  <variable>._new._reent._mbtowc_state.__value.__wch
	clr	ControllOut_task+1623	;  <variable>._new._reent._mbtowc_state.__value.__wch
	clr	ControllOut_task+1626	;  <variable>._new._reent._wctomb_state.__count
	clr	ControllOut_task+1627	;  <variable>._new._reent._wctomb_state.__count
	clr	ControllOut_task+1628	;  <variable>._new._reent._wctomb_state.__value.__wch
	clr	ControllOut_task+1629	;  <variable>._new._reent._wctomb_state.__value.__wch
	clr	ControllOut_task+1643	;  <variable>._new._reent._mbrlen_state.__count
	clr	ControllOut_task+1644	;  <variable>._new._reent._mbrlen_state.__count
	clr	ControllOut_task+1645	;  <variable>._new._reent._mbrlen_state.__value.__wch
	clr	ControllOut_task+1646	;  <variable>._new._reent._mbrlen_state.__value.__wch
	clr	ControllOut_task+1649	;  <variable>._new._reent._mbrtowc_state.__count
	clr	ControllOut_task+1650	;  <variable>._new._reent._mbrtowc_state.__count
	clr	ControllOut_task+1651	;  <variable>._new._reent._mbrtowc_state.__value.__wch
	clr	ControllOut_task+1652	;  <variable>._new._reent._mbrtowc_state.__value.__wch
	clr	ControllOut_task+1655	;  <variable>._new._reent._mbsrtowcs_state.__count
	clr	ControllOut_task+1656	;  <variable>._new._reent._mbsrtowcs_state.__count
	clr	ControllOut_task+1657	;  <variable>._new._reent._mbsrtowcs_state.__value.__wch
	clr	ControllOut_task+1658	;  <variable>._new._reent._mbsrtowcs_state.__value.__wch
	clr	ControllOut_task+1661	;  <variable>._new._reent._wcrtomb_state.__count
	clr	ControllOut_task+1662	;  <variable>._new._reent._wcrtomb_state.__count
	clr	ControllOut_task+1663	;  <variable>._new._reent._wcrtomb_state.__value.__wch
	clr	ControllOut_task+1664	;  <variable>._new._reent._wcrtomb_state.__value.__wch
	clr	ControllOut_task+1667	;  <variable>._new._reent._wcsrtombs_state.__count
	clr	ControllOut_task+1668	;  <variable>._new._reent._wcsrtombs_state.__count
	clr	ControllOut_task+1669	;  <variable>._new._reent._wcsrtombs_state.__value.__wch
	clr	ControllOut_task+1670	;  <variable>._new._reent._wcsrtombs_state.__value.__wch
	clr	ControllOut_task+1632	;  <variable>._new._reent._l64a_buf
	clr	ControllOut_task+1640	;  <variable>._new._reent._signal_buf
	clr	ControllOut_task+1641	;  <variable>._new._reent._getdate_err
	clr	ControllOut_task+1642	;  <variable>._new._reent._getdate_err
	clr	ControllOut_task+1673	;  <variable>._atexit
	clr	ControllOut_task+1674	;  <variable>._atexit
	clr	ControllOut_task+1675	;  <variable>._atexit0._next
	clr	ControllOut_task+1676	;  <variable>._atexit0._next
	clr	ControllOut_task+1677	;  <variable>._atexit0._ind
	clr	ControllOut_task+1678	;  <variable>._atexit0._ind
	clr	ControllOut_task+1679	;  <variable>._atexit0._fns
	clr	ControllOut_task+1680	;  <variable>._atexit0._fns
	clr	ControllOut_task+1873	;  <variable>._atexit0._on_exit_args._fntypes
	clr	ControllOut_task+1874	;  <variable>._atexit0._on_exit_args._fntypes
	clr	ControllOut_task+1871
	clr	ControllOut_task+1872
	clr	ControllOut_task+1743	;  <variable>._atexit0._on_exit_args._fnargs
	clr	ControllOut_task+1744	;  <variable>._atexit0._on_exit_args._fnargs
	clr	ControllOut_task+1879	;  <variable>._sig_func
	clr	ControllOut_task+1880	;  <variable>._sig_func
	clr	ControllOut_task+1881	;  <variable>.__sglue._next
	clr	ControllOut_task+1882	;  <variable>.__sglue._next
	clr	ControllOut_task+1883	;  <variable>.__sglue._niobs
	clr	ControllOut_task+1884	;  <variable>.__sglue._niobs
	clr	ControllOut_task+1885	;  <variable>.__sglue._iobs
	clr	ControllOut_task+1886	;  <variable>.__sglue._iobs
	movw	#150,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#ControllOut_task+1887
	call	memset
	leas	4,sp
	movw	#186,2,-sp
	ldd	#ControllOut_task
	ldx	#0
	pshd
	pshx
	ldd	#ControllOut_task+512
	ldx	#0
	pshd
	pshx
	ldd	#ControllOut_task+1536
	ldx	#0
	pshd
	pshx
	ldd	#ControllOut_task+384
	ldx	#0
	pshd
	pshx
	ldd	#ControllOut_task+256
	ldx	#0
	pshd
	pshx
	ldd	#ControllOut_task+512
	ldx	#0
	pshd
	pshx
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#0
	ldx	#0
	call	BuildTask
	leas	46,sp
.LM131:
	ldd	#ControllOut_task
	ldx	#0
	pshd
	pshx
	clr	1,-sp
	clr	1,-sp
	ldd	#ControllOut_loop
	call	Activate
	leas	6,sp
.LM132:
	movw	2,sp+,_.frame
	rtc
.LFE21:
	.size	Init_ControllOut, .-Init_ControllOut
	.section	.rodata
.LC2:
	.string	"\nSS init\n"
	.sect	.text
	.globl	Init_SScheck
	.type	Init_SScheck,@function
	.far	Init_SScheck
Init_SScheck:
.LFB23:
.LM133:
	movw	_.frame,2,-sp
	sts	_.frame
.LM134:
	ldd	#.LC2
	call	print
.LM135:
	clr	SScheck_task+1536	;  <variable>._errno
	clr	SScheck_task+1537	;  <variable>._errno
	movw	#SScheck_task+1887,SScheck_task+1538	;  <variable>._stdin
	movw	#SScheck_task+1937,SScheck_task+1540	;  <variable>._stdout
	movw	#SScheck_task+1987,SScheck_task+1542	;  <variable>._stderr
	clr	SScheck_task+1544	;  <variable>._inc
	clr	SScheck_task+1545	;  <variable>._inc
	movw	#1,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#SScheck_task+1546
	call	memset
	leas	4,sp
	clr	SScheck_task+1547	;  <variable>._current_category
	clr	SScheck_task+1548	;  <variable>._current_category
	movw	#.LC1,SScheck_task+1549	;  <variable>._current_locale
	clr	SScheck_task+1551	;  <variable>.__sdidinit
	clr	SScheck_task+1552	;  <variable>.__sdidinit
	clr	SScheck_task+1553	;  <variable>.__cleanup
	clr	SScheck_task+1554	;  <variable>.__cleanup
	clr	SScheck_task+1555	;  <variable>._result
	clr	SScheck_task+1556	;  <variable>._result
	clr	SScheck_task+1557	;  <variable>._result_k
	clr	SScheck_task+1558	;  <variable>._result_k
	clr	SScheck_task+1559	;  <variable>._p5s
	clr	SScheck_task+1560	;  <variable>._p5s
	clr	SScheck_task+1561	;  <variable>._freelist
	clr	SScheck_task+1562	;  <variable>._freelist
	clr	SScheck_task+1563	;  <variable>._cvtlen
	clr	SScheck_task+1564	;  <variable>._cvtlen
	clr	SScheck_task+1565	;  <variable>._cvtbuf
	clr	SScheck_task+1566	;  <variable>._cvtbuf
	clr	SScheck_task+1567	;  <variable>._new._reent._unused_rand
	clr	SScheck_task+1568	;  <variable>._new._reent._unused_rand
	clr	SScheck_task+1569	;  <variable>._new._reent._strtok_last
	clr	SScheck_task+1570	;  <variable>._new._reent._strtok_last
	clr	SScheck_task+1571	;  <variable>._new._reent._asctime_buf
	movw	#18,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#SScheck_task+1572
	call	memset
	leas	4,sp
	clr	SScheck_task+1590	;  <variable>._new._reent._gamma_signgam
	clr	SScheck_task+1591	;  <variable>._new._reent._gamma_signgam
	ldx	#SScheck_task+1592
	movw	#1,6,x	;  <variable>._new._reent._rand_next
	clr	4,x
	clr	5,x
	clr	2,x
	clr	3,x
	clr	0,x
	clr	1,x
	movw	#13070,SScheck_task+1600	;  <variable>._new._reent._r48._seed
	movw	#-21555,SScheck_task+1602	;  <variable>._new._reent._r48._seed
	movw	#4660,SScheck_task+1604	;  <variable>._new._reent._r48._seed
	movw	#-6547,SScheck_task+1606	;  <variable>._new._reent._r48._mult
	movw	#-8468,SScheck_task+1608	;  <variable>._new._reent._r48._mult
	movw	#5,SScheck_task+1610	;  <variable>._new._reent._r48._mult
	movw	#11,SScheck_task+1612	;  <variable>._new._reent._r48._add
	clr	SScheck_task+1614	;  <variable>._new._reent._mblen_state.__count
	clr	SScheck_task+1615	;  <variable>._new._reent._mblen_state.__count
	clr	SScheck_task+1616	;  <variable>._new._reent._mblen_state.__value.__wch
	clr	SScheck_task+1617	;  <variable>._new._reent._mblen_state.__value.__wch
	clr	SScheck_task+1620	;  <variable>._new._reent._mbtowc_state.__count
	clr	SScheck_task+1621	;  <variable>._new._reent._mbtowc_state.__count
	clr	SScheck_task+1622	;  <variable>._new._reent._mbtowc_state.__value.__wch
	clr	SScheck_task+1623	;  <variable>._new._reent._mbtowc_state.__value.__wch
	clr	SScheck_task+1626	;  <variable>._new._reent._wctomb_state.__count
	clr	SScheck_task+1627	;  <variable>._new._reent._wctomb_state.__count
	clr	SScheck_task+1628	;  <variable>._new._reent._wctomb_state.__value.__wch
	clr	SScheck_task+1629	;  <variable>._new._reent._wctomb_state.__value.__wch
	clr	SScheck_task+1643	;  <variable>._new._reent._mbrlen_state.__count
	clr	SScheck_task+1644	;  <variable>._new._reent._mbrlen_state.__count
	clr	SScheck_task+1645	;  <variable>._new._reent._mbrlen_state.__value.__wch
	clr	SScheck_task+1646	;  <variable>._new._reent._mbrlen_state.__value.__wch
	clr	SScheck_task+1649	;  <variable>._new._reent._mbrtowc_state.__count
	clr	SScheck_task+1650	;  <variable>._new._reent._mbrtowc_state.__count
	clr	SScheck_task+1651	;  <variable>._new._reent._mbrtowc_state.__value.__wch
	clr	SScheck_task+1652	;  <variable>._new._reent._mbrtowc_state.__value.__wch
	clr	SScheck_task+1655	;  <variable>._new._reent._mbsrtowcs_state.__count
	clr	SScheck_task+1656	;  <variable>._new._reent._mbsrtowcs_state.__count
	clr	SScheck_task+1657	;  <variable>._new._reent._mbsrtowcs_state.__value.__wch
	clr	SScheck_task+1658	;  <variable>._new._reent._mbsrtowcs_state.__value.__wch
	clr	SScheck_task+1661	;  <variable>._new._reent._wcrtomb_state.__count
	clr	SScheck_task+1662	;  <variable>._new._reent._wcrtomb_state.__count
	clr	SScheck_task+1663	;  <variable>._new._reent._wcrtomb_state.__value.__wch
	clr	SScheck_task+1664	;  <variable>._new._reent._wcrtomb_state.__value.__wch
	clr	SScheck_task+1667	;  <variable>._new._reent._wcsrtombs_state.__count
	clr	SScheck_task+1668	;  <variable>._new._reent._wcsrtombs_state.__count
	clr	SScheck_task+1669	;  <variable>._new._reent._wcsrtombs_state.__value.__wch
	clr	SScheck_task+1670	;  <variable>._new._reent._wcsrtombs_state.__value.__wch
	clr	SScheck_task+1632	;  <variable>._new._reent._l64a_buf
	clr	SScheck_task+1640	;  <variable>._new._reent._signal_buf
	clr	SScheck_task+1641	;  <variable>._new._reent._getdate_err
	clr	SScheck_task+1642	;  <variable>._new._reent._getdate_err
	clr	SScheck_task+1673	;  <variable>._atexit
	clr	SScheck_task+1674	;  <variable>._atexit
	clr	SScheck_task+1675	;  <variable>._atexit0._next
	clr	SScheck_task+1676	;  <variable>._atexit0._next
	clr	SScheck_task+1677	;  <variable>._atexit0._ind
	clr	SScheck_task+1678	;  <variable>._atexit0._ind
	clr	SScheck_task+1679	;  <variable>._atexit0._fns
	clr	SScheck_task+1680	;  <variable>._atexit0._fns
	clr	SScheck_task+1873	;  <variable>._atexit0._on_exit_args._fntypes
	clr	SScheck_task+1874	;  <variable>._atexit0._on_exit_args._fntypes
	clr	SScheck_task+1871
	clr	SScheck_task+1872
	clr	SScheck_task+1743	;  <variable>._atexit0._on_exit_args._fnargs
	clr	SScheck_task+1744	;  <variable>._atexit0._on_exit_args._fnargs
	clr	SScheck_task+1879	;  <variable>._sig_func
	clr	SScheck_task+1880	;  <variable>._sig_func
	clr	SScheck_task+1881	;  <variable>.__sglue._next
	clr	SScheck_task+1882	;  <variable>.__sglue._next
	clr	SScheck_task+1883	;  <variable>.__sglue._niobs
	clr	SScheck_task+1884	;  <variable>.__sglue._niobs
	clr	SScheck_task+1885	;  <variable>.__sglue._iobs
	clr	SScheck_task+1886	;  <variable>.__sglue._iobs
	movw	#150,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#SScheck_task+1887
	call	memset
	leas	4,sp
	movw	#186,2,-sp
	ldd	#SScheck_task
	ldx	#0
	pshd
	pshx
	ldd	#SScheck_task+512
	ldx	#0
	pshd
	pshx
	ldd	#SScheck_task+1536
	ldx	#0
	pshd
	pshx
	ldd	#SScheck_task+384
	ldx	#0
	pshd
	pshx
	ldd	#SScheck_task+256
	ldx	#0
	pshd
	pshx
	ldd	#SScheck_task+512
	ldx	#0
	pshd
	pshx
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#0
	ldx	#0
	call	BuildTask
	leas	46,sp
.LM136:
	ldd	#SScheck_task
	ldx	#0
	pshd
	pshx
	clr	1,-sp
	clr	1,-sp
	ldd	#SScheck_loop
	call	Activate
	leas	6,sp
.LM137:
	movw	2,sp+,_.frame
	rtc
.LFE23:
	.size	Init_SScheck, .-Init_SScheck
	.comm	latest_portt_state,1,1
	.comm	EAT,4,1
	.comm	Fan,4,1
	.local	start_time
	.comm	start_time,4,1
	.comm	SS_EERs,12,1
	.comm	SSfanEFs,12,1
	.globl	ControllOut_task
	.section	.taskareas,"aw",@progbits
	.type	ControllOut_task, @object
	.size	ControllOut_task, 2048
ControllOut_task:
	.zero	2048
	.globl	SScheck_task
	.type	SScheck_task, @object
	.size	SScheck_task, 2048
SScheck_task:
	.zero	2048
	.comm	fanEF,2,1
	.comm	fanCF,2,1
	.comm	DS,2,1
	.comm	FanTm,2,1
	.comm	BlowerFan,2,1
	.comm	B14,6,1
	.comm	VarTm2,4,1
	.comm	t0,2,1
	.comm	Ep,2,1
	.comm	Spt,2,1
	.comm	dt,2,1
	.comm	IN,2,1
	.comm	OT,2,1
	.comm	P,2,1
	.comm	I,2,1
	.comm	D,2,1
	.comm	EERlast5,20,1
	.comm	dEER,4,1
	.sect	.text
.Letext0:
	.section	.debug_line
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"C:/MosaicPlus/c/libraries/include"
	.byte	0
	.ascii	"C:/MosaicPlus/c/libraries/include/mosaic"
	.byte	0
	.ascii	"C:/MosaicPlus/c/tools/gcc/lib/gcc-lib/m6811-elf/3.3.6-m68hc1"
	.ascii	"x-20070214/include"
	.byte	0
	.ascii	"C:/MosaicPlus/c/tools/gcc/m6811-elf/include"
	.byte	0
	.byte	0x0
	.string	"ControllOut.c"
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.string	"machine/_default_types.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"sys/lock.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"sys/_types.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"stddef.h"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.string	"machine/types.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"sys/types.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"types.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"array.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"sys/reent.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"user.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"numutil.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"mtasker.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"opsystem.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"segments.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"watch.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"math.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"stdarg.h"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.string	"stdio.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"stdlib.h"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.string	"wwifi.h"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.string	"websocket.h"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.string	"hcs12regs.h"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.string	"application.h"
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.string	"acquire.h"
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.string	"CalculateR.h"
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x2a
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x1a
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x28
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM48
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM66
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0x1b
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM86
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM87
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM88
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM89
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0x1f
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM99
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM100
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM101
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM102
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM103
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM104
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM105
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM106
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM107
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM108
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM109
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM110
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM111
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM112
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM113
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM114
	.byte	0x11
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM115
	.byte	0x1a
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM116
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM117
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM118
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM119
	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM120
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM121
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM122
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM123
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM124
	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM125
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM126
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM127
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM128
	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM129
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM130
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM131
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM132
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM133
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM134
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM135
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM136
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM137
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_info
	.4byte	0x2a45
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.string	"ControllOut.c"
	.string	"C:\\MosaicPlus\\my_projects\\Rev7"
	.string	"GNU C 3.3.6-m68hc1x-20070214"
	.byte	0x1
	.byte	0x2
	.string	"__int8_t"
	.byte	0x2
	.byte	0x1a
	.4byte	0x73
	.byte	0x3
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.string	"__uint8_t"
	.byte	0x2
	.byte	0x1b
	.4byte	0x93
	.byte	0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.string	"__int16_t"
	.byte	0x2
	.byte	0x20
	.4byte	0xb5
	.byte	0x3
	.string	"int"
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.string	"__uint16_t"
	.byte	0x2
	.byte	0x21
	.4byte	0xce
	.byte	0x3
	.string	"unsigned int"
	.byte	0x2
	.byte	0x7
	.byte	0x2
	.string	"__int_least16_t"
	.byte	0x2
	.byte	0x2e
	.4byte	0xa4
	.byte	0x2
	.string	"__uint_least16_t"
	.byte	0x2
	.byte	0x2f
	.4byte	0xbc
	.byte	0x2
	.string	"__int32_t"
	.byte	0x2
	.byte	0x3e
	.4byte	0x11e
	.byte	0x3
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.string	"__uint32_t"
	.byte	0x2
	.byte	0x3f
	.4byte	0x13c
	.byte	0x3
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.string	"__int_least32_t"
	.byte	0x2
	.byte	0x4c
	.4byte	0x10d
	.byte	0x2
	.string	"__uint_least32_t"
	.byte	0x2
	.byte	0x4d
	.4byte	0x12a
	.byte	0x2
	.string	"__int64_t"
	.byte	0x2
	.byte	0x63
	.4byte	0x191
	.byte	0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.byte	0x2
	.string	"__uint64_t"
	.byte	0x2
	.byte	0x64
	.4byte	0x1b4
	.byte	0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.byte	0x2
	.string	"_LOCK_T"
	.byte	0x3
	.byte	0x6
	.4byte	0xb5
	.byte	0x2
	.string	"_LOCK_RECURSIVE_T"
	.byte	0x3
	.byte	0x7
	.4byte	0xb5
	.byte	0x2
	.string	"_off_t"
	.byte	0x4
	.byte	0x10
	.4byte	0x11e
	.byte	0x2
	.string	"__dev_t"
	.byte	0x4
	.byte	0x18
	.4byte	0x213
	.byte	0x3
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.string	"__uid_t"
	.byte	0x4
	.byte	0x1d
	.4byte	0x22f
	.byte	0x4
	.4byte	.LC3
	.byte	0x2
	.byte	0x7
	.byte	0x2
	.string	"__gid_t"
	.byte	0x4
	.byte	0x20
	.4byte	0x22f
	.byte	0x2
	.string	"_off64_t"
	.byte	0x4
	.byte	0x24
	.4byte	0x191
	.byte	0x2
	.string	"_fpos_t"
	.byte	0x4
	.byte	0x2c
	.4byte	0x11e
	.byte	0x2
	.string	"_ssize_t"
	.byte	0x4
	.byte	0x3a
	.4byte	0x11e
	.byte	0x5
	.string	"wint_t"
	.byte	0x5
	.2byte	0x162
	.4byte	0xce
	.byte	0x6
	.4byte	0x2a7
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.byte	0x7
	.string	"__wch"
	.byte	0x4
	.byte	0x48
	.4byte	0x274
	.byte	0x7
	.string	"__wchb"
	.byte	0x4
	.byte	0x49
	.4byte	0x2a7
	.byte	0x0
	.byte	0x8
	.4byte	0x2b7
	.4byte	0x93
	.byte	0x9
	.4byte	0x2b7
	.byte	0x3
	.byte	0x0
	.byte	0x4
	.4byte	.LC3
	.byte	0x2
	.byte	0x7
	.byte	0xa
	.4byte	0x2eb
	.byte	0x6
	.byte	0x4
	.byte	0x4b
	.byte	0xb
	.string	"__count"
	.byte	0x4
	.byte	0x45
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"__value"
	.byte	0x4
	.byte	0x4a
	.4byte	0x283
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x0
	.byte	0x2
	.string	"_mbstate_t"
	.byte	0x4
	.byte	0x4b
	.4byte	0x2be
	.byte	0x2
	.string	"_flock_t"
	.byte	0x4
	.byte	0x4f
	.4byte	0x1dd
	.byte	0x2
	.string	"_iconv_t"
	.byte	0x4
	.byte	0x54
	.4byte	0x31d
	.byte	0xc
	.byte	0x2
	.byte	0x2
	.string	"ptrdiff_t"
	.byte	0x5
	.byte	0x97
	.4byte	0x213
	.byte	0x2
	.string	"size_t"
	.byte	0x5
	.byte	0xd5
	.4byte	0x22f
	.byte	0x5
	.string	"wchar_t"
	.byte	0x5
	.2byte	0x145
	.4byte	0x213
	.byte	0x2
	.string	"__off_t"
	.byte	0x6
	.byte	0x13
	.4byte	0x11e
	.byte	0x2
	.string	"__pid_t"
	.byte	0x6
	.byte	0x14
	.4byte	0xb5
	.byte	0x2
	.string	"__loff_t"
	.byte	0x6
	.byte	0x16
	.4byte	0x191
	.byte	0x2
	.string	"u_char"
	.byte	0x7
	.byte	0x5c
	.4byte	0x93
	.byte	0x2
	.string	"u_short"
	.byte	0x7
	.byte	0x5d
	.4byte	0x22f
	.byte	0x2
	.string	"u_int"
	.byte	0x7
	.byte	0x5e
	.4byte	0xce
	.byte	0x2
	.string	"u_long"
	.byte	0x7
	.byte	0x5f
	.4byte	0x13c
	.byte	0x2
	.string	"ushort"
	.byte	0x7
	.byte	0x63
	.4byte	0x22f
	.byte	0x2
	.string	"uint"
	.byte	0x7
	.byte	0x64
	.4byte	0xce
	.byte	0x2
	.string	"clock_t"
	.byte	0x7
	.byte	0x68
	.4byte	0x13c
	.byte	0x2
	.string	"time_t"
	.byte	0x7
	.byte	0x6d
	.4byte	0x11e
	.byte	0xd
	.4byte	0x420
	.string	"timespec"
	.byte	0x8
	.byte	0x7
	.byte	0x72
	.byte	0xb
	.string	"tv_sec"
	.byte	0x7
	.byte	0x73
	.4byte	0x3dd
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"tv_nsec"
	.byte	0x7
	.byte	0x74
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0xd
	.4byte	0x45d
	.string	"itimerspec"
	.byte	0x10
	.byte	0x7
	.byte	0x77
	.byte	0xb
	.string	"it_interval"
	.byte	0x7
	.byte	0x78
	.4byte	0x3eb
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"it_value"
	.byte	0x7
	.byte	0x79
	.4byte	0x3eb
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.string	"daddr_t"
	.byte	0x7
	.byte	0x7d
	.4byte	0x11e
	.byte	0x2
	.string	"caddr_t"
	.byte	0x7
	.byte	0x7e
	.4byte	0x47b
	.byte	0xe
	.byte	0x2
	.4byte	0x481
	.byte	0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.string	"ino_t"
	.byte	0x7
	.byte	0x85
	.4byte	0x22f
	.byte	0x2
	.string	"off_t"
	.byte	0x7
	.byte	0xa2
	.4byte	0x1f6
	.byte	0x2
	.string	"dev_t"
	.byte	0x7
	.byte	0xa3
	.4byte	0x204
	.byte	0x2
	.string	"uid_t"
	.byte	0x7
	.byte	0xa4
	.4byte	0x220
	.byte	0x2
	.string	"gid_t"
	.byte	0x7
	.byte	0xa5
	.4byte	0x236
	.byte	0x2
	.string	"pid_t"
	.byte	0x7
	.byte	0xa8
	.4byte	0xb5
	.byte	0x2
	.string	"key_t"
	.byte	0x7
	.byte	0xaa
	.4byte	0x11e
	.byte	0x2
	.string	"ssize_t"
	.byte	0x7
	.byte	0xac
	.4byte	0x264
	.byte	0x2
	.string	"mode_t"
	.byte	0x7
	.byte	0xba
	.4byte	0x13c
	.byte	0x2
	.string	"nlink_t"
	.byte	0x7
	.byte	0xbf
	.4byte	0x22f
	.byte	0x2
	.string	"fd_mask"
	.byte	0x7
	.byte	0xd5
	.4byte	0x11e
	.byte	0xf
	.4byte	0x53f
	.4byte	.LC4
	.byte	0x8
	.byte	0x7
	.byte	0xdd
	.byte	0xb
	.string	"fds_bits"
	.byte	0x7
	.byte	0xde
	.4byte	0x53f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.4byte	0x54f
	.4byte	0x510
	.byte	0x9
	.4byte	0x2b7
	.byte	0x1
	.byte	0x0
	.byte	0x10
	.4byte	.LC4
	.byte	0x7
	.byte	0xdf
	.4byte	0x51f
	.byte	0x2
	.string	"clockid_t"
	.byte	0x7
	.byte	0xf4
	.4byte	0x13c
	.byte	0x2
	.string	"timer_t"
	.byte	0x7
	.byte	0xf9
	.4byte	0x13c
	.byte	0x2
	.string	"useconds_t"
	.byte	0x7
	.byte	0xfd
	.4byte	0x13c
	.byte	0x2
	.string	"suseconds_t"
	.byte	0x7
	.byte	0xfe
	.4byte	0x11e
	.byte	0x2
	.string	"uchar"
	.byte	0x8
	.byte	0x1c
	.4byte	0x93
	.byte	0x2
	.string	"ulong"
	.byte	0x8
	.byte	0x1e
	.4byte	0x13c
	.byte	0x2
	.string	"xaddr"
	.byte	0x8
	.byte	0x1f
	.4byte	0x13c
	.byte	0x2
	.string	"addr"
	.byte	0x8
	.byte	0x21
	.4byte	0x3c2
	.byte	0x2
	.string	"page"
	.byte	0x8
	.byte	0x22
	.4byte	0x3c2
	.byte	0x2
	.string	"wchar"
	.byte	0x8
	.byte	0x26
	.4byte	0xb5
	.byte	0x2
	.string	"uwchar"
	.byte	0x8
	.byte	0x27
	.4byte	0xce
	.byte	0xa
	.4byte	0x622
	.byte	0x4
	.byte	0x8
	.byte	0x4f
	.byte	0xb
	.string	"msInt"
	.byte	0x8
	.byte	0x4d
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"lsInt"
	.byte	0x8
	.byte	0x4e
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x0
	.byte	0x6
	.4byte	0x647
	.byte	0x4
	.byte	0x8
	.byte	0x50
	.byte	0x7
	.string	"int32"
	.byte	0x8
	.byte	0x4a
	.4byte	0x5ac
	.byte	0x7
	.string	"twoNums"
	.byte	0x8
	.byte	0x4f
	.4byte	0x5f9
	.byte	0x0
	.byte	0x2
	.string	"TWO_INTS"
	.byte	0x8
	.byte	0x50
	.4byte	0x622
	.byte	0xa
	.4byte	0x682
	.byte	0x4
	.byte	0x8
	.byte	0x5a
	.byte	0xb
	.string	"page16"
	.byte	0x8
	.byte	0x58
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"addr16"
	.byte	0x8
	.byte	0x59
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x0
	.byte	0x6
	.4byte	0x6ac
	.byte	0x4
	.byte	0x8
	.byte	0x5c
	.byte	0x7
	.string	"sixteen_bit"
	.byte	0x8
	.byte	0x5a
	.4byte	0x657
	.byte	0x7
	.string	"addr32"
	.byte	0x8
	.byte	0x5b
	.4byte	0x5b9
	.byte	0x0
	.byte	0x2
	.string	"EXTENDED_ADDR"
	.byte	0x8
	.byte	0x5c
	.4byte	0x682
	.byte	0xa
	.4byte	0x6ec
	.byte	0x3
	.byte	0x8
	.byte	0x62
	.byte	0xb
	.string	"msbyte"
	.byte	0x8
	.byte	0x60
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"lsword"
	.byte	0x8
	.byte	0x61
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.string	"THREE_BYTES"
	.byte	0x8
	.byte	0x62
	.4byte	0x6c1
	.byte	0xa
	.4byte	0x7d5
	.byte	0x10
	.byte	0x9
	.byte	0x22
	.byte	0xb
	.string	"pfa_xhandle"
	.byte	0x9
	.byte	0x1a
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"pfa_currentHeap"
	.byte	0x9
	.byte	0x1b
	.4byte	0x7d5
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"pfa_bytesPerElement"
	.byte	0x9
	.byte	0x1c
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0xb
	.string	"pfa_numdimensions"
	.byte	0x9
	.byte	0x1d
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xb
	.string	"pfa_numCols"
	.byte	0x9
	.byte	0x1e
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0xa
	.byte	0xb
	.string	"pfa_numRows"
	.byte	0x9
	.byte	0x1f
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xb
	.string	"pfa_handler_flag"
	.byte	0x9
	.byte	0x20
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0xe
	.byte	0xb
	.string	"pfa_reserved_byte"
	.byte	0x9
	.byte	0x21
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0xf
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x3c2
	.byte	0x2
	.string	"FORTH_ARRAY"
	.byte	0x9
	.byte	0x22
	.4byte	0x6ff
	.byte	0x2
	.string	"__ULong"
	.byte	0xa
	.byte	0x15
	.4byte	0x13c
	.byte	0xd
	.4byte	0x869
	.string	"_Bigint"
	.byte	0xe
	.byte	0xa
	.byte	0x2d
	.byte	0xb
	.string	"_next"
	.byte	0xa
	.byte	0x2e
	.4byte	0x869
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"_k"
	.byte	0xa
	.byte	0x2f
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0xb
	.string	"_maxwds"
	.byte	0xa
	.byte	0x2f
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"_sign"
	.byte	0xa
	.byte	0x2f
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0xb
	.string	"_wds"
	.byte	0xa
	.byte	0x2f
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xb
	.string	"_x"
	.byte	0xa
	.byte	0x30
	.4byte	0x86f
	.byte	0x2
	.byte	0x23
	.byte	0xa
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x7fd
	.byte	0x8
	.4byte	0x87f
	.4byte	0x7ee
	.byte	0x9
	.4byte	0x2b7
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.4byte	0x93f
	.string	"__tm"
	.byte	0x12
	.byte	0xa
	.byte	0x35
	.byte	0xb
	.string	"__tm_sec"
	.byte	0xa
	.byte	0x36
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"__tm_min"
	.byte	0xa
	.byte	0x37
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0xb
	.string	"__tm_hour"
	.byte	0xa
	.byte	0x38
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"__tm_mday"
	.byte	0xa
	.byte	0x39
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0xb
	.string	"__tm_mon"
	.byte	0xa
	.byte	0x3a
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xb
	.string	"__tm_year"
	.byte	0xa
	.byte	0x3b
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0xa
	.byte	0xb
	.string	"__tm_wday"
	.byte	0xa
	.byte	0x3c
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xb
	.string	"__tm_yday"
	.byte	0xa
	.byte	0x3d
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0xe
	.byte	0xb
	.string	"__tm_isdst"
	.byte	0xa
	.byte	0x3e
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0xf
	.4byte	0x99b
	.4byte	.LC5
	.byte	0x88
	.byte	0xa
	.byte	0x47
	.byte	0xb
	.string	"_fnargs"
	.byte	0xa
	.byte	0x48
	.4byte	0x99b
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"_dso_handle"
	.byte	0xa
	.byte	0x49
	.4byte	0x99b
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0xb
	.string	"_fntypes"
	.byte	0xa
	.byte	0x4b
	.4byte	0x7ee
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x1
	.byte	0xb
	.string	"_is_cxa"
	.byte	0xa
	.byte	0x4e
	.4byte	0x7ee
	.byte	0x3
	.byte	0x23
	.byte	0x84,0x1
	.byte	0x0
	.byte	0x8
	.4byte	0x9ab
	.4byte	0x31d
	.byte	0x9
	.4byte	0x2b7
	.byte	0x1f
	.byte	0x0
	.byte	0xd
	.4byte	0x9f8
	.string	"_atexit"
	.byte	0xcc
	.byte	0xa
	.byte	0x59
	.byte	0xb
	.string	"_next"
	.byte	0xa
	.byte	0x5a
	.4byte	0x9f8
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"_ind"
	.byte	0xa
	.byte	0x5b
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0xb
	.string	"_fns"
	.byte	0xa
	.byte	0x5d
	.4byte	0x9fe
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x11
	.4byte	.LC5
	.byte	0xa
	.byte	0x5e
	.4byte	0x93f
	.byte	0x2
	.byte	0x23
	.byte	0x44
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x9ab
	.byte	0x8
	.4byte	0xa0e
	.4byte	0xa10
	.byte	0x9
	.4byte	0x2b7
	.byte	0x1f
	.byte	0x0
	.byte	0x12
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.4byte	0xa0e
	.byte	0xd
	.4byte	0xa46
	.string	"__sbuf"
	.byte	0x4
	.byte	0xa
	.byte	0x69
	.byte	0xb
	.string	"_base"
	.byte	0xa
	.byte	0x6a
	.4byte	0xa46
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"_size"
	.byte	0xa
	.byte	0x6b
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x93
	.byte	0xd
	.4byte	0xbb7
	.string	"__sFILE"
	.byte	0x32
	.byte	0xa
	.byte	0x9e
	.byte	0xb
	.string	"_p"
	.byte	0xa
	.byte	0x9f
	.4byte	0xa46
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"_r"
	.byte	0xa
	.byte	0xa0
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0xb
	.string	"_w"
	.byte	0xa
	.byte	0xa1
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"_flags"
	.byte	0xa
	.byte	0xa2
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0xb
	.string	"_file"
	.byte	0xa
	.byte	0xa3
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xb
	.string	"_bf"
	.byte	0xa
	.byte	0xa4
	.4byte	0xa16
	.byte	0x2
	.byte	0x23
	.byte	0xa
	.byte	0xb
	.string	"_lbfsize"
	.byte	0xa
	.byte	0xa5
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0xe
	.byte	0xb
	.string	"_cookie"
	.byte	0xa
	.byte	0xac
	.4byte	0x31d
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xb
	.string	"_read"
	.byte	0xa
	.byte	0xae
	.4byte	0xda7
	.byte	0x2
	.byte	0x23
	.byte	0x12
	.byte	0xb
	.string	"_write"
	.byte	0xa
	.byte	0xb0
	.4byte	0xdd7
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0xb
	.string	"_seek"
	.byte	0xa
	.byte	0xb2
	.4byte	0xdfc
	.byte	0x2
	.byte	0x23
	.byte	0x16
	.byte	0xb
	.string	"_close"
	.byte	0xa
	.byte	0xb3
	.4byte	0xe17
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0xb
	.string	"_ub"
	.byte	0xa
	.byte	0xb6
	.4byte	0xa16
	.byte	0x2
	.byte	0x23
	.byte	0x1a
	.byte	0xb
	.string	"_up"
	.byte	0xa
	.byte	0xb7
	.4byte	0xa46
	.byte	0x2
	.byte	0x23
	.byte	0x1e
	.byte	0xb
	.string	"_ur"
	.byte	0xa
	.byte	0xb8
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0xb
	.string	"_ubuf"
	.byte	0xa
	.byte	0xbb
	.4byte	0xe1d
	.byte	0x2
	.byte	0x23
	.byte	0x22
	.byte	0xb
	.string	"_nbuf"
	.byte	0xa
	.byte	0xbc
	.4byte	0xe2d
	.byte	0x2
	.byte	0x23
	.byte	0x25
	.byte	0xb
	.string	"_lb"
	.byte	0xa
	.byte	0xbf
	.4byte	0xa16
	.byte	0x2
	.byte	0x23
	.byte	0x26
	.byte	0xb
	.string	"_blksize"
	.byte	0xa
	.byte	0xc2
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2a
	.byte	0xb
	.string	"_offset"
	.byte	0xa
	.byte	0xc3
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.byte	0xb
	.string	"_data"
	.byte	0xa
	.byte	0xc6
	.4byte	0xbd6
	.byte	0x2
	.byte	0x23
	.byte	0x2e
	.byte	0xb
	.string	"_lock"
	.byte	0xa
	.byte	0xca
	.4byte	0x2fd
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0x0
	.byte	0x13
	.4byte	0xbd6
	.byte	0x1
	.4byte	0xb5
	.byte	0x14
	.4byte	0xbd6
	.byte	0x14
	.4byte	0x31d
	.byte	0x14
	.4byte	0x47b
	.byte	0x14
	.4byte	0xb5
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0xbdc
	.byte	0x15
	.4byte	0xda7
	.string	"_reent"
	.2byte	0x1f5
	.byte	0xa
	.byte	0x25
	.byte	0x16
	.string	"_errno"
	.byte	0xa
	.2byte	0x236
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x16
	.string	"_stdin"
	.byte	0xa
	.2byte	0x23b
	.4byte	0xe96
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x16
	.string	"_stdout"
	.byte	0xa
	.2byte	0x23b
	.4byte	0xe96
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x16
	.string	"_stderr"
	.byte	0xa
	.2byte	0x23b
	.4byte	0xe96
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0x16
	.string	"_inc"
	.byte	0xa
	.2byte	0x23d
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x16
	.string	"_emergency"
	.byte	0xa
	.2byte	0x23e
	.4byte	0x10af
	.byte	0x2
	.byte	0x23
	.byte	0xa
	.byte	0x16
	.string	"_current_category"
	.byte	0xa
	.2byte	0x240
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0xb
	.byte	0x16
	.string	"_current_locale"
	.byte	0xa
	.2byte	0x241
	.4byte	0xdcc
	.byte	0x2
	.byte	0x23
	.byte	0xd
	.byte	0x16
	.string	"__sdidinit"
	.byte	0xa
	.2byte	0x243
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0xf
	.byte	0x16
	.string	"__cleanup"
	.byte	0xa
	.2byte	0x245
	.4byte	0x1154
	.byte	0x2
	.byte	0x23
	.byte	0x11
	.byte	0x16
	.string	"_result"
	.byte	0xa
	.2byte	0x248
	.4byte	0x869
	.byte	0x2
	.byte	0x23
	.byte	0x13
	.byte	0x16
	.string	"_result_k"
	.byte	0xa
	.2byte	0x249
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x15
	.byte	0x16
	.string	"_p5s"
	.byte	0xa
	.2byte	0x24a
	.4byte	0x869
	.byte	0x2
	.byte	0x23
	.byte	0x17
	.byte	0x16
	.string	"_freelist"
	.byte	0xa
	.2byte	0x24b
	.4byte	0x115a
	.byte	0x2
	.byte	0x23
	.byte	0x19
	.byte	0x16
	.string	"_cvtlen"
	.byte	0xa
	.2byte	0x24e
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x1b
	.byte	0x16
	.string	"_cvtbuf"
	.byte	0xa
	.2byte	0x24f
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x1d
	.byte	0x16
	.string	"_new"
	.byte	0xa
	.2byte	0x271
	.4byte	0x111f
	.byte	0x2
	.byte	0x23
	.byte	0x1f
	.byte	0x16
	.string	"_atexit"
	.byte	0xa
	.2byte	0x274
	.4byte	0x9f8
	.byte	0x3
	.byte	0x23
	.byte	0x89,0x1
	.byte	0x16
	.string	"_atexit0"
	.byte	0xa
	.2byte	0x275
	.4byte	0x9ab
	.byte	0x3
	.byte	0x23
	.byte	0x8b,0x1
	.byte	0x16
	.string	"_sig_func"
	.byte	0xa
	.2byte	0x278
	.4byte	0x116c
	.byte	0x3
	.byte	0x23
	.byte	0xd7,0x2
	.byte	0x16
	.string	"__sglue"
	.byte	0xa
	.2byte	0x27d
	.4byte	0xe4c
	.byte	0x3
	.byte	0x23
	.byte	0xd9,0x2
	.byte	0x16
	.string	"__sf"
	.byte	0xa
	.2byte	0x27e
	.4byte	0x1178
	.byte	0x3
	.byte	0x23
	.byte	0xdf,0x2
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0xbb7
	.byte	0x13
	.4byte	0xdcc
	.byte	0x1
	.4byte	0xb5
	.byte	0x14
	.4byte	0xbd6
	.byte	0x14
	.4byte	0x31d
	.byte	0x14
	.4byte	0xdcc
	.byte	0x14
	.4byte	0xb5
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0xdd2
	.byte	0x17
	.4byte	0x481
	.byte	0xe
	.byte	0x2
	.4byte	0xdad
	.byte	0x13
	.4byte	0xdfc
	.byte	0x1
	.4byte	0x255
	.byte	0x14
	.4byte	0xbd6
	.byte	0x14
	.4byte	0x31d
	.byte	0x14
	.4byte	0x255
	.byte	0x14
	.4byte	0xb5
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0xddd
	.byte	0x13
	.4byte	0xe17
	.byte	0x1
	.4byte	0xb5
	.byte	0x14
	.4byte	0xbd6
	.byte	0x14
	.4byte	0x31d
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0xe02
	.byte	0x8
	.4byte	0xe2d
	.4byte	0x93
	.byte	0x9
	.4byte	0x2b7
	.byte	0x2
	.byte	0x0
	.byte	0x8
	.4byte	0xe3d
	.4byte	0x93
	.byte	0x9
	.4byte	0x2b7
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.string	"__FILE"
	.byte	0xa
	.2byte	0x103
	.4byte	0xa4c
	.byte	0x18
	.4byte	0xe90
	.string	"_glue"
	.byte	0x6
	.byte	0xa
	.2byte	0x108
	.byte	0x16
	.string	"_next"
	.byte	0xa
	.2byte	0x109
	.4byte	0xe90
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x16
	.string	"_niobs"
	.byte	0xa
	.2byte	0x10a
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x16
	.string	"_iobs"
	.byte	0xa
	.2byte	0x10b
	.4byte	0xe96
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0xe4c
	.byte	0xe
	.byte	0x2
	.4byte	0xe3d
	.byte	0x18
	.4byte	0xee0
	.string	"_rand48"
	.byte	0xe
	.byte	0xa
	.2byte	0x123
	.byte	0x16
	.string	"_seed"
	.byte	0xa
	.2byte	0x124
	.4byte	0xee0
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x16
	.string	"_mult"
	.byte	0xa
	.2byte	0x125
	.4byte	0xee0
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0x16
	.string	"_add"
	.byte	0xa
	.2byte	0x126
	.4byte	0x22f
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x0
	.byte	0x8
	.4byte	0xef0
	.4byte	0x22f
	.byte	0x9
	.4byte	0x2b7
	.byte	0x2
	.byte	0x0
	.byte	0x19
	.4byte	0x10af
	.byte	0x6a
	.byte	0xa
	.2byte	0x267
	.byte	0x16
	.string	"_unused_rand"
	.byte	0xa
	.2byte	0x255
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x16
	.string	"_strtok_last"
	.byte	0xa
	.2byte	0x256
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x16
	.string	"_asctime_buf"
	.byte	0xa
	.2byte	0x257
	.4byte	0x10af
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x16
	.string	"_localtime_buf"
	.byte	0xa
	.2byte	0x258
	.4byte	0x87f
	.byte	0x2
	.byte	0x23
	.byte	0x5
	.byte	0x16
	.string	"_gamma_signgam"
	.byte	0xa
	.2byte	0x259
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x17
	.byte	0x16
	.string	"_rand_next"
	.byte	0xa
	.2byte	0x25a
	.4byte	0x1b4
	.byte	0x2
	.byte	0x23
	.byte	0x19
	.byte	0x16
	.string	"_r48"
	.byte	0xa
	.2byte	0x25b
	.4byte	0xe9c
	.byte	0x2
	.byte	0x23
	.byte	0x21
	.byte	0x16
	.string	"_mblen_state"
	.byte	0xa
	.2byte	0x25c
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x2f
	.byte	0x16
	.string	"_mbtowc_state"
	.byte	0xa
	.2byte	0x25d
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x35
	.byte	0x16
	.string	"_wctomb_state"
	.byte	0xa
	.2byte	0x25e
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x3b
	.byte	0x16
	.string	"_l64a_buf"
	.byte	0xa
	.2byte	0x25f
	.4byte	0x10bf
	.byte	0x2
	.byte	0x23
	.byte	0x41
	.byte	0x16
	.string	"_signal_buf"
	.byte	0xa
	.2byte	0x260
	.4byte	0x10af
	.byte	0x2
	.byte	0x23
	.byte	0x49
	.byte	0x16
	.string	"_getdate_err"
	.byte	0xa
	.2byte	0x261
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x4a
	.byte	0x16
	.string	"_mbrlen_state"
	.byte	0xa
	.2byte	0x262
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x4c
	.byte	0x16
	.string	"_mbrtowc_state"
	.byte	0xa
	.2byte	0x263
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x52
	.byte	0x16
	.string	"_mbsrtowcs_state"
	.byte	0xa
	.2byte	0x264
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x58
	.byte	0x16
	.string	"_wcrtomb_state"
	.byte	0xa
	.2byte	0x265
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x5e
	.byte	0x16
	.string	"_wcsrtombs_state"
	.byte	0xa
	.2byte	0x266
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.byte	0x64
	.byte	0x0
	.byte	0x8
	.4byte	0x10bf
	.4byte	0x481
	.byte	0x9
	.4byte	0x2b7
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.4byte	0x10cf
	.4byte	0x481
	.byte	0x9
	.4byte	0x2b7
	.byte	0x7
	.byte	0x0
	.byte	0x19
	.4byte	0x10ff
	.byte	0x4
	.byte	0xa
	.2byte	0x270
	.byte	0x16
	.string	"_nextf"
	.byte	0xa
	.2byte	0x26e
	.4byte	0x10ff
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x16
	.string	"_nmalloc"
	.byte	0xa
	.2byte	0x26f
	.4byte	0x110f
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x0
	.byte	0x8
	.4byte	0x110f
	.4byte	0xa46
	.byte	0x9
	.4byte	0x2b7
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.4byte	0x111f
	.4byte	0xce
	.byte	0x9
	.4byte	0x2b7
	.byte	0x0
	.byte	0x0
	.byte	0x1a
	.4byte	0x1148
	.byte	0x6a
	.byte	0xa
	.2byte	0x271
	.byte	0x1b
	.string	"_reent"
	.byte	0xa
	.2byte	0x267
	.4byte	0xef0
	.byte	0x1b
	.string	"_unused"
	.byte	0xa
	.2byte	0x270
	.4byte	0x10cf
	.byte	0x0
	.byte	0x1c
	.4byte	0x1154
	.byte	0x1
	.byte	0x14
	.4byte	0xbd6
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x1148
	.byte	0xe
	.byte	0x2
	.4byte	0x869
	.byte	0x1c
	.4byte	0x116c
	.byte	0x1
	.byte	0x14
	.4byte	0xb5
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x1172
	.byte	0xe
	.byte	0x2
	.4byte	0x1160
	.byte	0x8
	.4byte	0x1188
	.4byte	0xe3d
	.byte	0x9
	.4byte	0x2b7
	.byte	0x2
	.byte	0x0
	.byte	0x10
	.4byte	.LC6
	.byte	0xb
	.byte	0x27
	.4byte	0x1193
	.byte	0x1d
	.4byte	0x1209
	.4byte	.LC6
	.2byte	0x480
	.byte	0xb
	.byte	0x27
	.byte	0x11
	.4byte	.LC7
	.byte	0xb
	.byte	0xa9
	.4byte	0x138d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x11
	.4byte	.LC8
	.byte	0xb
	.byte	0xaa
	.4byte	0x1a85
	.byte	0x3
	.byte	0x23
	.byte	0xba,0x1
	.byte	0xb
	.string	"pad"
	.byte	0xb
	.byte	0xab
	.4byte	0x1a94
	.byte	0x3
	.byte	0x23
	.byte	0xba,0x1
	.byte	0x11
	.4byte	.LC9
	.byte	0xb
	.byte	0xac
	.4byte	0x1aa3
	.byte	0x3
	.byte	0x23
	.byte	0xba,0x1
	.byte	0x11
	.4byte	.LC10
	.byte	0xb
	.byte	0xad
	.4byte	0x1ab3
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x2
	.byte	0x11
	.4byte	.LC11
	.byte	0xb
	.byte	0xae
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x5
	.byte	0x11
	.4byte	.LC12
	.byte	0xb
	.byte	0xaf
	.4byte	0x1ac4
	.byte	0x3
	.byte	0x23
	.byte	0xf5,0x8
	.byte	0x0
	.byte	0x10
	.4byte	.LC13
	.byte	0xb
	.byte	0x28
	.4byte	0x1214
	.byte	0x1d
	.4byte	0x128a
	.4byte	.LC13
	.2byte	0x800
	.byte	0xb
	.byte	0x28
	.byte	0x11
	.4byte	.LC7
	.byte	0xb
	.byte	0xb4
	.4byte	0x138d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x11
	.4byte	.LC8
	.byte	0xb
	.byte	0xb5
	.4byte	0x1aa3
	.byte	0x3
	.byte	0x23
	.byte	0xba,0x1
	.byte	0xb
	.string	"pad"
	.byte	0xb
	.byte	0xb6
	.4byte	0x1ad4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x2
	.byte	0x11
	.4byte	.LC9
	.byte	0xb
	.byte	0xb7
	.4byte	0x1ad4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x3
	.byte	0x11
	.4byte	.LC10
	.byte	0xb
	.byte	0xb8
	.4byte	0x1ae4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x4
	.byte	0x11
	.4byte	.LC11
	.byte	0xb
	.byte	0xb9
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.byte	0x80,0xc
	.byte	0x11
	.4byte	.LC12
	.byte	0xb
	.byte	0xba
	.4byte	0x1ac4
	.byte	0x3
	.byte	0x23
	.byte	0xf5,0xf
	.byte	0x0
	.byte	0x10
	.4byte	.LC14
	.byte	0xb
	.byte	0x29
	.4byte	0x1295
	.byte	0x1d
	.4byte	0x130b
	.4byte	.LC14
	.2byte	0xb00
	.byte	0xb
	.byte	0x29
	.byte	0x11
	.4byte	.LC7
	.byte	0xb
	.byte	0xbf
	.4byte	0x138d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x11
	.4byte	.LC8
	.byte	0xb
	.byte	0xc0
	.4byte	0x1aa3
	.byte	0x3
	.byte	0x23
	.byte	0xba,0x1
	.byte	0xb
	.string	"pad"
	.byte	0xb
	.byte	0xc1
	.4byte	0x1ad4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x2
	.byte	0x11
	.4byte	.LC9
	.byte	0xb
	.byte	0xc2
	.4byte	0x1ad4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x3
	.byte	0x11
	.4byte	.LC10
	.byte	0xb
	.byte	0xc3
	.4byte	0x1af5
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x4
	.byte	0x11
	.4byte	.LC11
	.byte	0xb
	.byte	0xc4
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x12
	.byte	0x11
	.4byte	.LC12
	.byte	0xb
	.byte	0xc5
	.4byte	0x1ac4
	.byte	0x3
	.byte	0x23
	.byte	0xf5,0x15
	.byte	0x0
	.byte	0x10
	.4byte	.LC15
	.byte	0xb
	.byte	0x2a
	.4byte	0x1316
	.byte	0x1e
	.4byte	.LC15
	.byte	0x1
	.byte	0x2
	.string	"taskptr"
	.byte	0xb
	.byte	0x2c
	.4byte	0x132b
	.byte	0x1f
	.4byte	0x1382
	.string	"taskptr"
	.byte	0x2
	.byte	0xb
	.byte	0x2c
	.byte	0x7
	.string	"smalltask"
	.byte	0xb
	.byte	0x35
	.4byte	0x1a67
	.byte	0x7
	.string	"mediumtask"
	.byte	0xb
	.byte	0x36
	.4byte	0x1a6d
	.byte	0x7
	.string	"largetask"
	.byte	0xb
	.byte	0x37
	.4byte	0x1a73
	.byte	0x7
	.string	"customtask"
	.byte	0xb
	.byte	0x38
	.4byte	0x1a79
	.byte	0x0
	.byte	0x10
	.4byte	.LC16
	.byte	0xb
	.byte	0x2d
	.4byte	0x138d
	.byte	0xf
	.4byte	0x1a67
	.4byte	.LC16
	.byte	0xba
	.byte	0xb
	.byte	0x2d
	.byte	0xb
	.string	"user_status"
	.byte	0xb
	.byte	0x41
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"user_nextTask"
	.byte	0xb
	.byte	0x42
	.4byte	0x1a7f
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0xb
	.string	"user_rpSave"
	.byte	0xb
	.byte	0x43
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"user_serialAccess"
	.byte	0xb
	.byte	0x44
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0xb
	.string	"user_dp"
	.byte	0xb
	.byte	0x45
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xb
	.string	"user_vp"
	.byte	0xb
	.byte	0x46
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xb
	.string	"user_np"
	.byte	0xb
	.byte	0x47
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xb
	.string	"user_eep"
	.byte	0xb
	.byte	0x48
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0xb
	.string	"user_r0"
	.byte	0xb
	.byte	0x49
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0xb
	.string	"user_s0"
	.byte	0xb
	.byte	0x4a
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x1a
	.byte	0xb
	.string	"user_currentHeap"
	.byte	0xb
	.byte	0x4b
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0xb
	.string	"user_pocket"
	.byte	0xb
	.byte	0x4c
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0xb
	.string	"user_pad"
	.byte	0xb
	.byte	0x4d
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x22
	.byte	0xb
	.string	"user_tib"
	.byte	0xb
	.byte	0x4e
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x26
	.byte	0xb
	.string	"user_vforth"
	.byte	0xb
	.byte	0x4f
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x2a
	.byte	0xb
	.string	"user_vassm"
	.byte	0xb
	.byte	0x50
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x2e
	.byte	0xb
	.string	"user_current"
	.byte	0xb
	.byte	0x51
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x32
	.byte	0xb
	.string	"user_context"
	.byte	0xb
	.byte	0x52
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x36
	.byte	0xb
	.string	"user_abort"
	.byte	0xb
	.byte	0x53
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x3a
	.byte	0xb
	.string	"user_error"
	.byte	0xb
	.byte	0x54
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x3e
	.byte	0xb
	.string	"user_key"
	.byte	0xb
	.byte	0x55
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x42
	.byte	0xb
	.string	"user_emit"
	.byte	0xb
	.byte	0x56
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x46
	.byte	0xb
	.string	"user_askKey"
	.byte	0xb
	.byte	0x57
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x4a
	.byte	0xb
	.string	"user_traceAction"
	.byte	0xb
	.byte	0x58
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x4e
	.byte	0xb
	.string	"user_c_xySave"
	.byte	0xb
	.byte	0x59
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x52
	.byte	0xb
	.string	"user_c_zSave"
	.byte	0xb
	.byte	0x5a
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x54
	.byte	0xb
	.string	"user_c_tmpSave"
	.byte	0xb
	.byte	0x5b
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x56
	.byte	0xb
	.string	"user_c_frame_pointerSave"
	.byte	0xb
	.byte	0x5c
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x58
	.byte	0xb
	.string	"user_tabWidth"
	.byte	0xb
	.byte	0x5d
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x5a
	.byte	0xb
	.string	"user_warmstart"
	.byte	0xb
	.byte	0x5e
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x5c
	.byte	0xb
	.string	"user_width"
	.byte	0xb
	.byte	0x5f
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x5e
	.byte	0xb
	.string	"user_charsPerLine"
	.byte	0xb
	.byte	0x60
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x60
	.byte	0xb
	.string	"user_base"
	.byte	0xb
	.byte	0x61
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x62
	.byte	0xb
	.string	"user_debug"
	.byte	0xb
	.byte	0x62
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x64
	.byte	0xb
	.string	"user_uniqueMsg"
	.byte	0xb
	.byte	0x63
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x66
	.byte	0xb
	.string	"user_longLineMsg"
	.byte	0xb
	.byte	0x64
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x68
	.byte	0xb
	.string	"user_reserved1"
	.byte	0xb
	.byte	0x65
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x6a
	.byte	0xb
	.string	"user_reserved2"
	.byte	0xb
	.byte	0x66
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x6e
	.byte	0xb
	.string	"user_reserved3"
	.byte	0xb
	.byte	0x67
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x72
	.byte	0xb
	.string	"user_reserved4"
	.byte	0xb
	.byte	0x68
	.4byte	0x5b9
	.byte	0x2
	.byte	0x23
	.byte	0x76
	.byte	0xb
	.string	"user_state"
	.byte	0xb
	.byte	0x69
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x7a
	.byte	0xb
	.string	"user_csp"
	.byte	0xb
	.byte	0x6a
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x7c
	.byte	0xb
	.string	"user_greaterIn"
	.byte	0xb
	.byte	0x6b
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x7e
	.byte	0xb
	.string	"user_numTib"
	.byte	0xb
	.byte	0x6c
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x1
	.byte	0xb
	.string	"user_span"
	.byte	0xb
	.byte	0x6d
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x82,0x1
	.byte	0xb
	.string	"user_customError"
	.byte	0xb
	.byte	0x6e
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x84,0x1
	.byte	0xb
	.string	"user_customAbort"
	.byte	0xb
	.byte	0x6f
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x86,0x1
	.byte	0xb
	.string	"user_crBeforeMsg"
	.byte	0xb
	.byte	0x70
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x88,0x1
	.byte	0xb
	.string	"user_quiet"
	.byte	0xb
	.byte	0x71
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x8a,0x1
	.byte	0xb
	.string	"user_xmitDisable"
	.byte	0xb
	.byte	0x72
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x8c,0x1
	.byte	0xb
	.string	"user_numberPtr"
	.byte	0xb
	.byte	0x73
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x8e,0x1
	.byte	0xb
	.string	"user_fpError"
	.byte	0xb
	.byte	0x74
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x90,0x1
	.byte	0xb
	.string	"user_mantissa"
	.byte	0xb
	.byte	0x75
	.4byte	0x11e
	.byte	0x3
	.byte	0x23
	.byte	0x92,0x1
	.byte	0xb
	.string	"user_exponent"
	.byte	0xb
	.byte	0x76
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0x96,0x1
	.byte	0xb
	.string	"user_mantissaSign"
	.byte	0xb
	.byte	0x77
	.4byte	0x481
	.byte	0x3
	.byte	0x23
	.byte	0x98,0x1
	.byte	0xb
	.string	"user_exponentSign"
	.byte	0xb
	.byte	0x78
	.4byte	0x481
	.byte	0x3
	.byte	0x23
	.byte	0x99,0x1
	.byte	0xb
	.string	"user_ok"
	.byte	0xb
	.byte	0x79
	.4byte	0x481
	.byte	0x3
	.byte	0x23
	.byte	0x9a,0x1
	.byte	0xb
	.string	"user_defaultFormat"
	.byte	0xb
	.byte	0x7a
	.4byte	0x481
	.byte	0x3
	.byte	0x23
	.byte	0x9b,0x1
	.byte	0xb
	.string	"user_stringAddrPtr"
	.byte	0xb
	.byte	0x7b
	.4byte	0x5b9
	.byte	0x3
	.byte	0x23
	.byte	0x9c,0x1
	.byte	0xb
	.string	"user_randomNum"
	.byte	0xb
	.byte	0x7c
	.4byte	0x11e
	.byte	0x3
	.byte	0x23
	.byte	0xa0,0x1
	.byte	0xb
	.string	"user_rightPlaces"
	.byte	0xb
	.byte	0x7d
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xa4,0x1
	.byte	0xb
	.string	"user_leftPlaces"
	.byte	0xb
	.byte	0x7e
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xa6,0x1
	.byte	0xb
	.string	"user_mantissaPlaces"
	.byte	0xb
	.byte	0x7f
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xa8,0x1
	.byte	0xb
	.string	"user_trailingZeros"
	.byte	0xb
	.byte	0x80
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xaa,0x1
	.byte	0xb
	.string	"user_noSpaces"
	.byte	0xb
	.byte	0x81
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xac,0x1
	.byte	0xb
	.string	"user_fillField"
	.byte	0xb
	.byte	0x82
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xae,0x1
	.byte	0xb
	.string	"user_lp"
	.byte	0xb
	.byte	0x83
	.4byte	0x47b
	.byte	0x3
	.byte	0x23
	.byte	0xb0,0x1
	.byte	0xb
	.string	"user_singleStep"
	.byte	0xb
	.byte	0x84
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xb2,0x1
	.byte	0xb
	.string	"user_registerDump"
	.byte	0xb
	.byte	0x85
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x1
	.byte	0xb
	.string	"user_trace"
	.byte	0xb
	.byte	0x86
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xb6,0x1
	.byte	0xb
	.string	"user_traceIndent"
	.byte	0xb
	.byte	0x87
	.4byte	0x481
	.byte	0x3
	.byte	0x23
	.byte	0xb8,0x1
	.byte	0xb
	.string	"user_pageChangeCounter"
	.byte	0xb
	.byte	0x88
	.4byte	0x481
	.byte	0x3
	.byte	0x23
	.byte	0xb9,0x1
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x1188
	.byte	0xe
	.byte	0x2
	.4byte	0x1209
	.byte	0xe
	.byte	0x2
	.4byte	0x128a
	.byte	0xe
	.byte	0x2
	.4byte	0x130b
	.byte	0xe
	.byte	0x2
	.4byte	0x138d
	.byte	0x8
	.4byte	0x1a94
	.4byte	0x481
	.byte	0x20
	.4byte	0x2b7
	.byte	0x0
	.byte	0x8
	.4byte	0x1aa3
	.4byte	0x481
	.byte	0x20
	.4byte	0x2b7
	.byte	0x0
	.byte	0x8
	.4byte	0x1ab3
	.4byte	0x481
	.byte	0x9
	.4byte	0x2b7
	.byte	0x45
	.byte	0x0
	.byte	0x8
	.4byte	0x1ac4
	.4byte	0x481
	.byte	0x21
	.4byte	0x2b7
	.2byte	0x17f
	.byte	0x0
	.byte	0x8
	.4byte	0x1ad4
	.4byte	0x481
	.byte	0x9
	.4byte	0x2b7
	.byte	0xa
	.byte	0x0
	.byte	0x8
	.4byte	0x1ae4
	.4byte	0x481
	.byte	0x9
	.4byte	0x2b7
	.byte	0x7f
	.byte	0x0
	.byte	0x8
	.4byte	0x1af5
	.4byte	0x481
	.byte	0x21
	.4byte	0x2b7
	.2byte	0x3ff
	.byte	0x0
	.byte	0x8
	.4byte	0x1b06
	.4byte	0x481
	.byte	0x21
	.4byte	0x2b7
	.2byte	0x6ff
	.byte	0x0
	.byte	0x6
	.4byte	0x1b21
	.byte	0x2
	.byte	0xc
	.byte	0x26
	.byte	0x7
	.string	"w"
	.byte	0xc
	.byte	0x23
	.4byte	0xce
	.byte	0x7
	.string	"b"
	.byte	0xc
	.byte	0x24
	.4byte	0x1b21
	.byte	0x0
	.byte	0x8
	.4byte	0x1b31
	.4byte	0x93
	.byte	0x9
	.4byte	0x2b7
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.string	"word_bits_t"
	.byte	0xc
	.byte	0x26
	.4byte	0x1b06
	.byte	0xa
	.4byte	0x1b71
	.byte	0x4
	.byte	0xc
	.byte	0x32
	.byte	0xb
	.string	"l"
	.byte	0xc
	.byte	0x2f
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"c"
	.byte	0xc
	.byte	0x30
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0xb
	.string	"h"
	.byte	0xc
	.byte	0x31
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.byte	0x3
	.byte	0x0
	.byte	0x6
	.4byte	0x1bac
	.byte	0x4
	.byte	0xc
	.byte	0x34
	.byte	0x7
	.string	"f"
	.byte	0xc
	.byte	0x2a
	.4byte	0x1bac
	.byte	0x7
	.string	"d"
	.byte	0xc
	.byte	0x2b
	.4byte	0x13c
	.byte	0x7
	.string	"w"
	.byte	0xc
	.byte	0x2c
	.4byte	0x1bb5
	.byte	0x7
	.string	"b"
	.byte	0xc
	.byte	0x2d
	.4byte	0x2a7
	.byte	0x7
	.string	"center"
	.byte	0xc
	.byte	0x32
	.4byte	0x1b44
	.byte	0x0
	.byte	0x3
	.string	"float"
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.4byte	0x1bc5
	.4byte	0xce
	.byte	0x9
	.4byte	0x2b7
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.string	"dword_bits_t"
	.byte	0xc
	.byte	0x34
	.4byte	0x1b71
	.byte	0x2
	.string	"RESOURCE"
	.byte	0xd
	.byte	0x22
	.4byte	0x1be9
	.byte	0x22
	.4byte	0x5b9
	.byte	0x2
	.string	"MAILBOX"
	.byte	0xd
	.byte	0x2c
	.4byte	0x1bfd
	.byte	0x22
	.4byte	0x11e
	.byte	0x2
	.string	"FMAILBOX"
	.byte	0xd
	.byte	0x33
	.4byte	0x1c12
	.byte	0x22
	.4byte	0x1bac
	.byte	0xa
	.4byte	0x1c63
	.byte	0x5
	.byte	0xe
	.byte	0x45
	.byte	0xb
	.string	"call_insn"
	.byte	0xe
	.byte	0x42
	.4byte	0x481
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"target_page"
	.byte	0xe
	.byte	0x43
	.4byte	0x5d2
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0xb
	.string	"target_address"
	.byte	0xe
	.byte	0x44
	.4byte	0x5c6
	.byte	0x2
	.byte	0x23
	.byte	0x3
	.byte	0x0
	.byte	0x2
	.string	"BOOT_VECTOR"
	.byte	0xe
	.byte	0x45
	.4byte	0x1c17
	.byte	0xa
	.4byte	0x1d29
	.byte	0xa
	.byte	0xf
	.byte	0x1e
	.byte	0xb
	.string	"seg_code_base_page"
	.byte	0xf
	.byte	0x18
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"seg_code_base_addr"
	.byte	0xf
	.byte	0x19
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0xb
	.string	"seg_header_page"
	.byte	0xf
	.byte	0x1a
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x3
	.byte	0xb
	.string	"seg_header_base_addr"
	.byte	0xf
	.byte	0x1b
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"seg_varstart_addr"
	.byte	0xf
	.byte	0x1c
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0xb
	.string	"seg_eestart_addr"
	.byte	0xf
	.byte	0x1d
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.string	"SEG_ARRAY_ENTRY"
	.byte	0xf
	.byte	0x1e
	.4byte	0x1c76
	.byte	0xa
	.4byte	0x1ea8
	.byte	0x20
	.byte	0xf
	.byte	0x59
	.byte	0xb
	.string	"segment_index"
	.byte	0xf
	.byte	0x4e
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"segment_code_size"
	.byte	0xf
	.byte	0x4f
	.4byte	0x6ec
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0xb
	.string	"segment_varstart_page"
	.byte	0xf
	.byte	0x50
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"segment_varstart_addr"
	.byte	0xf
	.byte	0x51
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x5
	.byte	0xb
	.string	"segment_variable_size"
	.byte	0xf
	.byte	0x52
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x7
	.byte	0xb
	.string	"segment_eevarstart_page"
	.byte	0xf
	.byte	0x53
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x9
	.byte	0xb
	.string	"segment_eevarstart_addr"
	.byte	0xf
	.byte	0x54
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0xa
	.byte	0xb
	.string	"segment_eevariable_size"
	.byte	0xf
	.byte	0x55
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xb
	.string	"segment_compilation_start_addr"
	.byte	0xf
	.byte	0x56
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0xe
	.byte	0xb
	.string	"segment_code_checksum"
	.byte	0xf
	.byte	0x57
	.4byte	0x3c2
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xb
	.string	"required_segments"
	.byte	0xf
	.byte	0x58
	.4byte	0x1ea8
	.byte	0x2
	.byte	0x23
	.byte	0x12
	.byte	0x0
	.byte	0x8
	.4byte	0x1eb8
	.4byte	0x481
	.byte	0x9
	.4byte	0x2b7
	.byte	0xd
	.byte	0x0
	.byte	0x2
	.string	"SEGMENT_STRUCT"
	.byte	0xf
	.byte	0x59
	.4byte	0x1d40
	.byte	0xa
	.4byte	0x1f91
	.byte	0x8
	.byte	0x10
	.byte	0x23
	.byte	0xb
	.string	"watch_hundredth_seconds"
	.byte	0x10
	.byte	0x1b
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"watch_seconds"
	.byte	0x10
	.byte	0x1c
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0xb
	.string	"watch_minute"
	.byte	0x10
	.byte	0x1d
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0xb
	.string	"watch_hour"
	.byte	0x10
	.byte	0x1e
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x3
	.byte	0xb
	.string	"watch_day"
	.byte	0x10
	.byte	0x1f
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xb
	.string	"watch_date"
	.byte	0x10
	.byte	0x20
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x5
	.byte	0xb
	.string	"watch_month"
	.byte	0x10
	.byte	0x21
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0xb
	.string	"watch_year"
	.byte	0x10
	.byte	0x22
	.4byte	0x59f
	.byte	0x2
	.byte	0x23
	.byte	0x7
	.byte	0x0
	.byte	0x2
	.string	"CALENDAR_TIME"
	.byte	0x10
	.byte	0x23
	.4byte	0x1ece
	.byte	0x1f
	.4byte	0x1fc9
	.string	"__dmath"
	.byte	0x8
	.byte	0x11
	.byte	0xc
	.byte	0x7
	.string	"i"
	.byte	0x11
	.byte	0xd
	.4byte	0x1fc9
	.byte	0x7
	.string	"d"
	.byte	0x11
	.byte	0xe
	.4byte	0x1fd9
	.byte	0x0
	.byte	0x8
	.4byte	0x1fd9
	.4byte	0x7ee
	.byte	0x9
	.4byte	0x2b7
	.byte	0x1
	.byte	0x0
	.byte	0x3
	.string	"double"
	.byte	0x8
	.byte	0x4
	.byte	0x1f
	.4byte	0x2006
	.string	"__fmath"
	.byte	0x4
	.byte	0x11
	.byte	0x12
	.byte	0x7
	.string	"i"
	.byte	0x11
	.byte	0x13
	.4byte	0x86f
	.byte	0x7
	.string	"f"
	.byte	0x11
	.byte	0x14
	.4byte	0x1bac
	.byte	0x0
	.byte	0x1f
	.4byte	0x202b
	.string	"__ldmath"
	.byte	0x10
	.byte	0x11
	.byte	0x18
	.byte	0x7
	.string	"i"
	.byte	0x11
	.byte	0x19
	.4byte	0x202b
	.byte	0x7
	.string	"ld"
	.byte	0x11
	.byte	0x1a
	.4byte	0x203b
	.byte	0x0
	.byte	0x8
	.4byte	0x203b
	.4byte	0x7ee
	.byte	0x9
	.4byte	0x2b7
	.byte	0x3
	.byte	0x0
	.byte	0x3
	.string	"long double"
	.byte	0x8
	.byte	0x4
	.byte	0x2
	.string	"float_t"
	.byte	0x11
	.byte	0x7a
	.4byte	0x1bac
	.byte	0x2
	.string	"double_t"
	.byte	0x11
	.byte	0x7b
	.4byte	0x1fd9
	.byte	0x18
	.4byte	0x20de
	.string	"exception"
	.byte	0x1e
	.byte	0x11
	.2byte	0x194
	.byte	0x16
	.string	"type"
	.byte	0x11
	.2byte	0x195
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x16
	.string	"name"
	.byte	0x11
	.2byte	0x196
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x16
	.string	"arg1"
	.byte	0x11
	.2byte	0x197
	.4byte	0x1fd9
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x16
	.string	"arg2"
	.byte	0x11
	.2byte	0x198
	.4byte	0x1fd9
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x16
	.string	"retval"
	.byte	0x11
	.2byte	0x199
	.4byte	0x1fd9
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0x16
	.string	"err"
	.byte	0x11
	.2byte	0x19a
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0x0
	.byte	0x23
	.4byte	0x213b
	.string	"__fdlibm_version"
	.byte	0x2
	.byte	0x11
	.2byte	0x1ca
	.byte	0x24
	.string	"__fdlibm_ieee"
	.byte	0x7f
	.byte	0x24
	.string	"__fdlibm_svid"
	.byte	0x0
	.byte	0x24
	.string	"__fdlibm_xopen"
	.byte	0x1
	.byte	0x24
	.string	"__fdlibm_posix"
	.byte	0x2
	.byte	0x0
	.byte	0x2
	.string	"__gnuc_va_list"
	.byte	0x12
	.byte	0x2b
	.4byte	0x2151
	.byte	0xc
	.byte	0x2
	.byte	0x2
	.string	"FILE"
	.byte	0x13
	.byte	0x32
	.4byte	0xe3d
	.byte	0x2
	.string	"fpos_t"
	.byte	0x13
	.byte	0x3b
	.4byte	0x255
	.byte	0x5
	.string	"cookie_read_function_t"
	.byte	0x13
	.2byte	0x209
	.4byte	0x218c
	.byte	0x13
	.4byte	0x21a6
	.byte	0x1
	.4byte	0x4e4
	.byte	0x14
	.4byte	0x31d
	.byte	0x14
	.4byte	0x47b
	.byte	0x14
	.4byte	0x330
	.byte	0x0
	.byte	0x5
	.string	"cookie_write_function_t"
	.byte	0x13
	.2byte	0x20b
	.4byte	0x21c6
	.byte	0x13
	.4byte	0x21e0
	.byte	0x1
	.4byte	0x4e4
	.byte	0x14
	.4byte	0x31d
	.byte	0x14
	.4byte	0xdcc
	.byte	0x14
	.4byte	0x330
	.byte	0x0
	.byte	0x5
	.string	"cookie_seek_function_t"
	.byte	0x13
	.2byte	0x210
	.4byte	0x21ff
	.byte	0x13
	.4byte	0x2219
	.byte	0x1
	.4byte	0xb5
	.byte	0x14
	.4byte	0x31d
	.byte	0x14
	.4byte	0x2219
	.byte	0x14
	.4byte	0xb5
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x496
	.byte	0x5
	.string	"cookie_close_function_t"
	.byte	0x13
	.2byte	0x212
	.4byte	0x223f
	.byte	0x13
	.4byte	0x224f
	.byte	0x1
	.4byte	0xb5
	.byte	0x14
	.4byte	0x31d
	.byte	0x0
	.byte	0x19
	.4byte	0x229b
	.byte	0x8
	.byte	0x13
	.2byte	0x21b
	.byte	0x16
	.string	"read"
	.byte	0x13
	.2byte	0x217
	.4byte	0x229b
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x16
	.string	"write"
	.byte	0x13
	.2byte	0x218
	.4byte	0x22a1
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x16
	.string	"seek"
	.byte	0x13
	.2byte	0x219
	.4byte	0x22a7
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x16
	.string	"close"
	.byte	0x13
	.2byte	0x21a
	.4byte	0x22ad
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x216d
	.byte	0xe
	.byte	0x2
	.4byte	0x21a6
	.byte	0xe
	.byte	0x2
	.4byte	0x21e0
	.byte	0xe
	.byte	0x2
	.4byte	0x221f
	.byte	0x5
	.string	"cookie_io_functions_t"
	.byte	0x13
	.2byte	0x21b
	.4byte	0x224f
	.byte	0xa
	.4byte	0x22f7
	.byte	0x4
	.byte	0x14
	.byte	0x20
	.byte	0xb
	.string	"quot"
	.byte	0x14
	.byte	0x1e
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"rem"
	.byte	0x14
	.byte	0x1f
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x0
	.byte	0x2
	.string	"div_t"
	.byte	0x14
	.byte	0x20
	.4byte	0x22d1
	.byte	0xa
	.4byte	0x232a
	.byte	0x8
	.byte	0x14
	.byte	0x26
	.byte	0xb
	.string	"quot"
	.byte	0x14
	.byte	0x24
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"rem"
	.byte	0x14
	.byte	0x25
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x2
	.string	"ldiv_t"
	.byte	0x14
	.byte	0x26
	.4byte	0x2304
	.byte	0xa
	.4byte	0x235e
	.byte	0x10
	.byte	0x14
	.byte	0x2d
	.byte	0xb
	.string	"quot"
	.byte	0x14
	.byte	0x2b
	.4byte	0x191
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xb
	.string	"rem"
	.byte	0x14
	.byte	0x2c
	.4byte	0x191
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.string	"lldiv_t"
	.byte	0x14
	.byte	0x2d
	.4byte	0x2338
	.byte	0x5
	.string	"INFO_TABLE"
	.byte	0x15
	.2byte	0x10e
	.4byte	0x2380
	.byte	0x8
	.4byte	0x2390
	.4byte	0x5b9
	.byte	0x9
	.4byte	0x2b7
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.string	"boolean"
	.byte	0x16
	.byte	0x15
	.4byte	0xb5
	.byte	0x10
	.4byte	.LC17
	.byte	0x16
	.byte	0x16
	.4byte	0x23aa
	.byte	0x1e
	.4byte	.LC17
	.byte	0x1
	.byte	0x25
	.4byte	0x24e4
	.4byte	.LC18
	.byte	0x2
	.byte	0x16
	.byte	0x27
	.byte	0x24
	.string	"WBSKT_NO_ERROR"
	.byte	0x0
	.byte	0x24
	.string	"WBSKT_FRAME_MISSING"
	.byte	0x1
	.byte	0x24
	.string	"WBSKT_FRAME_TOO_BIG"
	.byte	0x2
	.byte	0x24
	.string	"WBSKT_BAD_VARIABLE_SETUP"
	.byte	0x3
	.byte	0x24
	.string	"WBSKT_BAD_EVENT_SETUP"
	.byte	0x4
	.byte	0x24
	.string	"WBSKT_BAD_MESSAGE"
	.byte	0x5
	.byte	0x24
	.string	"WBSKT_BAD_JSON"
	.byte	0x6
	.byte	0x24
	.string	"WBSKT_BAD_VARIABLE_TYPE"
	.byte	0x7
	.byte	0x24
	.string	"WBSKT_BAD_EVENT"
	.byte	0x8
	.byte	0x24
	.string	"WBSKT_PARAMETER_MISMATCH"
	.byte	0x9
	.byte	0x24
	.string	"WBSKT_BAD_PARAMETER_TYPE"
	.byte	0xa
	.byte	0x24
	.string	"WBSKT_MISMATCHED_TYPES"
	.byte	0xb
	.byte	0x24
	.string	"WBSKT_INTERNAL_ERROR"
	.byte	0xc
	.byte	0x0
	.byte	0x10
	.4byte	.LC18
	.byte	0x16
	.byte	0x35
	.4byte	0x23b0
	.byte	0x26
	.byte	0x1
	.string	"FunctionTimer"
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"StartFunctionTimer"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x59
	.byte	0x27
	.4byte	0x2555
	.byte	0x1
	.string	"mn"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	0xb5
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x59
	.byte	0x28
	.string	"a"
	.byte	0x1
	.byte	0x39
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x0
	.byte	0x27
	.4byte	0x257c
	.byte	0x1
	.string	"mx"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	0xb5
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x59
	.byte	0x28
	.string	"b"
	.byte	0x1
	.byte	0x3a
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x0
	.byte	0x27
	.4byte	0x25a4
	.byte	0x1
	.string	"FLR"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	0xb5
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x59
	.byte	0x28
	.string	"c"
	.byte	0x1
	.byte	0x3b
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x0
	.byte	0x29
	.4byte	0x25df
	.byte	0x1
	.string	"ControllOut_loop"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x59
	.byte	0x2a
	.string	"SS_EERslope"
	.byte	0x1
	.byte	0x50
	.4byte	0x25df
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.4byte	0x25ef
	.4byte	0x1bac
	.byte	0x9
	.4byte	0x2b7
	.byte	0x1
	.byte	0x0
	.byte	0x29
	.4byte	0x261d
	.byte	0x1
	.string	"SScheck_loop"
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x59
	.byte	0x2a
	.string	"XX"
	.byte	0x1
	.byte	0xdf
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x0
	.byte	0x2b
	.byte	0x1
	.string	"Init_ControllOut"
	.byte	0x1
	.2byte	0x111
	.byte	0x1
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x59
	.byte	0x2b
	.byte	0x1
	.string	"Init_SScheck"
	.byte	0x1
	.2byte	0x118
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x59
	.byte	0x2c
	.string	"_io_ports"
	.byte	0x17
	.byte	0x15
	.4byte	0x266e
	.byte	0x1
	.byte	0x1
	.byte	0x22
	.4byte	0x59f
	.byte	0x8
	.4byte	0x2683
	.4byte	0x93
	.byte	0x9
	.4byte	0x2b7
	.byte	0x7
	.byte	0x0
	.byte	0x2c
	.string	"CatchVars"
	.byte	0x18
	.byte	0xa
	.4byte	0x2673
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"SendMSG"
	.byte	0x18
	.byte	0xb
	.4byte	0x481
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"data_resource"
	.byte	0x19
	.byte	0x7
	.4byte	0x26be
	.byte	0x1
	.byte	0x1
	.byte	0x22
	.4byte	0x13c
	.byte	0x2d
	.string	"latest_portt_state"
	.byte	0x19
	.byte	0xd
	.4byte	0x93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	latest_portt_state
	.byte	0x2c
	.string	"VarTm"
	.byte	0x1a
	.byte	0x6
	.4byte	0x1bac
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"OAT"
	.byte	0x1a
	.byte	0xb
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"EERv"
	.byte	0x1a
	.byte	0x11
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"SAT"
	.byte	0x1a
	.byte	0x13
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"ERH"
	.byte	0x1a
	.byte	0x13
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"Blower"
	.byte	0x1a
	.byte	0x15
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.string	"Damper"
	.byte	0x1a
	.byte	0x15
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x2d
	.string	"EAT"
	.byte	0x1a
	.byte	0x1e
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	EAT
	.byte	0x2d
	.string	"Fan"
	.byte	0x1a
	.byte	0x1f
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Fan
	.byte	0x2a
	.string	"start_time"
	.byte	0x1
	.byte	0xa
	.4byte	0x11e
	.byte	0x5
	.byte	0x3
	.4byte	start_time
	.byte	0x2a
	.string	"ms_counter"
	.byte	0x1
	.byte	0xb
	.4byte	0xb5
	.byte	0x5
	.byte	0x3
	.4byte	ms_counter
	.byte	0x2a
	.string	"time_period"
	.byte	0x1
	.byte	0xc
	.4byte	0x3c2
	.byte	0x5
	.byte	0x3
	.4byte	time_period
	.byte	0x2a
	.string	"next_execution_time"
	.byte	0x1
	.byte	0xd
	.4byte	0xb5
	.byte	0x5
	.byte	0x3
	.4byte	next_execution_time
	.byte	0x2a
	.string	"SScheck"
	.byte	0x1
	.byte	0xe
	.4byte	0x481
	.byte	0x5
	.byte	0x3
	.4byte	SScheck
	.byte	0x2a
	.string	"SSresult"
	.byte	0x1
	.byte	0xe
	.4byte	0x481
	.byte	0x5
	.byte	0x3
	.4byte	SSresult
	.byte	0x2a
	.string	"next_execution_time2"
	.byte	0x1
	.byte	0x10
	.4byte	0xb5
	.byte	0x5
	.byte	0x3
	.4byte	next_execution_time2
	.byte	0x8
	.4byte	0x2833
	.4byte	0x1bac
	.byte	0x9
	.4byte	0x2b7
	.byte	0x2
	.byte	0x0
	.byte	0x2d
	.string	"SS_EERs"
	.byte	0x1
	.byte	0x13
	.4byte	0x2823
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SS_EERs
	.byte	0x2d
	.string	"SSeerAVG"
	.byte	0x1
	.byte	0x13
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SSeerAVG
	.byte	0x2d
	.string	"SSfanEFs"
	.byte	0x1
	.byte	0x13
	.4byte	0x2823
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SSfanEFs
	.byte	0x2d
	.string	"ControllOut_task"
	.byte	0x1
	.byte	0x3d
	.4byte	0x1214
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ControllOut_task
	.byte	0x2d
	.string	"SScheck_task"
	.byte	0x1
	.byte	0x3e
	.4byte	0x1214
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SScheck_task
	.byte	0x2d
	.string	"fanEF"
	.byte	0x1
	.byte	0x41
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fanEF
	.byte	0x2d
	.string	"fanCF"
	.byte	0x1
	.byte	0x41
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fanCF
	.byte	0x2d
	.string	"DS"
	.byte	0x1
	.byte	0x41
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	DS
	.byte	0x2d
	.string	"FanTm"
	.byte	0x1
	.byte	0x41
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	FanTm
	.byte	0x2d
	.string	"BlowerFan"
	.byte	0x1
	.byte	0x41
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	BlowerFan
	.byte	0x8
	.4byte	0x2926
	.4byte	0xb5
	.byte	0x9
	.4byte	0x2b7
	.byte	0x2
	.byte	0x0
	.byte	0x2d
	.string	"B14"
	.byte	0x1
	.byte	0x42
	.4byte	0x2916
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	B14
	.byte	0x2d
	.string	"EERopt"
	.byte	0x1
	.byte	0x42
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	EERopt
	.byte	0x2d
	.string	"VarTm2"
	.byte	0x1
	.byte	0x43
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	VarTm2
	.byte	0x2d
	.string	"t0"
	.byte	0x1
	.byte	0x46
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	t0
	.byte	0x2d
	.string	"Ep"
	.byte	0x1
	.byte	0x46
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Ep
	.byte	0x2d
	.string	"Spt"
	.byte	0x1
	.byte	0x46
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Spt
	.byte	0x2d
	.string	"dt"
	.byte	0x1
	.byte	0x46
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dt
	.byte	0x2d
	.string	"IN"
	.byte	0x1
	.byte	0x46
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	IN
	.byte	0x2d
	.string	"OT"
	.byte	0x1
	.byte	0x46
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	OT
	.byte	0x2d
	.string	"P"
	.byte	0x1
	.byte	0x4a
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	P
	.byte	0x2d
	.string	"I"
	.byte	0x1
	.byte	0x4a
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	I
	.byte	0x2d
	.string	"D"
	.byte	0x1
	.byte	0x4a
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	D
	.byte	0x8
	.4byte	0x2a09
	.4byte	0x1bac
	.byte	0x9
	.4byte	0x2b7
	.byte	0x4
	.byte	0x0
	.byte	0x2d
	.string	"EERlast5"
	.byte	0x1
	.byte	0xdc
	.4byte	0x29f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	EERlast5
	.byte	0x2d
	.string	"EERavg"
	.byte	0x1
	.byte	0xdc
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	EERavg
	.byte	0x2d
	.string	"dEER"
	.byte	0x1
	.byte	0xdc
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dEER
	.byte	0x0
	.section	.debug_abbrev
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0x12
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x2
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.byte	0x24
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0x24
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0xc
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x10
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x11
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x12
	.byte	0x15
	.byte	0x0
	.byte	0x27
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x14
	.byte	0x5
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x16
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x17
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x18
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x0
	.byte	0x0
	.byte	0x19
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x0
	.byte	0x0
	.byte	0x1a
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x0
	.byte	0x0
	.byte	0x1b
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x1c
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x27
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x1d
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x1e
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x1f
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x20
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x21
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0x0
	.byte	0x0
	.byte	0x22
	.byte	0x35
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x23
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x0
	.byte	0x0
	.byte	0x24
	.byte	0x28
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xd
	.byte	0x0
	.byte	0x0
	.byte	0x25
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x26
	.byte	0x2e
	.byte	0x0
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x27
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x28
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x29
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x2a
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x2b
	.byte	0x2e
	.byte	0x0
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x2c
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x2d
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x1bb
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2a49
	.4byte	0x24ef
	.string	"FunctionTimer"
	.4byte	0x250c
	.string	"StartFunctionTimer"
	.4byte	0x252e
	.string	"mn"
	.4byte	0x2555
	.string	"mx"
	.4byte	0x257c
	.string	"FLR"
	.4byte	0x25a4
	.string	"ControllOut_loop"
	.4byte	0x25ef
	.string	"SScheck_loop"
	.4byte	0x261d
	.string	"Init_ControllOut"
	.4byte	0x263e
	.string	"Init_SScheck"
	.4byte	0x26c3
	.string	"latest_portt_state"
	.4byte	0x2748
	.string	"EAT"
	.4byte	0x275a
	.string	"Fan"
	.4byte	0x2833
	.string	"SS_EERs"
	.4byte	0x2849
	.string	"SSeerAVG"
	.4byte	0x2860
	.string	"SSfanEFs"
	.4byte	0x2877
	.string	"ControllOut_task"
	.4byte	0x2896
	.string	"SScheck_task"
	.4byte	0x28b1
	.string	"fanEF"
	.4byte	0x28c5
	.string	"fanCF"
	.4byte	0x28d9
	.string	"DS"
	.4byte	0x28ea
	.string	"FanTm"
	.4byte	0x28fe
	.string	"BlowerFan"
	.4byte	0x2926
	.string	"B14"
	.4byte	0x2938
	.string	"EERopt"
	.4byte	0x294d
	.string	"VarTm2"
	.4byte	0x2962
	.string	"t0"
	.4byte	0x2973
	.string	"Ep"
	.4byte	0x2984
	.string	"Spt"
	.4byte	0x2996
	.string	"dt"
	.4byte	0x29a7
	.string	"IN"
	.4byte	0x29b8
	.string	"OT"
	.4byte	0x29c9
	.string	"P"
	.4byte	0x29d9
	.string	"I"
	.4byte	0x29e9
	.string	"D"
	.4byte	0x2a09
	.string	"EERlast5"
	.4byte	0x2a20
	.string	"EERavg"
	.4byte	0x2a35
	.string	"dEER"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"",@progbits
.LC6:
	.string	"small_taskArea"
.LC3:
	.string	"short unsigned int"
.LC18:
	.string	"Wbskt_Error_Type"
.LC10:
	.string	"rstack"
.LC8:
	.string	"belowpad"
.LC4:
	.string	"_types_fd_set"
.LC16:
	.string	"userArea"
.LC11:
	.string	"_reent_placeholder"
.LC7:
	.string	"user_area"
.LC5:
	.string	"_on_exit_args"
.LC12:
	.string	"reent_padding"
.LC17:
	.string	"json_object"
.LC15:
	.string	"custom_taskArea"
.LC14:
	.string	"large_taskArea"
.LC9:
	.string	"dstack"
.LC13:
	.string	"medium_taskArea"
	.ident	"GCC: (GNU) 3.3.6-m68hc1x-20070214"
