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
	FNCALL	_main,_delay
	FNCALL	_main,_print
	FNCALL	_print,_dat
	FNCALL	_dat,_delay
	FNCALL	_cmd,_delay
	FNROOT	_main
	global	_PORTB
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
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
	
STR_3:	
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	70	;'F'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	50	;'2'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	0
psect	strings
	
STR_6:	
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	50	;'2'
	retlw	70	;'F'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	87	;'W'
	retlw	0
psect	strings
	
STR_5:	
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	50	;'2'
	retlw	70	;'F'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	87	;'W'
	retlw	0
psect	strings
	
STR_8:	
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	50	;'2'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	0
psect	strings
	
STR_9:	
	retlw	65	;'A'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_1:	
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	70	;'F'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	87	;'W'
	retlw	0
psect	strings
	
STR_4:	
	retlw	77	;'M'
	retlw	49	;'1'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	0
psect	strings
STR_7	equ	STR_5+3
STR_2	equ	STR_8+3
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_cmd
??_cmd:	; 0 bytes @ 0x2
	global	??_dat
??_dat:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	global	dat@a
dat@a:	; 1 bytes @ 0x2
	ds	1
	global	?_print
?_print:	; 0 bytes @ 0x3
	global	print@a
print@a:	; 1 bytes @ 0x3
	ds	1
	global	??_print
??_print:	; 0 bytes @ 0x4
	ds	1
	global	print@name
print@name:	; 1 bytes @ 0x5
	ds	1
	global	print@i
