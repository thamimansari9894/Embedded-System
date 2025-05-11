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
	FNCALL	_main,___awdiv
	FNCALL	_main,_PWM
	FNCALL	_main,_pwm_c
	FNROOT	_main
	global	_ADCON0
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTC
_PORTC	set	7
	global	_T2CON
_T2CON	set	18
	global	_GODONE
_GODONE	set	250
	global	_RC0
_RC0	set	56
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_PR2
_PR2	set	146
	global	_TRISC
_TRISC	set	135
	global	_TRISA0
_TRISA0	set	1064
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
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
	global	?_PWM
?_PWM:	; 0 bytes @ 0x9
	global	?_pwm_c
?_pwm_c:	; 0 bytes @ 0x9
	global	PWM@duty
PWM@duty:	; 2 bytes @ 0x9
	global	pwm_c@dut
pwm_c@dut:	; 2 bytes @ 0x9
	ds	2
	global	??_PWM
??_PWM:	; 0 bytes @ 0xB
	global	??_pwm_c
??_pwm_c:	; 0 bytes @ 0xB
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@ADVAL
main@ADVAL:	; 2 bytes @ 0x0
	ds	2
	global	main@val
main@val:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      4       4
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_PWM
;;   _main->_pwm_c
;;   _pwm_c->___awdiv
;;   _PWM->___awdiv
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0     478
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      4     4      0
;;                            ___awdiv
;;                                _PWM
;;                              _pwm_c
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _pwm_c                                                2     0      2      22
;;                                              9 COMMON     2     0      2
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _PWM                                                  2     0      2      22
;;                                              9 COMMON     2     0      2
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awdiv
;;   _PWM
;;     ___awdiv (ARG)
;;   _pwm_c
;;     ___awdiv (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      4       4       5        5.0%
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
;;		line 5 in file "C:\PIC16F877A Demo Concepts\PWM with DC motor\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  val             2    2[BANK0 ] int 
;;  ADVAL           2    0[BANK0 ] int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		_PWM
;;		_pwm_c
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\PWM with DC motor\program.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l1844:	
;program.c: 6: TRISA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7
	line	7
	
l1846:	
;program.c: 7: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	8
;program.c: 8: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l1848
	line	9
;program.c: 9: while(1){
	
l565:	
	line	11
	
l1848:	
;program.c: 10: int ADVAL,val;
;program.c: 11: ADCON0=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	12
	
l1850:	
;program.c: 12: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	13
	
l1852:	
;program.c: 13: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	14
;program.c: 14: while(GODONE==1);
	goto	l566
	
l567:	
	
l566:	
	btfsc	(250/8),(250)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l566
u2310:
	goto	l1854
	
l568:	
	line	15
	
l1854:	
;program.c: 15: ADVAL=ADRESL|(ADRESH<<8);
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+1
u2325:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u2325
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@ADVAL)
	movf	1+(??_main+0)+0,w
	movwf	1+(main@ADVAL)
	line	16
;program.c: 16: val=ADRESL|(ADRESH<<8);
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+1
u2335:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u2335
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@val)
	movf	1+(??_main+0)+0,w
	movwf	1+(main@val)
	line	17
	
l1856:	
;program.c: 17: PWM(ADVAL/4);
	movlw	low(04h)
	movwf	(?___awdiv)
	movlw	high(04h)
	movwf	((?___awdiv))+1
	movf	(main@ADVAL+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@ADVAL),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(?_PWM+1)
	addwf	(?_PWM+1)
	movf	(0+(?___awdiv)),w
	clrf	(?_PWM)
	addwf	(?_PWM)

	fcall	_PWM
	line	18
	
