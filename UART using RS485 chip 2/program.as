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
	FNCALL	_main,_print
	FNCALL	_main,_waiting
	FNCALL	_main,_dis
	FNCALL	_print,_dis
	FNROOT	_main
	global	_PORTB
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RCIF
_RCIF	set	101
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_RW
_RW	set	1186
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	88	;'X'
	retlw	0
psect	strings
	
STR_2:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
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
	global	?_waiting
?_waiting:	; 0 bytes @ 0x0
	global	??_waiting
??_waiting:	; 0 bytes @ 0x0
	global	?_dis
?_dis:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	waiting@data
waiting@data:	; 1 bytes @ 0x0
	global	dis@dat
dis@dat:	; 2 bytes @ 0x0
	ds	2
	global	??_dis
??_dis:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	ds	2
	global	?_print
?_print:	; 0 bytes @ 0x4
	global	print@a
print@a:	; 2 bytes @ 0x4
	ds	2
	global	??_print
??_print:	; 0 bytes @ 0x6
	ds	2
	global	print@name
print@name:	; 1 bytes @ 0x8
	ds	1
	global	print@i
print@i:	; 2 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	3
;;Data sizes: Strings 18, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; print@name	PTR unsigned char  size(1) Largest target is 10
;;		 -> STR_2(CODE[8]), STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_print
;;   _print->_dis
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0     120
;;                                             11 COMMON     3     3      0
;;                                _cmd
;;                              _print
;;                            _waiting
;;                                _dis
;; ---------------------------------------------------------------------------------
;; (1) _print                                                7     5      2      75
;;                                              4 COMMON     7     5      2
;;                                _dis
;; ---------------------------------------------------------------------------------
;; (1) _dis                                                  4     2      2      15
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  3     3      0      15
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _waiting                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _print
;;     _dis
;;   _waiting
;;   _dis
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
;;STACK                0      0       2       2        0.0%
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
;;		line 11 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
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
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_cmd
;;		_print
;;		_waiting
;;		_dis
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l1784:	
;program.c: 12: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	13
	
l1786:	
;program.c: 13: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	14
	
l1788:	
;program.c: 14: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	15
	
l1790:	
;program.c: 15: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	16
	
l1792:	
;program.c: 16: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	17
	
l1794:	
;program.c: 17: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	18
	
l1796:	
;program.c: 18: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	19
	
l1798:	
;program.c: 19: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	20
	
l1800:	
;program.c: 20: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	21
	
l1802:	
;program.c: 21: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	22
	
l1804:	
;program.c: 22: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	23
	
l1806:	
;program.c: 23: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	line	24
	
l1808:	
;program.c: 24: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	25
	
l1810:	
;program.c: 25: RD1=1;
	bsf	(65/8),(65)&7
	line	26
	
l1812:	
;program.c: 26: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	27
	
l1814:	
;program.c: 27: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	28
	
l1816:	
;program.c: 28: SPBRG=64;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	goto	l1818
	line	29
;program.c: 29: while(1){
	
l569:	
	line	30
	
l1818:	
;program.c: 30: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	31
	
l1820:	
;program.c: 31: print("CHIP 1 RX",9);
	movlw	low(09h)
	movwf	(?_print)
	movlw	high(09h)
	movwf	((?_print))+1
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_print
	line	32
	
l1822:	
;program.c: 32: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	33
	
l1824:	
;program.c: 33: _delay((unsigned long)((3000)*(10000000/4000.0)));
	opt asmopt_off
movlw  38
movwf	((??_main+0)+0+2),f
movlw	232
movwf	((??_main+0)+0+1),f
	movlw	62
movwf	((??_main+0)+0),f
u2187:
	decfsz	((??_main+0)+0),f
	goto	u2187
	decfsz	((??_main+0)+0+1),f
	goto	u2187
	decfsz	((??_main+0)+0+2),f
	goto	u2187
	nop2
opt asmopt_on

	line	34
	
l1826:	
;program.c: 34: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	35
	
l1828:	
;program.c: 35: waiting('1');
	movlw	(031h)
	fcall	_waiting
	line	36
	
l1830:	
;program.c: 36: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	37
;program.c: 37: while(RCIF==0);
	goto	l570
	
l571:	
	
l570:	
	btfss	(101/8),(101)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l570
u2170:
	
l572:	
	line	38
;program.c: 38: RCIF=0;
	bcf	(101/8),(101)&7
	line	39
	
l1832:	
;program.c: 39: dis(RCREG);
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_dis)
	movf	1+(??_main+0)+0,w
	movwf	(?_dis+1)
	fcall	_dis
	line	40
;program.c: 40: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	41
	
l1834:	
;program.c: 41: print("RECIVED",7);
	movlw	low(07h)
	movwf	(?_print)
	movlw	high(07h)
	movwf	((?_print))+1
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_print
	line	42
	
l1836:	
;program.c: 42: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	43
	
l1838:	
;program.c: 43: _delay((unsigned long)((3000)*(10000000/4000.0)));
	opt asmopt_off
movlw  38
movwf	((??_main+0)+0+2),f
movlw	232
movwf	((??_main+0)+0+1),f
	movlw	62
movwf	((??_main+0)+0),f
u2197:
	decfsz	((??_main+0)+0),f
	goto	u2197
	decfsz	((??_main+0)+0+1),f
	goto	u2197
	decfsz	((??_main+0)+0+2),f
	goto	u2197
	nop2
opt asmopt_on

	line	44
	
l1840:	
;program.c: 44: cmd(0x01);}}
	movlw	(01h)
	fcall	_cmd
	goto	l1818
	
