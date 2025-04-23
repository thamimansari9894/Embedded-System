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
	FNCALL	_main,_send_rs
	FNCALL	_send_rs,_dis
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
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TXIF
_TXIF	set	100
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
	
STR_2:	
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	44	;','
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	68	;'D'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	79	;'O'
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
	global	?_dis
?_dis:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
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
	global	?_send_rs
?_send_rs:	; 0 bytes @ 0x4
	global	send_rs@data
send_rs@data:	; 1 bytes @ 0x4
	global	print@a
print@a:	; 2 bytes @ 0x4
	ds	1
	global	??_send_rs
??_send_rs:	; 0 bytes @ 0x5
	ds	1
	global	??_print
??_print:	; 0 bytes @ 0x6
	ds	2
	global	send_rs@address
send_rs@address:	; 1 bytes @ 0x8
	global	print@name
print@name:	; 1 bytes @ 0x8
	ds	1
	global	print@i
print@i:	; 2 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	3
;;Data sizes: Strings 25, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; print@name	PTR unsigned char  size(1) Largest target is 16
;;		 -> STR_2(CODE[16]), STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_print
;;   _send_rs->_dis
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
;; (0) _main                                                 3     3      0     165
;;                                             11 COMMON     3     3      0
;;                                _cmd
;;                              _print
;;                            _send_rs
;; ---------------------------------------------------------------------------------
;; (1) _send_rs                                              5     4      1      75
;;                                              4 COMMON     5     4      1
;;                                _dis
;; ---------------------------------------------------------------------------------
;; (1) _print                                                7     5      2      75
;;                                              4 COMMON     7     5      2
;;                                _dis
;; ---------------------------------------------------------------------------------
;; (2) _dis                                                  4     2      2      15
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  3     3      0      15
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _print
;;     _dis
;;   _send_rs
;;     _dis
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
;;		line 11 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
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
;;		_send_rs
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l1792:	
;program.c: 12: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	13
	
l1794:	
;program.c: 13: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	14
	
l1796:	
;program.c: 14: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	15
	
l1798:	
;program.c: 15: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	16
	
l1800:	
;program.c: 16: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	17
	
l1802:	
;program.c: 17: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	18
	
l1804:	
;program.c: 18: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	19
	
l1806:	
;program.c: 19: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	20
	
l1808:	
;program.c: 20: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	21
	
l1810:	
;program.c: 21: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	22
	
l1812:	
;program.c: 22: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	23
	
l1814:	
;program.c: 23: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	line	24
	
l1816:	
;program.c: 24: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	25
	
l1818:	
;program.c: 25: RD1=0;
	bcf	(65/8),(65)&7
	line	26
	
l1820:	
;program.c: 26: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	27
	
l1822:	
;program.c: 27: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	28
	
l1824:	
;program.c: 28: SPBRG=64;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	29
	
l1826:	
;program.c: 29: print("ALL GOOD",8);
	movlw	low(08h)
	movwf	(?_print)
	movlw	high(08h)
	movwf	((?_print))+1
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_print
	line	30
	
l1828:	
;program.c: 30: _delay((unsigned long)((3000)*(10000000/4000.0)));
	opt asmopt_off
movlw  38
movwf	((??_main+0)+0+2),f
movlw	232
movwf	((??_main+0)+0+1),f
	movlw	62
movwf	((??_main+0)+0),f
u2177:
	decfsz	((??_main+0)+0),f
	goto	u2177
	decfsz	((??_main+0)+0+1),f
	goto	u2177
	decfsz	((??_main+0)+0+2),f
	goto	u2177
	nop2
opt asmopt_on

	goto	l1830
	line	31
