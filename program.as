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
	FNCALL	_main,_wait
	FNCALL	_main,_dis
	FNROOT	_main
	global	_PORTC
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:
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
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
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
	global	?_wait
?_wait:	; 0 bytes @ 0x0
	global	??_wait
??_wait:	; 0 bytes @ 0x0
	global	?_dis
?_dis:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	wait@data
wait@data:	; 1 bytes @ 0x0
	global	dis@dat
dis@dat:	; 2 bytes @ 0x0
	ds	2
	global	??_dis
??_dis:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@lat
main@lat:	; 20 bytes @ 0x0
	ds	20
	global	main@log
main@log:	; 20 bytes @ 0x14
	ds	20
	global	main@i
main@i:	; 2 bytes @ 0x28
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     42      42
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_dis
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                44    44      0     432
;;                                              4 COMMON     2     2      0
;;                                              0 BANK0     42    42      0
;;                                _cmd
;;                               _wait
;;                                _dis
;; ---------------------------------------------------------------------------------
;; (1) _dis                                                  4     2      2      22
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _wait                                                 1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _wait
;;   _dis
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     2A      2A       5       52.5%
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
;;		line 9 in file "C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  log            20   20[BANK0 ] unsigned char [20]
;;  lat            20    0[BANK0 ] unsigned char [20]
;;  i               2   40[BANK0 ] int 
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
;;      Locals:         0      42       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      42       0       0       0
;;Total ram usage:       44 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_wait
;;		_dis
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l1897:	
;program.c: 10: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	11
;program.c: 11: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	12
;program.c: 12: SPBRG=64;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	13
;program.c: 13: TRISC=0x80;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	line	14
	
l1899:	
;program.c: 14: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	15
	
l1901:	
;program.c: 15: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	16
	
l1903:	
;program.c: 16: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	17
	
l1905:	
;program.c: 17: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	18
	
l1907:	
;program.c: 18: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	19
	
l1909:	
;program.c: 19: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	20
	
l1911:	
;program.c: 20: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	21
	
l1913:	
;program.c: 21: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	22
	
l1915:	
;program.c: 22: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l1917
	line	26
;program.c: 23: char lat[20];
;program.c: 24: char log[20];
;program.c: 25: int i;
;program.c: 26: while(1){
	
l567:	
	line	27
	
l1917:	
;program.c: 27: wait('G');
	movlw	(047h)
	fcall	_wait
	line	28
	
l1919:	
;program.c: 28: wait('P');
	movlw	(050h)
	fcall	_wait
	line	29
	
l1921:	
;program.c: 29: wait('R');
	movlw	(052h)
	fcall	_wait
	line	30
	
l1923:	
;program.c: 30: wait('M');
	movlw	(04Dh)
	fcall	_wait
	line	31
	
l1925:	
;program.c: 31: wait('C');
	movlw	(043h)
	fcall	_wait
	line	32
	
l1927:	
;program.c: 32: wait(',');
	movlw	(02Ch)
	fcall	_wait
	line	33
	
l1929:	
;program.c: 33: wait(',');
	movlw	(02Ch)
	fcall	_wait
	line	34
	
l1931:	
;program.c: 34: wait(',');
	movlw	(02Ch)
	fcall	_wait
	line	36
	
l1933:	
;program.c: 36: for(i=0;i<=20;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1935:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(015h)
	subwf	(main@i),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l570
u2300:
	goto	l1949
	
l1937:	
	goto	l1949
	
l568:	
	line	37
;program.c: 37: while(RCIF==0);
	goto	l570
	
l571:	
	
l570:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l570
u2310:
	
l572:	
	line	38
;program.c: 38: RCIF=0;
	bcf	(101/8),(101)&7
	line	39
	
l1939:	
;program.c: 39: if(RCREG==','){
	movf	(26),w	;volatile
	xorlw	02Ch
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l1943
u2320:
	goto	l1949
	line	40
	
l1941:	
;program.c: 40: break;}
	goto	l1949
	
l573:	
	line	41
	
l1943:	
;program.c: 41: lat[i]=RCREG;}
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@lat&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	36
	
l1945:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1947:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(015h)
	subwf	(main@i),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l570
u2330:
	goto	l1949
	
l569:	
	line	43
	
l1949:	
;program.c: 43: wait(',');
	movlw	(02Ch)
	fcall	_wait
	line	45
	
l1951:	
;program.c: 45: for(i=0;i<=20;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1953:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(015h)
	subwf	(main@i),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l576
u2340:
	goto	l1967
	
l1955:	
	goto	l1967
	
l574:	
	line	46
;program.c: 46: while(RCIF==0);
	goto	l576
	
l577:	
	
l576:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l576
u2350:
	
l578:	
	line	47
;program.c: 47: RCIF=0;
	bcf	(101/8),(101)&7
	line	48
	
l1957:	
;program.c: 48: if(RCREG==','){
	movf	(26),w	;volatile
	xorlw	02Ch
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l1961
u2360:
	goto	l1967
	line	49
	
l1959:	
;program.c: 49: break;}
	goto	l1967
	
l579:	
	line	50
	
l1961:	
;program.c: 50: log[i]=RCREG;}
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@log&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	45
	
l1963:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1965:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(015h)
	subwf	(main@i),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l576
u2370:
	goto	l1967
	
l575:	
	line	52
	
l1967:	
;program.c: 52: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	53
	
l1969:	
;program.c: 53: for(i=0;i<=20;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1971:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(015h)
	subwf	(main@i),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l1975
u2380:
	goto	l1981
	
l1973:	
	goto	l1981
	
l580:	
	line	54
	
l1975:	
;program.c: 54: dis(lat[i]);}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@lat&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_dis)
	movf	1+(??_main+0)+0,w
	movwf	(?_dis+1)
	fcall	_dis
	line	53
	
