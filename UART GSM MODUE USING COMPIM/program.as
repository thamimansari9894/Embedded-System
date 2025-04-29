opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNROOT	_main
	global	main@F513
	global	main@F517
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\PIC16F877A Demo Concepts\UART GSM MODUE USING COMPIM\program.c"
	line	11

;initializer for main@F513
	retlw	041h
	retlw	054h
	retlw	02Bh
	retlw	043h
	retlw	046h
	retlw	055h
	retlw	04Eh
	retlw	03Dh
	retlw	030h
	retlw	0Dh
	retlw	0
	line	19

;initializer for main@F517
	retlw	041h
	retlw	054h
	retlw	02Bh
	retlw	043h
	retlw	046h
	retlw	055h
	retlw	04Eh
	retlw	03Dh
	retlw	031h
	retlw	0Dh
	retlw	0
	global	_PORTC
_PORTC	set	7
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TXSTA
_TXSTA	set	152
	file	"program.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC16F877A Demo Concepts\UART GSM MODUE USING COMPIM\program.c"
	line	11
main@F513:
       ds      11

psect	dataBANK0
	file	"C:\PIC16F877A Demo Concepts\UART GSM MODUE USING COMPIM\program.c"
	line	19
main@F517:
       ds      11

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+22)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@turn_off
main@turn_off:	; 11 bytes @ 0x0
	ds	11
	global	main@turn_on
main@turn_on:	; 11 bytes @ 0xB
	ds	11
	global	main@i
main@i:	; 2 bytes @ 0x16
	ds	2
;;Data sizes: Strings 0, constant 0, data 22, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     24      46
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                28    28      0     184
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     24    24      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      32      12        0.0%
;;ABS                  0      0      32       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     18      2E       5       57.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 4 in file "C:\PIC16F877A Demo Concepts\UART GSM MODUE USING COMPIM\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  turn_on        11   11[BANK0 ] unsigned char [11]
;;  turn_off       11    0[BANK0 ] unsigned char [11]
;;  i               2   22[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      24       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      24       0       0       0
;;Total ram usage:       28 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\UART GSM MODUE USING COMPIM\program.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	5
	
l1773:	
;program.c: 5: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	6
	
l1775:	
;program.c: 6: TXSTA=0b00100100;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	7
	
l1777:	
;program.c: 7: RCSTA=0b10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	8
	
l1779:	
;program.c: 8: SPBRG=64;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	11
	
l1781:	
;program.c: 10: int i;
;program.c: 11: char turn_off[]={"AT+CFUN=0\r"};
	movlw	(main@turn_off)&0ffh
	movwf	fsr0
	movlw	low(main@F513)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	11
	movwf	((??_main+0)+0+2)
u2220:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2220
	line	12
	
l1783:	
;program.c: 12: for(i=0;i<=11;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1785:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(0Ch)
	subwf	(main@i),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1789
u2230:
	goto	l1795
	
l1787:	
	goto	l1795
	
l563:	
	line	13
	
l1789:	
;program.c: 13: TXREG=turn_off[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@turn_off&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	14
;program.c: 14: while(TXIF==0);
	goto	l565
	
l566:	
	
l565:	
	btfss	(100/8),(100)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l565
u2240:
	
l567:	
	line	15
;program.c: 15: TXIF=0;
	bcf	(100/8),(100)&7
	line	16
	
l1791:	
;program.c: 16: _delay((unsigned long)((100)*(20000000/4000.0)));}
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	decfsz	((??_main+0)+0+2),f
	goto	u2307
opt asmopt_on

	line	12
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1793:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(0Ch)
	subwf	(main@i),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1789
u2250:
	goto	l1795
	
l564:	
	line	17
	
l1795:	
;program.c: 17: _delay((unsigned long)((5000)*(20000000/4000.0)));
	opt asmopt_off
movlw  127
movwf	((??_main+0)+0+2),f
movlw	86
movwf	((??_main+0)+0+1),f
	movlw	132
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
	decfsz	((??_main+0)+0+2),f
	goto	u2317
	nop2
opt asmopt_on

	line	19
	
l1797:	
;program.c: 19: char turn_on[]={"AT+CFUN=1\r"};
	movlw	(main@turn_on)&0ffh
	movwf	fsr0
	movlw	low(main@F517)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	11
	movwf	((??_main+0)+0+2)
u2260:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2260
	line	20
	
l1799:	
;program.c: 20: for(i=0;i<=11;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1801:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(0Ch)
	subwf	(main@i),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1805
u2270:
	goto	l1811
	
l1803:	
	goto	l1811
	
l570:	
	line	21
	
l1805:	
;program.c: 21: TXREG=turn_on[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@turn_on&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	22
;program.c: 22: while(TXIF==0);
	goto	l572
	
l573:	
	
l572:	
	btfss	(100/8),(100)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l572
u2280:
	
l574:	
	line	23
;program.c: 23: TXIF=0;
	bcf	(100/8),(100)&7
	line	24
	
l1807:	
;program.c: 24: _delay((unsigned long)((100)*(20000000/4000.0)));}
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	decfsz	((??_main+0)+0+2),f
	goto	u2327
opt asmopt_on

	line	20
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1809:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(0Ch)
	subwf	(main@i),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l1805
u2290:
	goto	l1811
	
l571:	
	line	25
	
l1811:	
;program.c: 25: _delay((unsigned long)((5000)*(20000000/4000.0)));
	opt asmopt_off
movlw  127
movwf	((??_main+0)+0+2),f
movlw	86
movwf	((??_main+0)+0+1),f
	movlw	132
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
	nop2
opt asmopt_on

	goto	l576
	line	30
;program.c: 30: while(1){}}
	
l575:	
	
l576:	
	goto	l576
	
l577:	
	
l578:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