l573:	
	line	29
	goto	l1818
	
l574:	
	line	44
	
l575:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_print
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _print *****************
;; Defined at:
;;		line 62 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
;; Parameters:    Size  Location     Type
;;  name            1    wreg     PTR unsigned char 
;;		 -> STR_2(8), STR_1(10), 
;;  a               2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  name            1    8[COMMON] PTR unsigned char 
;;		 -> STR_2(8), STR_1(10), 
;;  i               2    9[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_dis
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
	line	62
	global	__size_of_print
	__size_of_print	equ	__end_of_print-_print
	
_print:	
	opt	stack 6
; Regs used in _print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print@name stored from wreg
	line	64
	movwf	(print@name)
	
l1776:	
;program.c: 63: int i;
;program.c: 64: for (i=0;i<a;i++){
	movlw	low(0)
	movwf	(print@i)
	movlw	high(0)
	movwf	((print@i))+1
	goto	l1782
	
l585:	
	line	65
	
l1778:	
;program.c: 65: dis(name[i]);}}
	movf	(print@i),w
	addwf	(print@name),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_print+0)+0
	clrf	(??_print+0)+0+1
	movf	0+(??_print+0)+0,w
	movwf	(?_dis)
	movf	1+(??_print+0)+0,w
	movwf	(?_dis+1)
	fcall	_dis
	line	64
	
l1780:	
	movlw	low(01h)
	addwf	(print@i),f
	skipnc
	incf	(print@i+1),f
	movlw	high(01h)
	addwf	(print@i+1),f
	goto	l1782
	
l584:	
	
l1782:	
	movf	(print@i+1),w
	xorlw	80h
	movwf	(??_print+0)+0
	movf	(print@a+1),w
	xorlw	80h
	subwf	(??_print+0)+0,w
	skipz
	goto	u2165
	movf	(print@a),w
	subwf	(print@i),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1778
u2160:
	goto	l587
	
l586:	
	line	65
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_print
	__end_of_print:
;; =============== function _print ends ============

	signat	_print,8312
	global	_dis
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _dis *****************
;; Defined at:
;;		line 54 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
;; Parameters:    Size  Location     Type
;;  dat             2    0[COMMON] int 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_print
;; This function uses a non-reentrant model
;;
psect	text92
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
	line	54
	global	__size_of_dis
	__size_of_dis	equ	__end_of_dis-_dis
	
_dis:	
	opt	stack 7
; Regs used in _dis: [wreg]
	line	55
	
l1766:	
;program.c: 55: PORTB=dat;
	movf	(dis@dat),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	56
	
l1768:	
;program.c: 56: RC0=1;
	bsf	(56/8),(56)&7
	line	57
	
l1770:	
;program.c: 57: RW=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1186/8)^080h,(1186)&7
	line	58
	
l1772:	
;program.c: 58: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	59
;program.c: 59: _delay((unsigned long)((2)*(10000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_dis+0)+0+1),f
	movlw	125
movwf	((??_dis+0)+0),f
u2207:
	decfsz	((??_dis+0)+0),f
	goto	u2207
	decfsz	((??_dis+0)+0+1),f
	goto	u2207
opt asmopt_on

	line	60
	
l1774:	
;program.c: 60: RC1=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_dis
	__end_of_dis:
;; =============== function _dis ends ============

	signat	_dis,4216
	global	_cmd
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _cmd *****************
;; Defined at:
;;		line 46 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[COMMON] unsigned char 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text93
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
	line	46
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	47
	
l1756:	
;program.c: 47: PORTB=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	48
	
l1758:	
;program.c: 48: RC0=0;
	bcf	(56/8),(56)&7
	line	49
	
l1760:	
;program.c: 49: RW=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1186/8)^080h,(1186)&7
	line	50
	
l1762:	
;program.c: 50: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	51
;program.c: 51: _delay((unsigned long)((2)*(10000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_cmd+0)+0+1),f
	movlw	125
movwf	((??_cmd+0)+0),f
u2217:
	decfsz	((??_cmd+0)+0),f
	goto	u2217
	decfsz	((??_cmd+0)+0+1),f
	goto	u2217
opt asmopt_on

	line	52
	
l1764:	
;program.c: 52: RC1=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_waiting
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _waiting *****************
;; Defined at:
;;		line 67 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text94
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 2\program.c"
	line	67
	global	__size_of_waiting
	__size_of_waiting	equ	__end_of_waiting-_waiting
	
_waiting:	
	opt	stack 7
; Regs used in _waiting: [wreg]
;waiting@data stored from wreg
	line	69
	movwf	(waiting@data)
	line	68
;program.c: 68: do{
	
l590:	
	line	69
;program.c: 69: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	70
;program.c: 70: RD1=1;
	bsf	(65/8),(65)&7
	line	71
;program.c: 71: while(RCIF==0);
	goto	l591
	
l592:	
	
l591:	
	btfss	(101/8),(101)&7
	goto	u11
	goto	u10
u11:
	goto	l591
u10:
	
l593:	
	line	72
;program.c: 72: RCIF=0;}
	bcf	(101/8),(101)&7
	line	73
	
l968:	
;program.c: 73: while(RCREG!=data);
	movf	(26),w	;volatile
	xorwf	(waiting@data),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l590
u20:
	
l594:	
	line	74
;program.c: 74: RD0=0;
	bcf	(64/8),(64)&7
	line	75
;program.c: 75: RD1=0;}
	bcf	(65/8),(65)&7
	
l595:	
	return
	opt stack 0
GLOBAL	__end_of_waiting
	__end_of_waiting:
;; =============== function _waiting ends ============

	signat	_waiting,4216
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
