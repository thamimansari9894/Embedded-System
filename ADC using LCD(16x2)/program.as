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
	FNCALL	_main,_ADC
	FNCALL	_ADC,_cmd
	FNCALL	_ADC,___awdiv
	FNCALL	_ADC,_dis
	FNCALL	_ADC,___awmod
	FNCALL	_dis,_delay
	FNCALL	_cmd,_delay
	FNROOT	_main
	global	_ADCON0
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:
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
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	global	?_ADC
?_ADC:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
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
	global	??_ADC
??_ADC:	; 0 bytes @ 0x4
	ds	2
	global	ADC@ADVAL
ADC@ADVAL:	; 2 bytes @ 0x6
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
;;   _ADC->___awmod
;;   _dis->___awmod
;;   _cmd->_delay
;;   ___awmod->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ADC
;;   _ADC->_dis
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
;; (0) _main                                                 0     0      0     889
;;                                _cmd
;;                                _ADC
;; ---------------------------------------------------------------------------------
;; (1) _ADC                                                  4     4      0     821
;;                                              4 BANK0      4     4      0
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
;;   _ADC
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
;;		line 18 in file "D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
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
;;		_ADC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l2010:	
;program.c: 19: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	20
;program.c: 20: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	21
;program.c: 21: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	22
;program.c: 22: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	23
;program.c: 23: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	24
;program.c: 24: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	25
	
l2012:	
;program.c: 25: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	26
	
l2014:	
;program.c: 26: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	27
	
l2016:	
;program.c: 27: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	28
	
l2018:	
;program.c: 28: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	29
	
l2020:	
;program.c: 29: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	30
	
l2022:	
;program.c: 30: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l2024
	line	31
;program.c: 31: while (1){
	
l565:	
	line	32
	
l2024:	
;program.c: 32: ADC();}}
	fcall	_ADC
	goto	l2024
	
l566:	
	line	31
	goto	l2024
	
l567:	
	line	32
	
l568:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ADC
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _ADC *****************
;; Defined at:
;;		line 50 in file "D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
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
;;		_cmd
;;		___awdiv
;;		_dis
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text179
	file	"D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
	line	50
	global	__size_of_ADC
	__size_of_ADC	equ	__end_of_ADC-_ADC
	
_ADC:	
	opt	stack 5
; Regs used in _ADC: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l1994:	
;program.c: 51: ADCON0=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	52
;program.c: 52: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	53
	
l1996:	
;program.c: 53: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	54
;program.c: 54: while(GODONE==1);
	goto	l577
	
l578:	
	
l577:	
	btfsc	(250/8),(250)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l577
u2390:
	goto	l1998
	
l579:	
	line	56
	
l1998:	
;program.c: 55: int ADVAL;
;program.c: 56: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	57
	
l2000:	
;program.c: 57: ADVAL=((ADRESH<<8)|(ADRESL));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_ADC+0)+0
	clrf	(??_ADC+0)+0+1
	movlw	08h
	movwf	btemp+1
u2405:
	clrc
	rlf	(??_ADC+0)+0,f
	rlf	(??_ADC+0)+1,f
	decfsz	btemp+1,f
	goto	u2405
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	0+(??_ADC+0)+0,w
	movwf	(ADC@ADVAL)
	movf	1+(??_ADC+0)+0,w
	movwf	1+(ADC@ADVAL)
	line	58
	
l2002:	
;program.c: 58: dis((ADVAL/1000)+48);
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(ADC@ADVAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC@ADVAL),w
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
	line	59
	
l2004:	
;program.c: 59: dis(((ADVAL/100)%10)+48);
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
	movf	(ADC@ADVAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC@ADVAL),w
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
	line	60
	
l2006:	
;program.c: 60: dis(((ADVAL/10)%10)+48);
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
	movf	(ADC@ADVAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(ADC@ADVAL),w
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
	line	61
	
l2008:	
;program.c: 61: dis((ADVAL%10)+48);}
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADC@ADVAL+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(ADC@ADVAL),w
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
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_ADC
	__end_of_ADC:
;; =============== function _ADC ends ============

	signat	_ADC,88
	global	_dis
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:

;; *************** function _dis *****************
;; Defined at:
;;		line 42 in file "D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
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
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text180
	file	"D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
	line	42
	global	__size_of_dis
	__size_of_dis	equ	__end_of_dis-_dis
	
_dis:	
	opt	stack 5
; Regs used in _dis: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l1982:	
;program.c: 43: PORTD=dat;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dis@dat),w
	movwf	(8)	;volatile
	line	44
	
l1984:	
;program.c: 44: RC0=1;
	bsf	(56/8),(56)&7
	line	45
	
