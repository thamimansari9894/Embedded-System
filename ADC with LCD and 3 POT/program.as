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
	FNCALL	_main,_cmd
	FNCALL	_main,_ADC1
	FNCALL	_main,_delay
	FNCALL	_main,_ADC2
	FNCALL	_main,_ADC3
	FNCALL	_ADC3,_delay
	FNCALL	_ADC3,_cmd
	FNCALL	_ADC3,___awdiv
	FNCALL	_ADC3,_dis
	FNCALL	_ADC3,___awmod
	FNCALL	_ADC2,_delay
	FNCALL	_ADC2,_cmd
	FNCALL	_ADC2,___awdiv
	FNCALL	_ADC2,_dis
	FNCALL	_ADC2,___awmod
	FNCALL	_ADC1,_delay
	FNCALL	_ADC1,_cmd
	FNCALL	_ADC1,___awdiv
	FNCALL	_ADC1,_dis
	FNCALL	_ADC1,___awmod
	FNCALL	_dis,_delay
	FNCALL	_cmd,_delay
	FNROOT	_main
	global	_ADCON0
psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_GODONE
_GODONE	set	250
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"program.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	?_ADC1
?_ADC1:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_ADC2
?_ADC2:	; 0 bytes @ 0x0
	global	?_ADC3
?_ADC3:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_cmd
??_cmd:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x9
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x9
	ds	2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xB
	ds	2
	global	??___awmod
??___awmod:	; 0 bytes @ 0xD
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xE
	global	??_dis
??_dis:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	ds	1
	global	?_dis
?_dis:	; 0 bytes @ 0x2
	global	dis@dat
dis@dat:	; 2 bytes @ 0x2
	ds	2
	global	??_ADC1
??_ADC1:	; 0 bytes @ 0x4
	global	??_ADC2
??_ADC2:	; 0 bytes @ 0x4
	global	??_ADC3
??_ADC3:	; 0 bytes @ 0x4
	ds	2
	global	ADC1@ADVAL
ADC1@ADVAL:	; 2 bytes @ 0x6
	global	ADC2@RESULT
ADC2@RESULT:	; 2 bytes @ 0x6
	global	ADC3@VAL
