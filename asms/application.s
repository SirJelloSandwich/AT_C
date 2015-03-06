;;;-----------------------------------------
;;; Start MC68HCS12 gcc assembly output
;;; gcc compiler 3.3.6-m68hc1x-20070214
;;; Command:	C:\MosaicPlus\c\tools\gcc\bin\..\lib\gcc-lib\m6811-elf\3.3.6-m68hc1x-20070214\cc1.exe -quiet -IC:/MosaicPlus/c/libraries/include -iprefix C:\MosaicPlus\c\tools\gcc\bin\../lib/gcc-lib/m6811-elf\3.3.6-m68hc1x-20070214\ -D__GNUC__=3 -D__GNUC_MINOR__=3 -D__GNUC_PATCHLEVEL__=6 -Dmc68hc1x -D__mc68hc1x__ -D__mc68hc1x -D__HAVE_SHORT_INT__ -D__INT__=16 -Dmc6812 -DMC6812 -Dmc68hcs12 -D__USE_RTC__ application.c -quiet -dumpbase application.c -minmax -mshort -mlong-calls -m68hcs12 -mauto-incdec -auxbase-strip C:/MosaicPlus/my_projects/Rev7/asms/application -g -Wall -fverbose-asm -o C:/MosaicPlus/my_projects/Rev7/asms/application.s
;;; Compiled:	Fri Mar 06 13:43:00 2015
;;; (META)compiled by GNU C version 3.4.2 (mingw-special).
;;;-----------------------------------------
	.file	"application.c"
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
	.globl	wbskt_typeof_HTMLPwrC
	.type	wbskt_typeof_HTMLPwrC,@function
	.far	wbskt_typeof_HTMLPwrC
wbskt_typeof_HTMLPwrC:
.LFB7:
.LM1:
	movw	_.frame,2,-sp
	sts	_.frame
.LM2:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE7:
	.size	wbskt_typeof_HTMLPwrC, .-wbskt_typeof_HTMLPwrC
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_HTMLPwrC
	.type	wbskt_nameof_HTMLPwrC,@function
	.far	wbskt_nameof_HTMLPwrC
wbskt_nameof_HTMLPwrC:
	clra
	ldab	#%page(wbskt_nameof_HTMLPwrC_str)
	ldx	#%addr(wbskt_nameof_HTMLPwrC_str)
	exg	d,x
	rtc
wbskt_nameof_HTMLPwrC_str:
	.string "HTMLPwrC"
	.size	wbskt_nameof_HTMLPwrC, .-wbskt_nameof_HTMLPwrC
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_HTMLPwrC
	.type	wbskt_argsof_HTMLPwrC,@function
	.far	wbskt_argsof_HTMLPwrC
wbskt_argsof_HTMLPwrC:
	clra
	ldab	#%page(wbskt_argsof_HTMLPwrC_str)
	ldx	#%addr(wbskt_argsof_HTMLPwrC_str)
	exg	d,x
	rtc
wbskt_argsof_HTMLPwrC_str:
	.string ""
	.size	wbskt_argsof_HTMLPwrC, .-wbskt_argsof_HTMLPwrC
	.popsection
; End of inline assembler code
#NO_APP
	.globl	HTMLPwrC
	.sect	.data
	.type	HTMLPwrC, @object
	.size	HTMLPwrC, 4
HTMLPwrC:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_HTMLRfgtC
	.type	wbskt_typeof_HTMLRfgtC,@function
	.far	wbskt_typeof_HTMLRfgtC
wbskt_typeof_HTMLRfgtC:
.LFB9:
.LM3:
	movw	_.frame,2,-sp
	sts	_.frame
.LM4:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE9:
	.size	wbskt_typeof_HTMLRfgtC, .-wbskt_typeof_HTMLRfgtC
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_HTMLRfgtC
	.type	wbskt_nameof_HTMLRfgtC,@function
	.far	wbskt_nameof_HTMLRfgtC
wbskt_nameof_HTMLRfgtC:
	clra
	ldab	#%page(wbskt_nameof_HTMLRfgtC_str)
	ldx	#%addr(wbskt_nameof_HTMLRfgtC_str)
	exg	d,x
	rtc
wbskt_nameof_HTMLRfgtC_str:
	.string "HTMLRfgtC"
	.size	wbskt_nameof_HTMLRfgtC, .-wbskt_nameof_HTMLRfgtC
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_HTMLRfgtC
	.type	wbskt_argsof_HTMLRfgtC,@function
	.far	wbskt_argsof_HTMLRfgtC
wbskt_argsof_HTMLRfgtC:
	clra
	ldab	#%page(wbskt_argsof_HTMLRfgtC_str)
	ldx	#%addr(wbskt_argsof_HTMLRfgtC_str)
	exg	d,x
	rtc
wbskt_argsof_HTMLRfgtC_str:
	.string ""
	.size	wbskt_argsof_HTMLRfgtC, .-wbskt_argsof_HTMLRfgtC
	.popsection
; End of inline assembler code
#NO_APP
	.globl	HTMLRfgtC
	.sect	.data
	.type	HTMLRfgtC, @object
	.size	HTMLRfgtC, 4
HTMLRfgtC:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_CtrlMode
	.type	wbskt_typeof_CtrlMode,@function
	.far	wbskt_typeof_CtrlMode
wbskt_typeof_CtrlMode:
.LFB11:
.LM5:
	movw	_.frame,2,-sp
	sts	_.frame
.LM6:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE11:
	.size	wbskt_typeof_CtrlMode, .-wbskt_typeof_CtrlMode
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_CtrlMode
	.type	wbskt_nameof_CtrlMode,@function
	.far	wbskt_nameof_CtrlMode
wbskt_nameof_CtrlMode:
	clra
	ldab	#%page(wbskt_nameof_CtrlMode_str)
	ldx	#%addr(wbskt_nameof_CtrlMode_str)
	exg	d,x
	rtc
wbskt_nameof_CtrlMode_str:
	.string "CtrlMode"
	.size	wbskt_nameof_CtrlMode, .-wbskt_nameof_CtrlMode
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_CtrlMode
	.type	wbskt_argsof_CtrlMode,@function
	.far	wbskt_argsof_CtrlMode
wbskt_argsof_CtrlMode:
	clra
	ldab	#%page(wbskt_argsof_CtrlMode_str)
	ldx	#%addr(wbskt_argsof_CtrlMode_str)
	exg	d,x
	rtc
wbskt_argsof_CtrlMode_str:
	.string ""
	.size	wbskt_argsof_CtrlMode, .-wbskt_argsof_CtrlMode
	.popsection
; End of inline assembler code
#NO_APP
	.globl	CtrlMode
	.sect	.data
	.type	CtrlMode, @object
	.size	CtrlMode, 4
CtrlMode:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_RSV
	.type	wbskt_typeof_RSV,@function
	.far	wbskt_typeof_RSV
wbskt_typeof_RSV:
.LFB13:
.LM7:
	movw	_.frame,2,-sp
	sts	_.frame
.LM8:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE13:
	.size	wbskt_typeof_RSV, .-wbskt_typeof_RSV
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_RSV
	.type	wbskt_nameof_RSV,@function
	.far	wbskt_nameof_RSV
wbskt_nameof_RSV:
	clra
	ldab	#%page(wbskt_nameof_RSV_str)
	ldx	#%addr(wbskt_nameof_RSV_str)
	exg	d,x
	rtc
wbskt_nameof_RSV_str:
	.string "RSV"
	.size	wbskt_nameof_RSV, .-wbskt_nameof_RSV
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_RSV
	.type	wbskt_argsof_RSV,@function
	.far	wbskt_argsof_RSV
wbskt_argsof_RSV:
	clra
	ldab	#%page(wbskt_argsof_RSV_str)
	ldx	#%addr(wbskt_argsof_RSV_str)
	exg	d,x
	rtc
wbskt_argsof_RSV_str:
	.string ""
	.size	wbskt_argsof_RSV, .-wbskt_argsof_RSV
	.popsection
; End of inline assembler code
#NO_APP
	.globl	RSV
	.sect	.data
	.type	RSV, @object
	.size	RSV, 4
RSV:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_CFhtml
	.type	wbskt_typeof_CFhtml,@function
	.far	wbskt_typeof_CFhtml
wbskt_typeof_CFhtml:
.LFB15:
.LM9:
	movw	_.frame,2,-sp
	sts	_.frame
.LM10:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE15:
	.size	wbskt_typeof_CFhtml, .-wbskt_typeof_CFhtml
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_CFhtml
	.type	wbskt_nameof_CFhtml,@function
	.far	wbskt_nameof_CFhtml
wbskt_nameof_CFhtml:
	clra
	ldab	#%page(wbskt_nameof_CFhtml_str)
	ldx	#%addr(wbskt_nameof_CFhtml_str)
	exg	d,x
	rtc
wbskt_nameof_CFhtml_str:
	.string "CFhtml"
	.size	wbskt_nameof_CFhtml, .-wbskt_nameof_CFhtml
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_CFhtml
	.type	wbskt_argsof_CFhtml,@function
	.far	wbskt_argsof_CFhtml
wbskt_argsof_CFhtml:
	clra
	ldab	#%page(wbskt_argsof_CFhtml_str)
	ldx	#%addr(wbskt_argsof_CFhtml_str)
	exg	d,x
	rtc
wbskt_argsof_CFhtml_str:
	.string ""
	.size	wbskt_argsof_CFhtml, .-wbskt_argsof_CFhtml
	.popsection
; End of inline assembler code
#NO_APP
	.globl	CFhtml
	.sect	.data
	.type	CFhtml, @object
	.size	CFhtml, 4
CFhtml:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_EFhtml
	.type	wbskt_typeof_EFhtml,@function
	.far	wbskt_typeof_EFhtml
wbskt_typeof_EFhtml:
.LFB17:
.LM11:
	movw	_.frame,2,-sp
	sts	_.frame
.LM12:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE17:
	.size	wbskt_typeof_EFhtml, .-wbskt_typeof_EFhtml
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_EFhtml
	.type	wbskt_nameof_EFhtml,@function
	.far	wbskt_nameof_EFhtml
wbskt_nameof_EFhtml:
	clra
	ldab	#%page(wbskt_nameof_EFhtml_str)
	ldx	#%addr(wbskt_nameof_EFhtml_str)
	exg	d,x
	rtc
wbskt_nameof_EFhtml_str:
	.string "EFhtml"
	.size	wbskt_nameof_EFhtml, .-wbskt_nameof_EFhtml
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_EFhtml
	.type	wbskt_argsof_EFhtml,@function
	.far	wbskt_argsof_EFhtml
wbskt_argsof_EFhtml:
	clra
	ldab	#%page(wbskt_argsof_EFhtml_str)
	ldx	#%addr(wbskt_argsof_EFhtml_str)
	exg	d,x
	rtc
wbskt_argsof_EFhtml_str:
	.string ""
	.size	wbskt_argsof_EFhtml, .-wbskt_argsof_EFhtml
	.popsection
; End of inline assembler code
#NO_APP
	.globl	EFhtml
	.sect	.data
	.type	EFhtml, @object
	.size	EFhtml, 4
EFhtml:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_DShtml
	.type	wbskt_typeof_DShtml,@function
	.far	wbskt_typeof_DShtml
wbskt_typeof_DShtml:
.LFB19:
.LM13:
	movw	_.frame,2,-sp
	sts	_.frame
.LM14:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE19:
	.size	wbskt_typeof_DShtml, .-wbskt_typeof_DShtml
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_DShtml
	.type	wbskt_nameof_DShtml,@function
	.far	wbskt_nameof_DShtml
wbskt_nameof_DShtml:
	clra
	ldab	#%page(wbskt_nameof_DShtml_str)
	ldx	#%addr(wbskt_nameof_DShtml_str)
	exg	d,x
	rtc
wbskt_nameof_DShtml_str:
	.string "DShtml"
	.size	wbskt_nameof_DShtml, .-wbskt_nameof_DShtml
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_DShtml
	.type	wbskt_argsof_DShtml,@function
	.far	wbskt_argsof_DShtml
wbskt_argsof_DShtml:
	clra
	ldab	#%page(wbskt_argsof_DShtml_str)
	ldx	#%addr(wbskt_argsof_DShtml_str)
	exg	d,x
	rtc
wbskt_argsof_DShtml_str:
	.string ""
	.size	wbskt_argsof_DShtml, .-wbskt_argsof_DShtml
	.popsection
; End of inline assembler code
#NO_APP
	.globl	DShtml
	.sect	.data
	.type	DShtml, @object
	.size	DShtml, 4
DShtml:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_FlowSetZero
	.type	wbskt_typeof_FlowSetZero,@function
	.far	wbskt_typeof_FlowSetZero
wbskt_typeof_FlowSetZero:
.LFB21:
.LM15:
	movw	_.frame,2,-sp
	sts	_.frame
.LM16:
	ldd	#108
	movw	2,sp+,_.frame
	rtc
.LFE21:
	.size	wbskt_typeof_FlowSetZero, .-wbskt_typeof_FlowSetZero
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_FlowSetZero
	.type	wbskt_nameof_FlowSetZero,@function
	.far	wbskt_nameof_FlowSetZero
wbskt_nameof_FlowSetZero:
	clra
	ldab	#%page(wbskt_nameof_FlowSetZero_str)
	ldx	#%addr(wbskt_nameof_FlowSetZero_str)
	exg	d,x
	rtc
wbskt_nameof_FlowSetZero_str:
	.string "FlowSetZero"
	.size	wbskt_nameof_FlowSetZero, .-wbskt_nameof_FlowSetZero
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_FlowSetZero
	.type	wbskt_argsof_FlowSetZero,@function
	.far	wbskt_argsof_FlowSetZero
wbskt_argsof_FlowSetZero:
	clra
	ldab	#%page(wbskt_argsof_FlowSetZero_str)
	ldx	#%addr(wbskt_argsof_FlowSetZero_str)
	exg	d,x
	rtc
wbskt_argsof_FlowSetZero_str:
	.string ""
	.size	wbskt_argsof_FlowSetZero, .-wbskt_argsof_FlowSetZero
	.popsection
; End of inline assembler code
#NO_APP
	.globl	FlowSetZero
	.sect	.data
	.type	FlowSetZero, @object
	.size	FlowSetZero, 4
FlowSetZero:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_M
	.type	wbskt_typeof_M,@function
	.far	wbskt_typeof_M
wbskt_typeof_M:
.LFB23:
.LM17:
	movw	_.frame,2,-sp
	sts	_.frame
.LM18:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE23:
	.size	wbskt_typeof_M, .-wbskt_typeof_M
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_M
	.type	wbskt_nameof_M,@function
	.far	wbskt_nameof_M
wbskt_nameof_M:
	clra
	ldab	#%page(wbskt_nameof_M_str)
	ldx	#%addr(wbskt_nameof_M_str)
	exg	d,x
	rtc
wbskt_nameof_M_str:
	.string "M"
	.size	wbskt_nameof_M, .-wbskt_nameof_M
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_M
	.type	wbskt_argsof_M,@function
	.far	wbskt_argsof_M
wbskt_argsof_M:
	clra
	ldab	#%page(wbskt_argsof_M_str)
	ldx	#%addr(wbskt_argsof_M_str)
	exg	d,x
	rtc
wbskt_argsof_M_str:
	.string ""
	.size	wbskt_argsof_M, .-wbskt_argsof_M
	.popsection
; End of inline assembler code
#NO_APP
	.globl	M
	.sect	.data
	.type	M, @object
	.size	M, 4
M:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_B
	.type	wbskt_typeof_B,@function
	.far	wbskt_typeof_B
wbskt_typeof_B:
.LFB25:
.LM19:
	movw	_.frame,2,-sp
	sts	_.frame
.LM20:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE25:
	.size	wbskt_typeof_B, .-wbskt_typeof_B
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_B
	.type	wbskt_nameof_B,@function
	.far	wbskt_nameof_B
wbskt_nameof_B:
	clra
	ldab	#%page(wbskt_nameof_B_str)
	ldx	#%addr(wbskt_nameof_B_str)
	exg	d,x
	rtc
wbskt_nameof_B_str:
	.string "B"
	.size	wbskt_nameof_B, .-wbskt_nameof_B
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_B
	.type	wbskt_argsof_B,@function
	.far	wbskt_argsof_B
