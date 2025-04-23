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
	FNROOT	_main
	global	_PORTC
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "C:\PIC16F877A Demo Concepts\SPI Basic program\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\SPI Basic program\program.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	4
	
l1725:	
;program.c: 4: SSPSTAT=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	5
	
l1727:	
;program.c: 5: SSPCON=0b00100000;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	6
	
l1729:	
;program.c: 6: PORTC=0x00;
	clrf	(7)	;volatile
	line	7
	
l1731:	
;program.c: 7: TRISC5=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1085/8)^080h,(1085)&7
	line	8
	
l1733:	
;program.c: 8: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	9
	
l1735:	
;program.c: 9: TRISC3=0;
	bcf	(1083/8)^080h,(1083)&7
	line	10
	
l1737:	
;program.c: 10: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	11
	
l1739:	
;program.c: 11: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	12
;program.c: 12: _delay((unsigned long)((1000)*(10000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u2167:
	decfsz	((??_main+0)+0),f
	goto	u2167
	decfsz	((??_main+0)+0+1),f
	goto	u2167
	decfsz	((??_main+0)+0+2),f
	goto	u2167
	clrwdt
opt asmopt_on

	line	13
	
l1741:	
;program.c: 13: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	14
;program.c: 14: SSPBUF=0x01;
	movlw	(01h)
	movwf	(19)	;volatile
	line	15
;program.c: 15: while(SSPIF==0);
	goto	l561
	
l562:	
	
l561:	
	btfss	(99/8),(99)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l561
u2140:
	
l563:	
	line	16
;program.c: 16: SSPIF=0;
	bcf	(99/8),(99)&7
	line	17
	
l1743:	
;program.c: 17: SSPBUF=0x2A;
	movlw	(02Ah)
	movwf	(19)	;volatile
	line	18
;program.c: 18: while(SSPIF==0);
	goto	l564
	
l565:	
	
l564:	
	btfss	(99/8),(99)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l564
u2150:
	
l566:	
	line	19
;program.c: 19: SSPIF=0;
	bcf	(99/8),(99)&7
	line	20
;program.c: 20: RC2=1;
	bsf	(58/8),(58)&7
	goto	l568
	line	21
;program.c: 21: while(1){}}
	
l567:	
	
l568:	
	goto	l568
	
l569:	
	
l570:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
