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
	FNCALL	_main,_MAX_INIT
	FNCALL	_main,_SPI_WRITE
	FNCALL	_MAX_INIT,_SPI_WRITE
	FNROOT	_main
	global	_PORTC
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
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
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
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
	global	?_MAX_INIT
?_MAX_INIT:	; 0 bytes @ 0x0
	global	?_SPI_WRITE
?_SPI_WRITE:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	SPI_WRITE@address
SPI_WRITE@address:	; 2 bytes @ 0x0
	ds	2
	global	SPI_WRITE@data
SPI_WRITE@data:	; 2 bytes @ 0x2
	ds	2
	global	??_MAX_INIT
??_MAX_INIT:	; 0 bytes @ 0x4
	global	??_SPI_WRITE
??_SPI_WRITE:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	3
	global	main@i
main@i:	; 2 bytes @ 0x7
	ds	2
	global	main@i_314
main@i_314:	; 2 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_SPI_WRITE
;;   _MAX_INIT->_SPI_WRITE
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
;; (0) _main                                                 7     7      0     150
;;                                              4 COMMON     7     7      0
;;                           _MAX_INIT
;;                          _SPI_WRITE
;; ---------------------------------------------------------------------------------
;; (1) _MAX_INIT                                             0     0      0      30
;;                          _SPI_WRITE
;; ---------------------------------------------------------------------------------
;; (1) _SPI_WRITE                                            4     0      4      30
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MAX_INIT
;;     _SPI_WRITE
;;   _SPI_WRITE
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       B       1       78.6%
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
;;		line 5 in file "C:\PIC16F877A Demo Concepts\SPI using MAX7219(7 Seg CC)\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMMON] int 
;;  i               2    7[COMMON] int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MAX_INIT
;;		_SPI_WRITE
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\SPI using MAX7219(7 Seg CC)\program.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l1747:	
;program.c: 6: SSPSTAT=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	7
	
l1749:	
;program.c: 7: SSPCON=0b00100000;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	8
	
l1751:	
;program.c: 8: PORTC=0x00;
	clrf	(7)	;volatile
	line	9
	
l1753:	
;program.c: 9: TRISC5=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1085/8)^080h,(1085)&7
	line	10
	
l1755:	
;program.c: 10: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	11
	
l1757:	
;program.c: 11: TRISC3=0;
	bcf	(1083/8)^080h,(1083)&7
	line	12
	
l1759:	
;program.c: 12: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	13
	
l1761:	
;program.c: 13: MAX_INIT();
	fcall	_MAX_INIT
	goto	l1763
	line	14
;program.c: 14: while(1){
	
l565:	
	line	15
	
l1763:	
;program.c: 15: for(int i=0;i<=9;i++){
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1765:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(0Ah)
	subwf	(main@i),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1769
u2160:
	goto	l1777
	
l1767:	
	goto	l1777
	
l566:	
	line	16
	
l1769:	
;program.c: 16: SPI_WRITE(0x01,i);
	movlw	low(01h)
	movwf	(?_SPI_WRITE)
	movlw	high(01h)
	movwf	((?_SPI_WRITE))+1
	movf	(main@i+1),w
	clrf	1+(?_SPI_WRITE)+02h
	addwf	1+(?_SPI_WRITE)+02h
	movf	(main@i),w
	clrf	0+(?_SPI_WRITE)+02h
	addwf	0+(?_SPI_WRITE)+02h

	fcall	_SPI_WRITE
	line	17
	
l1771:	
;program.c: 17: _delay((unsigned long)((1000)*(10000000/4000.0)));}
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u2207:
	decfsz	((??_main+0)+0),f
	goto	u2207
	decfsz	((??_main+0)+0+1),f
	goto	u2207
	decfsz	((??_main+0)+0+2),f
	goto	u2207
	clrwdt
opt asmopt_on

	line	15
	
l1773:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1775:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(0Ah)
	subwf	(main@i),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l1769
u2170:
	goto	l1777
	
l567:	
	line	18
	
l1777:	
;program.c: 18: for(int i=0;i<=9;i++){
	movlw	low(0)
	movwf	(main@i_314)
	movlw	high(0)
	movwf	((main@i_314))+1
	
l1779:	
	movf	(main@i_314+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(0Ah)
	subwf	(main@i_314),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l1783
u2180:
	goto	l1763
	
l1781:	
	goto	l1763
	
l568:	
	line	19
	
l1783:	
;program.c: 19: SPI_WRITE(0x03,i);
	movlw	low(03h)
	movwf	(?_SPI_WRITE)
	movlw	high(03h)
	movwf	((?_SPI_WRITE))+1
	movf	(main@i_314+1),w
	clrf	1+(?_SPI_WRITE)+02h
	addwf	1+(?_SPI_WRITE)+02h
	movf	(main@i_314),w
	clrf	0+(?_SPI_WRITE)+02h
	addwf	0+(?_SPI_WRITE)+02h

	fcall	_SPI_WRITE
	line	20
	
l1785:	
;program.c: 20: _delay((unsigned long)((1000)*(10000000/4000.0)));}}}
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u2217:
	decfsz	((??_main+0)+0),f
	goto	u2217
	decfsz	((??_main+0)+0+1),f
	goto	u2217
	decfsz	((??_main+0)+0+2),f
	goto	u2217
	clrwdt
