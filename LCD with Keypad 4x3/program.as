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
# 3 "D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
	dw 0X3F3A ;#
	FNCALL	_main,_cmd
	FNCALL	_main,_dat
	FNROOT	_main
	global	_PORTB
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	global	??_cmd
??_cmd:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	??_dat
??_dat:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	3
	global	cmd@a
cmd@a:	; 1 bytes @ 0x3
	global	dat@a
dat@a:	; 1 bytes @ 0x3
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_cmd
;;   _main->_dat
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      30
;;                                _cmd
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (1) _dat                                                  4     4      0      15
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  4     4      0      15
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _dat
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 19 in file "D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_dat
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l1797:	
;program.c: 20: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	21
;program.c: 21: PORTC=0x00;
	clrf	(7)	;volatile
	line	22
;program.c: 22: PORTD=0x00;
	clrf	(8)	;volatile
	line	23
	
l1799:	
;program.c: 23: TRISB=0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	24
	
l1801:	
;program.c: 24: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	25
	
l1803:	
;program.c: 25: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	26
	
l1805:	
;program.c: 26: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	27
	
l1807:	
;program.c: 27: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	28
	
l1809:	
;program.c: 28: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	29
	
l1811:	
;program.c: 29: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	30
	
l1813:	
;program.c: 30: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	31
	
l1815:	
;program.c: 31: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	32
	
l1817:	
;program.c: 32: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l1819
	line	33
;program.c: 33: while(1){
	
l565:	
	line	34
	
l1819:	
;program.c: 34: RB0=1;RB1=0;RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l1821:	
	bcf	(49/8),(49)&7
	
l1823:	
	bcf	(50/8),(50)&7
	line	35
	
l1825:	
;program.c: 35: if(RB4==1){
	btfss	(52/8),(52)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l566
u2140:
	line	36
	
l1827:	
;program.c: 36: dat('1');
	movlw	(031h)
	fcall	_dat
	line	37
;program.c: 37: while(RB4==1);
	goto	l567
	
l568:	
	
l567:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l567
u2150:
	goto	l566
	
l569:	
	line	38
	
l566:	
	line	39
;program.c: 38: }
;program.c: 39: if(RB5==1){
	btfss	(53/8),(53)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l570
u2160:
	line	40
	
l1829:	
;program.c: 40: dat('4');
	movlw	(034h)
	fcall	_dat
	line	41
;program.c: 41: while(RB5==1);
	goto	l571
	
l572:	
	
l571:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l571
u2170:
	goto	l570
	
l573:	
	line	42
	
l570:	
	line	43
;program.c: 42: }
;program.c: 43: if(RB6==1){
	btfss	(54/8),(54)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l574
u2180:
	line	44
	
l1831:	
;program.c: 44: dat('7');
	movlw	(037h)
	fcall	_dat
	line	45
;program.c: 45: while(RB6==3);
	goto	l574
	
l576:	
	goto	l574
	
l575:	
	goto	l574
	
l577:	
	line	46
	
l574:	
	line	47
;program.c: 46: }
;program.c: 47: if(RB7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l578
u2190:
	line	48
	
l1833:	
;program.c: 48: dat('*');
	movlw	(02Ah)
	fcall	_dat
	line	49
;program.c: 49: while(RB7==1);
	goto	l579
	
l580:	
	
l579:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l579
u2200:
	goto	l578
	
l581:	
	line	50
	
l578:	
	line	51
;program.c: 50: }
;program.c: 51: RB1=1;RB0=0;RB2=0;
	bsf	(49/8),(49)&7
	bcf	(48/8),(48)&7
	bcf	(50/8),(50)&7
	line	52
;program.c: 52: if(RB4==1){
	btfss	(52/8),(52)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l582
u2210:
	line	53
	
l1835:	
;program.c: 53: dat('2');
	movlw	(032h)
	fcall	_dat
	line	54
;program.c: 54: while(RB4==1);
	goto	l583
	
l584:	
	
l583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l583
u2220:
	goto	l582
	
l585:	
	line	55
	
l582:	
	line	56
;program.c: 55: }
;program.c: 56: if(RB5==1){
	btfss	(53/8),(53)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l586
u2230:
	line	57
	
l1837:	
;program.c: 57: dat('5');
	movlw	(035h)
	fcall	_dat
	line	58
;program.c: 58: while(RB5==1);
	goto	l587
	
l588:	
	
l587:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l587
u2240:
	goto	l586
	
l589:	
	line	59
	
l586:	
	line	60
;program.c: 59: }
;program.c: 60: if(RB6==1){
	btfss	(54/8),(54)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l590
u2250:
	line	61
	
l1839:	
;program.c: 61: dat('8');
	movlw	(038h)
	fcall	_dat
	line	62
;program.c: 62: while(RB6==1);
	goto	l591
	
l592:	
	
l591:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l591
u2260:
	goto	l590
	
l593:	
	line	63
	
l590:	
	line	64
;program.c: 63: }
;program.c: 64: if(RB7==1){
	btfss	(55/8),(55)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l594
u2270:
	line	65
	
l1841:	
;program.c: 65: dat('0');
	movlw	(030h)
	fcall	_dat
	line	66
;program.c: 66: while(RB7==1);
	goto	l595
	
l596:	
	
l595:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l595
u2280:
	goto	l594
	
l597:	
	line	67
	
l594:	
	line	68
;program.c: 67: }
;program.c: 68: RB0=0;RB1=0;RB2=1;
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	bsf	(50/8),(50)&7
	line	69
;program.c: 69: if(RB4==1){
	btfss	(52/8),(52)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l598
u2290:
	line	70
	
l1843:	
;program.c: 70: dat('3');
	movlw	(033h)
	fcall	_dat
	line	71
;program.c: 71: while(RB4==1);
	goto	l599
	
l600:	
	
l599:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l599
u2300:
	goto	l598
	
l601:	
	line	72
	
l598:	
	line	73
;program.c: 72: }
;program.c: 73: if(RB5==1){
	btfss	(53/8),(53)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l602
u2310:
	line	74
	
l1845:	
;program.c: 74: dat('6');
	movlw	(036h)
	fcall	_dat
	line	75
;program.c: 75: while(RB5==1);
	goto	l603
	
l604:	
	
l603:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l603
u2320:
	goto	l602
	
l605:	
	line	76
	
l602:	
	line	77
;program.c: 76: }
;program.c: 77: if(RB6==1){
	btfss	(54/8),(54)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l606
u2330:
	line	78
	
l1847:	
;program.c: 78: dat('9');
	movlw	(039h)
	fcall	_dat
	line	79
;program.c: 79: while(RB6==1);
	goto	l607
	
l608:	
	
l607:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l607
u2340:
	goto	l606
	
l609:	
	line	80
	
l606:	
	line	81
;program.c: 80: }
;program.c: 81: if(RB7==1){
	btfss	(55/8),(55)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1819
u2350:
	line	82
	
l1849:	
;program.c: 82: dat('#');
	movlw	(023h)
	fcall	_dat
	line	83
;program.c: 83: while(RB7==1);}}}
	goto	l611
	
