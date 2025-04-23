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
	FNCALL	_main,_I2C_INIT
	FNCALL	_main,_I2C_WRITE
	FNCALL	_main,_I2C_READ
	FNCALL	_I2C_READ,_dis
	FNROOT	_main
	global	_PORTB
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TXREG
_TXREG	set	25
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_SSPIF
_SSPIF	set	99
	global	_SPBRG
_SPBRG	set	153
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
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
	global	?_I2C_INIT
?_I2C_INIT:	; 0 bytes @ 0x0
	global	??_I2C_INIT
??_I2C_INIT:	; 0 bytes @ 0x0
	global	?_I2C_WRITE
?_I2C_WRITE:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_dis
?_dis:	; 0 bytes @ 0x0
	global	dis@dat
dis@dat:	; 2 bytes @ 0x0
	global	I2C_WRITE@high
I2C_WRITE@high:	; 2 bytes @ 0x0
	ds	2
	global	??_dis
??_dis:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	global	I2C_WRITE@low
I2C_WRITE@low:	; 2 bytes @ 0x2
	ds	2
	global	?_I2C_READ
?_I2C_READ:	; 0 bytes @ 0x4
	global	I2C_WRITE@data
I2C_WRITE@data:	; 2 bytes @ 0x4
	global	I2C_READ@high
I2C_READ@high:	; 2 bytes @ 0x4
	ds	2
	global	??_I2C_WRITE
??_I2C_WRITE:	; 0 bytes @ 0x6
	global	I2C_READ@low
I2C_READ@low:	; 2 bytes @ 0x6
	ds	2
	global	??_I2C_READ
??_I2C_READ:	; 0 bytes @ 0x8
	ds	2
	global	I2C_READ@data
I2C_READ@data:	; 2 bytes @ 0xA
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80      3       3
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_I2C_READ
;;   _I2C_READ->_dis
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
;;                                              0 BANK0      3     3      0
;;                                _cmd
;;                           _I2C_INIT
;;                          _I2C_WRITE
;;                           _I2C_READ
;; ---------------------------------------------------------------------------------
;; (1) _I2C_READ                                             8     4      4      60
;;                                              4 COMMON     8     4      4
;;                                _dis
;; ---------------------------------------------------------------------------------
;; (2) _dis                                                  4     2      2      15
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _I2C_WRITE                                            9     3      6      45
;;                                              0 COMMON     9     3      6
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  3     3      0      15
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _I2C_INIT                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _I2C_INIT
;;   _I2C_WRITE
;;   _I2C_READ
;;     _dis
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      3       3       5        3.8%
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
;;		line 11 in file "C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_cmd
;;		_I2C_INIT
;;		_I2C_WRITE
;;		_I2C_READ
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l1911:	
;program.c: 12: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	13
	
l1913:	
;program.c: 13: TXSTA=0b00100100;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	14
	
l1915:	
;program.c: 14: RCSTA=0b10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	15
	
l1917:	
;program.c: 15: SPBRG=64;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l1919:	
;program.c: 16: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	17
	
l1921:	
;program.c: 17: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	18
	
l1923:	
;program.c: 18: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	19
	
l1925:	
;program.c: 19: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	20
	
l1927:	
;program.c: 20: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	21
	
l1929:	
;program.c: 21: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	22
	
l1931:	
;program.c: 22: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	23
	
l1933:	
;program.c: 23: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	24
	
l1935:	
;program.c: 24: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	25
	
l1937:	
;program.c: 25: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	line	26
	
l1939:	
;program.c: 26: I2C_INIT();
	fcall	_I2C_INIT
	line	27
	
l1941:	
;program.c: 27: I2C_WRITE(0x00,0x00,'A');
	movlw	low(0)
	movwf	(?_I2C_WRITE)
	movlw	high(0)
	movwf	((?_I2C_WRITE))+1
	movlw	low(0)
	movwf	0+(?_I2C_WRITE)+02h
	movlw	high(0)
	movwf	(0+(?_I2C_WRITE)+02h)+1
	movlw	low(041h)
	movwf	0+(?_I2C_WRITE)+04h
	movlw	high(041h)
	movwf	(0+(?_I2C_WRITE)+04h)+1
	fcall	_I2C_WRITE
	line	28
	