l1858:	
;program.c: 18: pwm_c(val/2);
	movlw	low(02h)
	movwf	(?___awdiv)
	movlw	high(02h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(?_pwm_c+1)
	addwf	(?_pwm_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(?_pwm_c)
	addwf	(?_pwm_c)

	fcall	_pwm_c
	line	19
;program.c: 19: if(ADVAL>500){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@ADVAL+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(01F5h)
	subwf	(main@ADVAL),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l1862
u2340:
	line	20
	
l1860:	
;program.c: 20: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	21
;program.c: 21: RC3=0;}
	bcf	(59/8),(59)&7
	goto	l1862
	
l569:	
	line	22
	
l1862:	
;program.c: 22: if(val>500){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(01F5h)
	subwf	(main@val),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1866
u2350:
	line	23
	
l1864:	
;program.c: 23: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	24
;program.c: 24: RC5=1;}
	bsf	(61/8),(61)&7
	goto	l1866
	
l570:	
	line	25
	
l1866:	
;program.c: 25: if(ADVAL<500){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@ADVAL+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(01F4h)
	subwf	(main@ADVAL),w
u2365:

	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l1870
u2360:
	line	26
	
l1868:	
;program.c: 26: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	27
;program.c: 27: RC3=1;}
	bsf	(59/8),(59)&7
	goto	l1870
	
l571:	
	line	28
	
l1870:	
;program.c: 28: if(val<500){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(01F4h)
	subwf	(main@val),w
u2375:

	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l1874
u2370:
	line	29
	
l1872:	
;program.c: 29: RC4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	30
;program.c: 30: RC5=0;}
	bcf	(61/8),(61)&7
	goto	l1874
	
l572:	
	line	31
	
l1874:	
;program.c: 31: _delay((unsigned long)((10)*(20000000/4000.0)));}}
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2387:
	decfsz	((??_main+0)+0),f
	goto	u2387
	decfsz	((??_main+0)+0+1),f
	goto	u2387
	clrwdt
opt asmopt_on

	goto	l1848
	
l573:	
	line	9
	goto	l1848
	
l574:	
	line	31
	
l575:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awdiv
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text120
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1806:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1808:	
	btfss	(___awdiv@divisor+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l1812
u2210:
	line	11
	
l1810:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1812
	line	13
	
l730:	
	line	14
	
l1812:	
	btfss	(___awdiv@dividend+1),7
	goto	u2221
	goto	u2220
u2221:
	goto	l731
u2220:
	line	15
	
l1814:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1816:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l731:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l1836
u2230:
	line	20
	
l1818:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1824
	
l734:	
	line	22
	
l1820:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	23
	
l1822:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1824
	line	24
	
l733:	
	line	21
	
l1824:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1820
u2250:
	goto	l1826
	
l735:	
	goto	l1826
	line	25
	
l736:	
	line	26
	
l1826:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2265
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1832
u2270:
	line	28
	
l1828:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1830:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1832
	line	30
	
l737:	
	line	31
	
l1832:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	32
	
l1834:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l1826
u2290:
	goto	l1836
	
l738:	
	goto	l1836
	line	33
	
l732:	
	line	34
	
l1836:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2300
	goto	l1840
u2300:
	line	35
	
l1838:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1840
	
l739:	
	line	36
	
l1840:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l740
	
l1842:	
	line	37
	
l740:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_pwm_c
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _pwm_c *****************
;; Defined at:
;;		line 39 in file "C:\PIC16F877A Demo Concepts\PWM with DC motor\program.c"
;; Parameters:    Size  Location     Type
;;  dut             2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121
	file	"C:\PIC16F877A Demo Concepts\PWM with DC motor\program.c"
	line	39
	global	__size_of_pwm_c
	__size_of_pwm_c	equ	__end_of_pwm_c-_pwm_c
	
_pwm_c:	
	opt	stack 7
; Regs used in _pwm_c: [wreg]
	line	40
	
l1804:	
;program.c: 40: T2CON=0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	41
;program.c: 41: PR2=125;
	movlw	(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	42
;program.c: 42: CCPR2L=dut;
	movf	(pwm_c@dut),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	43
;program.c: 43: CCP2CON=0x0C;}
	movlw	(0Ch)
	movwf	(29)	;volatile
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_c
	__end_of_pwm_c:
;; =============== function _pwm_c ends ============

	signat	_pwm_c,4216
	global	_PWM
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _PWM *****************
;; Defined at:
;;		line 33 in file "C:\PIC16F877A Demo Concepts\PWM with DC motor\program.c"
;; Parameters:    Size  Location     Type
;;  duty            2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text122
	file	"C:\PIC16F877A Demo Concepts\PWM with DC motor\program.c"
	line	33
	global	__size_of_PWM
	__size_of_PWM	equ	__end_of_PWM-_PWM
	
_PWM:	
	opt	stack 7
; Regs used in _PWM: [wreg]
	line	34
	
l1802:	
;program.c: 34: T2CON=0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	35
;program.c: 35: PR2=36;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	36
;program.c: 36: CCPR1L=duty;
	movf	(PWM@duty),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	37
;program.c: 37: CCP1CON=0x0C;}
	movlw	(0Ch)
	movwf	(23)	;volatile
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_PWM
	__end_of_PWM:
;; =============== function _PWM ends ============

	signat	_PWM,4216
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