wbskt_argsof_B:
	clra
	ldab	#%page(wbskt_argsof_B_str)
	ldx	#%addr(wbskt_argsof_B_str)
	exg	d,x
	rtc
wbskt_argsof_B_str:
	.string ""
	.size	wbskt_argsof_B, .-wbskt_argsof_B
	.popsection
; End of inline assembler code
#NO_APP
	.globl	B
	.sect	.data
	.type	B, @object
	.size	B, 4
B:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_p1off
	.type	wbskt_typeof_p1off,@function
	.far	wbskt_typeof_p1off
wbskt_typeof_p1off:
.LFB27:
.LM21:
	movw	_.frame,2,-sp
	sts	_.frame
.LM22:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE27:
	.size	wbskt_typeof_p1off, .-wbskt_typeof_p1off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_p1off
	.type	wbskt_nameof_p1off,@function
	.far	wbskt_nameof_p1off
wbskt_nameof_p1off:
	clra
	ldab	#%page(wbskt_nameof_p1off_str)
	ldx	#%addr(wbskt_nameof_p1off_str)
	exg	d,x
	rtc
wbskt_nameof_p1off_str:
	.string "p1off"
	.size	wbskt_nameof_p1off, .-wbskt_nameof_p1off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_p1off
	.type	wbskt_argsof_p1off,@function
	.far	wbskt_argsof_p1off
wbskt_argsof_p1off:
	clra
	ldab	#%page(wbskt_argsof_p1off_str)
	ldx	#%addr(wbskt_argsof_p1off_str)
	exg	d,x
	rtc
wbskt_argsof_p1off_str:
	.string ""
	.size	wbskt_argsof_p1off, .-wbskt_argsof_p1off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	p1off
	.sect	.data
	.type	p1off, @object
	.size	p1off, 4
p1off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_p2off
	.type	wbskt_typeof_p2off,@function
	.far	wbskt_typeof_p2off
wbskt_typeof_p2off:
.LFB29:
.LM23:
	movw	_.frame,2,-sp
	sts	_.frame
.LM24:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE29:
	.size	wbskt_typeof_p2off, .-wbskt_typeof_p2off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_p2off
	.type	wbskt_nameof_p2off,@function
	.far	wbskt_nameof_p2off
wbskt_nameof_p2off:
	clra
	ldab	#%page(wbskt_nameof_p2off_str)
	ldx	#%addr(wbskt_nameof_p2off_str)
	exg	d,x
	rtc
wbskt_nameof_p2off_str:
	.string "p2off"
	.size	wbskt_nameof_p2off, .-wbskt_nameof_p2off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_p2off
	.type	wbskt_argsof_p2off,@function
	.far	wbskt_argsof_p2off
wbskt_argsof_p2off:
	clra
	ldab	#%page(wbskt_argsof_p2off_str)
	ldx	#%addr(wbskt_argsof_p2off_str)
	exg	d,x
	rtc
wbskt_argsof_p2off_str:
	.string ""
	.size	wbskt_argsof_p2off, .-wbskt_argsof_p2off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	p2off
	.sect	.data
	.type	p2off, @object
	.size	p2off, 4
p2off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_p3off
	.type	wbskt_typeof_p3off,@function
	.far	wbskt_typeof_p3off
wbskt_typeof_p3off:
.LFB31:
.LM25:
	movw	_.frame,2,-sp
	sts	_.frame
.LM26:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE31:
	.size	wbskt_typeof_p3off, .-wbskt_typeof_p3off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_p3off
	.type	wbskt_nameof_p3off,@function
	.far	wbskt_nameof_p3off
wbskt_nameof_p3off:
	clra
	ldab	#%page(wbskt_nameof_p3off_str)
	ldx	#%addr(wbskt_nameof_p3off_str)
	exg	d,x
	rtc
wbskt_nameof_p3off_str:
	.string "p3off"
	.size	wbskt_nameof_p3off, .-wbskt_nameof_p3off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_p3off
	.type	wbskt_argsof_p3off,@function
	.far	wbskt_argsof_p3off
wbskt_argsof_p3off:
	clra
	ldab	#%page(wbskt_argsof_p3off_str)
	ldx	#%addr(wbskt_argsof_p3off_str)
	exg	d,x
	rtc
wbskt_argsof_p3off_str:
	.string ""
	.size	wbskt_argsof_p3off, .-wbskt_argsof_p3off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	p3off
	.sect	.data
	.type	p3off, @object
	.size	p3off, 4
p3off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_tRef
	.type	wbskt_typeof_tRef,@function
	.far	wbskt_typeof_tRef
wbskt_typeof_tRef:
.LFB33:
.LM27:
	movw	_.frame,2,-sp
	sts	_.frame
.LM28:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE33:
	.size	wbskt_typeof_tRef, .-wbskt_typeof_tRef
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_tRef
	.type	wbskt_nameof_tRef,@function
	.far	wbskt_nameof_tRef
wbskt_nameof_tRef:
	clra
	ldab	#%page(wbskt_nameof_tRef_str)
	ldx	#%addr(wbskt_nameof_tRef_str)
	exg	d,x
	rtc
wbskt_nameof_tRef_str:
	.string "tRef"
	.size	wbskt_nameof_tRef, .-wbskt_nameof_tRef
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_tRef
	.type	wbskt_argsof_tRef,@function
	.far	wbskt_argsof_tRef
wbskt_argsof_tRef:
	clra
	ldab	#%page(wbskt_argsof_tRef_str)
	ldx	#%addr(wbskt_argsof_tRef_str)
	exg	d,x
	rtc
wbskt_argsof_tRef_str:
	.string ""
	.size	wbskt_argsof_tRef, .-wbskt_argsof_tRef
	.popsection
; End of inline assembler code
#NO_APP
	.globl	tRef
	.sect	.data
	.type	tRef, @object
	.size	tRef, 4
tRef:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_t2off
	.type	wbskt_typeof_t2off,@function
	.far	wbskt_typeof_t2off
wbskt_typeof_t2off:
.LFB35:
.LM29:
	movw	_.frame,2,-sp
	sts	_.frame
.LM30:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE35:
	.size	wbskt_typeof_t2off, .-wbskt_typeof_t2off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_t2off
	.type	wbskt_nameof_t2off,@function
	.far	wbskt_nameof_t2off
wbskt_nameof_t2off:
	clra
	ldab	#%page(wbskt_nameof_t2off_str)
	ldx	#%addr(wbskt_nameof_t2off_str)
	exg	d,x
	rtc
wbskt_nameof_t2off_str:
	.string "t2off"
	.size	wbskt_nameof_t2off, .-wbskt_nameof_t2off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_t2off
	.type	wbskt_argsof_t2off,@function
	.far	wbskt_argsof_t2off
wbskt_argsof_t2off:
	clra
	ldab	#%page(wbskt_argsof_t2off_str)
	ldx	#%addr(wbskt_argsof_t2off_str)
	exg	d,x
	rtc
wbskt_argsof_t2off_str:
	.string ""
	.size	wbskt_argsof_t2off, .-wbskt_argsof_t2off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	t2off
	.sect	.data
	.type	t2off, @object
	.size	t2off, 4
t2off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_t3off
	.type	wbskt_typeof_t3off,@function
	.far	wbskt_typeof_t3off
wbskt_typeof_t3off:
.LFB37:
.LM31:
	movw	_.frame,2,-sp
	sts	_.frame
.LM32:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE37:
	.size	wbskt_typeof_t3off, .-wbskt_typeof_t3off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_t3off
	.type	wbskt_nameof_t3off,@function
	.far	wbskt_nameof_t3off
wbskt_nameof_t3off:
	clra
	ldab	#%page(wbskt_nameof_t3off_str)
	ldx	#%addr(wbskt_nameof_t3off_str)
	exg	d,x
	rtc
wbskt_nameof_t3off_str:
	.string "t3off"
	.size	wbskt_nameof_t3off, .-wbskt_nameof_t3off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_t3off
	.type	wbskt_argsof_t3off,@function
	.far	wbskt_argsof_t3off
wbskt_argsof_t3off:
	clra
	ldab	#%page(wbskt_argsof_t3off_str)
	ldx	#%addr(wbskt_argsof_t3off_str)
	exg	d,x
	rtc
wbskt_argsof_t3off_str:
	.string ""
	.size	wbskt_argsof_t3off, .-wbskt_argsof_t3off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	t3off
	.sect	.data
	.type	t3off, @object
	.size	t3off, 4
t3off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_t4off
	.type	wbskt_typeof_t4off,@function
	.far	wbskt_typeof_t4off
wbskt_typeof_t4off:
.LFB39:
.LM33:
	movw	_.frame,2,-sp
	sts	_.frame
.LM34:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE39:
	.size	wbskt_typeof_t4off, .-wbskt_typeof_t4off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_t4off
	.type	wbskt_nameof_t4off,@function
	.far	wbskt_nameof_t4off
wbskt_nameof_t4off:
	clra
	ldab	#%page(wbskt_nameof_t4off_str)
	ldx	#%addr(wbskt_nameof_t4off_str)
	exg	d,x
	rtc
wbskt_nameof_t4off_str:
	.string "t4off"
	.size	wbskt_nameof_t4off, .-wbskt_nameof_t4off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_t4off
	.type	wbskt_argsof_t4off,@function
	.far	wbskt_argsof_t4off
wbskt_argsof_t4off:
	clra
	ldab	#%page(wbskt_argsof_t4off_str)
	ldx	#%addr(wbskt_argsof_t4off_str)
	exg	d,x
	rtc
wbskt_argsof_t4off_str:
	.string ""
	.size	wbskt_argsof_t4off, .-wbskt_argsof_t4off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	t4off
	.sect	.data
	.type	t4off, @object
	.size	t4off, 4
t4off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_t5off
	.type	wbskt_typeof_t5off,@function
	.far	wbskt_typeof_t5off
wbskt_typeof_t5off:
.LFB41:
.LM35:
	movw	_.frame,2,-sp
	sts	_.frame
.LM36:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE41:
	.size	wbskt_typeof_t5off, .-wbskt_typeof_t5off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_t5off
	.type	wbskt_nameof_t5off,@function
	.far	wbskt_nameof_t5off
wbskt_nameof_t5off:
	clra
	ldab	#%page(wbskt_nameof_t5off_str)
	ldx	#%addr(wbskt_nameof_t5off_str)
	exg	d,x
	rtc
wbskt_nameof_t5off_str:
	.string "t5off"
	.size	wbskt_nameof_t5off, .-wbskt_nameof_t5off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_t5off
	.type	wbskt_argsof_t5off,@function
	.far	wbskt_argsof_t5off
wbskt_argsof_t5off:
	clra
	ldab	#%page(wbskt_argsof_t5off_str)
	ldx	#%addr(wbskt_argsof_t5off_str)
	exg	d,x
	rtc
wbskt_argsof_t5off_str:
	.string ""
	.size	wbskt_argsof_t5off, .-wbskt_argsof_t5off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	t5off
	.sect	.data
	.type	t5off, @object
	.size	t5off, 4
t5off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_t6off
	.type	wbskt_typeof_t6off,@function
	.far	wbskt_typeof_t6off
wbskt_typeof_t6off:
.LFB43:
.LM37:
	movw	_.frame,2,-sp
	sts	_.frame
.LM38:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE43:
	.size	wbskt_typeof_t6off, .-wbskt_typeof_t6off
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_t6off
	.type	wbskt_nameof_t6off,@function
	.far	wbskt_nameof_t6off
wbskt_nameof_t6off:
	clra
	ldab	#%page(wbskt_nameof_t6off_str)
	ldx	#%addr(wbskt_nameof_t6off_str)
	exg	d,x
	rtc
wbskt_nameof_t6off_str:
	.string "t6off"
	.size	wbskt_nameof_t6off, .-wbskt_nameof_t6off
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_t6off
	.type	wbskt_argsof_t6off,@function
	.far	wbskt_argsof_t6off
wbskt_argsof_t6off:
	clra
	ldab	#%page(wbskt_argsof_t6off_str)
	ldx	#%addr(wbskt_argsof_t6off_str)
	exg	d,x
	rtc
wbskt_argsof_t6off_str:
	.string ""
	.size	wbskt_argsof_t6off, .-wbskt_argsof_t6off
	.popsection
; End of inline assembler code
#NO_APP
	.globl	t6off
	.sect	.data
	.type	t6off, @object
	.size	t6off, 4
t6off:
	.long	0
	.sect	.text
	.globl	wbskt_typeof_woff
	.type	wbskt_typeof_woff,@function
	.far	wbskt_typeof_woff
wbskt_typeof_woff:
.LFB45:
.LM39:
	movw	_.frame,2,-sp
	sts	_.frame
.LM40:
	ldd	#102
	movw	2,sp+,_.frame
	rtc
.LFE45:
	.size	wbskt_typeof_woff, .-wbskt_typeof_woff
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	wbskt_nameof_woff
	.type	wbskt_nameof_woff,@function
	.far	wbskt_nameof_woff
wbskt_nameof_woff:
	clra
	ldab	#%page(wbskt_nameof_woff_str)
	ldx	#%addr(wbskt_nameof_woff_str)
	exg	d,x
	rtc
wbskt_nameof_woff_str:
	.string "woff"
	.size	wbskt_nameof_woff, .-wbskt_nameof_woff
	.popsection
	.pushsection	.text
	.globl	wbskt_argsof_woff
	.type	wbskt_argsof_woff,@function
	.far	wbskt_argsof_woff
wbskt_argsof_woff:
	clra
	ldab	#%page(wbskt_argsof_woff_str)
	ldx	#%addr(wbskt_argsof_woff_str)
	exg	d,x
	rtc
wbskt_argsof_woff_str:
	.string ""
	.size	wbskt_argsof_woff, .-wbskt_argsof_woff
	.popsection
; End of inline assembler code
#NO_APP
	.globl	woff
	.sect	.data
	.type	woff, @object
	.size	woff, 4
woff:
	.long	0
	; extern	_io_ports
	; extern	json_object_new_long
	; extern	Wbskt_Event_Parse_Params
	; extern	wbskt_argsof_HTMLPwrC
	; extern	FetchCstring
	; extern	wbskt_nameof_HTMLPwrC
	; extern	TASKBASE
	; extern	json_object_object_add
	; extern	wbskt_catch_pointers
	; extern	wbskt_catch_types
	; extern	wbskt_argsof_HTMLRfgtC
	; extern	wbskt_nameof_HTMLRfgtC
	; extern	wbskt_argsof_CtrlMode
	; extern	wbskt_nameof_CtrlMode
	; extern	wbskt_argsof_RSV
	; extern	wbskt_nameof_RSV
	; extern	wbskt_argsof_CFhtml
	; extern	wbskt_nameof_CFhtml
	; extern	wbskt_argsof_EFhtml
	; extern	wbskt_nameof_EFhtml
	; extern	wbskt_argsof_DShtml
	; extern	wbskt_nameof_DShtml
	; extern	wbskt_argsof_FlowSetZero
	; extern	wbskt_nameof_FlowSetZero
	; extern	wbskt_argsof_M
	; extern	wbskt_nameof_M
	; extern	wbskt_argsof_B
	; extern	wbskt_nameof_B
	; extern	wbskt_argsof_p1off
	; extern	wbskt_nameof_p1off
	; extern	wbskt_argsof_p2off
	; extern	wbskt_nameof_p2off
	; extern	wbskt_argsof_p3off
	; extern	wbskt_nameof_p3off
	; extern	wbskt_argsof_tRef
	; extern	wbskt_nameof_tRef
	; extern	wbskt_argsof_t2off
	; extern	wbskt_nameof_t2off
	; extern	wbskt_argsof_t3off
	; extern	wbskt_nameof_t3off
	; extern	wbskt_argsof_t4off
	; extern	wbskt_nameof_t4off
	; extern	wbskt_argsof_t5off
	; extern	wbskt_nameof_t5off
	; extern	wbskt_argsof_t6off
	; extern	wbskt_nameof_t6off
	; extern	wbskt_argsof_woff
	; extern	wbskt_nameof_woff
	.sect	.text
	.globl	Application_Run_Once
	.type	Application_Run_Once,@function
	.far	Application_Run_Once
Application_Run_Once:
.LFB47:
.LM41:
	movw	_.frame,2,-sp
	leas	-163,sp
	sts	_.frame