l1943:	
;program.c: 28: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2297:
	decfsz	((??_main+0)+0),f
	goto	u2297
	decfsz	((??_main+0)+0+1),f
	goto	u2297
	decfsz	((??_main+0)+0+2),f
	goto	u2297
opt asmopt_on

	line	29
	
l1945:	
;program.c: 29: I2C_READ(0x00,0x00);
	movlw	low(0)
	movwf	(?_I2C_READ)
	movlw	high(0)
	movwf	((?_I2C_READ))+1
	movlw	low(0)
	movwf	0+(?_I2C_READ)+02h
	movlw	high(0)
	movwf	(0+(?_I2C_READ)+02h)+1
	fcall	_I2C_READ
	line	30
	
l1947:	
;program.c: 30: I2C_WRITE(0x00,0x01,'B');
	movlw	low(0)
	movwf	(?_I2C_WRITE)
	movlw	high(0)
	movwf	((?_I2C_WRITE))+1
	movlw	low(01h)
	movwf	0+(?_I2C_WRITE)+02h
	movlw	high(01h)
	movwf	(0+(?_I2C_WRITE)+02h)+1
	movlw	low(042h)
	movwf	0+(?_I2C_WRITE)+04h
	movlw	high(042h)
	movwf	(0+(?_I2C_WRITE)+04h)+1
	fcall	_I2C_WRITE
	line	31
	
l1949:	
;program.c: 31: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	decfsz	((??_main+0)+0+2),f
	goto	u2307
opt asmopt_on

	line	32
	
l1951:	
;program.c: 32: I2C_READ(0x00,0x01);
	movlw	low(0)
	movwf	(?_I2C_READ)
	movlw	high(0)
	movwf	((?_I2C_READ))+1
	movlw	low(01h)
	movwf	0+(?_I2C_READ)+02h
	movlw	high(01h)
	movwf	(0+(?_I2C_READ)+02h)+1
	fcall	_I2C_READ
	line	33
	
l1953:	
;program.c: 33: I2C_WRITE(0x00,0x02,'C');
	movlw	low(0)
	movwf	(?_I2C_WRITE)
	movlw	high(0)
	movwf	((?_I2C_WRITE))+1
	movlw	low(02h)
	movwf	0+(?_I2C_WRITE)+02h
	movlw	high(02h)
	movwf	(0+(?_I2C_WRITE)+02h)+1
	movlw	low(043h)
	movwf	0+(?_I2C_WRITE)+04h
	movlw	high(043h)
	movwf	(0+(?_I2C_WRITE)+04h)+1
	fcall	_I2C_WRITE
	line	34
	
l1955:	
;program.c: 34: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
	decfsz	((??_main+0)+0+2),f
	goto	u2317
opt asmopt_on

	line	35
	
l1957:	
;program.c: 35: I2C_READ(0x00,0x02);
	movlw	low(0)
	movwf	(?_I2C_READ)
	movlw	high(0)
	movwf	((?_I2C_READ))+1
	movlw	low(02h)
	movwf	0+(?_I2C_READ)+02h
	movlw	high(02h)
	movwf	(0+(?_I2C_READ)+02h)+1
	fcall	_I2C_READ
	line	36
	
l1959:	
;program.c: 36: I2C_WRITE(0x00,0x03,'D');
	movlw	low(0)
	movwf	(?_I2C_WRITE)
	movlw	high(0)
	movwf	((?_I2C_WRITE))+1
	movlw	low(03h)
	movwf	0+(?_I2C_WRITE)+02h
	movlw	high(03h)
	movwf	(0+(?_I2C_WRITE)+02h)+1
	movlw	low(044h)
	movwf	0+(?_I2C_WRITE)+04h
	movlw	high(044h)
	movwf	(0+(?_I2C_WRITE)+04h)+1
	fcall	_I2C_WRITE
	line	37
	
l1961:	
;program.c: 37: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	decfsz	((??_main+0)+0+2),f
	goto	u2327