l1986:	
;program.c: 45: RC1=0;
	bcf	(57/8),(57)&7
	line	46
	
l1988:	
;program.c: 46: delay();
	fcall	_delay
	line	47
	
l1990:	
;program.c: 47: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	48
	
l1992:	
;program.c: 48: RC2=0;}
	bcf	(58/8),(58)&7
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_dis
	__end_of_dis:
;; =============== function _dis ends ============

	signat	_dis,4216
	global	_cmd
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function _cmd *****************
;; Defined at:
;;		line 34 in file "D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
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
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text181
	file	"D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
	line	34
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 5
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	35
	
l1970:	
;program.c: 35: PORTD=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	36
	
l1972:	
;program.c: 36: RC0=0;
	bcf	(56/8),(56)&7
	line	37
	
l1974:	
;program.c: 37: RC1=0;
	bcf	(57/8),(57)&7
	line	38
	
l1976:	
;program.c: 38: delay();
	fcall	_delay
	line	39
	
l1978:	
;program.c: 39: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	40
	
l1980:	
;program.c: 40: RC2=0;}
	bcf	(58/8),(58)&7
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	___awmod
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

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
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text182
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1934:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	line	9
	
l1936:	
	btfss	(___awmod@dividend+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l1940
u2300:
	line	10
	
l1938:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l1940
	line	12
	
l802:	
	line	13
	
l1940:	
	btfss	(___awmod@divisor+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l1944
u2310:
	line	14
	
l1942:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1944
	
l803:	
	line	15
	
l1944:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l1962
u2320:
	line	16
	
l1946:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l1952
	
l806:	
	line	18
	
l1948:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	19
	
l1950:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1952
	line	20
	
l805:	
	line	17
	
l1952:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1948
u2340:
	goto	l1954
	
l807:	
	goto	l1954
	line	21
	
l808:	
	line	22
	
l1954:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2355
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2355:
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1958
u2350:
	line	23
	
l1956:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1958
	
l809:	
	line	24
	
l1958:	
	movlw	01h
	
u2365:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2365
	line	25
	
l1960:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l1954
u2370:
	goto	l1962
	
l810:	
	goto	l1962
	line	26
	
l804:	
	line	27
	
l1962:	
	movf	(___awmod@sign),w
	skipz
	goto	u2380
	goto	l1966
u2380:
	line	28
	
l1964:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1966
	
l811:	
	line	29
	
l1966:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l812
	
l1968:	
	line	30
	
l812:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

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
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text183
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1896:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1898:	
	btfss	(___awdiv@divisor+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l1902
u2200:
	line	11
	
l1900:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1902
	line	13
	
l734:	
	line	14
	
l1902:	
	btfss	(___awdiv@dividend+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l735
u2210:
	line	15
	
l1904:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1906:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l735:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2221
	goto	u2220
u2221:
	goto	l1926
u2220:
	line	20
	
l1908:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1914
	
l738:	
	line	22
	
l1910:	
	movlw	01h
	
u2235:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2235
	line	23
	
l1912:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1914
	line	24
	
l737:	
	line	21
	
l1914:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1910
u2240:
	goto	l1916
	
l739:	
	goto	l1916
	line	25
	
l740:	
	line	26
	
l1916:	
	movlw	01h
	
u2255:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2255
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2265
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2265:
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l1922
u2260:
	line	28
	
l1918:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1920:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1922
	line	30
	
l741:	
	line	31
	
l1922:	
	movlw	01h
	
u2275:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2275
	line	32
	
l1924:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l1916
u2280:
	goto	l1926
	
l742:	
	goto	l1926
	line	33
	
l736:	
	line	34
	
l1926:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2290
	goto	l1930
u2290:
	line	35
	
l1928:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1930
	
l743:	
	line	36
	
l1930:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l744
	
l1932:	
	line	37
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

;; *************** function _delay *****************
;; Defined at:
;;		line 63 in file "D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
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
;;		_cmd
;;		_dis
;; This function uses a non-reentrant model
;;
psect	text184
	file	"D:\PIC16F877A Concepts\ADC using LCD(16x2)\program.c"
	line	63
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	65
	
l1890:	
;program.c: 64: unsigned int i;
;program.c: 65: for(i=0;i<10000;i++);}
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	movlw	high(02710h)
	subwf	(delay@i+1),w
	movlw	low(02710h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l1894
u2180:
	goto	l585
	
l1892:	
	goto	l585
	
l583:	
	
l1894:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	movlw	high(02710h)
	subwf	(delay@i+1),w
	movlw	low(02710h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l1894
u2190:
	goto	l585
	
l584:	
	
l585:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