;program.c: 31: while(1){
	
l569:	
	line	32
	
l1830:	
;program.c: 32: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	33
	
l1832:	
;program.c: 33: _delay((unsigned long)((5000)*(10000000/4000.0)));
	opt asmopt_off
movlw  64
movwf	((??_main+0)+0+2),f
movlw	43
movwf	((??_main+0)+0+1),f
	movlw	192
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
	
l1834:	
;program.c: 34: send_rs('1','A');
	movlw	(041h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_send_rs)
	movlw	(031h)
	fcall	_send_rs
	line	35
	
l1836:	
;program.c: 35: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	36
	
l1838:	
;program.c: 36: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	line	37
	
l1840:	
;program.c: 37: print("DATA,ADDR TRANS",15);
	movlw	low(0Fh)
	movwf	(?_print)
	movlw	high(0Fh)
	movwf	((?_print))+1
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_print
	line	38
	
l1842:	
;program.c: 38: _delay((unsigned long)((5000)*(10000000/4000.0)));
	opt asmopt_off
movlw  64
movwf	((??_main+0)+0+2),f
movlw	43
movwf	((??_main+0)+0+1),f
	movlw	192
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

	line	39
	
l1844:	
;program.c: 39: cmd(0x01);}}
	movlw	(01h)
	fcall	_cmd
	goto	l1830
	
l570:	
	line	31
	goto	l1830
	
l571:	
	line	39
	
l572:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_rs
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _send_rs *****************
;; Defined at:
;;		line 41 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_dis
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
	line	41
	global	__size_of_send_rs
	__size_of_send_rs	equ	__end_of_send_rs-_send_rs
	
_send_rs:	
	opt	stack 6
; Regs used in _send_rs: [wreg+status,2+status,0+pclath+cstack]
;send_rs@address stored from wreg
	movwf	(send_rs@address)
	line	42
	
l1780:	
;program.c: 42: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	43
;program.c: 43: RD1=0;
	bcf	(65/8),(65)&7
	line	44
	
l1782:	
;program.c: 44: TXREG=address;
	movf	(send_rs@address),w
	movwf	(25)	;volatile
	line	45
;program.c: 45: while(TXIF==0);
	goto	l575
	
l576:	
	
l575:	
	btfss	(100/8),(100)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l575
u2150:
	
l577:	
	line	46
;program.c: 46: TXIF=0;
	bcf	(100/8),(100)&7
	line	47
	
l1784:	
;program.c: 47: _delay((unsigned long)((100)*(10000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_send_rs+0)+0+2),f
movlw	68
movwf	((??_send_rs+0)+0+1),f
	movlw	169
movwf	((??_send_rs+0)+0),f
u2207:
	decfsz	((??_send_rs+0)+0),f
	goto	u2207
	decfsz	((??_send_rs+0)+0+1),f
	goto	u2207
	decfsz	((??_send_rs+0)+0+2),f
	goto	u2207
	clrwdt
opt asmopt_on

	line	48
;program.c: 48: TXREG=data;
	movf	(send_rs@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	49
;program.c: 49: while(TXIF==0);
	goto	l578
	
l579:	
	
l578:	
	btfss	(100/8),(100)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l578
u2160:
	
l580:	
	line	50
;program.c: 50: TXIF=0;
	bcf	(100/8),(100)&7
	line	51
	
l1786:	
;program.c: 51: dis(address);
	movf	(send_rs@address),w
	movwf	(??_send_rs+0)+0
	clrf	(??_send_rs+0)+0+1
	movf	0+(??_send_rs+0)+0,w
	movwf	(?_dis)
	movf	1+(??_send_rs+0)+0,w
	movwf	(?_dis+1)
	fcall	_dis
	line	52
;program.c: 52: dis(data);
	movf	(send_rs@data),w
	movwf	(??_send_rs+0)+0
	clrf	(??_send_rs+0)+0+1
	movf	0+(??_send_rs+0)+0,w
	movwf	(?_dis)
	movf	1+(??_send_rs+0)+0,w
	movwf	(?_dis+1)
	fcall	_dis
	line	53
	
l1788:	
;program.c: 53: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	54
	
l1790:	
;program.c: 54: RD1=1;}
	bsf	(65/8),(65)&7
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_send_rs
	__end_of_send_rs:
;; =============== function _send_rs ends ============

	signat	_send_rs,8312
	global	_print
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _print *****************
;; Defined at:
;;		line 72 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
;; Parameters:    Size  Location     Type
;;  name            1    wreg     PTR unsigned char 
;;		 -> STR_2(16), STR_1(9), 
;;  a               2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  name            1    8[COMMON] PTR unsigned char 
;;		 -> STR_2(16), STR_1(9), 
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
psect	text92
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
	line	72
	global	__size_of_print
	__size_of_print	equ	__end_of_print-_print
	
_print:	
	opt	stack 6
; Regs used in _print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print@name stored from wreg
	line	74
	movwf	(print@name)
	
l1772:	
;program.c: 73: int i;
;program.c: 74: for (i=0;i<a;i++){
	movlw	low(0)
	movwf	(print@i)
	movlw	high(0)
	movwf	((print@i))+1
	goto	l1778
	
l591:	
	line	75
	
l1774:	
;program.c: 75: dis(name[i]);}}
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
	line	74
	
