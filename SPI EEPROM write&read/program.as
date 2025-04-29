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
	FNCALL	_main,_write
	FNCALL	_main,_read
	FNCALL	_read,_SPI
	FNCALL	_write,_SPI
	FNROOT	_main
	global	_PORTB
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RC2
_RC2	set	58
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
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
	global	?_SPI
?_SPI:	; 0 bytes @ 0x0
	global	SPI@data
SPI@data:	; 2 bytes @ 0x0
	ds	2
	global	?_write
?_write:	; 0 bytes @ 0x2
	global	?_read
?_read:	; 0 bytes @ 0x2
	global	??_SPI
??_SPI:	; 0 bytes @ 0x2
	global	write@high
write@high:	; 2 bytes @ 0x2
	global	read@high
read@high:	; 2 bytes @ 0x2
	ds	2
	global	write@low
write@low:	; 2 bytes @ 0x4
	global	read@low
read@low:	; 2 bytes @ 0x4
	ds	2
	global	??_read
??_read:	; 0 bytes @ 0x6
	global	write@data
write@data:	; 2 bytes @ 0x6
	ds	2
	global	??_write
??_write:	; 0 bytes @ 0x8
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_write
;;   _read->_SPI
;;   _write->_SPI
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
;; (0) _main                                                 3     3      0     105
;;                                             11 COMMON     3     3      0
;;                              _write
;;                               _read
;; ---------------------------------------------------------------------------------
;; (1) _read                                                 7     3      4      45
;;                                              2 COMMON     7     3      4
;;                                _SPI
;; ---------------------------------------------------------------------------------
;; (1) _write                                                9     3      6      60
;;                                              2 COMMON     9     3      6
;;                                _SPI
;; ---------------------------------------------------------------------------------
;; (2) _SPI                                                  2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _write
;;     _SPI
;;   _read
;;     _SPI
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
;;		line 6 in file "D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
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
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_write
;;		_read
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l1775:	
;program.c: 7: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	8
	
l1777:	
;program.c: 8: TRISC=0x10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	9
	
l1779:	
;program.c: 9: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	10
	
l1781:	
;program.c: 10: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	11
	
l1783:	
;program.c: 11: SSPSTAT=0x00;
	clrf	(148)^080h	;volatile
	line	12
