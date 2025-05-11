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
	FNCALL	_main,_EEPROM_read
	FNCALL	_main,_dat
	FNCALL	_main,_EEPROM_write
	FNROOT	_main
	global	main@F523
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
	line	23

;initializer for main@F523
	retlw	04Dh
	retlw	04Fh
	retlw	04Eh
	retlw	04Bh
	retlw	059h
	retlw	020h
	retlw	044h
	retlw	020h
	retlw	04Ch
	retlw	055h
	retlw	046h
	retlw	046h
	retlw	059h
	retlw	0
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
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
main@F523:
       ds      14

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
	movlw low(__pdataBANK0+14)
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
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	??_cmd
??_cmd:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_EEPROM_write
?_EEPROM_write:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_EEPROM_read
?_EEPROM_read:	; 1 bytes @ 0x0
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
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@name
main@name:	; 14 bytes @ 0x0
	ds	14
	global	main@stop
main@stop:	; 2 bytes @ 0xE
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x10
	ds	2
;;Data sizes: Strings 0, constant 0, data 14, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     18      32
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                22    22      0     270
;;                                              6 COMMON     4     4      0
;;                                              0 BANK0     18    18      0
;;                                _cmd
;;                        _EEPROM_read
;;                                _dat
;;                       _EEPROM_write
;; ---------------------------------------------------------------------------------
;; (1) _dat                                                  4     2      2      22
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_read                                          6     4      2      45
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_write                                         4     0      4      44
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _EEPROM_read
;;   _dat
;;   _EEPROM_write
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
;;DATA                 0      0      2B      12        0.0%
;;ABS                  0      0      2A       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     12      20       5       40.0%
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
;;		line 10 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  name           14    0[BANK0 ] unsigned char [14]
;;  i               2   16[BANK0 ] int 
;;  stop            2   14[BANK0 ] int 
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
;;      Locals:         0      18       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      18       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_EEPROM_read
;;		_dat
;;		_EEPROM_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	11
	
l1863:	
;program.c: 11: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	12
;program.c: 12: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	13
;program.c: 13: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	14
;program.c: 14: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	15
	
l1865:	
;program.c: 15: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	16
	
l1867:	
;program.c: 16: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	17
	
l1869:	
;program.c: 17: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	18
	
l1871:	
;program.c: 18: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	19
	
l1873:	
;program.c: 19: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	20
	
l1875:	
;program.c: 20: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	line	23
	
l1877:	
;program.c: 21: int stop,i;
;program.c: 23: char name[]={"MONKY D LUFFY"};
	movlw	(main@name)&0ffh
	movwf	fsr0
	movlw	low(main@F523)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	14
	movwf	((??_main+0)+0+2)
u2200:
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
	goto	u2200
	line	25
	
l1879:	
;program.c: 25: if((EEPROM_read(0x00)>=0)&&(EEPROM_read(0x00)<=13)){
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	
l1881:	
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	movwf	(??_main+0)+0
	movlw	(0Eh)
	subwf	0+(??_main+0)+0,w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l571
u2210:
	line	26
	
l1883:	
;program.c: 26: stop=EEPROM_read(0x00);}
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@stop)
	movf	1+(??_main+0)+0,w
	movwf	(main@stop+1)
	
l571:	
	line	28
;program.c: 28: if((EEPROM_read(0x00)==0xFF)){}
	movlw	low(0)
	movwf	(?_EEPROM_read)
	movlw	high(0)
	movwf	((?_EEPROM_read))+1
	fcall	_EEPROM_read
	goto	l1885
	
l572:	
	goto	l1885
	line	30
;program.c: 30: while (1){
	
l573:	
	line	31
	
l1885:	
;program.c: 31: for(i=stop;i<=13;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@stop+1),w
	clrf	(main@i+1)
	addwf	(main@i+1)
	movf	(main@stop),w
	clrf	(main@i)
	addwf	(main@i)

	
l1887:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(0Eh)
	subwf	(main@i),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l1891
u2220:
	goto	l1901
	
l1889:	
	goto	l1901
	
l574:	
	line	32
	
l1891:	
;program.c: 32: dat(name[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@name&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_dat)
	movf	1+(??_main+0)+0,w
	movwf	(?_dat+1)
	fcall	_dat
	line	33
	
l1893:	
;program.c: 33: EEPROM_write(0x00,i);
	movlw	low(0)
	movwf	(?_EEPROM_write)
	movlw	high(0)
	movwf	((?_EEPROM_write))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i+1),w
	clrf	1+(?_EEPROM_write)+02h
	addwf	1+(?_EEPROM_write)+02h
	movf	(main@i),w
	clrf	0+(?_EEPROM_write)+02h
	addwf	0+(?_EEPROM_write)+02h

	fcall	_EEPROM_write
	line	34
	
l1895:	
;program.c: 34: _delay((unsigned long)((20)*(20000000/4000.0)));}
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	nop2
opt asmopt_on

	line	31
	
l1897:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1899:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(0Eh)
	subwf	(main@i),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1891
u2230:
	goto	l1901
	
l575:	
	line	35
	
l1901:	
;program.c: 35: EEPROM_write(0x00,0xFF);
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
	line	36
;program.c: 36: while(1){}}}
	
l576:	
	