l1776:	
	movlw	low(01h)
	addwf	(print@i),f
	skipnc
	incf	(print@i+1),f
	movlw	high(01h)
	addwf	(print@i+1),f
	goto	l1778
	
l590:	
	
l1778:	
	movf	(print@i+1),w
	xorlw	80h
	movwf	(??_print+0)+0
	movf	(print@a+1),w
	xorlw	80h
	subwf	(??_print+0)+0,w
	skipz
	goto	u2145
	movf	(print@a),w
	subwf	(print@i),w
u2145:

	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l1774
u2140:
	goto	l593
	
l592:	
	line	75
	
l593:	
	return
	opt stack 0
GLOBAL	__end_of_print
	__end_of_print:
;; =============== function _print ends ============

	signat	_print,8312
	global	_dis
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _dis *****************
;; Defined at:
;;		line 64 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
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
;;		_send_rs
;;		_print
;; This function uses a non-reentrant model
;;
psect	text93
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
	line	64
	global	__size_of_dis
	__size_of_dis	equ	__end_of_dis-_dis
	
_dis:	
	opt	stack 6
; Regs used in _dis: [wreg]
	line	65
	
l1762:	
;program.c: 65: PORTB=dat;
	movf	(dis@dat),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	66
	
l1764:	
;program.c: 66: RC0=1;
	bsf	(56/8),(56)&7
	line	67
	
l1766:	
;program.c: 67: RW=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1186/8)^080h,(1186)&7
	line	68
	
l1768:	
;program.c: 68: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	69
;program.c: 69: _delay((unsigned long)((2)*(10000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_dis+0)+0+1),f
	movlw	125
movwf	((??_dis+0)+0),f
u2217:
	decfsz	((??_dis+0)+0),f
	goto	u2217
	decfsz	((??_dis+0)+0+1),f
	goto	u2217
opt asmopt_on

	line	70
	
l1770:	
;program.c: 70: RC1=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_dis
	__end_of_dis:
;; =============== function _dis ends ============

	signat	_dis,4216
	global	_cmd
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _cmd *****************
;; Defined at:
;;		line 56 in file "C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
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
psect	text94
	file	"C:\PIC16F877A Demo Concepts\UART using RS485 chip 1\program.c"
	line	56
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	57
	
l1752:	
;program.c: 57: PORTB=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	58
	
l1754:	
;program.c: 58: RC0=0;
	bcf	(56/8),(56)&7
	line	59
	
l1756:	
;program.c: 59: RW=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1186/8)^080h,(1186)&7
	line	60
	
l1758:	
;program.c: 60: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	61
;program.c: 61: _delay((unsigned long)((2)*(10000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_cmd+0)+0+1),f
	movlw	125
movwf	((??_cmd+0)+0),f
u2227:
	decfsz	((??_cmd+0)+0),f
	goto	u2227
	decfsz	((??_cmd+0)+0+1),f
	goto	u2227
opt asmopt_on

	line	62
	
l1760:	
;program.c: 62: RC1=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