ADC3@VAL:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      8       8
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _ADC3->___awmod
;;   _ADC2->___awmod
;;   _ADC1->___awmod
;;   _dis->___awmod
;;   _cmd->_delay
;;   ___awmod->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ADC1
;;   _main->_ADC2
;;   _main->_ADC3
;;   _ADC3->_dis
;;   _ADC2->_dis
;;   _ADC1->_dis
;;   _dis->___awmod
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    2715
;;                                _cmd
;;                               _ADC1
;;                              _delay
;;                               _ADC2
;;                               _ADC3
;; ---------------------------------------------------------------------------------
;; (1) _ADC3                                                 4     4      0     867
;;                                              4 BANK0      4     4      0
;;                              _delay
;;                                _cmd
;;                            ___awdiv
;;                                _dis
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _ADC2                                                 4     4      0     867
;;                                              4 BANK0      4     4      0
;;                              _delay
;;                                _cmd
;;                            ___awdiv
;;                                _dis
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _ADC1                                                 4     4      0     867
;;                                              4 BANK0      4     4      0
;;                              _delay
;;                                _cmd
;;                            ___awdiv
;;                                _dis
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (2) _dis                                                  2     0      2      68
;;                                              2 BANK0      2     0      2
;;                              _delay
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _cmd                                                  1     1      0      68
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              9 COMMON     5     1      4
;;                                              0 BANK0      2     2      0
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;     _delay
;;   _ADC1
;;     _delay
;;     _cmd
;;       _delay
;;     ___awdiv
;;     _dis
;;       _delay
;;       ___awdiv (ARG)
;;       ___awmod (ARG)
;;         ___awdiv (ARG)
;;     ___awmod
;;       ___awdiv (ARG)
;;   _delay
;;   _ADC2
;;     _delay
;;     _cmd
;;       _delay
;;     ___awdiv
;;     _dis
;;       _delay
;;       ___awdiv (ARG)
;;       ___awmod (ARG)
;;         ___awdiv (ARG)
;;     ___awmod
;;       ___awdiv (ARG)
;;   _ADC3
;;     _delay
;;     _cmd
;;       _delay
;;     ___awdiv
;;     _dis
;;       _delay
;;       ___awdiv (ARG)
;;       ___awmod (ARG)
;;         ___awdiv (ARG)
;;     ___awmod
;;       ___awdiv (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      8       8       5       10.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_cmd
;;		_ADC1
;;		_delay
;;		_ADC2
;;		_ADC3
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	12
	
l2303:	
;program.c: 12: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	13
;program.c: 13: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	14
	
l2305:	
;program.c: 14: TRISD=0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	15
	
l2307:	
;program.c: 15: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	16
	
l2309:	
;program.c: 16: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	17
	
l2311:	
;program.c: 17: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	18
	
l2313:	
;program.c: 18: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	19
	
l2315:	
;program.c: 19: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	20
	
l2317:	
;program.c: 20: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	21
	
l2319:	
;program.c: 21: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	22
	
l2321:	
;program.c: 22: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	23
	
l2323:	
;program.c: 23: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l2325
	line	24
;program.c: 24: while (1){
	
l569:	
	line	25
	
l2325:	
;program.c: 25: if(RD0==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l2333
u2520:
	line	26
	
l2327:	
;program.c: 26: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	27
	
l2329:	
;program.c: 27: ADC1();
	fcall	_ADC1
	line	28
	
l2331:	
;program.c: 28: delay();}
	fcall	_delay
	goto	l2333
	
l570:	
	line	30
	
l2333:	
;program.c: 30: if(RD1==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2341
u2530:
	line	31
	
l2335:	
;program.c: 31: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	32
	
l2337:	
;program.c: 32: ADC2();
	fcall	_ADC2
	line	33
	
l2339:	
;program.c: 33: delay();}
	fcall	_delay
	goto	l2341
	
l571:	
	line	35
	
l2341:	
;program.c: 35: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l2325
u2540:
	line	36
	
l2343:	
;program.c: 36: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	37
	
l2345:	
;program.c: 37: ADC3();
	fcall	_ADC3
	line	38
	
l2347:	
;program.c: 38: delay();}}}
	fcall	_delay
	goto	l2325
	
l572:	
	goto	l2325
	
l573:	
	line	24
	goto	l2325
	
l574:	
	line	38
	
l575:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ADC3
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:

;; *************** function _ADC3 *****************
;; Defined at:
;;		line 84 in file "D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  VAL             2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_cmd
;;		___awdiv
;;		_dis
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text227
	file	"D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
	line	84
	global	__size_of_ADC3
	__size_of_ADC3	equ	__end_of_ADC3-_ADC3
	
_ADC3:	
	opt	stack 5
; Regs used in _ADC3: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	85
	
l2285:	
;program.c: 85: ADCON0=0x11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	86
;program.c: 86: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	87
	
l2287:	
;program.c: 87: delay();
	fcall	_delay
	line	88
	
l2289:	
;program.c: 88: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	89
;program.c: 89: while(GODONE==1);
	goto	l596
	
l597:	
	
l596:	
	btfsc	(250/8),(250)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l596
u2500:
	goto	l2291
	
l598:	
	line	91
	
l2291:	
;program.c: 90: int VAL;
;program.c: 91: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	92
	
l2293:	
;program.c: 92: VAL=((ADRESL)+(ADRESH<<8));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_ADC3+0)+0
	clrf	(??_ADC3+0)+0+1
	movlw	08h
	movwf	btemp+1
u2515:
	clrc
	rlf	(??_ADC3+0)+0,f
	rlf	(??_ADC3+0)+1,f
	decfsz	btemp+1,f
	goto	u2515
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_ADC3+0)+0,w
	movwf	(ADC3@VAL)
	movf	1+(??_ADC3+0)+0,w
	skipnc
	incf	1+(??_ADC3+0)+0,w
	movwf	((ADC3@VAL))+1
	line	93
	