l1977:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1979:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(015h)
	subwf	(main@i),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l1975
u2390:
	goto	l1981
	
l581:	
	line	55
	
l1981:	
;program.c: 55: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	line	56
	
l1983:	
;program.c: 56: for(i=0;i<=20;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1985:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(015h)
	subwf	(main@i),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l1989
u2400:
	goto	l1917
	
l1987:	
	goto	l1917
	
l582:	
	line	57
	
l1989:	
;program.c: 57: dis(log[i]);}}}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@log&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_dis)
	movf	1+(??_main+0)+0,w
	movwf	(?_dis+1)
	fcall	_dis
	line	56
	
l1991:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1993:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(015h)
	subwf	(main@i),w
u2415:

	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l1989
u2410:
	goto	l1917
	
l583:	
	goto	l1917
	line	57
	
l584:	
	line	26
	goto	l1917
	
l585:	
	line	57
	
l586:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_dis
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _dis *****************
;; Defined at:
;;		line 67 in file "C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
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
;; This function uses a non-reentrant model
;;
psect	text133
	file	"C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
	line	67
	global	__size_of_dis
	__size_of_dis	equ	__end_of_dis-_dis
	
_dis:	
	opt	stack 7
; Regs used in _dis: [wreg]
	line	68
	
l1887:	
;program.c: 68: PORTD=dat;
	movf	(dis@dat),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	69
	
l1889:	
;program.c: 69: RC0=1;
	bsf	(56/8),(56)&7
	line	70
	
l1891:	
;program.c: 70: RC1=0;
	bcf	(57/8),(57)&7
	line	71
	
l1893:	
;program.c: 71: RC2=1;
	bsf	(58/8),(58)&7
	line	72
;program.c: 72: _delay((unsigned long)((2)*(10000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_dis+0)+0+1),f
	movlw	125
movwf	((??_dis+0)+0),f
u2427:
	decfsz	((??_dis+0)+0),f
	goto	u2427
	decfsz	((??_dis+0)+0+1),f
	goto	u2427
opt asmopt_on

	line	73
	
l1895:	
;program.c: 73: RC2=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l592:	
	return
	opt stack 0
GLOBAL	__end_of_dis
	__end_of_dis:
;; =============== function _dis ends ============

	signat	_dis,4216
	global	_cmd
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _cmd *****************
;; Defined at:
;;		line 59 in file "C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
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
psect	text134
	file	"C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
	line	59
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	60
	
l1877:	
;program.c: 60: PORTD=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l1879:	
;program.c: 61: RC0=0;
	bcf	(56/8),(56)&7
	line	62
	
l1881:	
;program.c: 62: RC1=0;
	bcf	(57/8),(57)&7
	line	63
	
l1883:	
;program.c: 63: RC2=1;
	bsf	(58/8),(58)&7
	line	64
;program.c: 64: _delay((unsigned long)((2)*(10000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_cmd+0)+0+1),f
	movlw	125
movwf	((??_cmd+0)+0),f
u2437:
	decfsz	((??_cmd+0)+0),f
	goto	u2437
	decfsz	((??_cmd+0)+0+1),f
	goto	u2437
opt asmopt_on

	line	65
	
l1885:	
;program.c: 65: RC2=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_wait
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _wait *****************
;; Defined at:
;;		line 75 in file "C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
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
psect	text135
	file	"C:\PIC16F877A Demo Concepts\GPS Latitude,Longitude\program.c"
	line	75
	global	__size_of_wait
	__size_of_wait	equ	__end_of_wait-_wait
	
_wait:	
	opt	stack 7
; Regs used in _wait: [wreg]
;wait@data stored from wreg
	movwf	(wait@data)
	line	76
;program.c: 76: do{
	
l595:	
	line	77
;program.c: 77: while(RCIF==0);
	goto	l596
	
l597:	
	
l596:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l596
u2280:
	
l598:	
	line	78
;program.c: 78: RCIF=0;}
	bcf	(101/8),(101)&7
	line	79
	
l1875:	
;program.c: 79: while(RCREG!=data);}
	movf	(26),w	;volatile
	xorwf	(wait@data),w
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l595
u2290:
	goto	l600
	
l599:	
	
l600:	
	return
	opt stack 0
GLOBAL	__end_of_wait
	__end_of_wait:
;; =============== function _wait ends ============

	signat	_wait,4216
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
