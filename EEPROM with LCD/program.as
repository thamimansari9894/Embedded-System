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
	FNCALL	_main,_EEPROM_write
	FNCALL	_main,_EEPROM_read
	FNCALL	_main,_dat
	FNROOT	_main
	global	_PORTC
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
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
	global	?_EEPROM_write
?_EEPROM_write:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_EEPROM_read
?_EEPROM_read:	; 2 bytes @ 0x0
	global	dat@dis
dat@dis:	; 2 bytes @ 0x0
	global	EEPROM_write@address
EEPROM_write@address:	; 2 bytes @ 0x0
	global	EEPROM_read@address
EEPROM_read@address:	; 2 bytes @ 0x0
	ds	2
	global	??_EEPROM_read
??_EEPROM_read:	; 0 bytes @ 0x2
	global	??_dat
??_dat:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	global	EEPROM_write@data
EEPROM_write@data:	; 2 bytes @ 0x2
	ds	2
	global	??_EEPROM_write
??_EEPROM_write:	; 0 bytes @ 0x4
	global	EEPROM_read@a
EEPROM_read@a:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
	global	main@data
main@data:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_EEPROM_read	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_EEPROM_read
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
;; (0) _main                                                 2     2      0     105
;;                                              6 COMMON     2     2      0
;;                                _cmd
;;                       _EEPROM_write
;;                        _EEPROM_read
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (1) _dat                                                  4     2      2      15
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_read                                          6     4      2      30
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  3     3      0      15
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_write                                         4     0      4      30
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _EEPROM_write
;;   _EEPROM_read
;;   _dat
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
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
;;		line 10 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            2    6[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_EEPROM_write
;;		_EEPROM_read
;;		_dat
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l1780:	
;program.c: 11: TRISC =0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	12
;program.c: 12: PORTC =0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	13
;program.c: 13: TRISD =0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	14
;program.c: 14: PORTD =0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	15
	
l1782:	
;program.c: 15: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	16
	
l1784:	
;program.c: 16: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	17
	
l1786:	
;program.c: 17: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	18
	
l1788:	
;program.c: 18: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	19
	
l1790:	
;program.c: 19: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	20
	
l1792:	
;program.c: 20: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l1794
	line	21
;program.c: 21: while (1){
	
l569:	
	line	22
	
l1794:	
;program.c: 22: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	24
	
l1796:	
;program.c: 23: int data;
;program.c: 24: EEPROM_write(0x00,'2');
	movlw	low(0)
	movwf	(?_EEPROM_write)
	movlw	high(0)
	movwf	((?_EEPROM_write))+1
	movlw	low(032h)
	movwf	0+(?_EEPROM_write)+02h
	movlw	high(032h)
	movwf	(0+(?_EEPROM_write)+02h)+1
	fcall	_EEPROM_write
	line	25
	
l1798:	
;program.c: 25: data=EEPROM_read(0x00);
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	movf	(1+(?_EEPROM_read)),w
	clrf	(main@data+1)
	addwf	(main@data+1)
	movf	(0+(?_EEPROM_read)),w
	clrf	(main@data)
	addwf	(main@data)

	line	26
	
l1800:	
;program.c: 26: dat(data);}}
	movf	(main@data+1),w
	clrf	(?_dat+1)
	addwf	(?_dat+1)
	movf	(main@data),w
	clrf	(?_dat)
	addwf	(?_dat)

	fcall	_dat
	goto	l1794
	
l570:	
	line	21
	goto	l1794
	
l571:	
	line	26
	
l572:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_dat
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _dat *****************
;; Defined at:
;;		line 36 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
;; Parameters:    Size  Location     Type
;;  dis             2    0[COMMON] int 
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
;; This function uses a non-reentrant model
;;
psect	text97
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
	line	36
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 7
; Regs used in _dat: [wreg]
	line	37
	
l1770:	
;program.c: 37: PORTD=dis;
	movf	(dat@dis),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	38
	
l1772:	
;program.c: 38: RC0=1;
	bsf	(56/8),(56)&7
	line	39
	
l1774:	
;program.c: 39: RC1=0;
	bcf	(57/8),(57)&7
	line	40
;program.c: 40: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_dat+0)+0+1),f
	movlw	118
movwf	((??_dat+0)+0),f
u2157:
	decfsz	((??_dat+0)+0),f
	goto	u2157
	decfsz	((??_dat+0)+0+1),f
	goto	u2157
	clrwdt
opt asmopt_on

	line	41
	
