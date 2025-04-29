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
	FNCALL	_main,_halfwave
	FNCALL	_main,_delay
	FNCALL	_main,_fullwave
	FNCALL	_main,_wave
	FNCALL	_wave,_delay
	FNCALL	_fullwave,_delay
	FNCALL	_halfwave,_delay
	FNROOT	_main
	global	halfwave@F517
	global	fullwave@F520
	global	wave@F523
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	34

;initializer for halfwave@F517
	retlw	0
	retlw	08h
	retlw	0Ch
	retlw	04h
	retlw	06h
	retlw	02h
	retlw	03h
	retlw	01h
	retlw	09h
	retlw	0
	line	40

;initializer for fullwave@F520
	retlw	0
	retlw	0Ch
	retlw	06h
	retlw	03h
	retlw	09h
	retlw	0
	line	46

;initializer for wave@F523
	retlw	0
	retlw	08h
	retlw	04h
	retlw	02h
	retlw	01h
	retlw	0
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD4
_RD4	set	68
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"program.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	34
halfwave@F517:
       ds      10

psect	dataBANK0
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	40
fullwave@F520:
       ds      6

psect	dataBANK0
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	46
wave@F523:
       ds      6

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
	global	?_halfwave
?_halfwave:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_fullwave
?_fullwave:	; 0 bytes @ 0x0
	global	?_wave
?_wave:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_halfwave
??_halfwave:	; 0 bytes @ 0x2
	global	??_fullwave
??_fullwave:	; 0 bytes @ 0x2
	global	??_wave
??_wave:	; 0 bytes @ 0x2
	global	fullwave@a
fullwave@a:	; 6 bytes @ 0x2
	global	wave@a
wave@a:	; 6 bytes @ 0x2
	ds	6
	global	fullwave@i
fullwave@i:	; 2 bytes @ 0x8
	global	wave@i
wave@i:	; 2 bytes @ 0x8
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	halfwave@a
halfwave@a:	; 10 bytes @ 0x0
	ds	10
	global	halfwave@i
halfwave@i:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 0, constant 0, data 22, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     12      34
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_fullwave
;;   _main->_wave
;;   _wave->_delay
;;   _fullwave->_delay
;;   _halfwave->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_halfwave
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
;; (0) _main                                                 0     0      0     460
;;                           _halfwave
;;                              _delay
;;                           _fullwave
;;                               _wave
;; ---------------------------------------------------------------------------------
;; (1) _wave                                                 8     8      0     138
;;                                              2 COMMON     8     8      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _fullwave                                             8     8      0     138
;;                                              2 COMMON     8     8      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _halfwave                                            16    16      0     138
;;                                              2 COMMON     4     4      0
;;                                              0 BANK0     12    12      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _halfwave
;;     _delay
;;   _delay
;;   _fullwave
;;     _delay
;;   _wave
;;     _delay
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
;;DATA                 0      0      2E      12        0.0%
;;ABS                  0      0      2C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      C      22       5       42.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "D:\PIC16F877A Concepts\Stepper with keypad\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_halfwave
;;		_delay
;;		_fullwave
;;		_wave
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l1906:	
;program.c: 15: TRISD=0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	16
	
l1908:	
;program.c: 16: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	17
	
l1910:	
;program.c: 17: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	18
	
l1912:	
;program.c: 18: PORTC=0x00;
	clrf	(7)	;volatile
	goto	l1914
	line	19