l577:	
	goto	l577
	
l578:	
	goto	l1885
	
l579:	
	line	30
	goto	l1885
	
l580:	
	line	36
	
l581:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_dat
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _dat *****************
;; Defined at:
;;		line 46 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
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
psect	text157
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
	line	46
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 7
; Regs used in _dat: [wreg]
	line	47
	
l1853:	
;program.c: 47: PORTD=dis;
	movf	(dat@dis),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	48
	
l1855:	
;program.c: 48: RC0=1;
	bsf	(56/8),(56)&7
	line	49
	
l1857:	
;program.c: 49: RC1=0;
	bcf	(57/8),(57)&7
	line	50
;program.c: 50: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_dat+0)+0+1),f
	movlw	238
movwf	((??_dat+0)+0),f
u2257:
	decfsz	((??_dat+0)+0),f
	goto	u2257
	decfsz	((??_dat+0)+0+1),f
	goto	u2257
	clrwdt
opt asmopt_on

	line	51
	
l1859:	
;program.c: 51: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	52
	
l1861:	
;program.c: 52: RC2=0;}
	bcf	(58/8),(58)&7
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_EEPROM_read
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

;; *************** function _EEPROM_read *****************
;; Defined at:
;;		line 65 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
;; Parameters:    Size  Location     Type
;;  address         2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  a               2    4[COMMON] int 
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
psect	text158
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
	line	65
	global	__size_of_EEPROM_read
	__size_of_EEPROM_read	equ	__end_of_EEPROM_read-_EEPROM_read
	
_EEPROM_read:	
	opt	stack 7
; Regs used in _EEPROM_read: [wreg]
	line	67
	
l1845:	
;program.c: 66: int a;
;program.c: 67: EEADR=address;
	movf	(EEPROM_read@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	68
;program.c: 68: a=EEDATA;
	movf	(268)^0100h,w	;volatile
	movwf	(??_EEPROM_read+0)+0
	clrf	(??_EEPROM_read+0)+0+1
	movf	0+(??_EEPROM_read+0)+0,w
	movwf	(EEPROM_read@a)
	movf	1+(??_EEPROM_read+0)+0,w
	movwf	(EEPROM_read@a+1)
	line	69
	
l1847:	
;program.c: 69: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	70
	
l1849:	
;program.c: 70: RD=1;
	bsf	(3168/8)^0180h,(3168)&7
	line	71
;program.c: 71: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_EEPROM_read+0)+0+1),f
	movlw	118
movwf	((??_EEPROM_read+0)+0),f
u2267:
	decfsz	((??_EEPROM_read+0)+0),f
	goto	u2267
	decfsz	((??_EEPROM_read+0)+0+1),f
	goto	u2267
	clrwdt
opt asmopt_on

	line	72
;program.c: 72: return a;}
	movf	(EEPROM_read@a),w
	goto	l596
	
l1851:	
	
l596:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_read
	__end_of_EEPROM_read:
;; =============== function _EEPROM_read ends ============

	signat	_EEPROM_read,4217
	global	_cmd
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _cmd *****************
;; Defined at:
;;		line 38 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
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
psect	text159
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
	line	38
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	39
	
l1835:	
;program.c: 39: PORTD=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	40
	
l1837:	
;program.c: 40: RC0=0;
	bcf	(56/8),(56)&7
	line	41
	
l1839:	
;program.c: 41: RC1=0;
	bcf	(57/8),(57)&7
	line	42
;program.c: 42: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_cmd+0)+0+1),f
	movlw	238
movwf	((??_cmd+0)+0),f
u2277:
	decfsz	((??_cmd+0)+0),f
	goto	u2277
	decfsz	((??_cmd+0)+0+1),f
	goto	u2277
	clrwdt
opt asmopt_on

	line	43
	
l1841:	
;program.c: 43: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	44
	
l1843:	
;program.c: 44: RC2=0;}
	bcf	(58/8),(58)&7
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_EEPROM_write
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _EEPROM_write *****************
;; Defined at:
;;		line 54 in file "C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
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
psect	text160
	file	"C:\PIC16F877A Demo Concepts\EEPROM with LCD Name print\program.c"
	line	54
	global	__size_of_EEPROM_write
	__size_of_EEPROM_write	equ	__end_of_EEPROM_write-_EEPROM_write
	
_EEPROM_write:	
	opt	stack 7
; Regs used in _EEPROM_write: [wreg]
	line	55
	
l1827:	
;program.c: 55: EEADR=address;
	movf	(EEPROM_write@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	56
;program.c: 56: EEDATA=data;
	movf	(EEPROM_write@data),w
	movwf	(268)^0100h	;volatile
	line	57
	
l1829:	
;program.c: 57: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	58
	
l1831:	
;program.c: 58: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	59
;program.c: 59: EECON2=0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	60
;program.c: 60: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	61
	
l1833:	
;program.c: 61: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	62
;program.c: 62: while(WR==1);
	goto	l590
	
l591:	
	
l590:	
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l590
u2190:
	
l592:	
	line	63
;program.c: 63: WREN=0;}
	bcf	(3170/8)^0180h,(3170)&7
	
l593:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_write
	__end_of_EEPROM_write:
;; =============== function _EEPROM_write ends ============

	signat	_EEPROM_write,8312
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