l2295:	
;program.c: 93: dis((VAL/1000)+(0x30));
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(ADC3@VAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC3@VAL),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awdiv)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	94
	
l2297:	
;program.c: 94: dis(((VAL/100)%10)+(0x30));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC3@VAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC3@VAL),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awdiv)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	95
	
l2299:	
;program.c: 95: dis(((VAL/10)%10)+(0x30));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC3@VAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC3@VAL),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awdiv)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	96
	
l2301:	
;program.c: 96: dis((VAL%10)+(0x30));}
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC3@VAL+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(ADC3@VAL),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	
l599:	
	return
	opt stack 0
GLOBAL	__end_of_ADC3
	__end_of_ADC3:
;; =============== function _ADC3 ends ============

	signat	_ADC3,88
	global	_ADC2
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:

;; *************** function _ADC2 *****************
;; Defined at:
;;		line 70 in file "D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RESULT          2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_cmd
;;		___awdiv
;;		_dis
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text228
	file	"D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
	line	70
	global	__size_of_ADC2
	__size_of_ADC2	equ	__end_of_ADC2-_ADC2
	
_ADC2:	
	opt	stack 5
; Regs used in _ADC2: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	71
	
l2267:	
;program.c: 71: ADCON0=0x09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	72
;program.c: 72: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	73
	
l2269:	
;program.c: 73: delay();
	fcall	_delay
	line	74
	
l2271:	
;program.c: 74: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	75
;program.c: 75: while(GODONE==1);
	goto	l590
	
l591:	
	
l590:	
	btfsc	(250/8),(250)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l590
u2480:
	goto	l2273
	
l592:	
	line	77
	
l2273:	
;program.c: 76: int RESULT;
;program.c: 77: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	78
	
l2275:	
;program.c: 78: RESULT=((ADRESL)+(ADRESH<<8));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_ADC2+0)+0
	clrf	(??_ADC2+0)+0+1
	movlw	08h
	movwf	btemp+1
u2495:
	clrc
	rlf	(??_ADC2+0)+0,f
	rlf	(??_ADC2+0)+1,f
	decfsz	btemp+1,f
	goto	u2495
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_ADC2+0)+0,w
	movwf	(ADC2@RESULT)
	movf	1+(??_ADC2+0)+0,w
	skipnc
	incf	1+(??_ADC2+0)+0,w
	movwf	((ADC2@RESULT))+1
	line	79
	
l2277:	
;program.c: 79: dis((RESULT/1000)+(0x30));
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(ADC2@RESULT+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC2@RESULT),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awdiv)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	80
	
l2279:	
;program.c: 80: dis(((RESULT/100)%10)+(0x30));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC2@RESULT+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC2@RESULT),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awdiv)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	81
	
l2281:	
;program.c: 81: dis(((RESULT/10)%10)+(0x30));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC2@RESULT+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC2@RESULT),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awdiv)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	82
	
l2283:	
;program.c: 82: dis((RESULT%10)+(0x30));}
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC2@RESULT+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(ADC2@RESULT),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	
l593:	
	return
	opt stack 0
GLOBAL	__end_of_ADC2
	__end_of_ADC2:
;; =============== function _ADC2 ends ============

	signat	_ADC2,88
	global	_ADC1
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:

;; *************** function _ADC1 *****************
;; Defined at:
;;		line 56 in file "D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADVAL           2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_cmd
;;		___awdiv
;;		_dis
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text229
	file	"D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
	line	56
	global	__size_of_ADC1
	__size_of_ADC1	equ	__end_of_ADC1-_ADC1
	
_ADC1:	
	opt	stack 5
; Regs used in _ADC1: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	57
	
l2249:	
;program.c: 57: ADCON0=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	58
;program.c: 58: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	59
	
