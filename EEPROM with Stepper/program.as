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
	FNCALL	_main,_EEPROM_read
	FNCALL	_main,_EEPROM_write
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	main@F521
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
	line	21

;initializer for main@F521
	retlw	08h
	retlw	0Ch
	retlw	04h
	retlw	06h
	retlw	02h
	retlw	03h
	retlw	01h
	retlw	09h
	retlw	0
	retlw	0
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_INTF
_INTF	set	89
	global	_RD0
_RD0	set	64
	global	_TRISB
_TRISB	set	134
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

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
main@F521:
       ds      10

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
	movlw low(__pdataBANK0+10)
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
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	??_isr
??_isr:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	?_EEPROM_write
?_EEPROM_write:	; 0 bytes @ 0x4
	global	?_EEPROM_read
?_EEPROM_read:	; 1 bytes @ 0x4
	global	EEPROM_write@address
EEPROM_write@address:	; 2 bytes @ 0x4
	global	EEPROM_read@address
EEPROM_read@address:	; 2 bytes @ 0x4
	ds	2
	global	??_EEPROM_read
??_EEPROM_read:	; 0 bytes @ 0x6
	global	EEPROM_write@data
EEPROM_write@data:	; 2 bytes @ 0x6
	ds	2
	global	??_EEPROM_write
??_EEPROM_write:	; 0 bytes @ 0x8
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	EEPROM_read@a
EEPROM_read@a:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	4
	global	main@a
main@a:	; 10 bytes @ 0x6
	ds	10
	global	main@stop
main@stop:	; 2 bytes @ 0x10
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x12
	ds	2
;;Data sizes: Strings 0, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80     20      30
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_EEPROM_read
;;
;; Critical Paths under _isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_EEPROM_read
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                18    18      0     226
;;                                              2 BANK0     18    18      0
;;                        _EEPROM_read
;;                       _EEPROM_write
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_read                                          7     5      2      45
;;                                              4 COMMON     5     3      2
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_write                                         4     0      4      44
;;                                              4 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _isr                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _EEPROM_read
;;   _EEPROM_write
;;
;; _isr (ROOT)
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
;;DATA                 0      0      28      12        0.0%
;;ABS                  0      0      27       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     14      1E       5       37.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a              10    6[BANK0 ] unsigned char [10]
;;  i               2   18[BANK0 ] int 
;;  stop            2   16[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_EEPROM_read
;;		_EEPROM_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	12
	
l1815:	
;Program.c: 12: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	13
;Program.c: 13: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	14
;Program.c: 14: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	15
;Program.c: 15: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	16
;Program.c: 16: PORTB=0x00;
	clrf	(6)	;volatile
	line	17
	
l1817:	
;Program.c: 17: TRISB=1;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	18
	
l1819:	
;Program.c: 18: INTCON=0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	21
	
l1821:	
;Program.c: 20: int stop,i;
;Program.c: 21: char a[10]={0x08,0x0C,0x04,0x06,0x02,0x03,0x01,0x09};
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	low(main@F521)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2210:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2210
	line	22
	
l1823:	
;Program.c: 22: if((EEPROM_read(0x00)>=0)&&(EEPROM_read(0x00)<=8)){
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	
l1825:	
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	(09h)
	subwf	0+(??_main+0)+0,w
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l571
u2220:
	line	23
	
l1827:	
;Program.c: 23: stop=EEPROM_read(0x00);}
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@stop)
	movf	1+(??_main+0)+0,w
	movwf	(main@stop+1)
	
l571:	
	line	24
;Program.c: 24: if((EEPROM_read(0x00)==0xFF)){}
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	goto	l1829
	
l572:	
	goto	l1829
	line	26
;Program.c: 26: while (1){
	
l573:	
	line	27
	
l1829:	
;Program.c: 27: for(i=stop;i<=8;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@stop+1),w
	clrf	(main@i+1)
	addwf	(main@i+1)
	movf	(main@stop),w
	clrf	(main@i)
	addwf	(main@i)

	
l1831:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(09h)
	subwf	(main@i),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1835
u2230:
	goto	l1845
	
l1833:	
	goto	l1845
	
l574:	
	line	28
	
l1835:	
;Program.c: 28: PORTC=a[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	29
	
l1837:	
;Program.c: 29: EEPROM_write(0x00,i);
	movlw	low(0)
	movwf	(?_EEPROM_write)
	movlw	high(0)
	movwf	((?_EEPROM_write))+1
	movf	(main@i+1),w
	clrf	1+(?_EEPROM_write)+02h
	addwf	1+(?_EEPROM_write)+02h
	movf	(main@i),w
	clrf	0+(?_EEPROM_write)+02h
	addwf	0+(?_EEPROM_write)+02h

	fcall	_EEPROM_write
	line	30
	
l1839:	
;Program.c: 30: _delay((unsigned long)((50)*(20000000/4000.0)));}
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	decfsz	((??_main+0)+0+2),f
	goto	u2257
	clrwdt
opt asmopt_on

	line	27
	
l1841:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1843:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(09h)
	subwf	(main@i),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l1835
u2240:
	goto	l1845
	
l575:	
	line	31
	
l1845:	
;Program.c: 31: EEPROM_write(0x00,0xFF);
	movlw	low(0)
	movwf	(?_EEPROM_write)
	movlw	high(0)
	movwf	((?_EEPROM_write))+1
	movlw	low(0FFh)
	movwf	0+(?_EEPROM_write)+02h
	movlw	high(0FFh)
	movwf	(0+(?_EEPROM_write)+02h)+1
	fcall	_EEPROM_write
	goto	l577
	line	32
;Program.c: 32: while(1){}}}
	