print@i:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
;;Data sizes: Strings 66, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; print@name	PTR unsigned char  size(1) Largest target is 13
;;		 -> STR_9(CODE[8]), STR_8(CODE[9]), STR_7(CODE[7]), STR_6(CODE[13]), 
;;		 -> STR_5(CODE[10]), STR_4(CODE[6]), STR_3(CODE[13]), STR_2(CODE[6]), 
;;		 -> STR_1(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_print
;;   _print->_dat
;;   _dat->_delay
;;   _cmd->_delay
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     180
;;                                              8 COMMON     1     1      0
;;                                _cmd
;;                              _delay
;;                              _print
;; ---------------------------------------------------------------------------------
;; (1) _print                                                5     4      1     105
;;                                              3 COMMON     5     4      1
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (2) _dat                                                  1     1      0      45
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  1     1      0      45
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;     _delay
;;   _delay
;;   _print
;;     _dat
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
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
;;		line 20 in file "D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_cmd
;;		_delay
;;		_print
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	21
	
l1793:	
;program.c: 21: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	22
;program.c: 22: PORTD=0x00;
	clrf	(8)	;volatile
	line	23
;program.c: 23: PORTC=0x00;
	clrf	(7)	;volatile
	line	24
	
l1795:	
;program.c: 24: TRISD=0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	25
	
l1797:	
;program.c: 25: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	26
	
l1799:	
;program.c: 26: TRISB=0x00;
	clrf	(134)^080h	;volatile
	line	27
	
l1801:	
;program.c: 27: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	28
	
l1803:	
;program.c: 28: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	29
	
l1805:	
;program.c: 29: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	30
	
l1807:	
;program.c: 30: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	31
	
l1809:	
;program.c: 31: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	32
	
l1811:	
;program.c: 32: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	33
	
l1813:	
;program.c: 33: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l1815
	line	34
;program.c: 34: while(1){
	
l567:	
	line	35
	
l1815:	
;program.c: 35: RD2=1;RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	
l1817:	
	bcf	(65/8),(65)&7
	
l1819:	
	bcf	(64/8),(64)&7
	line	36
	
l1821:	
;program.c: 36: if(RD4==1){
	btfss	(68/8),(68)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1831
u2170:
	line	37
	
l1823:	
;program.c: 37: RC0=1;
	bsf	(56/8),(56)&7
	line	38
;program.c: 38: RC1=0;
	bcf	(57/8),(57)&7
	line	39
;program.c: 39: RC2=0;
	bcf	(58/8),(58)&7
	line	40
;program.c: 40: RC3=0;
	bcf	(59/8),(59)&7
	line	41
	
l1825:	
;program.c: 41: delay();
	fcall	_delay
	line	42
;program.c: 42: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	43
	
l1827:	
;program.c: 43: print("M1FORW",6);
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_print
	line	44
	
l1829:	
;program.c: 44: cmd(0xC0);}
	movlw	(0C0h)
	fcall	_cmd
	goto	l1831
	
l568:	
	line	45
	
l1831:	
;program.c: 45: if(RD5==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(69/8),(69)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l1841
u2180:
	line	46
	
l1833:	
;program.c: 46: RC0=0;
	bcf	(56/8),(56)&7
	line	47
;program.c: 47: RC1=0;
	bcf	(57/8),(57)&7
	line	48
;program.c: 48: RC2=0;
	bcf	(58/8),(58)&7
	line	49
;program.c: 49: RC3=1;
	bsf	(59/8),(59)&7
	line	50
	
l1835:	
;program.c: 50: delay();
	fcall	_delay
	line	51
;program.c: 51: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	52
	
l1837:	
;program.c: 52: print("M2REV",5);
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_print
	line	53
	
l1839:	
;program.c: 53: cmd(0xC0);}
	movlw	(0C0h)
	fcall	_cmd
	goto	l1841
	
l569:	
	line	54
	
l1841:	
;program.c: 54: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1851
u2190:
	line	55
	
l1843:	
;program.c: 55: RC0=1;
	bsf	(56/8),(56)&7
	line	56
;program.c: 56: RC1=0;
	bcf	(57/8),(57)&7
	line	57
;program.c: 57: RC2=0;
	bcf	(58/8),(58)&7
	line	58
;program.c: 58: RC3=1;
	bsf	(59/8),(59)&7
	line	59
	
l1845:	
;program.c: 59: delay();
	fcall	_delay
	line	60
;program.c: 60: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	61
	
l1847:	
;program.c: 61: print("M1FORW M2REV",12);
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_print
	line	62
	
l1849:	
;program.c: 62: cmd(0x0C);}
	movlw	(0Ch)
	fcall	_cmd
	goto	l1851
	
l570:	
	line	63
	
l1851:	
;program.c: 63: RD2=0;RD1=1;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	
l1853:	
	bsf	(65/8),(65)&7
	
l1855:	
	bcf	(64/8),(64)&7
	line	64
	
l1857:	
;program.c: 64: if(RD4==1){
	btfss	(68/8),(68)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1867
u2200:
	line	65
	
l1859:	
;program.c: 65: RC0=0;
	bcf	(56/8),(56)&7
	line	66
;program.c: 66: RC1=1;
	bsf	(57/8),(57)&7
	line	67
;program.c: 67: RC2=0;
	bcf	(58/8),(58)&7
	line	68
;program.c: 68: RC3=0;
	bcf	(59/8),(59)&7
	line	69
	
l1861:	
;program.c: 69: delay();
	fcall	_delay
	line	70
;program.c: 70: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	71
	
l1863:	
;program.c: 71: print("M1REV",5);
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_print
	line	72
	
l1865:	
;program.c: 72: cmd(0x0C);}
	movlw	(0Ch)
	fcall	_cmd
	goto	l1867
	
l571:	
	line	73
	
l1867:	
;program.c: 73: if(RD5==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(69/8),(69)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1879
u2210:
	line	74
	
l1869:	
;program.c: 74: RC0=1;
	bsf	(56/8),(56)&7
	line	75
;program.c: 75: RC1=0;
	bcf	(57/8),(57)&7
	line	76
;program.c: 76: RC2=1;
	bsf	(58/8),(58)&7
	line	77
;program.c: 77: RC3=0;
	bcf	(59/8),(59)&7
	line	78
	
l1871:	
;program.c: 78: delay();
	fcall	_delay
	line	79
;program.c: 79: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	80
	
l1873:	
;program.c: 80: print("M1 M2FORW",9);
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_print
	line	81
	
l1875:	
;program.c: 81: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	82
	
l1877:	
;program.c: 82: delay();}
	fcall	_delay
	goto	l1879
	
l572:	
	line	83
	
l1879:	
;program.c: 83: if( RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l1889
u2220:
	line	84
	
l1881:	
;program.c: 84: RC0=0;
	bcf	(56/8),(56)&7
	line	85
;program.c: 85: RC1=1;
	bsf	(57/8),(57)&7
	line	86
;program.c: 86: RC2=1;
	bsf	(58/8),(58)&7
	line	87
;program.c: 87: RC3=0;
	bcf	(59/8),(59)&7
	line	88
	
l1883:	
;program.c: 88: delay();
	fcall	_delay
	line	89
;program.c: 89: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	90
	
l1885:	
;program.c: 90: print("M1REV M2FORW",12);
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_print
	line	91
	
l1887:	
;program.c: 91: cmd(0x0C);}
	movlw	(0Ch)
	fcall	_cmd
	goto	l1889
	
l573:	
	line	92
	
l1889:	
;program.c: 92: RD2=0;RD1=0;RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	
l1891:	
	bcf	(65/8),(65)&7
	
l1893:	
	bsf	(64/8),(64)&7
	line	93
	
l1895:	
;program.c: 93: if(RD4==1){
	btfss	(68/8),(68)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l1905
u2230:
	line	94
	
l1897:	
;program.c: 94: RC0=0;
	bcf	(56/8),(56)&7
	line	95
;program.c: 95: RC1=0;
	bcf	(57/8),(57)&7
	line	96
;program.c: 96: RC2=1;
	bsf	(58/8),(58)&7
	line	97
;program.c: 97: RC3=0;
	bcf	(59/8),(59)&7
	line	98
	
l1899:	
;program.c: 98: delay();
	fcall	_delay
	line	99
;program.c: 99: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	100
	
l1901:	
;program.c: 100: print("M2FORW",6);
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_print
	line	101
	
l1903:	
;program.c: 101: cmd(0x0C);}
	movlw	(0Ch)
	fcall	_cmd
	goto	l1905
	
l574:	
	line	102
	
l1905:	
;program.c: 102: if(RD5==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(69/8),(69)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1915
u2240:
	line	103
	
l1907:	
;program.c: 103: RC0=0;
	bcf	(56/8),(56)&7
	line	104
;program.c: 104: RC1=1;
	bsf	(57/8),(57)&7
	line	105
;program.c: 105: RC2=0;
	bcf	(58/8),(58)&7
	line	106
;program.c: 106: RC3=1;
	bsf	(59/8),(59)&7
	line	107
	
l1909:	
;program.c: 107: delay();
	fcall	_delay
	line	108
;program.c: 108: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	109
	
l1911:	
;program.c: 109: print("M1 M2REV",8);
	movlw	(08h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_print
	line	110
	
l1913:	
;program.c: 110: cmd(0x0C);}
	movlw	(0Ch)
	fcall	_cmd
	goto	l1915
	
l575:	
	line	111
	
l1915:	
;program.c: 111: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1815
u2250:
	line	112
	
l1917:	
;program.c: 112: RC0=0;
	bcf	(56/8),(56)&7
	line	113
;program.c: 113: RC1=0;
	bcf	(57/8),(57)&7
	line	114
;program.c: 114: RC2=0;
	bcf	(58/8),(58)&7
	line	115
;program.c: 115: RC3=0;
	bcf	(59/8),(59)&7
	line	116
	
l1919:	
;program.c: 116: delay();
	fcall	_delay
	line	117
;program.c: 117: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	118
	
l1921:	
;program.c: 118: print("All OFF",7);
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_print)
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_print
	line	119
	
l1923:	
;program.c: 119: cmd(0x0C);}}}
	movlw	(0Ch)
	fcall	_cmd
	goto	l1815
	