;program.c: 19: while(1){
	
l567:	
	line	20
	
l1914:	
;program.c: 20: RD0=1;RD1=0;RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l1916:	
	bcf	(65/8),(65)&7
	
l1918:	
	bcf	(66/8),(66)&7
	line	21
	
l1920:	
;program.c: 21: if(RD4==1){
	btfss	(68/8),(68)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1926
u2350:
	line	22
	
l1922:	
;program.c: 22: halfwave();
	fcall	_halfwave
	line	23
	
l1924:	
;program.c: 23: delay();}
	fcall	_delay
	goto	l1926
	
l568:	
	line	24
	
l1926:	
;program.c: 24: RD0=0;RD1=1;RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	
l1928:	
	bsf	(65/8),(65)&7
	
l1930:	
	bcf	(66/8),(66)&7
	line	25
	
l1932:	
;program.c: 25: if(RD4==1){
	btfss	(68/8),(68)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l1938
u2360:
	line	26
	
l1934:	
;program.c: 26: fullwave();
	fcall	_fullwave
	line	27
	
l1936:	
;program.c: 27: delay();}
	fcall	_delay
	goto	l1938
	
l569:	
	line	28
	
l1938:	
;program.c: 28: RD0=0;RD1=0;RD2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	
l1940:	
	bcf	(65/8),(65)&7
	
l1942:	
	bsf	(66/8),(66)&7
	line	29
	
l1944:	
;program.c: 29: if(RD4==1){
	btfss	(68/8),(68)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l1914
u2370:
	line	30
	
l1946:	
;program.c: 30: wave();
	fcall	_wave
	line	31
	
l1948:	
;program.c: 31: delay();}}}
	fcall	_delay
	goto	l1914
	
l570:	
	goto	l1914
	
l571:	
	line	19
	goto	l1914
	
l572:	
	line	31
	
l573:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_wave
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _wave *****************
;; Defined at:
;;		line 44 in file "D:\PIC16F877A Concepts\Stepper with keypad\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               6    2[COMMON] unsigned char [6]
;;  i               2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         8       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text145
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	44
	global	__size_of_wave
	__size_of_wave	equ	__end_of_wave-_wave
	
_wave:	
	opt	stack 6
; Regs used in _wave: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	46
	
l1890:	
;program.c: 45: unsigned int i;
;program.c: 46: unsigned char a[6]={0x00,0x08,0x04,0x02,0x01};
	movlw	(wave@a)&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(wave@F523),w
	movwf	indf
	incf	fsr0,f
	movf	(wave@F523)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(wave@F523)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(wave@F523)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(wave@F523)+4,w
	movwf	indf
	incf	fsr0,f
	movf	(wave@F523)+5,w
	movwf	indf
	line	47
	
l1892:	
;program.c: 47: for(i=0;i<6;i++){
	movlw	low(0)
	movwf	(wave@i)
	movlw	high(0)
	movwf	((wave@i))+1
	
l1894:	
	movlw	high(06h)
	subwf	(wave@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(wave@i),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l1898
u2330:
	goto	l594
	
l1896:	
	goto	l594
	
l592:	
	line	48
	
l1898:	
;program.c: 48: PORTC=a[i];
	movf	(wave@i),w
	addlw	wave@a&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	49
	
l1900:	
;program.c: 49: delay();}}
	fcall	_delay
	line	47
	
l1902:	
	movlw	low(01h)
	addwf	(wave@i),f
	skipnc
	incf	(wave@i+1),f
	movlw	high(01h)
	addwf	(wave@i+1),f
	