l576:	
	
l577:	
	goto	l577
	
l578:	
	goto	l1829
	
l579:	
	line	26
	goto	l1829
	
l580:	
	line	32
	
l581:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_EEPROM_read
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _EEPROM_read *****************
;; Defined at:
;;		line 45 in file "C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
;; Parameters:    Size  Location     Type
;;  address         2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  a               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       2       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text120
	file	"C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
	line	45
	global	__size_of_EEPROM_read
	__size_of_EEPROM_read	equ	__end_of_EEPROM_read-_EEPROM_read
	
_EEPROM_read:	
	opt	stack 6
; Regs used in _EEPROM_read: [wreg]
	line	47
	
l1807:	
;Program.c: 46: int a;
;Program.c: 47: EEADR=address;
	movf	(EEPROM_read@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	48
;Program.c: 48: a=EEDATA;
	movf	(268)^0100h,w	;volatile
	movwf	(??_EEPROM_read+0)+0
	clrf	(??_EEPROM_read+0)+0+1
	movf	0+(??_EEPROM_read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(EEPROM_read@a)
	movf	1+(??_EEPROM_read+0)+0,w
	movwf	(EEPROM_read@a+1)
	line	49
	
l1809:	
;Program.c: 49: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	50
	
l1811:	
;Program.c: 50: RD=1;
	bsf	(3168/8)^0180h,(3168)&7
	line	51
;Program.c: 51: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_EEPROM_read+0)+0+2),f
movlw	68
movwf	((??_EEPROM_read+0)+0+1),f
	movlw	169
movwf	((??_EEPROM_read+0)+0),f
u2267:
	decfsz	((??_EEPROM_read+0)+0),f
	goto	u2267
	decfsz	((??_EEPROM_read+0)+0+1),f
	goto	u2267
	decfsz	((??_EEPROM_read+0)+0+2),f
	goto	u2267
	clrwdt
opt asmopt_on

	line	52
;Program.c: 52: return a;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(EEPROM_read@a),w
	goto	l590
	
l1813:	
	
l590:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_read
	__end_of_EEPROM_read:
;; =============== function _EEPROM_read ends ============

	signat	_EEPROM_read,4217
	global	_EEPROM_write
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _EEPROM_write *****************
;; Defined at:
;;		line 34 in file "C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
;; Parameters:    Size  Location     Type
;;  address         2    4[COMMON] int 
;;  data            2    6[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121
	file	"C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
	line	34
	global	__size_of_EEPROM_write
	__size_of_EEPROM_write	equ	__end_of_EEPROM_write-_EEPROM_write
	
_EEPROM_write:	
	opt	stack 6
; Regs used in _EEPROM_write: [wreg]
	line	35
	
l1799:	
;Program.c: 35: EEADR=address;
	movf	(EEPROM_write@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	36
;Program.c: 36: EEDATA=data;
	movf	(EEPROM_write@data),w
	movwf	(268)^0100h	;volatile
	line	37
	
l1801:	
;Program.c: 37: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	38
	
l1803:	
;Program.c: 38: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	39
;Program.c: 39: EECON2=0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	40
;Program.c: 40: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	41
	
l1805:	
;Program.c: 41: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	42
;Program.c: 42: while(WR==1);
	goto	l584
	
l585:	
	
l584:	
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l584
u2200:
	
l586:	
	line	43
;Program.c: 43: WREN=0;}
	bcf	(3170/8)^0180h,(3170)&7
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_write
	__end_of_EEPROM_write:
;; =============== function _EEPROM_write ends ============

	signat	_EEPROM_write,8312
	global	_isr
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _isr *****************
;; Defined at:
;;		line 6 in file "C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text122
	file	"C:\PIC16F877A Demo Concepts\EEPROM with Stepper\Program.c"
	line	6
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 6
; Regs used in _isr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text122
	line	7
	
i1l959:	
;Program.c: 7: if(INTF==1){
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l566
u1_20:
	line	8
	
i1l961:	
;Program.c: 8: RD0=~RD0;
	movlw	1<<((64)&7)
	xorwf	((64)/8),f
	line	9
	
i1l963:	
;Program.c: 9: INTF=0;}}
	bcf	(89/8),(89)&7
	goto	i1l566
	
i1l565:	
	
i1l566:	
	movf	(??_isr+3),w
	movwf	btemp+1
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	movf	(??_isr+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