.LM42:
.LBB2:
	clr	_io_ports+592
.LM43:
	clr	temporaryOffset+2	;  temporaryOffset
	clr	temporaryOffset+3	;  temporaryOffset
	clr	temporaryOffset
	clr	temporaryOffset+1
.LM44:
	clr	tempRef+2	;  tempRef
	clr	tempRef+3	;  tempRef
	clr	tempRef
	clr	tempRef+1
.LM45:
.LBB3:
	call	wbskt_typeof_HTMLPwrC
	ldx	_.frame
	stab	0,x	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L24
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	3,x
	bra	.L25
.L24:
	call	wbskt_argsof_HTMLPwrC
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	3,y
.L25:
	ldx	_.frame
	movw	3,x,1,x	;  object_wrapper
	call	wbskt_nameof_HTMLPwrC
	ldy	_.frame
	std	7,y
	stx	5,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L26
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	9,x
	ldy	_.frame
	ldd	9,y
	addd	#-1
	ldx	_.frame
	std	9,x
	bra	.L27
.L26:
	ldy	_.frame
	clr	9,y
	clr	10,y
.L27:
	ldx	_.frame
	movw	9,x,2,-sp
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	7,y
	ldx	5,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#HTMLPwrC
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM46:
.LBE3:
.LBB4:
	call	wbskt_typeof_HTMLRfgtC
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L28
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	11,x
	bra	.L29
.L28:
	call	wbskt_argsof_HTMLRfgtC
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	11,y
.L29:
	ldx	_.frame
	movw	11,x,1,x	;  object_wrapper
	call	wbskt_nameof_HTMLRfgtC
	ldy	_.frame
	std	15,y
	stx	13,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L30
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	17,x
	ldy	_.frame
	ldd	17,y
	addd	#-1
	ldx	_.frame
	std	17,x
	bra	.L31
.L30:
	ldy	_.frame
	clr	17,y
	clr	18,y
.L31:
	ldx	_.frame
	ldx	17,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	15,y
	ldx	13,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#HTMLRfgtC
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM47:
.LBE4:
.LBB5:
	call	wbskt_typeof_CtrlMode
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L32
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	19,x
	bra	.L33
.L32:
	call	wbskt_argsof_CtrlMode
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	19,y
.L33:
	ldx	_.frame
	ldd	19,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_CtrlMode
	ldy	_.frame
	std	23,y
	stx	21,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L34
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	25,x
	ldy	_.frame
	ldd	25,y
	addd	#-1
	ldx	_.frame
	std	25,x
	bra	.L35
.L34:
	ldy	_.frame
	clr	25,y
	clr	26,y
.L35:
	ldx	_.frame
	ldx	25,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	23,y
	ldx	21,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#CtrlMode
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM48:
.LBE5:
.LBB6:
	call	wbskt_typeof_RSV
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L36
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	27,x
	bra	.L37
.L36:
	call	wbskt_argsof_RSV
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	27,y
.L37:
	ldx	_.frame
	ldd	27,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_RSV
	ldy	_.frame
	std	31,y
	stx	29,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L38
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	33,x
	ldy	_.frame
	ldd	33,y
	addd	#-1
	ldx	_.frame
	std	33,x
	bra	.L39
.L38:
	ldy	_.frame
	clr	33,y
	clr	34,y
.L39:
	ldx	_.frame
	ldx	33,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	31,y
	ldx	29,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#RSV
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM49:
.LBE6:
.LBB7:
	call	wbskt_typeof_CFhtml
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L40
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	35,x
	bra	.L41
.L40:
	call	wbskt_argsof_CFhtml
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	35,y
.L41:
	ldx	_.frame
	ldd	35,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_CFhtml
	ldy	_.frame
	std	39,y
	stx	37,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L42
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	41,x
	ldy	_.frame
	ldd	41,y
	addd	#-1
	ldx	_.frame
	std	41,x
	bra	.L43
.L42:
	ldy	_.frame
	clr	41,y
	clr	42,y
.L43:
	ldx	_.frame
	ldx	41,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	39,y
	ldx	37,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#CFhtml
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM50:
.LBE7:
.LBB8:
	call	wbskt_typeof_EFhtml
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L44
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	43,x
	bra	.L45
.L44:
	call	wbskt_argsof_EFhtml
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	43,y
.L45:
	ldx	_.frame
	ldd	43,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_EFhtml
	ldy	_.frame
	std	47,y
	stx	45,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L46
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	49,x
	ldy	_.frame
	ldd	49,y
	addd	#-1
	ldx	_.frame
	std	49,x
	bra	.L47
.L46:
	ldy	_.frame
	clr	49,y
	clr	50,y
.L47:
	ldx	_.frame
	ldx	49,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	47,y
	ldx	45,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#EFhtml
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM51:
.LBE8:
.LBB9:
	call	wbskt_typeof_DShtml
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L48
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	51,x
	bra	.L49
.L48:
	call	wbskt_argsof_DShtml
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	51,y
.L49:
	ldx	_.frame
	ldd	51,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_DShtml
	ldy	_.frame
	std	55,y
	stx	53,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L50
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	57,x
	ldy	_.frame
	ldd	57,y
	addd	#-1
	ldx	_.frame
	std	57,x
	bra	.L51
.L50:
	ldy	_.frame
	clr	57,y
	clr	58,y
.L51:
	ldx	_.frame
	ldx	57,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	55,y
	ldx	53,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#DShtml
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM52:
.LBE9:
.LBB10:
	call	wbskt_typeof_FlowSetZero
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L52
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	59,x
	bra	.L53
.L52:
	call	wbskt_argsof_FlowSetZero
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	59,y
.L53:
	ldx	_.frame
	ldd	59,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_FlowSetZero
	ldy	_.frame
	std	63,y
	stx	61,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L54
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	65,x
	ldy	_.frame
	ldd	65,y
	addd	#-1
	ldx	_.frame
	std	65,x
	bra	.L55
.L54:
	ldy	_.frame
	clr	65,y
	clr	66,y
.L55:
	ldx	_.frame
	ldx	65,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	63,y
	ldx	61,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#FlowSetZero
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM53:
.LBE10:
.LBB11:
	call	wbskt_typeof_M
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L56
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	67,x
	bra	.L57
.L56:
	call	wbskt_argsof_M
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	67,y
.L57:
	ldx	_.frame
	ldd	67,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_M
	ldy	_.frame
	std	71,y
	stx	69,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L58
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	73,x
	ldy	_.frame
	ldd	73,y
	addd	#-1
	ldx	_.frame
	std	73,x
	bra	.L59
.L58:
	ldy	_.frame
	clr	73,y
	clr	74,y
.L59:
	ldx	_.frame
	ldx	73,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	71,y
	ldx	69,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#M
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM54:
.LBE11:
.LBB12:
	call	wbskt_typeof_B
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L60
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	75,x
	bra	.L61
.L60:
	call	wbskt_argsof_B
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	75,y
.L61:
	ldx	_.frame
	ldd	75,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_B
	ldy	_.frame
	std	79,y
	stx	77,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L62
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	81,x
	ldy	_.frame
	ldd	81,y
	addd	#-1
	ldx	_.frame
	std	81,x
	bra	.L63
.L62:
	ldy	_.frame
	clr	81,y
	clr	82,y
.L63:
	ldx	_.frame
	ldx	81,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	79,y
	ldx	77,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#B
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM55:
.LBE12:
.LBB13:
	call	wbskt_typeof_p1off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L64
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	83,x
	bra	.L65
.L64:
	call	wbskt_argsof_p1off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	83,y
.L65:
	ldx	_.frame
	ldd	83,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_p1off
	ldy	_.frame
	std	87,y
	stx	85,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L66
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	89,x
	ldy	_.frame
	ldd	89,y
	addd	#-1
	ldx	_.frame
	std	89,x
	bra	.L67
.L66:
	ldy	_.frame
	clr	89,y
	clr	90,y
.L67:
	ldx	_.frame
	ldx	89,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	87,y
	ldx	85,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#p1off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM56:
.LBE13:
.LBB14:
	call	wbskt_typeof_p2off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L68
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	91,x
	bra	.L69
.L68:
	call	wbskt_argsof_p2off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	91,y
.L69:
	ldx	_.frame
	ldd	91,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_p2off
	ldy	_.frame
	std	95,y
	stx	93,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L70
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	97,x
	ldy	_.frame
	ldd	97,y
	addd	#-1
	ldx	_.frame
	std	97,x
	bra	.L71
.L70:
	ldy	_.frame
	clr	97,y
	clr	98,y
.L71:
	ldx	_.frame
	ldx	97,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	95,y
	ldx	93,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#p2off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM57:
.LBE14:
.LBB15:
	call	wbskt_typeof_p3off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L72
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	99,x
	bra	.L73
.L72:
	call	wbskt_argsof_p3off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	99,y
.L73:
	ldx	_.frame
	ldd	99,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_p3off
	ldy	_.frame
	std	103,y
	stx	101,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L74
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	105,x
	ldy	_.frame
	ldd	105,y
	addd	#-1
	ldx	_.frame
	std	105,x
	bra	.L75
.L74:
	ldy	_.frame
	clr	105,y
	clr	106,y
.L75:
	ldx	_.frame
	ldx	105,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	103,y
	ldx	101,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#p3off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM58:
.LBE15:
.LBB16:
	call	wbskt_typeof_tRef
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L76
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	107,x
	bra	.L77
.L76:
	call	wbskt_argsof_tRef
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	107,y
.L77:
	ldx	_.frame
	ldd	107,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_tRef
	ldy	_.frame
	std	111,y
	stx	109,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L78
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	113,x
	ldy	_.frame
	ldd	113,y
	addd	#-1
	ldx	_.frame
	std	113,x
	bra	.L79
.L78:
	ldy	_.frame
	clr	113,y
	clr	114,y
.L79:
	ldx	_.frame
	ldx	113,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	111,y
	ldx	109,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#tRef
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM59:
.LBE16:
.LBB17:
	call	wbskt_typeof_t2off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L80
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	115,x
	bra	.L81
.L80:
	call	wbskt_argsof_t2off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	115,y
.L81:
	ldx	_.frame
	ldd	115,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_t2off
	ldy	_.frame
	std	119,y
	stx	117,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L82
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	121,x
	ldy	_.frame
	ldd	121,y
	addd	#-1
	ldx	_.frame
	std	121,x
	bra	.L83
.L82:
	ldy	_.frame
	clr	121,y
	clr	122,y
.L83:
	ldx	_.frame
	ldx	121,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	119,y
	ldx	117,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#t2off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM60:
.LBE17:
.LBB18:
	call	wbskt_typeof_t3off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L84
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	123,x
	bra	.L85
.L84:
	call	wbskt_argsof_t3off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	123,y
.L85:
	ldx	_.frame
	ldd	123,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_t3off
	ldy	_.frame
	std	127,y
	stx	125,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L86
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	129,x
	ldy	_.frame
	ldd	129,y
	addd	#-1
	ldx	_.frame
	std	129,x
	bra	.L87
.L86:
	ldy	_.frame
	clr	129,y
	clr	130,y
.L87:
	ldx	_.frame
	ldx	129,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	127,y
	ldx	125,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#t3off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM61:
.LBE18:
.LBB19:
	call	wbskt_typeof_t4off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L88
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	131,x
	bra	.L89
.L88:
	call	wbskt_argsof_t4off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	131,y
.L89:
	ldx	_.frame
	ldd	131,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_t4off
	ldy	_.frame
	std	135,y
	stx	133,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L90
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	137,x
	ldy	_.frame
	ldd	137,y
	addd	#-1
	ldx	_.frame
	std	137,x
	bra	.L91
.L90:
	ldy	_.frame
	clr	137,y
	clr	138,y
.L91:
	ldx	_.frame
	ldx	137,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	135,y
	ldx	133,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#t4off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM62:
.LBE19:
.LBB20:
	call	wbskt_typeof_t5off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L92
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	139,x
	bra	.L93
.L92:
	call	wbskt_argsof_t5off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	139,y
.L93:
	ldx	_.frame
	ldd	139,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_t5off
	ldy	_.frame
	std	143,y
	stx	141,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L94
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	145,x
	ldy	_.frame
	ldd	145,y
	addd	#-1
	ldx	_.frame
	std	145,x
	bra	.L95
.L94:
	ldy	_.frame
	clr	145,y
	clr	146,y
.L95:
	ldx	_.frame
	ldx	145,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	143,y
	ldx	141,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#t5off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM63:
.LBE20:
.LBB21:
	call	wbskt_typeof_t6off
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L96
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	147,x
	bra	.L97
.L96:
	call	wbskt_argsof_t6off
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	147,y
.L97:
	ldx	_.frame
	ldd	147,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_t6off
	ldy	_.frame
	std	151,y
	stx	149,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L98
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	153,x
	ldy	_.frame
	ldd	153,y
	addd	#-1
	ldx	_.frame
	std	153,x
	bra	.L99
.L98:
	ldy	_.frame
	clr	153,y
	clr	154,y
.L99:
	ldx	_.frame
	ldx	153,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	151,y
	ldx	149,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#t6off
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM64:
.LBE21:
.LBB22:
	call	wbskt_typeof_woff
	ldy	_.frame
	stab	0,y	;  metadata_type
	ldy	_.frame
	ldab	0,y	;  metadata_type
	cmpb	#0
	beq	.L100
	ldy	_.frame
	ldx	#0
	clra
	ldab	0,y	;  metadata_type
	call	json_object_new_long
	ldx	_.frame
	std	155,x
	bra	.L101
.L100:
	call	wbskt_argsof_woff
	call	Wbskt_Event_Parse_Params
	ldy	_.frame
	std	155,y
.L101:
	ldx	_.frame
	ldd	155,x
	std	1,x	;  object_wrapper
	call	wbskt_nameof_woff
	ldy	_.frame
	std	159,y
	stx	157,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L102
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	161,x
	ldy	_.frame
	ldd	161,y
	addd	#-1
	ldx	_.frame
	std	161,x
	bra	.L103
.L102:
	ldy	_.frame
	clr	161,y
	clr	162,y
.L103:
	ldx	_.frame
	ldx	161,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	159,y
	ldx	157,y
	bsr	FetchCstring
	leas	4,sp
	ldd	#woff
	ldx	#0
	call	json_object_new_long
	pshd
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_pointers	;  wbskt_catch_pointers
	call	json_object_object_add
	leas	4,sp
	ldx	_.frame
	movw	1,x,2,-sp	;  object_wrapper
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldd	wbskt_catch_types	;  wbskt_catch_types
	call	json_object_object_add
	leas	4,sp
.LM65:
	leas	163,sp
	movw	2,sp+,_.frame
	rtc
.LBE22:
.LBE2:
.LFE47:
	.size	Application_Run_Once, .-Application_Run_Once
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	PDQ_welcome
	.type	PDQ_welcome,@function
	.far	PDQ_welcome
PDQ_welcome:
	clra
	ldab	#%page(PDQ_welcome_str)
	ldx	#%addr(PDQ_welcome_str)
	exg	d,x
	rtc
PDQ_welcome_str:
	.string "\nPDQ: Connection Established!\n"
	.size	PDQ_welcome, .-PDQ_welcome
	.popsection
	.pushsection	.text
	.globl	varname_LoP
	.type	varname_LoP,@function
	.far	varname_LoP
varname_LoP:
	clra
	ldab	#%page(varname_LoP_str)
	ldx	#%addr(varname_LoP_str)
	exg	d,x
	rtc
varname_LoP_str:
	.string "LoP"
	.size	varname_LoP, .-varname_LoP
	.popsection
	.pushsection	.text
	.globl	varname_SucSat
	.type	varname_SucSat,@function
	.far	varname_SucSat
varname_SucSat:
	clra
	ldab	#%page(varname_SucSat_str)
	ldx	#%addr(varname_SucSat_str)
	exg	d,x
	rtc
varname_SucSat_str:
	.string "SucSat"
	.size	varname_SucSat, .-varname_SucSat
	.popsection
	.pushsection	.text
	.globl	varname_LowTemp
	.type	varname_LowTemp,@function
	.far	varname_LowTemp
varname_LowTemp:
	clra
	ldab	#%page(varname_LowTemp_str)
	ldx	#%addr(varname_LowTemp_str)
	exg	d,x
	rtc