l2251:	
;program.c: 59: delay();
	fcall	_delay
	line	60
	
l2253:	
;program.c: 60: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	61
;program.c: 61: while(GODONE==1);
	goto	l584
	
l585:	
	
l584:	
	btfsc	(250/8),(250)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l584
u2460:
	goto	l2255
	
l586:	
	line	63
	
l2255:	
;program.c: 62: int ADVAL;
;program.c: 63: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	64
	
l2257:	
;program.c: 64: ADVAL=((ADRESL)+(ADRESH<<8));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_ADC1+0)+0
	clrf	(??_ADC1+0)+0+1
	movlw	08h
	movwf	btemp+1
u2475:
	clrc
	rlf	(??_ADC1+0)+0,f
	rlf	(??_ADC1+0)+1,f
	decfsz	btemp+1,f
	goto	u2475
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_ADC1+0)+0,w
	movwf	(ADC1@ADVAL)
	movf	1+(??_ADC1+0)+0,w
	skipnc
	incf	1+(??_ADC1+0)+0,w
	movwf	((ADC1@ADVAL))+1
	line	65
	
l2259:	
;program.c: 65: dis((ADVAL/1000)+(0x30));
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(ADC1@ADVAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC1@ADVAL),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awdiv)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	66
	
l2261:	
;program.c: 66: dis(((ADVAL/100)%10)+(0x30));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC1@ADVAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC1@ADVAL),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awdiv)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	67
	
l2263:	
;program.c: 67: dis(((ADVAL/10)%10)+(0x30));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC1@ADVAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC1@ADVAL),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awdiv)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	line	68
	
l2265:	
;program.c: 68: dis((ADVAL%10)+(0x30));}
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC1@ADVAL+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(ADC1@ADVAL),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_dis)
	movf	(1+(?___awmod)),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_dis)
	fcall	_dis
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_ADC1
	__end_of_ADC1:
;; =============== function _ADC1 ends ============

	signat	_ADC1,88
	global	_dis
psect	text230,local,class=CODE,delta=2
global __ptext230
__ptext230:

;; *************** function _dis *****************
;; Defined at:
;;		line 48 in file "D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
;; Parameters:    Size  Location     Type
;;  dat             2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_ADC1
;;		_ADC2
;;		_ADC3
;; This function uses a non-reentrant model
;;
psect	text230
	file	"D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
	line	48
	global	__size_of_dis
	__size_of_dis	equ	__end_of_dis-_dis
	
_dis:	
	opt	stack 5
; Regs used in _dis: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l2237:	
;program.c: 49: PORTC=dat;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dis@dat),w
	movwf	(7)	;volatile
	line	50
	
l2239:	
;program.c: 50: RB0=1;
	bsf	(48/8),(48)&7
	line	51
	
l2241:	
;program.c: 51: RB1=0;
	bcf	(49/8),(49)&7
	line	52
	
l2243:	
;program.c: 52: delay();
	fcall	_delay
	line	53
	
l2245:	
;program.c: 53: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	54
	
l2247:	
;program.c: 54: RB2=0;}
	bcf	(50/8),(50)&7
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_dis
	__end_of_dis:
;; =============== function _dis ends ============

	signat	_dis,4216
	global	_cmd
psect	text231,local,class=CODE,delta=2
global __ptext231
__ptext231:

;; *************** function _cmd *****************
;; Defined at:
;;		line 40 in file "D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_ADC1
;;		_ADC2
;;		_ADC3
;; This function uses a non-reentrant model
;;
psect	text231
	file	"D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
	line	40
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 5
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	41
	
l2225:	
;program.c: 41: PORTC=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	42
	
l2227:	
;program.c: 42: RB0=0;
	bcf	(48/8),(48)&7
	line	43
	
l2229:	
;program.c: 43: RB1=0;
	bcf	(49/8),(49)&7
	line	44
	
l2231:	
;program.c: 44: delay();
	fcall	_delay
	line	45
	
l2233:	
;program.c: 45: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	46
	