l576:	
	goto	l1815
	
l577:	
	line	34
	goto	l1815
	
l578:	
	line	119
	
l579:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_print
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _print *****************
;; Defined at:
;;		line 120 in file "D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
;; Parameters:    Size  Location     Type
;;  name            1    wreg     PTR unsigned char 
;;		 -> STR_9(8), STR_8(9), STR_7(7), STR_6(13), 
;;		 -> STR_5(10), STR_4(6), STR_3(13), STR_2(6), 
;;		 -> STR_1(7), 
;;  a               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  name            1    5[COMMON] PTR unsigned char 
;;		 -> STR_9(8), STR_8(9), STR_7(7), STR_6(13), 
;;		 -> STR_5(10), STR_4(6), STR_3(13), STR_2(6), 
;;		 -> STR_1(7), 
;;  i               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
	line	120
	global	__size_of_print
	__size_of_print	equ	__end_of_print-_print
	
_print:	
	opt	stack 5
; Regs used in _print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print@name stored from wreg
	line	122
	movwf	(print@name)
	
l1785:	
;program.c: 121: int i;
;program.c: 122: for(i=0;i<a;i++){
	movlw	low(0)
	movwf	(print@i)
	movlw	high(0)
	movwf	((print@i))+1
	goto	l1791
	
l583:	
	line	123
	
l1787:	
;program.c: 123: dat(name[i]);}}
	movf	(print@i),w
	addwf	(print@name),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dat
	line	122
	