varname_LowTemp_str:
	.string "LowTemp"
	.size	varname_LowTemp, .-varname_LowTemp
	.popsection
	.pushsection	.text
	.globl	varname_degF_Lo
	.type	varname_degF_Lo,@function
	.far	varname_degF_Lo
varname_degF_Lo:
	clra
	ldab	#%page(varname_degF_Lo_str)
	ldx	#%addr(varname_degF_Lo_str)
	exg	d,x
	rtc
varname_degF_Lo_str:
	.string "degF_Lo"
	.size	varname_degF_Lo, .-varname_degF_Lo
	.popsection
	.pushsection	.text
	.globl	varname_HiP
	.type	varname_HiP,@function
	.far	varname_HiP
varname_HiP:
	clra
	ldab	#%page(varname_HiP_str)
	ldx	#%addr(varname_HiP_str)
	exg	d,x
	rtc
varname_HiP_str:
	.string "HiP"
	.size	varname_HiP, .-varname_HiP
	.popsection
	.pushsection	.text
	.globl	varname_highFlowPSI
	.type	varname_highFlowPSI,@function
	.far	varname_highFlowPSI
varname_highFlowPSI:
	clra
	ldab	#%page(varname_highFlowPSI_str)
	ldx	#%addr(varname_highFlowPSI_str)
	exg	d,x
	rtc
varname_highFlowPSI_str:
	.string "highFlowPSI"
	.size	varname_highFlowPSI, .-varname_highFlowPSI
	.popsection
	.pushsection	.text
	.globl	varname_DisSat
	.type	varname_DisSat,@function
	.far	varname_DisSat
varname_DisSat:
	clra
	ldab	#%page(varname_DisSat_str)
	ldx	#%addr(varname_DisSat_str)
	exg	d,x
	rtc
varname_DisSat_str:
	.string "DisSat"
	.size	varname_DisSat, .-varname_DisSat
	.popsection
	.pushsection	.text
	.globl	varname_HiTemp
	.type	varname_HiTemp,@function
	.far	varname_HiTemp
varname_HiTemp:
	clra
	ldab	#%page(varname_HiTemp_str)
	ldx	#%addr(varname_HiTemp_str)
	exg	d,x
	rtc
varname_HiTemp_str:
	.string "HiTemp"
	.size	varname_HiTemp, .-varname_HiTemp
	.popsection
	.pushsection	.text
	.globl	varname_degF_Hi
	.type	varname_degF_Hi,@function
	.far	varname_degF_Hi
varname_degF_Hi:
	clra
	ldab	#%page(varname_degF_Hi_str)
	ldx	#%addr(varname_degF_Hi_str)
	exg	d,x
	rtc
varname_degF_Hi_str:
	.string "degF_Hi"
	.size	varname_degF_Hi, .-varname_degF_Hi
	.popsection
	.pushsection	.text
	.globl	varname_Watt
	.type	varname_Watt,@function
	.far	varname_Watt
varname_Watt:
	clra
	ldab	#%page(varname_Watt_str)
	ldx	#%addr(varname_Watt_str)
	exg	d,x
	rtc
varname_Watt_str:
	.string "Watt"
	.size	varname_Watt, .-varname_Watt
	.popsection
	.pushsection	.text
	.globl	varname_kWPton
	.type	varname_kWPton,@function
	.far	varname_kWPton
varname_kWPton:
	clra
	ldab	#%page(varname_kWPton_str)
	ldx	#%addr(varname_kWPton_str)
	exg	d,x
	rtc
varname_kWPton_str:
	.string "kWPton"
	.size	varname_kWPton, .-varname_kWPton
	.popsection
	.pushsection	.text
	.globl	varname_EERv
	.type	varname_EERv,@function
	.far	varname_EERv
varname_EERv:
	clra
	ldab	#%page(varname_EERv_str)
	ldx	#%addr(varname_EERv_str)
	exg	d,x
	rtc
varname_EERv_str:
	.string "EERv"
	.size	varname_EERv, .-varname_EERv
	.popsection
	.pushsection	.text
	.globl	varname_BTUH
	.type	varname_BTUH,@function
	.far	varname_BTUH
varname_BTUH:
	clra
	ldab	#%page(varname_BTUH_str)
	ldx	#%addr(varname_BTUH_str)
	exg	d,x
	rtc
varname_BTUH_str:
	.string "BTUH"
	.size	varname_BTUH, .-varname_BTUH
	.popsection
	.pushsection	.text
	.globl	varname_tons
	.type	varname_tons,@function
	.far	varname_tons
varname_tons:
	clra
	ldab	#%page(varname_tons_str)
	ldx	#%addr(varname_tons_str)
	exg	d,x
	rtc
varname_tons_str:
	.string "tons"
	.size	varname_tons, .-varname_tons
	.popsection
	.pushsection	.text
	.globl	varname_Evap
	.type	varname_Evap,@function
	.far	varname_Evap
varname_Evap:
	clra
	ldab	#%page(varname_Evap_str)
	ldx	#%addr(varname_Evap_str)
	exg	d,x
	rtc
varname_Evap_str:
	.string "Evap"
	.size	varname_Evap, .-varname_Evap
	.popsection
	.pushsection	.text
	.globl	varname_MFPM
	.type	varname_MFPM,@function
	.far	varname_MFPM
varname_MFPM:
	clra
	ldab	#%page(varname_MFPM_str)
	ldx	#%addr(varname_MFPM_str)
	exg	d,x
	rtc
varname_MFPM_str:
	.string "MFPM"
	.size	varname_MFPM, .-varname_MFPM
	.popsection
	.pushsection	.text
	.globl	varname_EnergykW
	.type	varname_EnergykW,@function
	.far	varname_EnergykW
varname_EnergykW:
	clra
	ldab	#%page(varname_EnergykW_str)
	ldx	#%addr(varname_EnergykW_str)
	exg	d,x
	rtc
varname_EnergykW_str:
	.string "EnergykW"
	.size	varname_EnergykW, .-varname_EnergykW
	.popsection
	.pushsection	.text
	.globl	varname_hliq
	.type	varname_hliq,@function
	.far	varname_hliq
varname_hliq:
	clra
	ldab	#%page(varname_hliq_str)
	ldx	#%addr(varname_hliq_str)
	exg	d,x
	rtc
varname_hliq_str:
	.string "hliq"
	.size	varname_hliq, .-varname_hliq
	.popsection
	.pushsection	.text
	.globl	varname_hvap
	.type	varname_hvap,@function
	.far	varname_hvap
varname_hvap:
	clra
	ldab	#%page(varname_hvap_str)
	ldx	#%addr(varname_hvap_str)
	exg	d,x
	rtc
varname_hvap_str:
	.string "hvap"
	.size	varname_hvap, .-varname_hvap
	.popsection
	.pushsection	.text
	.globl	varname_Dh
	.type	varname_Dh,@function
	.far	varname_Dh
varname_Dh:
	clra
	ldab	#%page(varname_Dh_str)
	ldx	#%addr(varname_Dh_str)
	exg	d,x
	rtc
varname_Dh_str:
	.string "Dh"
	.size	varname_Dh, .-varname_Dh
	.popsection
	.pushsection	.text
	.globl	varname_Rho
	.type	varname_Rho,@function
	.far	varname_Rho
varname_Rho:
	clra
	ldab	#%page(varname_Rho_str)
	ldx	#%addr(varname_Rho_str)
	exg	d,x
	rtc
varname_Rho_str:
	.string "Rho"
	.size	varname_Rho, .-varname_Rho
	.popsection
	.pushsection	.text
	.globl	varname_Flow
	.type	varname_Flow,@function
	.far	varname_Flow
varname_Flow:
	clra
	ldab	#%page(varname_Flow_str)
	ldx	#%addr(varname_Flow_str)
	exg	d,x
	rtc
varname_Flow_str:
	.string "Flow"
	.size	varname_Flow, .-varname_Flow
	.popsection
	.pushsection	.text
	.globl	varname_OAT
	.type	varname_OAT,@function
	.far	varname_OAT
varname_OAT:
	clra
	ldab	#%page(varname_OAT_str)
	ldx	#%addr(varname_OAT_str)
	exg	d,x
	rtc
varname_OAT_str:
	.string "OAT"
	.size	varname_OAT, .-varname_OAT
	.popsection
	.pushsection	.text
	.globl	varname_SAT
	.type	varname_SAT,@function
	.far	varname_SAT
varname_SAT:
	clra
	ldab	#%page(varname_SAT_str)
	ldx	#%addr(varname_SAT_str)
	exg	d,x
	rtc
varname_SAT_str:
	.string "SAT"
	.size	varname_SAT, .-varname_SAT
	.popsection
	.pushsection	.text
	.globl	varname_EAT
	.type	varname_EAT,@function
	.far	varname_EAT
varname_EAT:
	clra
	ldab	#%page(varname_EAT_str)
	ldx	#%addr(varname_EAT_str)
	exg	d,x
	rtc
varname_EAT_str:
	.string "EAT"
	.size	varname_EAT, .-varname_EAT
	.popsection
	.pushsection	.text
	.globl	varname_LAT
	.type	varname_LAT,@function
	.far	varname_LAT
varname_LAT:
	clra
	ldab	#%page(varname_LAT_str)
	ldx	#%addr(varname_LAT_str)
	exg	d,x
	rtc
varname_LAT_str:
	.string "LAT"
	.size	varname_LAT, .-varname_LAT
	.popsection
	.pushsection	.text
	.globl	varname_ERH
	.type	varname_ERH,@function
	.far	varname_ERH
varname_ERH:
	clra
	ldab	#%page(varname_ERH_str)
	ldx	#%addr(varname_ERH_str)
	exg	d,x
	rtc
varname_ERH_str:
	.string "ERH"
	.size	varname_ERH, .-varname_ERH
	.popsection
	.pushsection	.text
	.globl	varname_FAN
	.type	varname_FAN,@function
	.far	varname_FAN
varname_FAN:
	clra
	ldab	#%page(varname_FAN_str)
	ldx	#%addr(varname_FAN_str)
	exg	d,x
	rtc
varname_FAN_str:
	.string "FAN"
	.size	varname_FAN, .-varname_FAN
	.popsection
	.pushsection	.text
	.globl	varname_BLOWER
	.type	varname_BLOWER,@function
	.far	varname_BLOWER
varname_BLOWER:
	clra
	ldab	#%page(varname_BLOWER_str)
	ldx	#%addr(varname_BLOWER_str)
	exg	d,x
	rtc
varname_BLOWER_str:
	.string "BLOWER"
	.size	varname_BLOWER, .-varname_BLOWER
	.popsection
	.pushsection	.text
	.globl	varname_DAMPER
	.type	varname_DAMPER,@function
	.far	varname_DAMPER
varname_DAMPER:
	clra
	ldab	#%page(varname_DAMPER_str)
	ldx	#%addr(varname_DAMPER_str)
	exg	d,x
	rtc
varname_DAMPER_str:
	.string "DAMPER"
	.size	varname_DAMPER, .-varname_DAMPER
	.popsection
	; extern	Wbskt_Float_LoadFrame
	; extern	VarTm
	; extern	WS_Send_Frame
	; extern	Ether_Await_Response
; End of inline assembler code
#NO_APP
	.section	.rodata
.LC0:
	.string	"dummy_attr"
	.sect	.text
	.globl	Send_VarTm
	.type	Send_VarTm,@function
	.far	Send_VarTm
Send_VarTm:
.LFB49:
.LM66:
	movw	_.frame,2,-sp
	pshx
	sts	_.frame
.LM67:
.LBB23:
	movw	VarTm+2,2,-sp	;  VarTm
	movw	VarTm,2,-sp
	movw	#.LC0,2,-sp
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	movw	outbuf_size,2,-sp	;  outbuf_size
	ldd	outbuf+2	;  outbuf
	ldx	outbuf
	call	Wbskt_Float_LoadFrame
	leas	10,sp
	ldx	_.frame
	std	0,x	;  result_len
.LM68:
	ldx	_.frame
	ldd	0,x	;  result_len
	cpd	#0
	beq	.L104
.LM69:
	clr	1,-sp
	clr	1,-sp
	ldx	_.frame
	movw	0,x,2,-sp	;  result_len
	ldd	outbuf+2	;  outbuf
	ldx	outbuf
	call	WS_Send_Frame
	leas	4,sp
.LM70:
	ldd	#0
	call	Ether_Await_Response
.LM71:
.L104:
	pulx
	movw	2,sp+,_.frame
	rtc
.LBE23:
.LFE49:
	.size	Send_VarTm, .-Send_VarTm
	.globl	SendMSG
	.sect	.data
	.type	SendMSG, @object
	.size	SendMSG, 1
SendMSG:
	.byte	0
	.sect	.text
	.globl	RECvars
	.type	RECvars,@function
	.far	RECvars
RECvars:
.LFB51:
.LM72:
	movw	_.frame,2,-sp
	leas	-6,sp
	sts	_.frame
	ldx	_.frame
	std	0,x	;  II
.LM73:
	ldd	#CatchVars
	ldy	_.frame
	ldx	0,y	;  II
	leax	d,x
	ldab	0,x	;  CatchVars
	ldy	_.frame
	clr	4,y
	stab	5,y
	clr	2,y
	clr	3,y
	ldy	_.frame
	ldd	2,y
	cpd	11,y
	bne	.L108
	ldy	_.frame
	ldd	4,y
	cpd	13,y	;  HTMLvar
	beq	.L106
.L108:
	ldy	_.frame
	ldd	0,y	;  II
	cpd	#2
	bgt	.L109
	ldy	_.frame
	ldd	11,y
	cpd	#0
	bne	.L109
	ldy	_.frame
	ldd	13,y	;  HTMLvar
	cpd	#0
	bne	.L109
	bra	.L106
.L109:
.LM74:
	ldd	#CatchVars
	ldy	_.frame
	ldx	0,y	;  II
	leax	d,x
	ldy	_.frame
	movb	14,y,0,x	;  HTMLvar,  CatchVars
.LM75:
.L106:
	leas	6,sp
	movw	2,sp+,_.frame
	rtc
.LFE51:
	.size	RECvars, .-RECvars
	; extern	VarF
	; extern	VarS
	.globl	__nesf2
	.globl	RECvars2
	.type	RECvars2,@function
	.far	RECvars2
RECvars2:
.LFB53:
.LM76:
	movw	_.frame,2,-sp
	des
	sts	_.frame
	ldx	_.frame
	stab	0,x	;  II
.LM77:
	ldx	_.frame
	ldab	0,x	;  II
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
.LM78:
	ldx	_.frame
	movw	8,x,2,-sp	;  HTMLvar
	movw	6,x,2,-sp
	ldd	VarTm+2	;  VarTm
	ldx	VarTm
	call	__nesf2
	leas	4,sp
	cpd	#0
	bne	.L113
	bra	.L111
.L113:
.LM79:
	ldx	_.frame
	movw	8,x,VarTm+2	;  HTMLvar,  VarTm
	movw	6,x,VarTm
.LM80:
	movw	VarTm+2,2,-sp	;  VarTm
	movw	VarTm,2,-sp
	ldx	_.frame
	ldab	0,x	;  II
	call	VarS
	leas	4,sp
.LM81:
.L111:
	ins
	movw	2,sp+,_.frame
	rtc
.LFE53:
	.size	RECvars2, .-RECvars2
; Begin inline assembler code
#APP
	.pushsection	.text
	.globl	pdq_connected_jsstr
	.type	pdq_connected_jsstr,@function
	.far	pdq_connected_jsstr
pdq_connected_jsstr:
	clra
	ldab	#%page(pdq_connected_jsstr_str)
	ldx	#%addr(pdq_connected_jsstr_str)
	exg	d,x
	rtc
pdq_connected_jsstr_str:
	.string " 'PDQ: Connection Established!' "
	.size	pdq_connected_jsstr, .-pdq_connected_jsstr
	.popsection
	.pushsection	.text
	.globl	ethersmart_error_msgfmt
	.type	ethersmart_error_msgfmt,@function
	.far	ethersmart_error_msgfmt
ethersmart_error_msgfmt:
	clra
	ldab	#%page(ethersmart_error_msgfmt_str)
	ldx	#%addr(ethersmart_error_msgfmt_str)
	exg	d,x
	rtc