;program.c: 12: SSPCON=0x21;
	movlw	(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	14
	
l1785:	
;program.c: 14: write(0x00,0x08,'A');
	movlw	low(0)
	movwf	(?_write)
	movlw	high(0)
	movwf	((?_write))+1
	movlw	low(08h)
	movwf	0+(?_write)+02h
	movlw	high(08h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(041h)
	movwf	0+(?_write)+04h
	movlw	high(041h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	15
	
l1787:	
;program.c: 15: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2157:
	decfsz	((??_main+0)+0),f
	goto	u2157
	decfsz	((??_main+0)+0+1),f
	goto	u2157
	decfsz	((??_main+0)+0+2),f
	goto	u2157
opt asmopt_on

	line	16
;program.c: 16: read(0x00,0x08);
	movlw	low(0)
	movwf	(?_read)
	movlw	high(0)
	movwf	((?_read))+1
	movlw	low(08h)
	movwf	0+(?_read)+02h
	movlw	high(08h)
	movwf	(0+(?_read)+02h)+1
	fcall	_read
	line	17
;program.c: 17: write(0x00,0x09,'B');
	movlw	low(0)
	movwf	(?_write)
	movlw	high(0)
	movwf	((?_write))+1
	movlw	low(09h)
	movwf	0+(?_write)+02h
	movlw	high(09h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(042h)
	movwf	0+(?_write)+04h
	movlw	high(042h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	18
	
l1789:	
;program.c: 18: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2167:
	decfsz	((??_main+0)+0),f
	goto	u2167
	decfsz	((??_main+0)+0+1),f
	goto	u2167
	decfsz	((??_main+0)+0+2),f
	goto	u2167
opt asmopt_on

	line	19
	
l1791:	
;program.c: 19: read(0x00,0x09);
	movlw	low(0)
	movwf	(?_read)
	movlw	high(0)
	movwf	((?_read))+1
	movlw	low(09h)
	movwf	0+(?_read)+02h
	movlw	high(09h)
	movwf	(0+(?_read)+02h)+1
	fcall	_read
	line	20
	
l1793:	
;program.c: 20: write(0x00,0x0A,'C');
	movlw	low(0)
	movwf	(?_write)
	movlw	high(0)
	movwf	((?_write))+1
	movlw	low(0Ah)
	movwf	0+(?_write)+02h
	movlw	high(0Ah)
	movwf	(0+(?_write)+02h)+1
	movlw	low(043h)
	movwf	0+(?_write)+04h
	movlw	high(043h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	21
	
l1795:	
;program.c: 21: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2177:
	decfsz	((??_main+0)+0),f
	goto	u2177
	decfsz	((??_main+0)+0+1),f
	goto	u2177
	decfsz	((??_main+0)+0+2),f
	goto	u2177
opt asmopt_on

	line	22
;program.c: 22: read(0x00,0x0A);
	movlw	low(0)
	movwf	(?_read)
	movlw	high(0)
	movwf	((?_read))+1
	movlw	low(0Ah)
	movwf	0+(?_read)+02h
	movlw	high(0Ah)
	movwf	(0+(?_read)+02h)+1
	fcall	_read
	line	23
;program.c: 23: write(0x00,0x0B,'D');
	movlw	low(0)
	movwf	(?_write)
	movlw	high(0)
	movwf	((?_write))+1
	movlw	low(0Bh)
	movwf	0+(?_write)+02h
	movlw	high(0Bh)
	movwf	(0+(?_write)+02h)+1
	movlw	low(044h)
	movwf	0+(?_write)+04h
	movlw	high(044h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	24
	
l1797:	
;program.c: 24: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2187:
	decfsz	((??_main+0)+0),f
	goto	u2187
	decfsz	((??_main+0)+0+1),f
	goto	u2187
	decfsz	((??_main+0)+0+2),f
	goto	u2187
opt asmopt_on

	line	25
	
l1799:	
;program.c: 25: read(0x00,0x0B);
	movlw	low(0)
	movwf	(?_read)
	movlw	high(0)
	movwf	((?_read))+1
	movlw	low(0Bh)
	movwf	0+(?_read)+02h
	movlw	high(0Bh)
	movwf	(0+(?_read)+02h)+1
	fcall	_read
	goto	l566
	line	26
;program.c: 26: while(1){}}
	
l565:	
	
l566:	
	goto	l566
	
l567:	
	
l568:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_read
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _read *****************
;; Defined at:
;;		line 46 in file "D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
;; Parameters:    Size  Location     Type
;;  high            2    2[COMMON] int 
;;  low             2    4[COMMON] int 
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
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SPI
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
	line	46
	global	__size_of_read
	__size_of_read	equ	__end_of_read-_read
	
_read:	
	opt	stack 6
; Regs used in _read: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l1759:	
;program.c: 47: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	48
	
l1761:	
;program.c: 48: _delay((unsigned long)((1000)*(10000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_read+0)+0+2),f
movlw	163
movwf	((??_read+0)+0+1),f
	movlw	189
movwf	((??_read+0)+0),f
u2197:
	decfsz	((??_read+0)+0),f
	goto	u2197
	decfsz	((??_read+0)+0+1),f
	goto	u2197
	decfsz	((??_read+0)+0+2),f
	goto	u2197
	clrwdt
opt asmopt_on

	line	49
	
l1763:	
;program.c: 49: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	50
	
l1765:	
;program.c: 50: SPI(0x03);
	movlw	low(03h)
	movwf	(?_SPI)
	movlw	high(03h)
	movwf	((?_SPI))+1
	fcall	_SPI
	line	51
	
l1767:	
;program.c: 51: SPI(high);
	movf	(read@high+1),w
	clrf	(?_SPI+1)
	addwf	(?_SPI+1)
	movf	(read@high),w
	clrf	(?_SPI)
	addwf	(?_SPI)

	fcall	_SPI
	line	52
	
l1769:	
;program.c: 52: SPI(low);
	movf	(read@low+1),w
	clrf	(?_SPI+1)
	addwf	(?_SPI+1)
	movf	(read@low),w
	clrf	(?_SPI)
	addwf	(?_SPI)

	fcall	_SPI
	line	53
	
l1771:	
;program.c: 53: SPI(0x00);
	movlw	low(0)
	movwf	(?_SPI)
	movlw	high(0)
	movwf	((?_SPI))+1
	fcall	_SPI
	line	54
	
l1773:	
;program.c: 54: RC2=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_read
	__end_of_read:
;; =============== function _read ends ============

	signat	_read,8312
	global	_write
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _write *****************
;; Defined at:
;;		line 33 in file "D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
;; Parameters:    Size  Location     Type
;;  high            2    2[COMMON] int 
;;  low             2    4[COMMON] int 
;;  data            2    6[COMMON] int 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SPI
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text86
	file	"D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
	line	33
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 6
; Regs used in _write: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l1737:	
;program.c: 34: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	35
	
l1739:	
;program.c: 35: _delay((unsigned long)((1000)*(10000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_write+0)+0+2),f
movlw	163
movwf	((??_write+0)+0+1),f
	movlw	189
movwf	((??_write+0)+0),f
u2207:
	decfsz	((??_write+0)+0),f
	goto	u2207
	decfsz	((??_write+0)+0+1),f
	goto	u2207
	decfsz	((??_write+0)+0+2),f
	goto	u2207
	clrwdt
opt asmopt_on

	line	36
	
l1741:	
;program.c: 36: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	37
	
l1743:	
;program.c: 37: SPI(0x06);
	movlw	low(06h)
	movwf	(?_SPI)
	movlw	high(06h)
	movwf	((?_SPI))+1
	fcall	_SPI
	line	38
	
l1745:	
;program.c: 38: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	39
	
l1747:	
;program.c: 39: RC2=0;
	bcf	(58/8),(58)&7
	line	40
	
l1749:	
;program.c: 40: SPI(0x02);
	movlw	low(02h)
	movwf	(?_SPI)
	movlw	high(02h)
	movwf	((?_SPI))+1
	fcall	_SPI
	line	41
	
l1751:	
;program.c: 41: SPI(high);
	movf	(write@high+1),w
	clrf	(?_SPI+1)
	addwf	(?_SPI+1)
	movf	(write@high),w
	clrf	(?_SPI)
	addwf	(?_SPI)

	fcall	_SPI
	line	42
	
l1753:	
;program.c: 42: SPI(low);
	movf	(write@low+1),w
	clrf	(?_SPI+1)
	addwf	(?_SPI+1)
	movf	(write@low),w
	clrf	(?_SPI)
	addwf	(?_SPI)

	fcall	_SPI
	line	43
	
l1755:	
;program.c: 43: SPI(data);
	movf	(write@data+1),w
	clrf	(?_SPI+1)
	addwf	(?_SPI+1)
	movf	(write@data),w
	clrf	(?_SPI)
	addwf	(?_SPI)

	fcall	_SPI
	line	44
	
l1757:	
;program.c: 44: RC2=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_SPI
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _SPI *****************
;; Defined at:
;;		line 28 in file "D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
;; Parameters:    Size  Location     Type
;;  data            2    0[COMMON] int 
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
;;		_write
;;		_read
;; This function uses a non-reentrant model
;;
psect	text87
	file	"D:\PIC16F877A Concepts\SPI EEPROM write&read\program.c"
	line	28
	global	__size_of_SPI
	__size_of_SPI	equ	__end_of_SPI-_SPI
	
_SPI:	
	opt	stack 6
; Regs used in _SPI: [wreg]
	line	29
	
l949:	
;program.c: 29: SSPBUF=data;
	movf	(SPI@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	30
;program.c: 30: while(SSPIF==0);
	goto	l571
	
l572:	
	
l571:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l571
u10:
	
l573:	
	line	31
;program.c: 31: SSPIF=0;}
	bcf	(99/8),(99)&7
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_SPI
	__end_of_SPI:
;; =============== function _SPI ends ============

	signat	_SPI,4216
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