opt asmopt_on

	line	38
	
l1963:	
;program.c: 38: I2C_READ(0x00,0x03);
	movlw	low(0)
	movwf	(?_I2C_READ)
	movlw	high(0)
	movwf	((?_I2C_READ))+1
	movlw	low(03h)
	movwf	0+(?_I2C_READ)+02h
	movlw	high(03h)
	movwf	(0+(?_I2C_READ)+02h)+1
	fcall	_I2C_READ
	line	39
	
l1965:	
;program.c: 39: I2C_WRITE(0x00,0x04,'E');
	movlw	low(0)
	movwf	(?_I2C_WRITE)
	movlw	high(0)
	movwf	((?_I2C_WRITE))+1
	movlw	low(04h)
	movwf	0+(?_I2C_WRITE)+02h
	movlw	high(04h)
	movwf	(0+(?_I2C_WRITE)+02h)+1
	movlw	low(045h)
	movwf	0+(?_I2C_WRITE)+04h
	movlw	high(045h)
	movwf	(0+(?_I2C_WRITE)+04h)+1
	fcall	_I2C_WRITE
	line	40
	
l1967:	
;program.c: 40: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
opt asmopt_on

	line	41
	
l1969:	
;program.c: 41: I2C_READ(0x00,0x04);
	movlw	low(0)
	movwf	(?_I2C_READ)
	movlw	high(0)
	movwf	((?_I2C_READ))+1
	movlw	low(04h)
	movwf	0+(?_I2C_READ)+02h
	movlw	high(04h)
	movwf	(0+(?_I2C_READ)+02h)+1
	fcall	_I2C_READ
	line	42
	
l1971:	
;program.c: 42: I2C_WRITE(0x00,0x05,'F');
	movlw	low(0)
	movwf	(?_I2C_WRITE)
	movlw	high(0)
	movwf	((?_I2C_WRITE))+1
	movlw	low(05h)
	movwf	0+(?_I2C_WRITE)+02h
	movlw	high(05h)
	movwf	(0+(?_I2C_WRITE)+02h)+1
	movlw	low(046h)
	movwf	0+(?_I2C_WRITE)+04h
	movlw	high(046h)
	movwf	(0+(?_I2C_WRITE)+04h)+1
	fcall	_I2C_WRITE
	line	43
	
l1973:	
;program.c: 43: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	decfsz	((??_main+0)+0+2),f
	goto	u2347
opt asmopt_on

	line	44
	
l1975:	
;program.c: 44: I2C_READ(0x00,0x05);
	movlw	low(0)
	movwf	(?_I2C_READ)
	movlw	high(0)
	movwf	((?_I2C_READ))+1
	movlw	low(05h)
	movwf	0+(?_I2C_READ)+02h
	movlw	high(05h)
	movwf	(0+(?_I2C_READ)+02h)+1
	fcall	_I2C_READ
	line	45
	
l1977:	
;program.c: 45: I2C_WRITE(0x00,0x06,'G');
	movlw	low(0)
	movwf	(?_I2C_WRITE)
	movlw	high(0)
	movwf	((?_I2C_WRITE))+1
	movlw	low(06h)
	movwf	0+(?_I2C_WRITE)+02h
	movlw	high(06h)
	movwf	(0+(?_I2C_WRITE)+02h)+1
	movlw	low(047h)
	movwf	0+(?_I2C_WRITE)+04h
	movlw	high(047h)
	movwf	(0+(?_I2C_WRITE)+04h)+1
	fcall	_I2C_WRITE
	line	46
	
l1979:	
;program.c: 46: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	decfsz	((??_main+0)+0+2),f
	goto	u2357
opt asmopt_on

	line	47
	
l1981:	
;program.c: 47: I2C_READ(0x00,0x06);
	movlw	low(0)
	movwf	(?_I2C_READ)
	movlw	high(0)
	movwf	((?_I2C_READ))+1
	movlw	low(06h)
	movwf	0+(?_I2C_READ)+02h
	movlw	high(06h)
	movwf	(0+(?_I2C_READ)+02h)+1
	fcall	_I2C_READ
	goto	l570
	line	48