ethersmart_error_msgfmt_str:
	.string "EtherSmart driver error %#x\n"
	.size	ethersmart_error_msgfmt, .-ethersmart_error_msgfmt
	.popsection
	; extern	WS_Frame_Outbuf
	; extern	WS_Frame_Outbufsize
	; extern	WS_Is_Open
	; extern	pdq_connected_jsstr
	; extern	Wbskt_Event_LoadFrame
	; extern	PDQ_welcome
	; extern	print
	; extern	Get
	; extern	data_resource
	; extern	LoP
	; extern	varname_LoP
	; extern	SucSat
	; extern	varname_SucSat
	; extern	LowTemp
	; extern	varname_LowTemp
	; extern	degF_Lo
	; extern	varname_degF_Lo
	; extern	HiP
	; extern	varname_HiP
	; extern	highFlowPSI
	; extern	varname_highFlowPSI
	; extern	DisSat
	; extern	varname_DisSat
	; extern	HiTemp
	; extern	varname_HiTemp
	; extern	degF_Hi
	; extern	varname_degF_Hi
	; extern	varname_Watt
	; extern	EnergykW
	; extern	varname_kWPton
	; extern	tons
	; extern	EERv
	; extern	varname_EERv
	; extern	BTUH
	; extern	varname_BTUH
	; extern	varname_tons
	; extern	varname_Evap
	; extern	R_Eff
	; extern	MFPM
	; extern	varname_MFPM
	; extern	varname_EnergykW
	; extern	varname_hliq
	; extern	IEn
	; extern	varname_hvap
	; extern	OEn
	; extern	varname_Dh
	; extern	Rho
	; extern	varname_Rho
	; extern	varname_Flow
	; extern	GPM
	; extern	varname_OAT
	; extern	OAT
	; extern	varname_EAT
	; extern	varname_SAT
	; extern	SAT
	; extern	varname_LAT
	; extern	LAT
	; extern	ERH
	; extern	varname_ERH
	; extern	varname_FAN
	; extern	varname_BLOWER
	; extern	Blower
	; extern	varname_DAMPER
	; extern	Damper
	; extern	m
	; extern	b
	; extern	FS0s
	; extern	P1off
	; extern	P2off
	; extern	P3off
	; extern	printf
	; extern	StoreEEFloat
	; extern	Woff
	; extern	Release
	; extern	ReadElapsedSeconds
	; extern	Wbskt_Heartbeat_Frame
	; extern	strnlen
	; extern	Wbskt_Incoming_Error
	; extern	Wbskt_ErrMsg_Puts
	; extern	Wbskt_ErrMsg_LoadFrame
	; extern	Ether_Error
	; extern	Ether_Error_Clear
	; extern	ethersmart_error_msgfmt
	; extern	iprintf
	; extern	Pause
	.globl	__mulsf3
	.globl	__divsf3
	.globl	__fixunssfsi
	.globl	__extendsfdf2
; End of inline assembler code
#NO_APP
	.section	.rodata
.LC1:
	.string	"Log"
.LC2:
	.string	"tempCal %f\n"
	.sect	.text
	.globl	Application_Loop
	.type	Application_Loop,@function
	.far	Application_Loop
Application_Loop:
.LFB55:
.LM82:
	movw	_.frame,2,-sp
	leas	-276,sp
	sts	_.frame
.LM83:
.LBB24:
	ldd	#0
	call	WS_Frame_Outbuf
	std	outbuf+2	;  outbuf
	stx	outbuf
.LM84:
	ldd	#0
	call	WS_Frame_Outbufsize
	std	outbuf_size	;  outbuf_size
.LM85:
	ldx	_.frame
	clr	2,x	;  last_websocket_status
	clr	3,x	;  last_websocket_status
.L115:
.LM86:
	ldd	#0
	call	WS_Is_Open
	ldy	_.frame
	std	0,y	;  websocket_open
.LM87:
	ldy	_.frame
	ldd	2,y	;  last_websocket_status
	ldx	_.frame
	sty	_.z
	cpd	0,x	;  websocket_open
	beq	.L118
	ldy	_.frame
	ldd	0,y	;  websocket_open
	cpd	#0
	beq	.L118
.LM88:
	call	pdq_connected_jsstr
	ldy	_.frame
	std	36,y
	stx	34,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L119
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	38,x
	ldy	_.frame
	ldd	38,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	38,x
	stx	_.z
	ldx	_.xy
	bra	.L120
.L119:
	ldx	_.frame
	clr	38,x
	clr	39,x
.L120:
	ldy	_.frame
	ldy	38,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	36,y
	ldx	34,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
.LM89:
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	movw	#.LC1,2,-sp
	movw	outbuf_size,2,-sp	;  outbuf_size
	ldd	outbuf+2	;  outbuf
	ldx	outbuf
	call	Wbskt_Event_LoadFrame
	leas	6,sp
	ldx	_.frame
	std	14,x	;  result_len
.LM90:
	ldy	_.frame
	ldd	14,y	;  result_len
	cpd	#0
	beq	.L121
.LM91:
	clr	1,-sp
	clr	1,-sp
	ldy	_.frame
	movw	14,y,2,-sp	;  result_len
	ldd	outbuf+2	;  outbuf
	ldx	outbuf
	call	WS_Send_Frame
	leas	4,sp
.LM92:
	ldd	#0
	call	Ether_Await_Response
.L121:
.LM93:
	call	PDQ_welcome
	ldy	_.frame
	std	42,y
	stx	40,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L122
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	44,y
	ldx	_.frame
	ldd	44,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	44,y
	bra	.L123
.L122:
	stx	_.xy
	ldx	_.frame
	clr	44,x
	clr	45,x
	stx	_.z
	ldx	_.xy
.L123:
	ldx	_.frame
	ldx	44,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	42,y
	ldx	40,y
	bsr	FetchCstring
	leas	4,sp
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	call	print
.L118:
.LM94:
	stx	_.xy
	ldx	_.frame
	movw	0,x,2,x	;  websocket_open,  last_websocket_status
.LM95:
	ldy	_.frame
	ldd	0,y	;  websocket_open
	stx	_.z
	ldx	_.xy
	cpd	#0
	beq	.L124
.LM96:
	clr	1,-sp
	clr	1,-sp
	ldd	#data_resource
	call	Get
	leas	2,sp
.LM97:
	ldab	SendMSG	;  SendMSG
	cmpb	#1
	bne	.L125
.LM98:
	ldx	TASKBASE	;  TASKBASE
	ldy	#3
	sty	166,x	;  <variable>.user_leftPlaces
.LM99:
	ldx	TASKBASE	;  TASKBASE
	ldy	#3
	sty	164,x	;  <variable>.user_rightPlaces
.LM100:
	ldx	TASKBASE	;  TASKBASE
	ldd	#6
	std	168,x	;  <variable>.user_mantissaPlaces
.LM101:
	ldab	LoP	;  LoP
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_LoP
	ldy	_.frame
	std	48,y
	stx	46,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L126
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	50,y
	ldx	_.frame
	ldd	50,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	50,y
	bra	.L127
.L126:
	stx	_.xy
	ldx	_.frame
	clr	50,x
	clr	51,x
	stx	_.z
	ldx	_.xy
.L127:
	ldx	_.frame
	ldx	50,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	48,y
	ldx	46,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM102:
	ldab	SucSat	;  SucSat
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_SucSat
	ldy	_.frame
	std	54,y
	stx	52,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L128
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	56,x
	ldy	_.frame
	ldd	56,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	56,x
	stx	_.z
	ldx	_.xy
	bra	.L129
.L128:
	ldx	_.frame
	clr	56,x
	clr	57,x
.L129:
	ldy	_.frame
	ldy	56,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	54,y
	ldx	52,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM103:
	ldab	LowTemp	;  LowTemp
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_LowTemp
	ldy	_.frame
	std	60,y
	stx	58,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L130
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	62,y
	ldx	_.frame
	ldd	62,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	62,y
	bra	.L131
.L130:
	stx	_.xy
	ldx	_.frame
	clr	62,x
	clr	63,x
	stx	_.z
	ldx	_.xy
.L131:
	ldx	_.frame
	ldx	62,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	60,y
	ldx	58,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM104:
	ldab	degF_Lo	;  degF_Lo
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_degF_Lo
	ldy	_.frame
	std	66,y
	stx	64,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L132
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	68,x
	ldy	_.frame
	ldd	68,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	68,x
	stx	_.z
	ldx	_.xy
	bra	.L133
.L132:
	ldx	_.frame
	clr	68,x
	clr	69,x
.L133:
	ldy	_.frame
	ldy	68,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	66,y
	ldx	64,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM105:
	ldab	HiP	;  HiP
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_HiP
	ldy	_.frame
	std	72,y
	stx	70,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L134
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	74,y
	ldx	_.frame
	ldd	74,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	74,y
	bra	.L135
.L134:
	stx	_.xy
	ldx	_.frame
	clr	74,x
	clr	75,x
	stx	_.z
	ldx	_.xy
.L135:
	ldx	_.frame
	ldx	74,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	72,y
	ldx	70,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM106:
	ldab	highFlowPSI	;  highFlowPSI
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_highFlowPSI
	ldy	_.frame
	std	78,y
	stx	76,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L136
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	80,x
	ldy	_.frame
	ldd	80,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	80,x
	stx	_.z
	ldx	_.xy
	bra	.L137
.L136:
	ldx	_.frame
	clr	80,x
	clr	81,x
.L137:
	ldy	_.frame
	ldy	80,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	78,y
	ldx	76,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM107:
	ldab	DisSat	;  DisSat
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_DisSat
	ldy	_.frame
	std	84,y
	stx	82,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L138
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	86,y
	ldx	_.frame
	ldd	86,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	86,y
	bra	.L139
.L138:
	stx	_.xy
	ldx	_.frame
	clr	86,x
	clr	87,x
	stx	_.z
	ldx	_.xy
.L139:
	ldx	_.frame
	ldx	86,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	84,y
	ldx	82,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM108:
	ldab	HiTemp	;  HiTemp
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_HiTemp
	ldy	_.frame
	std	90,y
	stx	88,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L140
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	92,x
	ldy	_.frame
	ldd	92,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	92,x
	stx	_.z
	ldx	_.xy
	bra	.L141
.L140:
	ldx	_.frame
	clr	92,x
	clr	93,x
.L141:
	ldy	_.frame
	ldy	92,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	90,y
	ldx	88,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM109:
	ldab	degF_Hi	;  degF_Hi
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_degF_Hi
	ldy	_.frame
	std	96,y
	stx	94,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L142
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	98,y
	ldx	_.frame
	ldd	98,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	98,y
	bra	.L143
.L142:
	stx	_.xy
	ldx	_.frame
	clr	98,x
	clr	99,x
	stx	_.z
	ldx	_.xy
.L143:
	ldx	_.frame
	ldx	98,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	96,y
	ldx	94,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM110:
	call	varname_Watt
	ldy	_.frame
	std	102,y
	stx	100,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L144
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	104,x
	ldy	_.frame
	ldd	104,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	104,x
	stx	_.z
	ldx	_.xy
	bra	.L145
.L144:
	ldx	_.frame
	clr	104,x
	clr	105,x
.L145:
	ldy	_.frame
	ldy	104,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	102,y
	ldx	100,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	EnergykW	;  EnergykW
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM111:
	call	varname_kWPton
	ldy	_.frame
	std	108,y
	stx	106,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L146
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	110,y
	ldx	_.frame
	ldd	110,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	110,y
	bra	.L147
.L146:
	stx	_.xy
	ldx	_.frame
	clr	110,x
	clr	111,x
	stx	_.z
	ldx	_.xy
.L147:
	ldx	_.frame
	ldx	110,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	108,y
	ldx	106,y
	bsr	FetchCstring
	leas	4,sp
	ldab	EnergykW	;  EnergykW
	call	VarF
	sty	_.xy
	ldy	_.frame
	std	114,y
	stx	112,y
	ldab	tons	;  tons
	ldy	_.xy
	call	VarF
	clr	1,-sp
	clr	1,-sp
	movw	#17530,2,-sp
	bsr	__mulsf3
	leas	4,sp
	pshd
	pshx
	sty	_.xy
	ldy	_.frame
	ldd	114,y
	ldx	112,y
	ldy	_.xy
	bsr	__divsf3
	leas	4,sp
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM112:
	ldab	EERv	;  EERv
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_EERv
	ldy	_.frame
	std	118,y
	stx	116,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L148
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	120,y
	ldx	_.frame
	ldd	120,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	120,y
	bra	.L149
.L148:
	stx	_.xy
	ldx	_.frame
	clr	120,x
	clr	121,x
	stx	_.z
	ldx	_.xy
.L149:
	ldx	_.frame
	ldx	120,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	118,y
	ldx	116,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM113:
	ldab	BTUH	;  BTUH
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_BTUH
	ldy	_.frame
	std	124,y
	stx	122,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L150
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	126,x
	ldy	_.frame
	ldd	126,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	126,x
	stx	_.z
	ldx	_.xy
	bra	.L151
.L150:
	ldx	_.frame
	clr	126,x
	clr	127,x
.L151:
	ldy	_.frame
	ldy	126,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	124,y
	ldx	122,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM114:
	ldab	tons	;  tons
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_tons
	ldy	_.frame
	std	130,y
	stx	128,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L152
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	132,y
	ldx	_.frame
	ldd	132,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	132,y
	bra	.L153
.L152:
	stx	_.xy
	ldx	_.frame
	clr	132,x
	clr	133,x
	stx	_.z
	ldx	_.xy
.L153:
	ldx	_.frame
	ldx	132,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	130,y
	ldx	128,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM115:
	call	varname_Evap
	ldy	_.frame
	std	136,y
	stx	134,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L154
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	138,x
	ldy	_.frame
	ldd	138,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	138,x
	stx	_.z
	ldx	_.xy
	bra	.L155
.L154:
	ldx	_.frame
	clr	138,x
	clr	139,x
.L155:
	ldy	_.frame
	ldy	138,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	136,y
	ldx	134,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	R_Eff	;  R_Eff
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM116:
	ldab	MFPM	;  MFPM
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_MFPM
	ldy	_.frame
	std	142,y
	stx	140,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L156
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	144,y
	ldx	_.frame
	ldd	144,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	144,y
	bra	.L157
.L156:
	stx	_.xy
	ldx	_.frame
	clr	144,x
	clr	145,x
	stx	_.z
	ldx	_.xy
.L157:
	ldx	_.frame
	ldx	144,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	142,y
	ldx	140,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM117:
	call	varname_EnergykW
	ldy	_.frame
	std	148,y
	stx	146,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L158
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	150,x
	ldy	_.frame
	ldd	150,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	150,x
	stx	_.z
	ldx	_.xy
	bra	.L159
.L158:
	ldx	_.frame
	clr	150,x
	clr	151,x
.L159:
	ldy	_.frame
	ldy	150,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	148,y
	ldx	146,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	EnergykW	;  EnergykW
	call	VarF
	clr	1,-sp
	clr	1,-sp
	movw	#17530,2,-sp
	bsr	__divsf3
	leas	4,sp
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM118:
	call	varname_hliq
	ldy	_.frame
	std	154,y
	stx	152,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L160
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	156,x
	ldy	_.frame
	ldd	156,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	156,x
	stx	_.z
	ldx	_.xy
	bra	.L161
.L160:
	ldx	_.frame
	clr	156,x
	clr	157,x
.L161:
	ldy	_.frame
	ldy	156,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	154,y
	ldx	152,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	IEn	;  IEn
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM119:
	call	varname_hvap
	ldy	_.frame
	std	160,y
	stx	158,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L162
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	162,y
	ldx	_.frame
	ldd	162,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	162,y
	bra	.L163
.L162:
	stx	_.xy
	ldx	_.frame
	clr	162,x
	clr	163,x
	stx	_.z
	ldx	_.xy
.L163:
	ldx	_.frame
	ldx	162,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	160,y
	ldx	158,y
	bsr	FetchCstring
	leas	4,sp
	ldab	OEn	;  OEn
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM120:
	call	varname_Dh
	ldy	_.frame
	std	166,y
	stx	164,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L164
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	168,x
	ldy	_.frame
	ldd	168,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	168,x
	stx	_.z
	ldx	_.xy
	bra	.L165
.L164:
	ldx	_.frame
	clr	168,x
	clr	169,x