l1904:	
	movlw	high(06h)
	subwf	(wave@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(wave@i),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l1898
u2340:
	goto	l594
	
l593:	
	line	49
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_wave
	__end_of_wave:
;; =============== function _wave ends ============

	signat	_wave,88
	global	_fullwave
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function _fullwave *****************
;; Defined at:
;;		line 38 in file "D:\PIC16F877A Concepts\Stepper with keypad\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               6    2[COMMON] unsigned char [6]
;;  i               2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         8       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text146
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	38
	global	__size_of_fullwave
	__size_of_fullwave	equ	__end_of_fullwave-_fullwave
	
_fullwave:	
	opt	stack 6
; Regs used in _fullwave: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	40
	
l1874:	
;program.c: 39: unsigned int i;
;program.c: 40: unsigned char a[6]={0x00,0x0C,0x06,0x03,0x09};
	movlw	(fullwave@a)&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(fullwave@F520),w
	movwf	indf
	incf	fsr0,f
	movf	(fullwave@F520)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(fullwave@F520)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(fullwave@F520)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(fullwave@F520)+4,w
	movwf	indf
	incf	fsr0,f
	movf	(fullwave@F520)+5,w
	movwf	indf
	line	41
	
l1876:	
;program.c: 41: for(i=0;i<6;i++){
	movlw	low(0)
	movwf	(fullwave@i)
	movlw	high(0)
	movwf	((fullwave@i))+1
	
l1878:	
	movlw	high(06h)
	subwf	(fullwave@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(fullwave@i),w
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l1882
u2310:
	goto	l587
	
l1880:	
	goto	l587
	
l585:	
	line	42
	
l1882:	
;program.c: 42: PORTC=a[i];
	movf	(fullwave@i),w
	addlw	fullwave@a&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	43
	
l1884:	
;program.c: 43: delay();}}
	fcall	_delay
	line	41
	
l1886:	
	movlw	low(01h)
	addwf	(fullwave@i),f
	skipnc
	incf	(fullwave@i+1),f
	movlw	high(01h)
	addwf	(fullwave@i+1),f
	
l1888:	
	movlw	high(06h)
	subwf	(fullwave@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(fullwave@i),w
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l1882
u2320:
	goto	l587
	
l586:	
	line	43
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_fullwave
	__end_of_fullwave:
;; =============== function _fullwave ends ============

	signat	_fullwave,88
	global	_halfwave
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _halfwave *****************
;; Defined at:
;;		line 32 in file "D:\PIC16F877A Concepts\Stepper with keypad\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a              10    0[BANK0 ] unsigned char [10]
;;  i               2   10[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      12       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text147
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	32
	global	__size_of_halfwave
	__size_of_halfwave	equ	__end_of_halfwave-_halfwave
	
_halfwave:	
	opt	stack 6
; Regs used in _halfwave: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	34
	
l1858:	
;program.c: 33: unsigned int i;
;program.c: 34: unsigned char a[10]={0x00,0x08,0x0C,0x04,0x06,0x02,0x03,0x01,0x09};
	movlw	(halfwave@a)&0ffh
	movwf	fsr0
	movlw	low(halfwave@F517)
	movwf	(??_halfwave+0)+0
	movf	fsr0,w
	movwf	((??_halfwave+0)+0+1)
	movlw	10
	movwf	((??_halfwave+0)+0+2)
u2280:
	movf	(??_halfwave+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_halfwave+0)+0+3)
	incf	(??_halfwave+0)+0,f
	movf	((??_halfwave+0)+0+1),w
	movwf	fsr0
	
	movf	((??_halfwave+0)+0+3),w
	movwf	indf
	incf	((??_halfwave+0)+0+1),f
	decfsz	((??_halfwave+0)+0+2),f
	goto	u2280
	line	35
	
l1860:	
;program.c: 35: for(i=0;i<10;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(halfwave@i)
	movlw	high(0)
	movwf	((halfwave@i))+1
	
l1862:	
	movlw	high(0Ah)
	subwf	(halfwave@i+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(halfwave@i),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l1866
u2290:
	goto	l580
	
l1864:	
	goto	l580
	
l578:	
	line	36
	
l1866:	
;program.c: 36: PORTC=a[i];
	movf	(halfwave@i),w
	addlw	halfwave@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	37
	
l1868:	
;program.c: 37: delay();}}
	fcall	_delay
	line	35
	
l1870:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(halfwave@i),f
	skipnc
	incf	(halfwave@i+1),f
	movlw	high(01h)
	addwf	(halfwave@i+1),f
	
l1872:	
	movlw	high(0Ah)
	subwf	(halfwave@i+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(halfwave@i),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l1866
u2300:
	goto	l580
	
l579:	
	line	37
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_halfwave
	__end_of_halfwave:
;; =============== function _halfwave ends ============

	signat	_halfwave,88
	global	_delay
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:

;; *************** function _delay *****************
;; Defined at:
;;		line 50 in file "D:\PIC16F877A Concepts\Stepper with keypad\program.c"
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
;;		_halfwave
;;		_fullwave
;;		_wave
;; This function uses a non-reentrant model
;;
psect	text148
	file	"D:\PIC16F877A Concepts\Stepper with keypad\program.c"
	line	50
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	52
	
l1852:	
;program.c: 51: unsigned int i;
;program.c: 52: for(i=0;i<10000;i++);}
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
	goto	u2261
	goto	u2260
u2261:
	goto	l1856
u2260:
	goto	l599
	
l1854:	
	goto	l599
	
l597:	
	
l1856:	
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
	goto	u2271
	goto	u2270
u2271:
	goto	l1856
u2270:
	goto	l599
	
l598:	
	
l599:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