;program.c: 48: while(1){}}
	
l569:	
	
l570:	
	goto	l570
	
l571:	
	
l572:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2C_READ
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:

;; *************** function _I2C_READ *****************
;; Defined at:
;;		line 92 in file "C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
;; Parameters:    Size  Location     Type
;;  high            2    4[COMMON] int 
;;  low             2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  data            2   10[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_dis
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text171
	file	"C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
	line	92
	global	__size_of_I2C_READ
	__size_of_I2C_READ	equ	__end_of_I2C_READ-_I2C_READ
	
_I2C_READ:	
	opt	stack 6
; Regs used in _I2C_READ: [wreg+status,2+status,0+pclath+cstack]
	line	94
	
l1823:	
;program.c: 93: int data;
;program.c: 94: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	95
;program.c: 95: while(SSPIF==0);
	goto	l605
	
l606:	
	
l605:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l605
u2200:
	
l607:	
	line	96
;program.c: 96: SSPIF=0;
	bcf	(99/8),(99)&7
	line	97
	
l1825:	
;program.c: 97: SSPBUF=0b10100000;
	movlw	(0A0h)
	movwf	(19)	;volatile
	line	98
;program.c: 98: while(SSPIF==0);
	goto	l608
	
l609:	
	
l608:	
	btfss	(99/8),(99)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l608
u2210:
	
l610:	
	line	99
;program.c: 99: SSPIF=0;
	bcf	(99/8),(99)&7
	line	100
	
l1827:	
;program.c: 100: SSPBUF=high;
	movf	(I2C_READ@high),w
	movwf	(19)	;volatile
	line	101
;program.c: 101: while(SSPIF==0);
	goto	l611
	
l612:	
	
l611:	
	btfss	(99/8),(99)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l611
u2220:
	
l613:	
	line	102
;program.c: 102: SSPIF=0;
	bcf	(99/8),(99)&7
	line	103
	
l1829:	
;program.c: 103: SSPBUF=low;
	movf	(I2C_READ@low),w
	movwf	(19)	;volatile
	line	104
;program.c: 104: while(SSPIF==0);
	goto	l614
	
l615:	
	
l614:	
	btfss	(99/8),(99)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l614
u2230:
	
l616:	
	line	105
;program.c: 105: SSPIF=0;
	bcf	(99/8),(99)&7
	line	106
;program.c: 106: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	107
;program.c: 107: while(SSPIF==0);
	goto	l617
	
l618:	
	
l617:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l617
u2240:
	
l619:	
	line	108
;program.c: 108: SSPIF=0;
	bcf	(99/8),(99)&7
	line	109
	
l1831:	
;program.c: 109: SSPBUF=0b10100001;
	movlw	(0A1h)
	movwf	(19)	;volatile
	line	110
;program.c: 110: while(SSPIF==0);
	goto	l620
	
l621:	
	
l620:	
	btfss	(99/8),(99)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l620
u2250:
	
l622:	
	line	111
;program.c: 111: SSPIF=0;
	bcf	(99/8),(99)&7
	line	112
;program.c: 112: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	113
;program.c: 113: while(SSPIF==0);
	goto	l623
	
l624:	
	
l623:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l623
u2260:
	
l625:	
	line	114
;program.c: 114: SSPIF=0;
	bcf	(99/8),(99)&7
	line	115
;program.c: 115: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	116
;program.c: 116: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	117
;program.c: 117: while(SSPIF==0);
	goto	l626
	
l627:	
	
l626:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l626
u2270:
	
l628:	
	line	118
;program.c: 118: SSPIF=0;
	bcf	(99/8),(99)&7
	line	119
;program.c: 119: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	120
;program.c: 120: while(SSPIF==0);
	goto	l629
	
l630:	
	
l629:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l629
u2280:
	
l631:	
	line	121
;program.c: 121: SSPIF=0;
	bcf	(99/8),(99)&7
	line	122
	
l1833:	
;program.c: 122: data=SSPBUF;
	movf	(19),w	;volatile
	movwf	(??_I2C_READ+0)+0
	clrf	(??_I2C_READ+0)+0+1
	movf	0+(??_I2C_READ+0)+0,w
	movwf	(I2C_READ@data)
	movf	1+(??_I2C_READ+0)+0,w
	movwf	(I2C_READ@data+1)
	line	123
	
l1835:	
;program.c: 123: dis(data);
	movf	(I2C_READ@data+1),w
	clrf	(?_dis+1)
	addwf	(?_dis+1)
	movf	(I2C_READ@data),w
	clrf	(?_dis)
	addwf	(?_dis)

	fcall	_dis
	line	124
	
l1837:	
;program.c: 124: TXREG=SSPBUF;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(25)	;volatile
	
l632:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_READ
	__end_of_I2C_READ:
;; =============== function _I2C_READ ends ============

	signat	_I2C_READ,8312
	global	_dis
psect	text172,local,class=CODE,delta=2
global __ptext172
__ptext172:

;; *************** function _dis *****************
;; Defined at:
;;		line 57 in file "C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
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
;;		_I2C_READ
;; This function uses a non-reentrant model
;;
psect	text172
	file	"C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
	line	57
	global	__size_of_dis
	__size_of_dis	equ	__end_of_dis-_dis
	
_dis:	
	opt	stack 6
; Regs used in _dis: [wreg]
	line	58
	
l1813:	
;program.c: 58: PORTD=dat;
	movf	(dis@dat),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	59
	
l1815:	
;program.c: 59: RB0=1;
	bsf	(48/8),(48)&7
	line	60
	
l1817:	
;program.c: 60: RB1=0;
	bcf	(49/8),(49)&7
	line	61
;program.c: 61: _delay((unsigned long)((2)*(10000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_dis+0)+0+1),f
	movlw	125
movwf	((??_dis+0)+0),f
u2367:
	decfsz	((??_dis+0)+0),f
	goto	u2367
	decfsz	((??_dis+0)+0+1),f
	goto	u2367
opt asmopt_on

	line	62
	
l1819:	
;program.c: 62: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	63
	
l1821:	
;program.c: 63: RB2=0;}
	bcf	(50/8),(50)&7
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_dis
	__end_of_dis:
;; =============== function _dis ends ============

	signat	_dis,4216
	global	_I2C_WRITE
psect	text173,local,class=CODE,delta=2
global __ptext173
__ptext173:

;; *************** function _I2C_WRITE *****************
;; Defined at:
;;		line 71 in file "C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
;; Parameters:    Size  Location     Type
;;  high            2    0[COMMON] int 
;;  low             2    2[COMMON] int 
;;  data            2    4[COMMON] int 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text173
	file	"C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
	line	71
	global	__size_of_I2C_WRITE
	__size_of_I2C_WRITE	equ	__end_of_I2C_WRITE-_I2C_WRITE
	
_I2C_WRITE:	
	opt	stack 7
; Regs used in _I2C_WRITE: [wreg]
	line	72
	
l1803:	
;program.c: 72: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	73
;program.c: 73: while(SSPIF==0);
	goto	l584
	
l585:	
	
l584:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l584
u2140:
	
l586:	
	line	74
;program.c: 74: SSPIF=0;
	bcf	(99/8),(99)&7
	line	75
	
l1805:	
;program.c: 75: _delay((unsigned long)((1000)*(10000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_I2C_WRITE+0)+0+2),f
movlw	163
movwf	((??_I2C_WRITE+0)+0+1),f
	movlw	189
movwf	((??_I2C_WRITE+0)+0),f
u2377:
	decfsz	((??_I2C_WRITE+0)+0),f
	goto	u2377
	decfsz	((??_I2C_WRITE+0)+0+1),f
	goto	u2377
	decfsz	((??_I2C_WRITE+0)+0+2),f
	goto	u2377
	clrwdt
opt asmopt_on

	line	76
;program.c: 76: SSPBUF=0b10100000;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	77
;program.c: 77: while(SSPIF==0);
	goto	l587
	
l588:	
	
l587:	
	btfss	(99/8),(99)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l587
u2150:
	
l589:	
	line	78
;program.c: 78: SSPIF=0;
	bcf	(99/8),(99)&7
	line	79
	
l1807:	
;program.c: 79: SSPBUF=high;
	movf	(I2C_WRITE@high),w
	movwf	(19)	;volatile
	line	80
;program.c: 80: while(SSPIF==0);
	goto	l590
	
l591:	
	
l590:	
	btfss	(99/8),(99)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l590
u2160:
	
l592:	
	line	81
;program.c: 81: SSPIF=0;
	bcf	(99/8),(99)&7
	line	82
	
l1809:	
;program.c: 82: SSPBUF=low;
	movf	(I2C_WRITE@low),w
	movwf	(19)	;volatile
	line	83
;program.c: 83: while(SSPIF==0);
	goto	l593
	
l594:	
	
l593:	
	btfss	(99/8),(99)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l593
u2170:
	
l595:	
	line	84
;program.c: 84: SSPIF=0;
	bcf	(99/8),(99)&7
	line	85
	
l1811:	
;program.c: 85: SSPBUF=data;
	movf	(I2C_WRITE@data),w
	movwf	(19)	;volatile
	line	86
;program.c: 86: while(SSPIF==0);
	goto	l596
	
l597:	
	
l596:	
	btfss	(99/8),(99)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l596
u2180:
	
l598:	
	line	87
;program.c: 87: SSPIF=0;
	bcf	(99/8),(99)&7
	line	88
;program.c: 88: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	89
;program.c: 89: while(SSPIF==0);
	goto	l599
	
l600:	
	
l599:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l599
u2190:
	
l601:	
	line	90
;program.c: 90: SSPIF=0;}
	bcf	(99/8),(99)&7
	
l602:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WRITE
	__end_of_I2C_WRITE:
;; =============== function _I2C_WRITE ends ============

	signat	_I2C_WRITE,12408
	global	_cmd
psect	text174,local,class=CODE,delta=2
global __ptext174
__ptext174:

;; *************** function _cmd *****************
;; Defined at:
;;		line 50 in file "C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
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
psect	text174
	file	"C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
	line	50
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	51
	
l1793:	
;program.c: 51: PORTD=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	52
	
l1795:	
;program.c: 52: RB0=0;
	bcf	(48/8),(48)&7
	line	53
	
l1797:	
;program.c: 53: RB1=0;
	bcf	(49/8),(49)&7
	line	54
;program.c: 54: _delay((unsigned long)((10)*(10000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_cmd+0)+0+1),f
	movlw	118
movwf	((??_cmd+0)+0),f
u2387:
	decfsz	((??_cmd+0)+0),f
	goto	u2387
	decfsz	((??_cmd+0)+0+1),f
	goto	u2387
	clrwdt
opt asmopt_on

	line	55
	
l1799:	
;program.c: 55: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	56
	
l1801:	
;program.c: 56: RB2=0;}
	bcf	(50/8),(50)&7
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_I2C_INIT
psect	text175,local,class=CODE,delta=2
global __ptext175
__ptext175:

;; *************** function _I2C_INIT *****************
;; Defined at:
;;		line 65 in file "C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text175
	file	"C:\PIC16F877A Demo Concepts\I2C EEPROM Print more characters\program.c"
	line	65
	global	__size_of_I2C_INIT
	__size_of_I2C_INIT	equ	__end_of_I2C_INIT-_I2C_INIT
	
_I2C_INIT:	
	opt	stack 7
; Regs used in _I2C_INIT: [wreg+status,2]
	line	66
	
l1001:	
;program.c: 66: SSPSTAT=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	67
	
l1003:	
;program.c: 67: SSPCON=0b00101000;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	68
	
l1005:	
;program.c: 68: SSPCON2=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	69
;program.c: 69: SSPADD=24;}
	movlw	(018h)
	movwf	(147)^080h	;volatile
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_INIT
	__end_of_I2C_INIT:
;; =============== function _I2C_INIT ends ============

	signat	_I2C_INIT,88
psect	text176,local,class=CODE,delta=2
global __ptext176
__ptext176:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