.L165:
	ldy	_.frame
	ldy	168,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	166,y
	ldx	164,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	R_Eff	;  R_Eff
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM121:
	ldab	Rho	;  Rho
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_Rho
	ldy	_.frame
	std	172,y
	stx	170,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L166
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	174,y
	ldx	_.frame
	ldd	174,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	174,y
	bra	.L167
.L166:
	stx	_.xy
	ldx	_.frame
	clr	174,x
	clr	175,x
	stx	_.z
	ldx	_.xy
.L167:
	ldx	_.frame
	ldx	174,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	172,y
	ldx	170,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM122:
	call	varname_Flow
	ldy	_.frame
	std	178,y
	stx	176,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L168
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	180,x
	ldy	_.frame
	ldd	180,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	180,x
	stx	_.z
	ldx	_.xy
	bra	.L169
.L168:
	ldx	_.frame
	clr	180,x
	clr	181,x
.L169:
	ldy	_.frame
	ldy	180,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	178,y
	ldx	176,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	GPM	;  GPM
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM123:
	call	varname_OAT
	ldy	_.frame
	std	184,y
	stx	182,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L170
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	186,y
	ldx	_.frame
	ldd	186,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	186,y
	bra	.L171
.L170:
	stx	_.xy
	ldx	_.frame
	clr	186,x
	clr	187,x
	stx	_.z
	ldx	_.xy
.L171:
	ldx	_.frame
	ldx	186,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	184,y
	ldx	182,y
	bsr	FetchCstring
	leas	4,sp
	ldab	OAT	;  OAT
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM124:
	call	varname_EAT
	ldy	_.frame
	std	190,y
	stx	188,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L172
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	192,x
	ldy	_.frame
	ldd	192,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	192,x
	stx	_.z
	ldx	_.xy
	bra	.L173
.L172:
	ldx	_.frame
	clr	192,x
	clr	193,x
.L173:
	ldy	_.frame
	ldy	192,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	190,y
	ldx	188,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	movw	EAT+2,VarTm+2	;  EAT,  VarTm
	movw	EAT,VarTm
	call	Send_VarTm
.LM125:
	call	varname_SAT
	ldy	_.frame
	std	196,y
	stx	194,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L174
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	198,y
	ldx	_.frame
	ldd	198,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	198,y
	bra	.L175
.L174:
	stx	_.xy
	ldx	_.frame
	clr	198,x
	clr	199,x
	stx	_.z
	ldx	_.xy
.L175:
	ldx	_.frame
	ldx	198,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	196,y
	ldx	194,y
	bsr	FetchCstring
	leas	4,sp
	ldab	SAT	;  SAT
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM126:
	call	varname_LAT
	ldy	_.frame
	std	202,y
	stx	200,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L176
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	204,x
	ldy	_.frame
	ldd	204,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	204,x
	stx	_.z
	ldx	_.xy
	bra	.L177
.L176:
	ldx	_.frame
	clr	204,x
	clr	205,x
.L177:
	ldy	_.frame
	ldy	204,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	202,y
	ldx	200,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	LAT	;  LAT
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM127:
	ldab	ERH	;  ERH
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	varname_ERH
	ldy	_.frame
	std	208,y
	stx	206,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L178
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	210,y
	ldx	_.frame
	ldd	210,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	210,y
	bra	.L179
.L178:
	stx	_.xy
	ldx	_.frame
	clr	210,x
	clr	211,x
	stx	_.z
	ldx	_.xy
.L179:
	ldx	_.frame
	ldx	210,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	208,y
	ldx	206,y
	bsr	FetchCstring
	leas	4,sp
	call	Send_VarTm
.LM128:
	call	varname_FAN
	ldy	_.frame
	std	214,y
	stx	212,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L180
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	216,x
	ldy	_.frame
	ldd	216,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	216,x
	stx	_.z
	ldx	_.xy
	bra	.L181
.L180:
	ldx	_.frame
	clr	216,x
	clr	217,x
.L181:
	ldy	_.frame
	ldy	216,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	214,y
	ldx	212,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldd	Fan+2	;  Fan
	ldx	Fan
	call	__fixunssfsi
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM129:
	call	varname_BLOWER
	ldy	_.frame
	std	220,y
	stx	218,y
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L182
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	222,y
	ldx	_.frame
	ldd	222,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	222,y
	bra	.L183
.L182:
	stx	_.xy
	ldx	_.frame
	clr	222,x
	clr	223,x
	stx	_.z
	ldx	_.xy
.L183:
	ldx	_.frame
	ldx	222,x
	pshx
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	ldy	_.frame
	ldd	220,y
	ldx	218,y
	bsr	FetchCstring
	leas	4,sp
	ldab	Blower	;  Blower
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM130:
	call	varname_DAMPER
	ldy	_.frame
	std	226,y
	stx	224,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L184
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	228,x
	ldy	_.frame
	ldd	228,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	228,x
	stx	_.z
	ldx	_.xy
	bra	.L185
.L184:
	ldx	_.frame
	clr	228,x
	clr	229,x
.L185:
	ldy	_.frame
	ldy	228,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	226,y
	ldx	224,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldab	Damper	;  Damper
	call	VarF
	std	VarTm+2	;  VarTm
	stx	VarTm
	call	Send_VarTm
.LM131:
	clr	SendMSG	;  SendMSG
.L125:
.LM132:
	movw	HTMLPwrC+2,2,-sp	;  HTMLPwrC
	movw	HTMLPwrC,2,-sp
	ldd	#0
	call	RECvars
	leas	4,sp
.LM133:
	movw	HTMLRfgtC+2,2,-sp	;  HTMLRfgtC
	movw	HTMLRfgtC,2,-sp
	ldd	#1
	call	RECvars
	leas	4,sp
.LM134:
	movw	CtrlMode+2,2,-sp	;  CtrlMode
	movw	CtrlMode,2,-sp
	ldd	#2
	call	RECvars
	leas	4,sp
.LM135:
	movw	CFhtml+2,2,-sp	;  CFhtml
	movw	CFhtml,2,-sp
	ldd	#3
	call	RECvars
	leas	4,sp
.LM136:
	movw	EFhtml+2,2,-sp	;  EFhtml
	movw	EFhtml,2,-sp
	ldd	#4
	call	RECvars
	leas	4,sp
.LM137:
	movw	RSV+2,2,-sp	;  RSV
	movw	RSV,2,-sp
	ldd	#5
	call	RECvars
	leas	4,sp
.LM138:
	movw	DShtml+2,2,-sp	;  DShtml
	movw	DShtml,2,-sp
	ldd	#6
	call	RECvars
	leas	4,sp
.LM139:
	movw	M+2,2,-sp	;  M
	movw	M,2,-sp
	ldab	m	;  m
	call	RECvars2
	leas	4,sp
.LM140:
	movw	(B+2),2,-sp	;  B
	movw	(B),2,-sp
	ldab	(b)	;  b
	call	RECvars2
	leas	4,sp
.LM141:
	ldab	FS0s	;  FS0s
	ldy	_.frame
	clr	232,y
	stab	233,y
	clr	230,y
	clr	231,y
	ldy	_.frame
	ldd	FlowSetZero+2	;  FlowSetZero
	std	236,y
	ldd	FlowSetZero
	std	234,y
	ldy	_.frame
	ldd	234,y
	cpd	230,y
	bne	.L187
	ldy	_.frame
	ldd	236,y
	cpd	232,y
	beq	.L186
.L187:
	ldy	_.frame
	ldd	FlowSetZero+2	;  FlowSetZero
	std	240,y
	ldd	FlowSetZero
	std	238,y
	ldy	_.frame
	ldd	238,y
	cpd	#0
	bne	.L188
	ldy	_.frame
	ldd	240,y
	cpd	#0
	beq	.L186
.L188:
.LM142:
	ldd	FlowSetZero+2	;  FlowSetZero
	ldx	FlowSetZero
	stab	FS0s	;  FS0s
.L186:
.LM143:
	movw	p1off+2,2,-sp	;  p1off
	movw	p1off,2,-sp
	ldab	P1off	;  P1off
	call	RECvars2
	leas	4,sp
.LM144:
	movw	p2off+2,2,-sp	;  p2off
	movw	p2off,2,-sp
	ldab	P2off	;  P2off
	call	RECvars2
	leas	4,sp
.LM145:
	movw	p3off+2,2,-sp	;  p3off
	movw	p3off,2,-sp
	ldab	P3off	;  P3off
	call	RECvars2
	leas	4,sp
.LM146:
	movw	tRef+2,2,-sp	;  tRef
	movw	tRef,2,-sp
	ldd	tempRef+2	;  tempRef
	ldx	tempRef
	call	__nesf2
	leas	4,sp
	cpd	#0
	bne	.L190
	bra	.L189
.L190:
.LM147:
	movw	tRef+2,tempRef+2	;  tRef,  tempRef
	movw	tRef,tempRef
.LM148:
	ldy	_.frame
	leay	18,y
	stx	_.xy
	ldx	_.frame
	sty	274,x
	movw	tempRef+2,2,-sp	;  tempRef
	movw	tempRef,2,-sp
	ldy	_.frame
	ldd	274,y
	ldx	_.xy
	call	__extendsfdf2
	leas	4,sp
	ldy	_.frame
	ldd	24,y
	std	248,y
	ldd	22,y
	std	246,y
	ldd	20,y
	std	244,y
	ldd	18,y
	std	242,y
	ldy	_.frame
	ldd	248,y
	pshd
	ldd	246,y
	pshd
	ldd	244,y
	pshd
	ldd	242,y
	pshd
	ldd	#.LC2
	call	printf
	leas	8,sp
.LM149:
	movw	#_tempRef,2,-sp
	ldd	tempRef+2	;  tempRef
	ldx	tempRef
	call	StoreEEFloat
	leas	2,sp
.L189:
.LM150:
	movw	woff+2,2,-sp	;  woff
	movw	woff,2,-sp
	ldab	Woff	;  Woff
	call	RECvars2
	leas	4,sp
.LM151:
	clr	1,-sp
	clr	1,-sp
	ldd	#data_resource
	call	Release
	leas	2,sp
.L124:
.LM152:
	call	ReadElapsedSeconds
	ldy	_.frame
	std	10,y	;  this_uptime
	stx	8,y
.LM153:
	ldy	_.frame
	ldd	10,y	;  this_uptime
	std	252,y
	ldd	8,y
	std	250,y
	ldy	_.frame
	ldd	250,y
	cpd	4,y
	bne	.L192
	ldy	_.frame
	ldd	252,y
	cpd	6,y	;  last_uptime
	beq	.L191
.L192:
.LM154:
	ldd	#0
	call	WS_Is_Open
	cpd	#0
	beq	.L193
	call	Wbskt_Heartbeat_Frame
	ldy	_.frame
	std	256,y
	stx	254,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L194
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	258,x
	ldy	_.frame
	ldd	258,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	258,x
	stx	_.z
	ldx	_.xy
	bra	.L195
.L194:
	ldx	_.frame
	clr	258,x
	clr	259,x
.L195:
	ldy	_.frame
	ldy	258,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	256,y
	ldx	254,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	ldx	_.frame
	std	262,x
	clr	260,x
	clr	261,x
	clr	1,-sp
	clr	1,-sp
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	leax	1,y
	ldy	_.frame
	stx	264,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L196
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldy	_.frame
	std	266,y
	ldx	_.frame
	ldd	266,x
	addd	#-1
	sty	_.z
	ldy	_.frame
	std	266,y
	bra	.L197
.L196:
	stx	_.xy
	ldx	_.frame
	clr	266,x
	clr	267,x
	stx	_.z
	ldx	_.xy
.L197:
	ldx	_.frame
	ldx	266,x
	pshx
	ldy	_.frame
	ldd	264,y
	call	strnlen
	leas	2,sp
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	262,y
	ldx	260,y
	ldy	_.xy
	call	WS_Send_Frame
	leas	4,sp
	ldd	#0
	call	Ether_Await_Response
.L193:
.LM155:
	ldy	_.frame
	movw	10,y,6,y	;  this_uptime,  last_uptime
	movw	8,y,4,y
.L191:
.LM156:
	ldd	#0
	call	Wbskt_Incoming_Error
	stx	_.xy
	ldx	_.frame
	std	12,x	;  wbskt_err
.LM157:
	ldy	_.frame
	ldd	12,y	;  wbskt_err
	stx	_.z
	ldx	_.xy
	cpd	#0
	beq	.L198
.LM158:
	stx	_.xy
	ldx	_.frame
	ldd	12,x	;  wbskt_err
	ldx	_.xy
	call	Wbskt_ErrMsg_Puts
.LM159:
	ldd	#0
	call	WS_Is_Open
	cpd	#0
	beq	.L198
.LBB25:
	ldd	#0
	call	WS_Frame_Outbuf
	ldy	_.frame
	std	28,y	;  outbuf
	stx	26,y
	ldd	#0
	call	WS_Frame_Outbufsize
	ldx	_.frame
	std	30,x	;  outbuf_size
	ldy	_.frame
	ldd	28,y	;  outbuf
	stx	_.z
	ldx	26,y
	stx	_.xy
	ldx	_.frame
	movw	12,x,2,-sp	;  wbskt_err
	ldy	_.frame
	ldy	30,y	;  outbuf_size
	pshy
	ldx	_.xy
	call	Wbskt_ErrMsg_LoadFrame
	leas	4,sp
	stx	_.xy
	ldx	_.frame
	std	32,x	;  result_len
	ldy	_.frame
	ldd	32,y	;  result_len
	stx	_.z
	ldx	_.xy
	cpd	#0
	beq	.L198
	ldy	_.frame
	ldd	28,y	;  outbuf
	ldx	26,y
	clr	1,-sp
	clr	1,-sp
	sty	_.z
	ldy	_.frame
	ldy	32,y	;  result_len
	pshy
	call	WS_Send_Frame
	leas	4,sp
	ldd	#0
	call	Ether_Await_Response
.L198:
.LM160:
.LBE25:
	ldd	#0
	call	Ether_Error
	stx	_.xy
	ldx	_.frame
	std	16,x	;  eth_err
.LM161:
	ldy	_.frame
	ldd	16,y	;  eth_err
	stx	_.z
	ldx	_.xy
	cpd	#0
	beq	.L201
.LM162:
	ldd	#0
	call	Ether_Error_Clear
.LM163:
	call	ethersmart_error_msgfmt
	ldy	_.frame
	std	270,y
	stx	268,y
	sty	_.z
	ldy	TASKBASE	;  TASKBASE
	ldx	TASKBASE	;  TASKBASE
	sty	_.z
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshx
	ldx	_.z
	cpd	32,x	;  <variable>.user_pocket
	pulx
	bhs	.L202
	ldx	TASKBASE	;  TASKBASE
	ldy	TASKBASE	;  TASKBASE
	ldd	32,x	;  <variable>.user_pocket
	subd	36,y	;  <variable>.user_pad
	ldx	_.frame
	std	272,x
	ldy	_.frame
	ldd	272,y
	addd	#-1
	stx	_.xy
	ldx	_.frame
	std	272,x
	stx	_.z
	ldx	_.xy
	bra	.L203
.L202:
	ldx	_.frame
	clr	272,x
	clr	273,x
.L203:
	ldy	_.frame
	ldy	272,y
	pshy
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	pshd
	sty	_.xy
	ldy	_.frame
	ldd	270,y
	ldx	268,y
	ldy	_.xy
	bsr	FetchCstring
	leas	4,sp
	ldx	TASKBASE	;  TASKBASE
	ldy	36,x	;  <variable>.user_pad
	tfr	y,d
	addd	#1
	ldx	_.frame
	ldx	16,x	;  eth_err
	pshx
	call	iprintf
	leas	2,sp
.L201:
.LM164:
	call	Pause
	bra	.L115
.LM165:
.LBE24:
.LFE55:
	.size	Application_Loop, .-Application_Loop
	; extern	memset
	; extern	BuildTask
	; extern	Activate
	.section	.rodata
.LC3:
	.string	"C"
	.sect	.text
	.globl	Init_Application
	.type	Init_Application,@function
	.far	Init_Application
Init_Application:
.LFB57:
.LM166:
	movw	_.frame,2,-sp
	sts	_.frame
.LM167:
	call	Application_Run_Once