l1776:	
;program.c: 41: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	42
	
l1778:	
;program.c: 42: RC2=0;}
	bcf	(58/8),(58)&7
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_EEPROM_read
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _EEPROM_read *****************
;; Defined at:
;;		line 55 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
;; Parameters:    Size  Location     Type
;;  address         2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  a               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text98
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
	line	55
	global	__size_of_EEPROM_read
	__size_of_EEPROM_read	equ	__end_of_EEPROM_read-_EEPROM_read
	
_EEPROM_read:	
	opt	stack 7
; Regs used in _EEPROM_read: [wreg+status,2+status,0]
	line	57
	
l1760:	
;program.c: 56: int a;
;program.c: 57: EEADR=address;
	movf	(EEPROM_read@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	58
	
l1762:	
;program.c: 58: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	59
	
l1764:	
;program.c: 59: RD=1;
	bsf	(3168/8)^0180h,(3168)&7
	line	60
;program.c: 60: a=EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(??_EEPROM_read+0)+0
	clrf	(??_EEPROM_read+0)+0+1
	movf	0+(??_EEPROM_read+0)+0,w
	movwf	(EEPROM_read@a)
	movf	1+(??_EEPROM_read+0)+0,w
	movwf	(EEPROM_read@a+1)
	line	61
;program.c: 61: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_EEPROM_read+0)+0+1),f
	movlw	118
movwf	((??_EEPROM_read+0)+0),f
u2167:
	decfsz	((??_EEPROM_read+0)+0),f
	goto	u2167
	decfsz	((??_EEPROM_read+0)+0+1),f
	goto	u2167
	clrwdt
opt asmopt_on

	line	62
	
l1766:	
;program.c: 62: return a;}
	movf	(EEPROM_read@a+1),w
	clrf	(?_EEPROM_read+1)
	addwf	(?_EEPROM_read+1)
	movf	(EEPROM_read@a),w
	clrf	(?_EEPROM_read)
	addwf	(?_EEPROM_read)

	goto	l587
	
l1768:	
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_read
	__end_of_EEPROM_read:
;; =============== function _EEPROM_read ends ============

	signat	_EEPROM_read,4218
	global	_cmd
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _cmd *****************
;; Defined at:
;;		line 28 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
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
psect	text99
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
	line	28
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	29
	
l1750:	
;program.c: 29: PORTD=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l1752:	
;program.c: 30: RC0=0;
	bcf	(56/8),(56)&7
	line	31
	
l1754:	
;program.c: 31: RC1=0;
	bcf	(57/8),(57)&7
	line	32
;program.c: 32: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_cmd+0)+0+1),f
	movlw	238
movwf	((??_cmd+0)+0),f
u2177:
	decfsz	((??_cmd+0)+0),f
	goto	u2177
	decfsz	((??_cmd+0)+0+1),f
	goto	u2177
	clrwdt
opt asmopt_on

	line	33
	
l1756:	
;program.c: 33: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	34
	
l1758:	
;program.c: 34: RC2=0;}
	bcf	(58/8),(58)&7
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_EEPROM_write
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _EEPROM_write *****************
;; Defined at:
;;		line 44 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
;; Parameters:    Size  Location     Type
;;  address         2    0[COMMON] int 
;;  data            2    2[COMMON] int 
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
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text100
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD\program.c"
	line	44
	global	__size_of_EEPROM_write
	__size_of_EEPROM_write	equ	__end_of_EEPROM_write-_EEPROM_write
	
_EEPROM_write:	
	opt	stack 7
; Regs used in _EEPROM_write: [wreg]
	line	45
	
l956:	
;program.c: 45: EEADR=address;
	movf	(EEPROM_write@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	46
;program.c: 46: EEDATA=data;
	movf	(EEPROM_write@data),w
	movwf	(268)^0100h	;volatile
	line	47
	
l958:	
;program.c: 47: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	48
	
l960:	
;program.c: 48: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	49
;program.c: 49: EECON2=0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	50
;program.c: 50: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	51
	
l962:	
;program.c: 51: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	52
;program.c: 52: while(WR==1);
	goto	l581
	
l582:	
	
l581:	
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u11
	goto	u10
u11:
	goto	l581
u10:
	
l583:	
	line	53
;program.c: 53: WREN=0;}
	bcf	(3170/8)^0180h,(3170)&7
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_write
	__end_of_EEPROM_write:
;; =============== function _EEPROM_write ends ============

	signat	_EEPROM_write,8312
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