l1789:	
	movlw	low(01h)
	addwf	(print@i),f
	skipnc
	incf	(print@i+1),f
	movlw	high(01h)
	addwf	(print@i+1),f
	goto	l1791
	
l582:	
	
l1791:	
	movf	(print@i+1),w
	xorlw	80h
	movwf	(??_print+0)+0
	movlw	80h
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
	goto	l1787
u2160:
	goto	l585
	
l584:	
	line	123
	
l585:	
	return
	opt stack 0
GLOBAL	__end_of_print
	__end_of_print:
;; =============== function _print ends ============

	signat	_print,8312
	global	_dat
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _dat *****************
;; Defined at:
;;		line 131 in file "D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
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
;;		_print
;; This function uses a non-reentrant model
;;
psect	text86
	file	"D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
	line	131
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 5
; Regs used in _dat: [wreg+status,2+status,0+pclath+cstack]
;dat@a stored from wreg
	movwf	(dat@a)
	line	132
	
l1773:	
;program.c: 132: PORTB=a;
	movf	(dat@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	133
	
l1775:	
;program.c: 133: RC4=1;
	bsf	(60/8),(60)&7
	line	134
	
l1777:	
;program.c: 134: RC5=0;
	bcf	(61/8),(61)&7
	line	135
	
l1779:	
;program.c: 135: RC6=1;
	bsf	(62/8),(62)&7
	line	136
	
l1781:	
;program.c: 136: delay();
	fcall	_delay
	line	137
	
l1783:	
;program.c: 137: RC6=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _cmd *****************
;; Defined at:
;;		line 124 in file "D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
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
;; This function uses a non-reentrant model
;;
psect	text87
	file	"D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
	line	124
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 6
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	125
	
l1761:	
;program.c: 125: PORTB=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	126
	
l1763:	
;program.c: 126: RC4=0;
	bcf	(60/8),(60)&7
	line	127
	
l1765:	
;program.c: 127: RC5=0;
	bcf	(61/8),(61)&7
	line	128
	
l1767:	
;program.c: 128: RC6=1;
	bsf	(62/8),(62)&7
	line	129
	
l1769:	
;program.c: 129: delay();
	fcall	_delay
	line	130
	
l1771:	
;program.c: 130: RC6=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_delay
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _delay *****************
;; Defined at:
;;		line 138 in file "D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
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
;;		_dat
;; This function uses a non-reentrant model
;;
psect	text88
	file	"D:\PIC16F877A Concepts\DC motor with LCD,KEYPAD,7seg\program.c"
	line	138
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	140
	
l969:	
;program.c: 139: unsigned int i;
;program.c: 140: for(i=0;i<2000;i++);}
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
	goto	u11
	goto	u10
u11:
	goto	l973
u10:
	goto	l596
	
l971:	
	goto	l596
	
l594:	
	
l973:	
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
	goto	u21
	goto	u20
u21:
	goto	l973
u20:
	goto	l596
	
l595:	
	
l596:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