.LM168:
	clr	application_task+1536	;  <variable>._errno
	clr	application_task+1537	;  <variable>._errno
	movw	#application_task+1887,application_task+1538	;  <variable>._stdin
	movw	#application_task+1937,application_task+1540	;  <variable>._stdout
	movw	#application_task+1987,application_task+1542	;  <variable>._stderr
	clr	application_task+1544	;  <variable>._inc
	clr	application_task+1545	;  <variable>._inc
	movw	#1,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#application_task+1546
	call	memset
	leas	4,sp
	clr	application_task+1547	;  <variable>._current_category
	clr	application_task+1548	;  <variable>._current_category
	movw	#.LC3,application_task+1549	;  <variable>._current_locale
	clr	application_task+1551	;  <variable>.__sdidinit
	clr	application_task+1552	;  <variable>.__sdidinit
	clr	application_task+1553	;  <variable>.__cleanup
	clr	application_task+1554	;  <variable>.__cleanup
	clr	application_task+1555	;  <variable>._result
	clr	application_task+1556	;  <variable>._result
	clr	application_task+1557	;  <variable>._result_k
	clr	application_task+1558	;  <variable>._result_k
	clr	application_task+1559	;  <variable>._p5s
	clr	application_task+1560	;  <variable>._p5s
	clr	application_task+1561	;  <variable>._freelist
	clr	application_task+1562	;  <variable>._freelist
	clr	application_task+1563	;  <variable>._cvtlen
	clr	application_task+1564	;  <variable>._cvtlen
	clr	application_task+1565	;  <variable>._cvtbuf
	clr	application_task+1566	;  <variable>._cvtbuf
	clr	application_task+1567	;  <variable>._new._reent._unused_rand
	clr	application_task+1568	;  <variable>._new._reent._unused_rand
	clr	application_task+1569	;  <variable>._new._reent._strtok_last
	clr	application_task+1570	;  <variable>._new._reent._strtok_last
	clr	application_task+1571	;  <variable>._new._reent._asctime_buf
	movw	#18,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#application_task+1572
	call	memset
	leas	4,sp
	clr	application_task+1590	;  <variable>._new._reent._gamma_signgam
	clr	application_task+1591	;  <variable>._new._reent._gamma_signgam
	ldx	#application_task+1592
	movw	#1,6,x	;  <variable>._new._reent._rand_next
	clr	4,x
	clr	5,x
	clr	2,x
	clr	3,x
	clr	0,x
	clr	1,x
	movw	#13070,application_task+1600	;  <variable>._new._reent._r48._seed
	movw	#-21555,application_task+1602	;  <variable>._new._reent._r48._seed
	movw	#4660,application_task+1604	;  <variable>._new._reent._r48._seed
	movw	#-6547,application_task+1606	;  <variable>._new._reent._r48._mult
	movw	#-8468,application_task+1608	;  <variable>._new._reent._r48._mult
	movw	#5,application_task+1610	;  <variable>._new._reent._r48._mult
	movw	#11,application_task+1612	;  <variable>._new._reent._r48._add
	clr	application_task+1614	;  <variable>._new._reent._mblen_state.__count
	clr	application_task+1615	;  <variable>._new._reent._mblen_state.__count
	clr	application_task+1616	;  <variable>._new._reent._mblen_state.__value.__wch
	clr	application_task+1617	;  <variable>._new._reent._mblen_state.__value.__wch
	clr	application_task+1620	;  <variable>._new._reent._mbtowc_state.__count
	clr	application_task+1621	;  <variable>._new._reent._mbtowc_state.__count
	clr	application_task+1622	;  <variable>._new._reent._mbtowc_state.__value.__wch
	clr	application_task+1623	;  <variable>._new._reent._mbtowc_state.__value.__wch
	clr	application_task+1626	;  <variable>._new._reent._wctomb_state.__count
	clr	application_task+1627	;  <variable>._new._reent._wctomb_state.__count
	clr	application_task+1628	;  <variable>._new._reent._wctomb_state.__value.__wch
	clr	application_task+1629	;  <variable>._new._reent._wctomb_state.__value.__wch
	clr	application_task+1643	;  <variable>._new._reent._mbrlen_state.__count
	clr	application_task+1644	;  <variable>._new._reent._mbrlen_state.__count
	clr	application_task+1645	;  <variable>._new._reent._mbrlen_state.__value.__wch
	clr	application_task+1646	;  <variable>._new._reent._mbrlen_state.__value.__wch
	clr	application_task+1649	;  <variable>._new._reent._mbrtowc_state.__count
	clr	application_task+1650	;  <variable>._new._reent._mbrtowc_state.__count
	clr	application_task+1651	;  <variable>._new._reent._mbrtowc_state.__value.__wch
	clr	application_task+1652	;  <variable>._new._reent._mbrtowc_state.__value.__wch
	clr	application_task+1655	;  <variable>._new._reent._mbsrtowcs_state.__count
	clr	application_task+1656	;  <variable>._new._reent._mbsrtowcs_state.__count
	clr	application_task+1657	;  <variable>._new._reent._mbsrtowcs_state.__value.__wch
	clr	application_task+1658	;  <variable>._new._reent._mbsrtowcs_state.__value.__wch
	clr	application_task+1661	;  <variable>._new._reent._wcrtomb_state.__count
	clr	application_task+1662	;  <variable>._new._reent._wcrtomb_state.__count
	clr	application_task+1663	;  <variable>._new._reent._wcrtomb_state.__value.__wch
	clr	application_task+1664	;  <variable>._new._reent._wcrtomb_state.__value.__wch
	clr	application_task+1667	;  <variable>._new._reent._wcsrtombs_state.__count
	clr	application_task+1668	;  <variable>._new._reent._wcsrtombs_state.__count
	clr	application_task+1669	;  <variable>._new._reent._wcsrtombs_state.__value.__wch
	clr	application_task+1670	;  <variable>._new._reent._wcsrtombs_state.__value.__wch
	clr	application_task+1632	;  <variable>._new._reent._l64a_buf
	clr	application_task+1640	;  <variable>._new._reent._signal_buf
	clr	application_task+1641	;  <variable>._new._reent._getdate_err
	clr	application_task+1642	;  <variable>._new._reent._getdate_err
	clr	application_task+1673	;  <variable>._atexit
	clr	application_task+1674	;  <variable>._atexit
	clr	application_task+1675	;  <variable>._atexit0._next
	clr	application_task+1676	;  <variable>._atexit0._next
	clr	application_task+1677	;  <variable>._atexit0._ind
	clr	application_task+1678	;  <variable>._atexit0._ind
	clr	application_task+1679	;  <variable>._atexit0._fns
	clr	application_task+1680	;  <variable>._atexit0._fns
	clr	application_task+1873	;  <variable>._atexit0._on_exit_args._fntypes
	clr	application_task+1874	;  <variable>._atexit0._on_exit_args._fntypes
	clr	application_task+1871
	clr	application_task+1872
	clr	application_task+1743	;  <variable>._atexit0._on_exit_args._fnargs
	clr	application_task+1744	;  <variable>._atexit0._on_exit_args._fnargs
	clr	application_task+1879	;  <variable>._sig_func
	clr	application_task+1880	;  <variable>._sig_func
	clr	application_task+1881	;  <variable>.__sglue._next
	clr	application_task+1882	;  <variable>.__sglue._next
	clr	application_task+1883	;  <variable>.__sglue._niobs
	clr	application_task+1884	;  <variable>.__sglue._niobs
	clr	application_task+1885	;  <variable>.__sglue._iobs
	clr	application_task+1886	;  <variable>.__sglue._iobs
	movw	#150,2,-sp
	clr	1,-sp
	clr	1,-sp
	ldd	#application_task+1887
	call	memset
	leas	4,sp
	movw	#186,2,-sp
	ldd	#application_task
	ldx	#0
	pshd
	pshx
	ldd	#application_task+512
	ldx	#0
	pshd
	pshx
	ldd	#application_task+1536
	ldx	#0
	pshd
	pshx
	ldd	#application_task+384
	ldx	#0
	pshd
	pshx
	ldd	#application_task+256
	ldx	#0
	pshd
	pshx
	ldd	#application_task+512
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
.LM169:
	ldd	#application_task
	ldx	#0
	pshd
	pshx
	clr	1,-sp
	clr	1,-sp
	ldd	#Application_Loop
	call	Activate
	leas	6,sp
.LM170:
	movw	2,sp+,_.frame
	rtc
.LFE57:
	.size	Init_Application, .-Init_Application
	.comm	CatchVars,8,1
	.comm	tempRef,4,1
	.comm	temporaryOffset,4,1
	.globl	_tempRef
	.section	.eeprom,"aw",@progbits
	.type	_tempRef, @object
	.size	_tempRef, 4
_tempRef:
	.zero	4
	.comm	latest_portt_state,1,1
	.comm	EAT,4,1
	.comm	Fan,4,1
	.comm	B12,2,1
	.comm	ConState,1,1
	.local	outbuf
	.comm	outbuf,4,1
	.local	outbuf_size
	.comm	outbuf_size,2,1
	.globl	application_task
	.section	.taskareas,"aw",@progbits
	.type	application_task, @object
	.size	application_task, 2048