l2235:	
;program.c: 46: RB2=0;}
	bcf	(50/8),(50)&7
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	___awmod
psect	text232,local,class=CODE,delta=2
global __ptext232
__ptext232:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    9[COMMON] int 
;;  dividend        2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       2       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC1
;;		_ADC2
;;		_ADC3
;; This function uses a non-reentrant model
;;
psect	text232
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2189:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	line	9
	
l2191:	
	btfss	(___awmod@dividend+1),7
	goto	u2371
	goto	u2370
u2371:
	goto	l2195
u2370:
	line	10
	
l2193:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2195
	line	12
	
l821:	
	line	13
	
l2195:	
	btfss	(___awmod@divisor+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l2199
u2380:
	line	14
	
l2197:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2199
	
l822:	
	line	15
	
l2199:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2391
	goto	u2390
u2391:
	goto	l2217
u2390:
	line	16
	
l2201:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2207
	
l825:	
	line	18
	
l2203:	
	movlw	01h
	
u2405:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2405
	line	19
	
l2205:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2207
	line	20
	
l824:	
	line	17
	
l2207:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2203
u2410:
	goto	l2209
	
l826:	
	goto	l2209
	line	21
	
l827:	
	line	22
	
l2209:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2425
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2425:
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2213
u2420:
	line	23
	
l2211:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2213
	
l828:	
	line	24
	
l2213:	
	movlw	01h
	
u2435:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2435
	line	25
	
l2215:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2209
u2440:
	goto	l2217
	
l829:	
	goto	l2217
	line	26
	
l823:	
	line	27
	
l2217:	
	movf	(___awmod@sign),w
	skipz
	goto	u2450
	goto	l2221
u2450:
	line	28
	
l2219:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2221
	
l830:	
	line	29
	
l2221:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l831
	
l2223:	
	line	30
	
l831:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC1
;;		_ADC2
;;		_ADC3
;; This function uses a non-reentrant model
;;
psect	text233
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2151:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2153:	
	btfss	(___awdiv@divisor+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l2157
u2270:
	line	11
	
l2155:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2157
	line	13
	
l753:	
	line	14
	
l2157:	
	btfss	(___awdiv@dividend+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l754
u2280:
	line	15
	
l2159:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2161:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l754:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l2181
u2290:
	line	20
	
l2163:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2169
	
l757:	
	line	22
	
l2165:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2305
	line	23
	
l2167:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2169
	line	24
	
l756:	
	line	21
	
l2169:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2165
u2310:
	goto	l2171
	
l758:	
	goto	l2171
	line	25
	
l759:	
	line	26
	
l2171:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2325
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2335
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2177
u2330:
	line	28
	
l2173:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2175:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2177
	line	30
	
l760:	
	line	31
	
l2177:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	32
	
l2179:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2171
u2350:
	goto	l2181
	
l761:	
	goto	l2181
	line	33
	
l755:	
	line	34
	
l2181:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2360
	goto	l2185
u2360:
	line	35
	
l2183:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2185
	
l762:	
	line	36
	
l2185:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l763
	
l2187:	
	line	37
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _delay *****************
;; Defined at:
;;		line 98 in file "D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_cmd
;;		_dis
;;		_ADC1
;;		_ADC2
;;		_ADC3
;; This function uses a non-reentrant model
;;
psect	text234
	file	"D:\PIC16F877A Concepts\ADC with LCD and 3 POT\program.c"
	line	98
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	100
	
l2145:	
;program.c: 99: unsigned int i;
;program.c: 100: for(i=0;i<2000;i++);}
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	movlw	high(07D0h)
	subwf	(delay@i+1),w
	movlw	low(07D0h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2149
u2250:
	goto	l604
	
l2147:	
	goto	l604
	
l602:	
	
l2149:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	movlw	high(07D0h)
	subwf	(delay@i+1),w
	movlw	low(07D0h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l2149
u2260:
	goto	l604
	
l603:	
	
l604:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