l612:	
	
l611:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l611
u2360:
	goto	l1819
	
l613:	
	goto	l1819
	
l610:	
	goto	l1819
	
l614:	
	line	33
	goto	l1819
	
l615:	
	line	83
	
l616:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_dat
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _dat *****************
;; Defined at:
;;		line 91 in file "D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text73
	file	"D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
	line	91
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 7
; Regs used in _dat: [wreg]
;dat@a stored from wreg
	movwf	(dat@a)
	line	92
	
l1787:	
;program.c: 92: PORTD=a;
	movf	(dat@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	93
	
l1789:	
;program.c: 93: RC0=1;
	bsf	(56/8),(56)&7
	line	94
	
l1791:	
;program.c: 94: RC1=0;
	bcf	(57/8),(57)&7
	line	95
	
l1793:	
;program.c: 95: RC2=1;
	bsf	(58/8),(58)&7
	line	96
;program.c: 96: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_dat+0)+0+2),f
movlw	136
movwf	((??_dat+0)+0+1),f
	movlw	86
movwf	((??_dat+0)+0),f
u2377:
	decfsz	((??_dat+0)+0),f
	goto	u2377
	decfsz	((??_dat+0)+0+1),f
	goto	u2377
	decfsz	((??_dat+0)+0+2),f
	goto	u2377
opt asmopt_on

	line	97
	
l1795:	
;program.c: 97: RC2=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l622:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _cmd *****************
;; Defined at:
;;		line 84 in file "D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text74
	file	"D:\PIC16F877A Concepts\LCD with Keypad 4x3\program.c"
	line	84
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	85
	
l1777:	
;program.c: 85: PORTD=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	86
	
l1779:	
;program.c: 86: RC0=0;
	bcf	(56/8),(56)&7
	line	87
	
l1781:	
;program.c: 87: RC1=0;
	bcf	(57/8),(57)&7
	line	88
	
l1783:	
;program.c: 88: RC2=1;
	bsf	(58/8),(58)&7
	line	89
;program.c: 89: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_cmd+0)+0+2),f
movlw	136
movwf	((??_cmd+0)+0+1),f
	movlw	86
movwf	((??_cmd+0)+0),f
u2387:
	decfsz	((??_cmd+0)+0),f
	goto	u2387
	decfsz	((??_cmd+0)+0+1),f
	goto	u2387
	decfsz	((??_cmd+0)+0+2),f
	goto	u2387
opt asmopt_on

	line	90
	
l1785:	
;program.c: 90: RC2=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l619:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