application_task:
	.zero	2048
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
	.string	"application.c"
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
	.byte	0x25
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x1c
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x1a
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x15
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
	.byte	0x1c
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x15
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
	.byte	0x44
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x15
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
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x1c
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0x1a
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x1c
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM86
	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM87
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM88
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM89
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0x1c
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM99
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM100
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM101
	.byte	0x18
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
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM108
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM109
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM110
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM111
	.byte	0x16
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
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM115
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM116
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM117
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM118
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM119
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM120
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM121
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM122
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM123
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM124
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM125
	.byte	0x16
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
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM129
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM130
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM131
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM132
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM133
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM134
	.byte	0x15
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
	.4byte	.LM138
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM139
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM140
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM141
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM142
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM143
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM144
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM145
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM146
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM147
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM148
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM149
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM150
	.byte	0x22
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM151
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM152
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM153
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM154
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM155
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM156
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM157
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM158
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM159
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM160
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM161
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM162
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM163
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM164
	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM165
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM166
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM167
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM168
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM169
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM170
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
	.4byte	0x3239
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.string	"application.c"
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
	.4byte	.LC4
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
	.4byte	.LC4
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
	.4byte	.LC5
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
	.4byte	.LC5
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
	.4byte	.LC6
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
	.4byte	.LC6
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
	.4byte	.LC7
	.byte	0xb
	.byte	0x27
	.4byte	0x1193
	.byte	0x1d
	.4byte	0x1209
	.4byte	.LC7
	.2byte	0x480
	.byte	0xb
	.byte	0x27
	.byte	0x11
	.4byte	.LC8
	.byte	0xb
	.byte	0xa9
	.4byte	0x138d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x11
	.4byte	.LC9
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
	.4byte	.LC10
	.byte	0xb
	.byte	0xac
	.4byte	0x1aa3
	.byte	0x3
	.byte	0x23
	.byte	0xba,0x1
	.byte	0x11
	.4byte	.LC11
	.byte	0xb
	.byte	0xad
	.4byte	0x1ab3
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x2
	.byte	0x11
	.4byte	.LC12
	.byte	0xb
	.byte	0xae
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x5
	.byte	0x11
	.4byte	.LC13
	.byte	0xb
	.byte	0xaf
	.4byte	0x1ac4
	.byte	0x3
	.byte	0x23
	.byte	0xf5,0x8
	.byte	0x0
	.byte	0x10
	.4byte	.LC14
	.byte	0xb
	.byte	0x28
	.4byte	0x1214
	.byte	0x1d
	.4byte	0x128a
	.4byte	.LC14
	.2byte	0x800
	.byte	0xb
	.byte	0x28
	.byte	0x11
	.4byte	.LC8
	.byte	0xb
	.byte	0xb4
	.4byte	0x138d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x11
	.4byte	.LC9
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
	.4byte	.LC10
	.byte	0xb
	.byte	0xb7
	.4byte	0x1ad4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x3
	.byte	0x11
	.4byte	.LC11
	.byte	0xb
	.byte	0xb8
	.4byte	0x1ae4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x4
	.byte	0x11
	.4byte	.LC12
	.byte	0xb
	.byte	0xb9
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.byte	0x80,0xc
	.byte	0x11
	.4byte	.LC13
	.byte	0xb
	.byte	0xba
	.4byte	0x1ac4
	.byte	0x3
	.byte	0x23
	.byte	0xf5,0xf
	.byte	0x0
	.byte	0x10
	.4byte	.LC15
	.byte	0xb
	.byte	0x29
	.4byte	0x1295
	.byte	0x1d
	.4byte	0x130b
	.4byte	.LC15
	.2byte	0xb00
	.byte	0xb
	.byte	0x29
	.byte	0x11
	.4byte	.LC8
	.byte	0xb
	.byte	0xbf
	.4byte	0x138d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x11
	.4byte	.LC9
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
	.4byte	.LC10
	.byte	0xb
	.byte	0xc2
	.4byte	0x1ad4
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x3
	.byte	0x11
	.4byte	.LC11
	.byte	0xb
	.byte	0xc3
	.4byte	0x1af5
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x4
	.byte	0x11
	.4byte	.LC12
	.byte	0xb
	.byte	0xc4
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x12
	.byte	0x11
	.4byte	.LC13
	.byte	0xb
	.byte	0xc5
	.4byte	0x1ac4
	.byte	0x3
	.byte	0x23
	.byte	0xf5,0x15
	.byte	0x0
	.byte	0x10
	.4byte	.LC16
	.byte	0xb
	.byte	0x2a
	.4byte	0x1316
	.byte	0x1e
	.4byte	.LC16
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
	.4byte	.LC17
	.byte	0xb
	.byte	0x2d
	.4byte	0x138d
	.byte	0xf
	.4byte	0x1a67
	.4byte	.LC17
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
	.4byte	.LC18
	.byte	0x16
	.byte	0x16
	.4byte	0x23aa
	.byte	0x1e
	.4byte	.LC18
	.byte	0x1
	.byte	0x25
	.4byte	0x24e4
	.4byte	.LC19
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
	.4byte	.LC19
	.byte	0x16
	.byte	0x35
	.4byte	0x23b0
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_HTMLPwrC"
	.byte	0x1
	.byte	0x12
	.4byte	0x481
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_HTMLRfgtC"
	.byte	0x1
	.byte	0x13
	.4byte	0x481
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_CtrlMode"
	.byte	0x1
	.byte	0x14
	.4byte	0x481
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_RSV"
	.byte	0x1
	.byte	0x15
	.4byte	0x481
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_CFhtml"
	.byte	0x1
	.byte	0x16
	.4byte	0x481
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_EFhtml"
	.byte	0x1
	.byte	0x17
	.4byte	0x481
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_DShtml"
	.byte	0x1
	.byte	0x18
	.4byte	0x481
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_FlowSetZero"
	.byte	0x1
	.byte	0x19
	.4byte	0x481
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_M"
	.byte	0x1
	.byte	0x21
	.4byte	0x481
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_B"
	.byte	0x1
	.byte	0x22
	.4byte	0x481
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_p1off"
	.byte	0x1
	.byte	0x23
	.4byte	0x481
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_p2off"
	.byte	0x1
	.byte	0x24
	.4byte	0x481
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_p3off"
	.byte	0x1
	.byte	0x25
	.4byte	0x481
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_tRef"
	.byte	0x1
	.byte	0x26
	.4byte	0x481
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_t2off"
	.byte	0x1
	.byte	0x27
	.4byte	0x481
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_t3off"
	.byte	0x1
	.byte	0x28
	.4byte	0x481
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_t4off"
	.byte	0x1
	.byte	0x29
	.4byte	0x481
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_t5off"
	.byte	0x1
	.byte	0x2a
	.4byte	0x481
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_t6off"
	.byte	0x1
	.byte	0x2b
	.4byte	0x481
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.byte	0x1
	.string	"wbskt_typeof_woff"
	.byte	0x1
	.byte	0x2c
	.4byte	0x481
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x59
	.byte	0x27
	.4byte	0x2b47
	.byte	0x1
	.string	"Application_Run_Once"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x1
	.byte	0x59
	.byte	0x28
	.4byte	0x282c
	.4byte	.LBB3
	.4byte	.LBE3
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x3e
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x3e
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2856
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x3f
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x3f
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2880
	.4byte	.LBB5
	.4byte	.LBE5
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x40
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x40
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x28aa
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x41
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x41
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x28d4
	.4byte	.LBB7
	.4byte	.LBE7
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x42
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x42
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x28fe
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x43
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x43
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2928
	.4byte	.LBB9
	.4byte	.LBE9
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x44
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x44
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2952
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x46
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x46
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x297c
	.4byte	.LBB11
	.4byte	.LBE11
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x47
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x47
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x29a6
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x48
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x48
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x29d0
	.4byte	.LBB13
	.4byte	.LBE13
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x4a
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x4a
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x29fa
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x4b
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x4b
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2a24
	.4byte	.LBB15
	.4byte	.LBE15
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x4c
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x4c
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2a4e
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x4e
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x4e
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2a78
	.4byte	.LBB17
	.4byte	.LBE17
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x4f
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x4f
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2aa2
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x50
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x50
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2acc
	.4byte	.LBB19
	.4byte	.LBE19
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x51
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x51
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2af6
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x52
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x52
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x28
	.4byte	0x2b20
	.4byte	.LBB21
	.4byte	.LBE21
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x53
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x53
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x2a
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x29
	.4byte	.LC20
	.byte	0x1
	.byte	0x55
	.4byte	0x481
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x29
	.4byte	.LC21
	.byte	0x1
	.byte	0x55
	.4byte	0x2b47
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0x2
	.4byte	0x239f
	.byte	0x2b
	.4byte	0x2b79
	.byte	0x1
	.string	"Send_VarTm"
	.byte	0x1
	.byte	0x87
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x1
	.byte	0x59
	.byte	0x29
	.4byte	.LC22
	.byte	0x1
	.byte	0x88
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x0
	.byte	0x27
	.4byte	0x2bb4
	.byte	0x1
	.string	"RECvars"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x1
	.byte	0x59
	.byte	0x2c
	.string	"II"
	.byte	0x1
	.byte	0x96
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x2c
	.string	"HTMLvar"
	.byte	0x1
	.byte	0x96
	.4byte	0x11e
	.byte	0x2
	.byte	0x91
	.byte	0xb
	.byte	0x0
	.byte	0x27
	.4byte	0x2bf0
	.byte	0x1
	.string	"RECvars2"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.byte	0x1
	.byte	0x59
	.byte	0x2c
	.string	"II"
	.byte	0x1
	.byte	0x9f
	.4byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x2c
	.string	"HTMLvar"
	.byte	0x1
	.byte	0x9f
	.4byte	0x1bac
	.byte	0x2
	.byte	0x91
	.byte	0x6
	.byte	0x0
	.byte	0x27
	.4byte	0x2ce8
	.byte	0x1
	.string	"Application_Loop"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.byte	0x1
	.byte	0x59
	.byte	0x2d
	.string	"websocket_open"
	.byte	0x1
	.byte	0xb0
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x2d
	.string	"last_websocket_status"
	.byte	0x1
	.byte	0xb0
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x2
	.byte	0x2d
	.string	"last_uptime"
	.byte	0x1
	.byte	0xb1
	.4byte	0x13c
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x2d
	.string	"this_uptime"
	.byte	0x1
	.byte	0xb1
	.4byte	0x13c
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x2d
	.string	"wbskt_err"
	.byte	0x1
	.byte	0xb2
	.4byte	0x24e4
	.byte	0x2
	.byte	0x91
	.byte	0xc
	.byte	0x29
	.4byte	.LC22
	.byte	0x1
	.byte	0xb3
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0xe
	.byte	0x2d
	.string	"eth_err"
	.byte	0x1
	.byte	0xb3
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x10
	.byte	0x2a
	.4byte	.LBB25
	.4byte	.LBE25
	.byte	0x2e
	.string	"outbuf"
	.byte	0x1
	.2byte	0x151
	.4byte	0x5b9
	.byte	0x2
	.byte	0x91
	.byte	0x1a
	.byte	0x2f
	.4byte	.LC23
	.byte	0x1
	.2byte	0x151
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x1e
	.byte	0x2f
	.4byte	.LC22
	.byte	0x1
	.2byte	0x151
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x20
	.byte	0x0
	.byte	0x0
	.byte	0x30
	.byte	0x1
	.string	"Init_Application"
	.byte	0x1
	.2byte	0x162
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x1
	.byte	0x59
	.byte	0x31
	.string	"_io_ports"
	.byte	0x17
	.byte	0x15
	.4byte	0x2d1c
	.byte	0x1
	.byte	0x1
	.byte	0x22
	.4byte	0x59f
	.byte	0x31
	.string	"TASKBASE"
	.byte	0xb
	.byte	0xdb
	.4byte	0x1a7f
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	0x2d43
	.4byte	0x93
	.byte	0x9
	.4byte	0x2b7
	.byte	0x7
	.byte	0x0
	.byte	0x32
	.string	"CatchVars"
	.byte	0x1
	.byte	0x6
	.4byte	0x2d33
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	CatchVars
	.byte	0x32
	.string	"SendMSG"
	.byte	0x1
	.byte	0x94
	.4byte	0x481
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SendMSG
	.byte	0x32
	.string	"tempRef"
	.byte	0x1
	.byte	0x7
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tempRef
	.byte	0x32
	.string	"temporaryOffset"
	.byte	0x1
	.byte	0x8
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	temporaryOffset
	.byte	0x32
	.string	"_tempRef"
	.byte	0x1
	.byte	0x9
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempRef
	.byte	0x31
	.string	"data_resource"
	.byte	0x18
	.byte	0x7
	.4byte	0x2dd3
	.byte	0x1
	.byte	0x1
	.byte	0x22
	.4byte	0x13c
	.byte	0x31
	.string	"FS0s"
	.byte	0x18
	.byte	0xc
	.4byte	0x93
	.byte	0x1
	.byte	0x1
	.byte	0x32
	.string	"latest_portt_state"
	.byte	0x18
	.byte	0xd
	.4byte	0x93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	latest_portt_state
	.byte	0x31
	.string	"VarTm"
	.byte	0x19
	.byte	0x6
	.4byte	0x1bac
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"LoP"
	.byte	0x19
	.byte	0x7
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"HiP"
	.byte	0x19
	.byte	0x7
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"highFlowPSI"
	.byte	0x19
	.byte	0x8
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"SucSat"
	.byte	0x19
	.byte	0x9
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"DisSat"
	.byte	0x19
	.byte	0x9
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"LowTemp"
	.byte	0x19
	.byte	0xa
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"HiTemp"
	.byte	0x19
	.byte	0xa
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"OAT"
	.byte	0x19
	.byte	0xb
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"degF_Lo"
	.byte	0x19
	.byte	0xc
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"degF_Hi"
	.byte	0x19
	.byte	0xc
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"IEn"
	.byte	0x19
	.byte	0xd
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"OEn"
	.byte	0x19
	.byte	0xe
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"GPM"
	.byte	0x19
	.byte	0xe
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"R_Eff"
	.byte	0x19
	.byte	0xf
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"BTUH"
	.byte	0x19
	.byte	0x10
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"tons"
	.byte	0x19
	.byte	0x10
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"EnergykW"
	.byte	0x19
	.byte	0x11
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"EERv"
	.byte	0x19
	.byte	0x11
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"MFPM"
	.byte	0x19
	.byte	0x12
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"Rho"
	.byte	0x19
	.byte	0x12
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"SAT"
	.byte	0x19
	.byte	0x13
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"LAT"
	.byte	0x19
	.byte	0x13
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"ERH"
	.byte	0x19
	.byte	0x13
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"Blower"
	.byte	0x19
	.byte	0x15
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"Damper"
	.byte	0x19
	.byte	0x15
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"m"
	.byte	0x19
	.byte	0x17
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"b"
	.byte	0x19
	.byte	0x17
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"P1off"
	.byte	0x19
	.byte	0x19
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"P2off"
	.byte	0x19
	.byte	0x19
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"P3off"
	.byte	0x19
	.byte	0x19
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"Woff"
	.byte	0x19
	.byte	0x19
	.4byte	0xdd2
	.byte	0x1
	.byte	0x1
	.byte	0x32
	.string	"EAT"
	.byte	0x19
	.byte	0x1e
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	EAT
	.byte	0x32
	.string	"Fan"
	.byte	0x19
	.byte	0x1f
	.4byte	0x1bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Fan
	.byte	0x31
	.string	"wbskt_catch_types"
	.byte	0x16
	.byte	0x39
	.4byte	0x2b47
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.string	"wbskt_catch_pointers"
	.byte	0x16
	.byte	0x3a
	.4byte	0x2b47
	.byte	0x1
	.byte	0x1
	.byte	0x32
	.string	"B12"
	.byte	0x1
	.byte	0x4
	.4byte	0x2390
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	B12
	.byte	0x32
	.string	"HTMLPwrC"
	.byte	0x1
	.byte	0x12
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	HTMLPwrC
	.byte	0x32
	.string	"HTMLRfgtC"
	.byte	0x1
	.byte	0x13
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	HTMLRfgtC
	.byte	0x32
	.string	"CtrlMode"
	.byte	0x1
	.byte	0x14
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	CtrlMode
	.byte	0x32
	.string	"RSV"
	.byte	0x1
	.byte	0x15
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	RSV
	.byte	0x32
	.string	"CFhtml"
	.byte	0x1
	.byte	0x16
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	CFhtml
	.byte	0x32
	.string	"EFhtml"
	.byte	0x1
	.byte	0x17
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	EFhtml
	.byte	0x32
	.string	"DShtml"
	.byte	0x1
	.byte	0x18
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	DShtml
	.byte	0x32
	.string	"FlowSetZero"
	.byte	0x1
	.byte	0x19
	.4byte	0x1bfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	FlowSetZero
	.byte	0x32
	.string	"M"
	.byte	0x1
	.byte	0x21
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	M
	.byte	0x32
	.string	"B"
	.byte	0x1
	.byte	0x22
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	B
	.byte	0x32
	.string	"p1off"
	.byte	0x1
	.byte	0x23
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	p1off
	.byte	0x32
	.string	"p2off"
	.byte	0x1
	.byte	0x24
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	p2off
	.byte	0x32
	.string	"p3off"
	.byte	0x1
	.byte	0x25
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	p3off
	.byte	0x32
	.string	"tRef"
	.byte	0x1
	.byte	0x26
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tRef
	.byte	0x32
	.string	"t2off"
	.byte	0x1
	.byte	0x27
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	t2off
	.byte	0x32
	.string	"t3off"
	.byte	0x1
	.byte	0x28
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	t3off
	.byte	0x32
	.string	"t4off"
	.byte	0x1
	.byte	0x29
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	t4off
	.byte	0x32
	.string	"t5off"
	.byte	0x1
	.byte	0x2a
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	t5off
	.byte	0x32
	.string	"t6off"
	.byte	0x1
	.byte	0x2b
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	t6off
	.byte	0x32
	.string	"woff"
	.byte	0x1
	.byte	0x2c
	.4byte	0x1c12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	woff
	.byte	0x32
	.string	"ConState"
	.byte	0x1
	.byte	0x2e
	.4byte	0x481
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ConState
	.byte	0x2d
	.string	"outbuf"
	.byte	0x1
	.byte	0x81
	.4byte	0x5b9
	.byte	0x5
	.byte	0x3
	.4byte	outbuf
	.byte	0x29
	.4byte	.LC23
	.byte	0x1
	.byte	0x82
	.4byte	0xce
	.byte	0x5
	.byte	0x3
	.4byte	outbuf_size
	.byte	0x33
	.string	"application_task"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x1214
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	application_task
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x28
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x29
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0xe
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
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x2b
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x2c
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
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x2e
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x2f
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.4byte	0x3b3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x323d
	.4byte	0x24ef
	.string	"wbskt_typeof_HTMLPwrC"
	.4byte	0x2517
	.string	"wbskt_typeof_HTMLRfgtC"
	.4byte	0x2540
	.string	"wbskt_typeof_CtrlMode"
	.4byte	0x2568
	.string	"wbskt_typeof_RSV"
	.4byte	0x258b
	.string	"wbskt_typeof_CFhtml"
	.4byte	0x25b1
	.string	"wbskt_typeof_EFhtml"
	.4byte	0x25d7
	.string	"wbskt_typeof_DShtml"
	.4byte	0x25fd
	.string	"wbskt_typeof_FlowSetZero"
	.4byte	0x2628
	.string	"wbskt_typeof_M"
	.4byte	0x2649
	.string	"wbskt_typeof_B"
	.4byte	0x266a
	.string	"wbskt_typeof_p1off"
	.4byte	0x268f
	.string	"wbskt_typeof_p2off"
	.4byte	0x26b4
	.string	"wbskt_typeof_p3off"
	.4byte	0x26d9
	.string	"wbskt_typeof_tRef"
	.4byte	0x26fd
	.string	"wbskt_typeof_t2off"
	.4byte	0x2722
	.string	"wbskt_typeof_t3off"
	.4byte	0x2747
	.string	"wbskt_typeof_t4off"
	.4byte	0x276c
	.string	"wbskt_typeof_t5off"
	.4byte	0x2791
	.string	"wbskt_typeof_t6off"
	.4byte	0x27b6
	.string	"wbskt_typeof_woff"
	.4byte	0x27da
	.string	"Application_Run_Once"
	.4byte	0x2b4d
	.string	"Send_VarTm"
	.4byte	0x2b79
	.string	"RECvars"
	.4byte	0x2bb4
	.string	"RECvars2"
	.4byte	0x2bf0
	.string	"Application_Loop"
	.4byte	0x2ce8
	.string	"Init_Application"
	.4byte	0x2d43
	.string	"CatchVars"
	.4byte	0x2d5b
	.string	"SendMSG"
	.4byte	0x2d71
	.string	"tempRef"
	.4byte	0x2d87
	.string	"temporaryOffset"
	.4byte	0x2da5
	.string	"_tempRef"
	.4byte	0x2de6
	.string	"latest_portt_state"
	.4byte	0x2fda
	.string	"EAT"
	.4byte	0x2fec
	.string	"Fan"
	.4byte	0x3037
	.string	"B12"
	.4byte	0x3049
	.string	"HTMLPwrC"
	.4byte	0x3060
	.string	"HTMLRfgtC"
	.4byte	0x3078
	.string	"CtrlMode"
	.4byte	0x308f
	.string	"RSV"
	.4byte	0x30a1
	.string	"CFhtml"
	.4byte	0x30b6
	.string	"EFhtml"
	.4byte	0x30cb
	.string	"DShtml"
	.4byte	0x30e0
	.string	"FlowSetZero"
	.4byte	0x30fa
	.string	"M"
	.4byte	0x310a
	.string	"B"
	.4byte	0x311a
	.string	"p1off"
	.4byte	0x312e
	.string	"p2off"
	.4byte	0x3142
	.string	"p3off"
	.4byte	0x3156
	.string	"tRef"
	.4byte	0x3169
	.string	"t2off"
	.4byte	0x317d
	.string	"t3off"
	.4byte	0x3191
	.string	"t4off"
	.4byte	0x31a5
	.string	"t5off"
	.4byte	0x31b9
	.string	"t6off"
	.4byte	0x31cd
	.string	"woff"
	.4byte	0x31e0
	.string	"ConState"
	.4byte	0x321c
	.string	"application_task"
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
.LC7:
	.string	"small_taskArea"
.LC23:
	.string	"outbuf_size"
.LC21:
	.string	"object_wrapper"
.LC4:
	.string	"short unsigned int"
.LC19:
	.string	"Wbskt_Error_Type"
.LC11:
	.string	"rstack"
.LC9:
	.string	"belowpad"
.LC5:
	.string	"_types_fd_set"
.LC17:
	.string	"userArea"
.LC12:
	.string	"_reent_placeholder"
.LC8:
	.string	"user_area"
.LC22:
	.string	"result_len"
.LC6:
	.string	"_on_exit_args"
.LC13:
	.string	"reent_padding"
.LC18:
	.string	"json_object"
.LC16:
	.string	"custom_taskArea"
.LC15:
	.string	"large_taskArea"
.LC10:
	.string	"dstack"
.LC14:
	.string	"medium_taskArea"
.LC20:
	.string	"metadata_type"
	.ident	"GCC: (GNU) 3.3.6-m68hc1x-20070214"