opt asmopt_on

	line	18
	
l1787:	
	movlw	low(01h)
	addwf	(main@i_314),f
	skipnc
	incf	(main@i_314+1),f
	movlw	high(01h)
	addwf	(main@i_314+1),f
	
l1789:	
	movf	(main@i_314+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	low(0Ah)
	subwf	(main@i_314),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l1783
u2190:
	goto	l1763
	
l569:	
	goto	l1763
	line	20
	
l570:	
	line	14
	goto	l1763
	
l571:	
	line	20
	
l572:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_MAX_INIT
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _MAX_INIT *****************
;; Defined at:
;;		line 22 in file "C:\PIC16F877A Demo Concepts\SPI using MAX7219(7 Seg CC)\program.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SPI_WRITE
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text67
	file	"C:\PIC16F877A Demo Concepts\SPI using MAX7219(7 Seg CC)\program.c"
	line	22
	global	__size_of_MAX_INIT
	__size_of_MAX_INIT	equ	__end_of_MAX_INIT-_MAX_INIT
	
_MAX_INIT:	
	opt	stack 6
; Regs used in _MAX_INIT: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1745:	
;program.c: 23: SPI_WRITE(0x09,0xFF);
	movlw	low(09h)
	movwf	(?_SPI_WRITE)
	movlw	high(09h)
	movwf	((?_SPI_WRITE))+1
	movlw	low(0FFh)
	movwf	0+(?_SPI_WRITE)+02h
	movlw	high(0FFh)
	movwf	(0+(?_SPI_WRITE)+02h)+1
	fcall	_SPI_WRITE
	line	24
;program.c: 24: SPI_WRITE(0x0A,0xFF);
	movlw	low(0Ah)
	movwf	(?_SPI_WRITE)
	movlw	high(0Ah)
	movwf	((?_SPI_WRITE))+1
	movlw	low(0FFh)
	movwf	0+(?_SPI_WRITE)+02h
	movlw	high(0FFh)
	movwf	(0+(?_SPI_WRITE)+02h)+1
	fcall	_SPI_WRITE
	line	25
;program.c: 25: SPI_WRITE(0x0B,0xFF);
	movlw	low(0Bh)
	movwf	(?_SPI_WRITE)
	movlw	high(0Bh)
	movwf	((?_SPI_WRITE))+1
	movlw	low(0FFh)
	movwf	0+(?_SPI_WRITE)+02h
	movlw	high(0FFh)
	movwf	(0+(?_SPI_WRITE)+02h)+1
	fcall	_SPI_WRITE
	line	26
;program.c: 26: SPI_WRITE(0x0C,0xFF);}
	movlw	low(0Ch)
	movwf	(?_SPI_WRITE)
	movlw	high(0Ch)
	movwf	((?_SPI_WRITE))+1
	movlw	low(0FFh)
	movwf	0+(?_SPI_WRITE)+02h
	movlw	high(0FFh)
	movwf	(0+(?_SPI_WRITE)+02h)+1
	fcall	_SPI_WRITE
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_MAX_INIT
	__end_of_MAX_INIT:
;; =============== function _MAX_INIT ends ============

	signat	_MAX_INIT,88
	global	_SPI_WRITE
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _SPI_WRITE *****************
;; Defined at:
;;		line 28 in file "C:\PIC16F877A Demo Concepts\SPI using MAX7219(7 Seg CC)\program.c"
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
;;		_MAX_INIT
;; This function uses a non-reentrant model
;;
psect	text68
	file	"C:\PIC16F877A Demo Concepts\SPI using MAX7219(7 Seg CC)\program.c"
	line	28
	global	__size_of_SPI_WRITE
	__size_of_SPI_WRITE	equ	__end_of_SPI_WRITE-_SPI_WRITE
	
_SPI_WRITE:	
	opt	stack 7
; Regs used in _SPI_WRITE: [wreg]
	line	29
	
l953:	
;program.c: 29: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	30
	
l955:	
;program.c: 30: SSPBUF=address;
	movf	(SPI_WRITE@address),w
	movwf	(19)	;volatile
	line	31
;program.c: 31: while(SSPIF==0);
	goto	l578
	
l579:	
	
l578:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l578
u10:
	
l580:	
	line	32
;program.c: 32: SSPIF=0;
	bcf	(99/8),(99)&7
	line	33
	
l957:	
;program.c: 33: SSPBUF=data;
	movf	(SPI_WRITE@data),w
	movwf	(19)	;volatile
	line	34
;program.c: 34: while(SSPIF==0);
	goto	l581
	
l582:	
	
l581:	
	btfss	(99/8),(99)&7
	goto	u21
	goto	u20
u21:
	goto	l581
u20:
	
l583:	
	line	35
;program.c: 35: SSPIF=0;
	bcf	(99/8),(99)&7
	line	36
;program.c: 36: RC2=1;}
	bsf	(58/8),(58)&7
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_WRITE
	__end_of_SPI_WRITE:
;; =============== function _SPI_WRITE ends ============

	signat	_SPI_WRITE,8312
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
