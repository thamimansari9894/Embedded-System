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
	FNCALL	_main,_ADC
	FNCALL	_main,_DC_ADC
	FNCALL	_ADC,_cmd
	FNCALL	_ADC,___awtoft
	FNCALL	_ADC,___ftdiv
	FNCALL	_ADC,___ftmul
	FNCALL	_ADC,_sprintf
	FNCALL	_ADC,_dat
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,_scale
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___bmul
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_fround,___awmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___ftmul
	FNCALL	___lltoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	global	_dpowers
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global	__npowers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_GODONE
_GODONE	set	250
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	
STR_1:	
	retlw	37	;'%'
	retlw	102	;'f'
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
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$389
_sprintf$389:	; 4 bytes @ 0x0
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x4
	ds	1
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x5
	ds	2
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x7
	ds	2
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x9
	ds	4
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0xD
	ds	3
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x12
	ds	1
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x13
	ds	3
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x16
	ds	1
	global	ADC@arr
ADC@arr:	; 10 bytes @ 0x17
	ds	10
	global	ADC@ADVAL
ADC@ADVAL:	; 3 bytes @ 0x21
	ds	3
	global	ADC@RESO
ADC@RESO:	; 3 bytes @ 0x24
	ds	3
	global	ADC@mapping
ADC@mapping:	; 2 bytes @ 0x27
	ds	2
	global	ADC@result
ADC@result:	; 3 bytes @ 0x29
	ds	3
	global	ADC@i
ADC@i:	; 2 bytes @ 0x2C
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	??_cmd
??_cmd:	; 0 bytes @ 0x0
	global	?_ADC
?_ADC:	; 0 bytes @ 0x0
	global	?_DC_ADC
?_DC_ADC:	; 0 bytes @ 0x0
	global	??_DC_ADC
??_DC_ADC:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	dat@dis
dat@dis:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	2
	global	??_dat
??_dat:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	global	DC_ADC@i
DC_ADC@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	DC_ADC@ADVAL1
DC_ADC@ADVAL1:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	2
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0xC
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xE
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x5
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x6
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x7
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x7
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x8
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x9
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	ds	2
	global	??___fttol
??___fttol:	; 0 bytes @ 0xB
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xF
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x10
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x14
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x15
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x15
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x18
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1B
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1F
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x20
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x23
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x24
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x25
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x25
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x25
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x28
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x28
	ds	2
	global	_scale$770
_scale$770:	; 3 bytes @ 0x2A
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x2B
	ds	2
	global	scale@scl
scale@scl:	; 1 bytes @ 0x2D
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2F
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x30
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x31
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x32
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x32
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x32
	ds	3
	global	??_fround
??_fround:	; 0 bytes @ 0x35
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x35
	ds	6
	global	_fround$769
_fround$769:	; 3 bytes @ 0x3B
	ds	3
	global	_fround$768
_fround$768:	; 3 bytes @ 0x3E
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x41
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x42
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x42
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x46
	ds	6
	global	??_ADC
??_ADC:	; 0 bytes @ 0x4C
	ds	2
;;Data sizes: Strings 3, constant 118, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     78      78
;; BANK1           80     46      46
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?_scale	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_fround	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_1(CODE[3]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;;		 -> ADC@arr(BANK1[10]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S378$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _ADC->___awtoft
;;   _ADC->___ftdiv
;;   _sprintf->__div_to_l_
;;   _sprintf->___lltoft
;;   _sprintf->___lldiv
;;   ___ftsub->___lltoft
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___ftpack
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___bmul
;;   ___bmul->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ADC
;;   _ADC->_sprintf
;;   _sprintf->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;   ___fttol->___bmul
;;   ___bmul->___awdiv
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_ADC
;;   _ADC->_sprintf
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
;; (0) _main                                                 0     0      0   11263
;;                                _cmd
;;                                _ADC
;;                             _DC_ADC
;; ---------------------------------------------------------------------------------
;; (1) _ADC                                                 25    25      0   11121
;;                                             76 BANK0      2     2      0
;;                                             23 BANK1     23    23      0
;;                                _cmd
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            _sprintf
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             39    35      4    9530
;;                                             66 BANK0     10     6      4
;;                                              0 BANK1     23    23      0
;;                             ___ftge
;;                            ___ftneg
;;                             ___wmul
;;                            ___awdiv
;;                              _scale
;;                            ___ftmul
;;                             _fround
;;                            ___ftadd
;;                            ___fttol
;;                         __div_to_l_
;;                        __tdiv_to_l_
;;                           ___lltoft
;;                            ___ftsub
;;                            ___lldiv
;;                            ___llmod
;; ---------------------------------------------------------------------------------
;; (3) ___ftsub                                              6     0      6    1094
;;                                             50 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _scale                                               12     9      3    1688
;;                                             37 BANK0      9     6      3
;;                            ___awmod
;;                             ___bmul
;;                            ___awdiv
;;                            ___ftmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _fround                                              19    16      3    1490
;;                                             50 BANK0     16    13      3
;;                            ___awmod
;;                             ___bmul
;;                            ___awdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             6     2      4     278
;;                                              8 COMMON     6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                              8 COMMON     6     3      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (4) ___ftmul                                             16    10      6     535
;;                                             21 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0     10    10      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (4) ___ftadd                                             13     7      6    1049
;;                                             37 BANK0     13     7      6
;;                           ___ftpack
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _dat                                                  4     2      2      22
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _DC_ADC                                               6     6      0     120
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; (2) _cmd                                                  3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             14     6      8     162
;;                                              0 COMMON    14     6      8
;; ---------------------------------------------------------------------------------
;; (3) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (3) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                             10     2      8     159
;;                                              0 BANK0     10     2      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              9     5      4     300
;;                                              7 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             14    10      4     252
;;                                              7 BANK0     14    10      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (5) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               4     3      1      68
;;                                             12 COMMON     1     1      0
;;                                              4 BANK0      3     2      1
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) __div_to_l_                                          20    14      6     446
;;                                              0 COMMON    14     8      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (3) __tdiv_to_l_                                         16    10      6     303
;;                                              0 COMMON    10     4      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;   _ADC
;;     _cmd
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___awmod (ARG)
;;     _sprintf
;;       ___ftge
;;       ___ftneg
;;       ___wmul
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;       _fround
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;     _dat
;;   _DC_ADC
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
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4E      4E       5       97.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     2E      2E       7       57.5%
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
;;		line 16 in file "C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_cmd
;;		_ADC
;;		_DC_ADC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	17
	
l4413:	
;program.c: 17: TRISA=0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	18
	
l4415:	
;program.c: 18: TRISC =0x00;
	clrf	(135)^080h	;volatile
	line	19
	
l4417:	
;program.c: 19: PORTC =0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	20
	
l4419:	
;program.c: 20: TRISD =0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	21
	
l4421:	
;program.c: 21: PORTD =0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	22
	
l4423:	
;program.c: 22: PORTB=0x00;
	clrf	(6)	;volatile
	line	23
	
l4425:	
;program.c: 23: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	24
	
l4427:	
;program.c: 24: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	25
	
l4429:	
;program.c: 25: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	26
	
l4431:	
;program.c: 26: cmd(0x10);
	movlw	(010h)
	fcall	_cmd
	line	27
	
l4433:	
;program.c: 27: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	28
	
l4435:	
;program.c: 28: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	29
	
l4437:	
;program.c: 29: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l4439
	line	30
;program.c: 30: while (1){
	
l569:	
	line	31
	
l4439:	
;program.c: 31: ADC();
	fcall	_ADC
	line	32
	
l4441:	
;program.c: 32: DC_ADC();}}
	fcall	_DC_ADC
	goto	l4439
	
l570:	
	line	30
	goto	l4439
	
l571:	
	line	32
	
l572:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ADC
psect	text505,local,class=CODE,delta=2
global __ptext505
__ptext505:

;; *************** function _ADC *****************
;; Defined at:
;;		line 46 in file "C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr            10   23[BANK1 ] unsigned char [10]
;;  result          3   41[BANK1 ] float 
;;  RESO            3   36[BANK1 ] float 
;;  ADVAL           3   33[BANK1 ] float 
;;  i               2   44[BANK1 ] int 
;;  mapping         2   39[BANK1 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      23       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      23       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_cmd
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		_sprintf
;;		_dat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text505
	file	"C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
	line	46
	global	__size_of_ADC
	__size_of_ADC	equ	__end_of_ADC-_ADC
	
_ADC:	
	opt	stack 3
; Regs used in _ADC: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l4385:	
;program.c: 47: ADCON0=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	48
;program.c: 48: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	49
	
l4387:	
;program.c: 49: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	50
;program.c: 50: while(GODONE==1);
	goto	l581
	
l582:	
	
l581:	
	btfsc	(250/8),(250)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l581
u4730:
	goto	l4389
	
l583:	
	line	52
	
l4389:	
;program.c: 51: float ADVAL;
;program.c: 52: int mapping=5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ADC@mapping)^080h
	movlw	high(05h)
	movwf	((ADC@mapping)^080h)+1
	line	53
;program.c: 53: float RESO=1023.0;
	movlw	0xc0
	movwf	(ADC@RESO)^080h
	movlw	0x7f
	movwf	(ADC@RESO+1)^080h
	movlw	0x44
	movwf	(ADC@RESO+2)^080h
	line	57
	
l4391:	
;program.c: 54: float result;
;program.c: 55: int i;
;program.c: 56: char arr[10];
;program.c: 57: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	58
	
l4393:	
;program.c: 58: ADVAL=(ADRESH<<8)|ADRESL;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_ADC+0)+0
	clrf	(??_ADC+0)+0+1
	movlw	08h
	movwf	btemp+1
u4745:
	clrc
	rlf	(??_ADC+0)+0,f
	rlf	(??_ADC+0)+1,f
	decfsz	btemp+1,f
	goto	u4745
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	0+(??_ADC+0)+0,w
	movwf	(?___awtoft)
	movf	1+(??_ADC+0)+0,w
	movwf	1+(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ADC@ADVAL)^080h
	movf	(1+(?___awtoft)),w
	movwf	(ADC@ADVAL+1)^080h
	movf	(2+(?___awtoft)),w
	movwf	(ADC@ADVAL+2)^080h
	line	59
	
l4395:	
;program.c: 59: result=(ADVAL/RESO)*mapping;
	movf	(ADC@RESO)^080h,w
	movwf	(?___ftdiv)
	movf	(ADC@RESO+1)^080h,w
	movwf	(?___ftdiv+1)
	movf	(ADC@RESO+2)^080h,w
	movwf	(?___ftdiv+2)
	movf	(ADC@ADVAL)^080h,w
	movwf	0+(?___ftdiv)+03h
	movf	(ADC@ADVAL+1)^080h,w
	movwf	1+(?___ftdiv)+03h
	movf	(ADC@ADVAL+2)^080h,w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ADC@result)^080h
	movf	(1+(?___ftdiv)),w
	movwf	(ADC@result+1)^080h
	movf	(2+(?___ftdiv)),w
	movwf	(ADC@result+2)^080h
	
l4397:	
	movf	(ADC@mapping+1)^080h,w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(ADC@mapping)^080h,w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ADC@result)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ADC@result+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ADC@result+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ADC@result)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ADC@result+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ADC@result+2)^080h
	line	60
	
l4399:	
;program.c: 60: sprintf(arr,"%f",result);
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ADC+0)+0
	movf	(??_ADC+0)+0,w
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ADC@result)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ADC@result+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ADC@result+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(ADC@arr)&0ffh
	fcall	_sprintf
	line	61
	
l4401:	
;program.c: 61: for(i=0;i<5;i++){
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ADC@i)^080h
	movlw	high(0)
	movwf	((ADC@i)^080h)+1
	
l4403:	
	movf	(ADC@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4755
	movlw	low(05h)
	subwf	(ADC@i)^080h,w
u4755:

	skipc
	goto	u4751
	goto	u4750
u4751:
	goto	l4407
u4750:
	goto	l586
	
l4405:	
	goto	l586
	
l584:	
	line	62
	
l4407:	
;program.c: 62: dat(i);}}
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ADC@i+1)^080h,w
	clrf	(?_dat+1)
	addwf	(?_dat+1)
	movf	(ADC@i)^080h,w
	clrf	(?_dat)
	addwf	(?_dat)

	fcall	_dat
	line	61
	
l4409:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(ADC@i)^080h,f
	skipnc
	incf	(ADC@i+1)^080h,f
	movlw	high(01h)
	addwf	(ADC@i+1)^080h,f
	
l4411:	
	movf	(ADC@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4765
	movlw	low(05h)
	subwf	(ADC@i)^080h,w
u4765:

	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l4407
u4760:
	goto	l586
	
l585:	
	line	62
	
l586:	
	return
	opt stack 0
GLOBAL	__end_of_ADC
	__end_of_ADC:
;; =============== function _ADC ends ============

	signat	_ADC,88
	global	_sprintf
psect	text506,local,class=CODE,delta=2
global __ptext506
__ptext506:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> ADC@arr(10), 
;;  f               1   66[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   18[BANK1 ] PTR unsigned char 
;;		 -> ADC@arr(10), 
;;  _val            4    9[BANK1 ] struct .
;;  fval            3   19[BANK1 ] struct .
;;  integ           3   13[BANK1 ] struct .
;;  ival            3    0        struct .
;;  exp             2   16[BANK1 ] int 
;;  prec            2    7[BANK1 ] int 
;;  flag            2    5[BANK1 ] unsigned short 
;;  width           2    0        int 
;;  c               1   22[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   66[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      23       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      10      23       0       0
;;Total ram usage:       33 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftneg
;;		___wmul
;;		___awdiv
;;		_scale
;;		___ftmul
;;		_fround
;;		___ftadd
;;		___fttol
;;		__div_to_l_
;;		__tdiv_to_l_
;;		___lltoft
;;		___ftsub
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text506
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	
l4225:	
	movlw	(?_sprintf+01h)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@ap)^080h
	line	540
	goto	l4379
	
l633:	
	line	542
	
l4227:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l4233
u4430:
	line	545
	
l4229:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4231:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	546
	goto	l4379
	line	547
	
l634:	
	line	552
	
l4233:	
	movlw	low(0)
	movwf	(sprintf@flag)^080h
	movlw	high(0)
	movwf	((sprintf@flag)^080h)+1
	line	638
	goto	l4237
	line	640
	
l636:	
	line	641
	goto	l4381
	line	665
	
l638:	
	line	666
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l4239
	line	805
	
l640:	
	line	816
	goto	l4379
	line	825
	
l4235:	
	goto	l4239
	line	638
	
l635:	
	
l4237:	
	clrw
	iorlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	clrw
	iorlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 102
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l4381
	xorlw	102^0	; case 102
	skipnz
	goto	l638
	goto	l4379

	line	825
	
l639:	
	line	828
	
l4239:	
	movlw	low(0700h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u4441
	goto	u4440
u4441:
	goto	l4373
u4440:
	line	832
	
l4241:	
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@prec)^080h
	movlw	high(06h)
	movwf	((sprintf@prec)^080h)+1
	line	833
	
l4243:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	
l4245:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@ap)^080h,f
	line	834
	
l4247:	
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4451
	goto	u4450
u4451:
	goto	l4253
u4450:
	line	835
	
l4249:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftneg)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^080h
	line	836
	
l4251:	
	movlw	low(03h)
	iorwf	(sprintf@flag)^080h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^080h,f
	goto	l4253
	line	837
	
l642:	
	line	838
	
l4253:	
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@exp)^080h
	movlw	high(0)
	movwf	((sprintf@exp)^080h)+1
	line	839
	
l4255:	
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u4461
	goto	u4460
u4461:
	goto	l4281
u4460:
	line	840
	
l4257:	
	movlw	low(sprintf@fval)
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+3
	movlw	0Fh
u4475:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u4470:
	addlw	-1
	skipz
	goto	u4475
	movlw	low(0FFh)
	andwf	0+(??_sprintf+0)+0,w
	movwf	(??_sprintf+4)+0
	movlw	high(0FFh)
	andwf	1+(??_sprintf+0)+0,w
	movwf	1+(??_sprintf+4)+0
	movf	0+(??_sprintf+4)+0,w
	addlw	low(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+4)+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(sprintf@exp)^080h
	line	841
	
l4259:	
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	line	842
	
l4261:	
	movlw	low(03h)
	movwf	(?___wmul)
	movlw	high(03h)
	movwf	((?___wmul))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(sprintf@exp)^080h,w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___wmul)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	843
	
l4263:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(sprintf@exp)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	844
	
l4265:	
	btfss	(sprintf@exp+1)^080h,7
	goto	u4481
	goto	u4480
u4481:
	goto	l4269
u4480:
	line	845
	
l4267:	
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l4269
	
l644:	
	line	849
	
l4269:	
	decf	(sprintf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	850
	
l4271:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	851
	
l4273:	
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4491
	goto	u4490
u4491:
	goto	l4277
u4490:
	line	852
	
l4275:	
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l4281
	line	853
	
l645:	
	
l4277:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u4501
	goto	u4500
u4501:
	goto	l4281
u4500:
	line	854
	
l4279:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@exp+1)^080h,f
	goto	l4281
	
l647:	
	goto	l4281
	line	855
	
l646:	
	goto	l4281
	
l643:	
	line	1115
	
l4281:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4515
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u4515:

	skipnc
	goto	u4511
	goto	u4510
u4511:
	goto	l4285
u4510:
	line	1116
	
l4283:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	goto	l4285
	
l648:	
	line	1119
	
l4285:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4525
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u4525:

	skipnc
	goto	u4521
	goto	u4520
u4521:
	goto	l4293
u4520:
	
l4287:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u4531
	goto	u4530
u4531:
	goto	l4309
u4530:
	
l4289:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l4309
u4540:
	
l4291:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4555
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u4555:

	skipc
	goto	u4551
	goto	u4550
u4551:
	goto	l4309
u4550:
	goto	l4293
	
l651:	
	line	1123
	
l4293:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4561
	goto	u4560
u4561:
	goto	l4297
u4560:
	line	1124
	
l4295:	
	movlw	low(-9)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-9)
	addwf	(sprintf@exp+1)^080h,f
	line	1125
	goto	l4299
	
l652:	
	line	1126
	
l4297:	
	movlw	low(-8)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-8)
	addwf	(sprintf@exp+1)^080h,f
	goto	l4299
	line	1127
	
l653:	
	line	1128
	
l4299:	
	movf	(sprintf@exp)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	1129
	
l4301:	
	movf	(sprintf@fval)^080h,w
	movwf	(?__div_to_l_)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?__div_to_l_+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?__div_to_l_+2)
	movf	(sprintf@integ)^080h,w
	movwf	0+(?__div_to_l_)+03h
	movf	(sprintf@integ+1)^080h,w
	movwf	1+(?__div_to_l_)+03h
	movf	(sprintf@integ+2)^080h,w
	movwf	2+(?__div_to_l_)+03h
	fcall	__div_to_l_
	movf	(3+(?__div_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$389+3)^080h
	movf	(2+(?__div_to_l_)),w
	movwf	(_sprintf$389+2)^080h
	movf	(1+(?__div_to_l_)),w
	movwf	(_sprintf$389+1)^080h
	movf	(0+(?__div_to_l_)),w
	movwf	(_sprintf$389)^080h

	
l4303:	
	movf	(sprintf@fval)^080h,w
	movwf	(?__tdiv_to_l_)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?__tdiv_to_l_+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?__tdiv_to_l_+2)
	movf	(sprintf@integ)^080h,w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+1)^080h,w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+2)^080h,w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$389+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$389+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$389+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$389)^080h

	goto	l4305
	
l655:	
	
l4305:	
	movf	(_sprintf$389+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$389+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$389+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$389)^080h,w
	movwf	(sprintf@_val)^080h

	line	1132
	
l4307:	
	movlw	0x0
	movwf	(sprintf@fval)^080h
	movlw	0x0
	movwf	(sprintf@fval+1)^080h
	movlw	0x0
	movwf	(sprintf@fval+2)^080h
	line	1133
	goto	l4313
	
l649:	
	line	1134
	
l4309:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1135
	movf	(sprintf@_val+3)^080h,w
	movwf	(?___lltoft+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(?___lltoft+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(?___lltoft+1)
	movf	(sprintf@_val)^080h,w
	movwf	(?___lltoft)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftsub)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1136
	
l4311:	
	movlw	low(0)
	movwf	(sprintf@exp)^080h
	movlw	high(0)
	movwf	((sprintf@exp)^080h)+1
	goto	l4313
	line	1137
	
l656:	
	line	1139
	
l4313:	
	clrf	(sprintf@c)^080h
	bsf	status,0
	rlf	(sprintf@c)^080h,f
	
l4315:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4571
	goto	u4570
u4571:
	goto	l4319
u4570:
	goto	l4327
	
l4317:	
	goto	l4327
	line	1140
	
l657:	
	
l4319:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4585:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4585
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u4595
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u4595
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u4595
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val)^080h,w
u4595:
	skipnc
	goto	u4591
	goto	u4590
u4591:
	goto	l4323
u4590:
	goto	l4327
	line	1141
	
l4321:	
	goto	l4327
	
l659:	
	line	1139
	
l4323:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	
l4325:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l4319
u4600:
	goto	l4327
	
l658:	
	line	1189
	
l4327:	
	movlw	low(03h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u4611
	goto	u4610
u4611:
	goto	l4337
u4610:
	line	1191
	
l4329:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4331:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l4337
	
l660:	
	line	1197
	goto	l4337
	
l662:	
	line	1201
	
l4333:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4625:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4625
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4335:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l4337
	line	1203
	
l661:	
	line	1197
	
l4337:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l4333
u4630:
	goto	l4345
	
l663:	
	line	1204
	goto	l4345
	
l665:	
	line	1205
	
l4339:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4341:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1206
	
l4343:	
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l4345
	line	1207
	
l664:	
	line	1204
	
l4345:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4645
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u4645:

	skipnc
	goto	u4641
	goto	u4640
u4641:
	goto	l4339
u4640:
	goto	l4347
	
l666:	
	line	1208
	
l4347:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4655
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u4655:

	skipc
	goto	u4651
	goto	u4650
u4651:
	goto	l4351
u4650:
	line	1209
	
l4349:	
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l668
	line	1210
	
l667:	
	line	1211
	
l4351:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	
l668:	
	line	1212
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1216
	movf	(sprintf@c)^080h,w
	skipz
	goto	u4660
	goto	l4357
u4660:
	line	1218
	
l4353:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4355:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l4357
	
l669:	
	line	1224
	
l4357:	
	movf	(sprintf@c)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1225
	goto	l670
	
l671:	
	line	1226
	
l4359:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4675:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4675
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4361:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1227
	
l4363:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4685:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4685
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___llmod)
	fcall	stringdir
	movwf	(?___llmod+1)
	fcall	stringdir
	movwf	(?___llmod+2)
	fcall	stringdir
	movwf	(?___llmod+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1228
	
l670:	
	line	1225
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l4359
u4690:
	goto	l4371
	
l672:	
	line	1230
	goto	l4371
	
l674:	
	line	1231
	
l4365:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4367:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1232
	
l4369:	
	movlw	low(-1)
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^080h,f
	goto	l4371
	line	1233
	
l673:	
	line	1230
	
l4371:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l4365
u4700:
	goto	l4379
	
l675:	
	line	1240
	goto	l4379
	line	1241
	
l641:	
	line	1433
	
l4373:	
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u4711
	goto	u4710
u4711:
	goto	l4379
u4710:
	line	1434
	
l4375:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4377:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l4379
	
l676:	
	goto	l4379
	line	1525
	
l632:	
	line	540
	
l4379:	
	clrw
	iorlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(sprintf@f),f
	clrw
	iorlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l4227
u4720:
	goto	l4381
	
l677:	
	goto	l4381
	line	1527
	
l637:	
	line	1530
	
l4381:	
	clrc
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l678
	line	1532
	
l4383:	
	line	1533
;	Return value of _sprintf is never used
	
l678:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	___ftsub
psect	text507,local,class=CODE,delta=2
global __ptext507
__ptext507:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   50[BANK0 ] float 
;;  f1              3   53[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text507
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l4219:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l4221:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l774
	
l4223:	
	line	20
	
l774:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text508,local,class=CODE,delta=2
global __ptext508
__ptext508:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   45[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   37[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___bmul
;;		___awdiv
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text508
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 3
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scale@scl)
	
l4179:	
	btfss	(scale@scl),7
	goto	u4381
	goto	u4380
u4381:
	goto	l4201
u4380:
	line	425
	
l4181:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l4183:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4391
	goto	u4390
u4391:
	goto	l4191
u4390:
	line	427
	
l4185:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$770)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$770+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$770+2)
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$770),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$770+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$770+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l624
	
l4187:	
	goto	l624
	
l4189:	
	goto	l4197
	line	428
	
l623:	
	
l4191:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l4197
u4400:
	line	429
	
l4193:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l624
	
l4195:	
	goto	l624
	
l626:	
	goto	l4197
	line	430
	
l625:	
	
l4197:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l624
	
l4199:	
	goto	l624
	line	431
	
l622:	
	line	432
	
l4201:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l4209
u4410:
	line	433
	
l4203:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$770)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$770+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$770+2)
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$770),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$770+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$770+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l624
	
l4205:	
	goto	l624
	
l4207:	
	goto	l4215
	line	434
	
l627:	
	
l4209:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l4215
u4420:
	line	435
	
l4211:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l624
	
l4213:	
	goto	l624
	
l629:	
	goto	l4215
	line	436
	
l628:	
	
l4215:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l624
	
l4217:	
	line	437
	
l624:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   65[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___bmul
;;		___awdiv
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text509
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 3
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fround@prec)
	
l4157:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l4167
u4360:
	line	410
	
l4159:	
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_fround+1)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(?___bmul)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_fround+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$768)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$768+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$768+2)
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_fround+1)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_fround$768),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$768+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$768+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$769)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$769+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$769+2)
	
l4161:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$769),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$769+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$769+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l617
	
l4163:	
	goto	l617
	
l4165:	
	goto	l4175
	line	411
	
l616:	
	
l4167:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l4175
u4370:
	line	412
	
l4169:	
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_fround+1)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_fround+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$768)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$768+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$768+2)
	
l4171:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$768),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$768+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$768+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l617
	
l4173:	
	goto	l617
	
l619:	
	goto	l4175
	line	413
	
l618:	
	
l4175:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l617
	
l4177:	
	line	414
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	___lltoft
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text510
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l4147:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l4151
	
l929:	
	line	42
	
l4149:	
	movlw	01h
u4345:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u4345

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l4151
	line	44
	
l928:	
	line	41
	
l4151:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l4149
u4350:
	goto	l4153
	
l930:	
	line	45
	
l4153:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l931
	
l4155:	
	line	46
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text511
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l4137:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awtoft@sign)
	line	37
	
l4139:	
	btfss	(___awtoft@c+1),7
	goto	u4331
	goto	u4330
u4331:
	goto	l4143
u4330:
	line	38
	
l4141:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l4143
	line	40
	
l827:	
	line	41
	
l4143:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l828
	
l4145:	
	line	42
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[BANK0 ] float 
;;  f2              3   24[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   32[BANK0 ] unsigned um
;;  sign            1   36[BANK0 ] unsigned char 
;;  cntr            1   35[BANK0 ] unsigned char 
;;  exp             1   31[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   21[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text512
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4087:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l4093
u4190:
	line	57
	
l4089:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l790
	
l4091:	
	goto	l790
	
l789:	
	line	58
	
l4093:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l4099
u4200:
	line	59
	
l4095:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l790
	
l4097:	
	goto	l790
	
l791:	
	line	60
	
l4099:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4215:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4210:
	addlw	-1
	skipz
	goto	u4215
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4225:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4220:
	addlw	-1
	skipz
	goto	u4225
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l4101:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4103:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4105:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4107:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l4109:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4111
	line	70
	
l792:	
	line	71
	
l4111:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l4115
u4230:
	line	72
	
l4113:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4241
	addwf	(___ftmul@f3_as_product+1),f
u4241:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4242
	addwf	(___ftmul@f3_as_product+2),f
u4242:

	goto	l4115
	
l793:	
	line	73
	
l4115:	
	movlw	01h
u4255:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4255

	line	74
	
l4117:	
	movlw	01h
u4265:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u4265
	line	75
	
l4119:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l4111
u4270:
	goto	l4121
	
l794:	
	line	76
	
l4121:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4123
	line	77
	
l795:	
	line	78
	
l4123:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l4127
u4280:
	line	79
	
l4125:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4291
	addwf	(___ftmul@f3_as_product+1),f
u4291:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4292
	addwf	(___ftmul@f3_as_product+2),f
u4292:

	goto	l4127
	
l796:	
	line	80
	
l4127:	
	movlw	01h
u4305:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4305

	line	81
	
l4129:	
	movlw	01h
u4315:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u4315

	line	82
	
l4131:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l4123
u4320:
	goto	l4133
	
l797:	
	line	83
	
l4133:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l790
	
l4135:	
	line	84
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[COMMON] float 
;;  f1              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    5[BANK0 ] float 
;;  sign            1    9[BANK0 ] unsigned char 
;;  exp             1    8[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text513
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4045:	
	movf	(___ftdiv@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l4051
u4110:
	line	56
	
l4047:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l780
	
l4049:	
	goto	l780
	
l779:	
	line	57
	
l4051:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l4057
u4120:
	line	58
	
l4053:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l780
	
l4055:	
	goto	l780
	
l781:	
	line	59
	
l4057:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l4059:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l4061:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4135:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4130:
	addlw	-1
	skipz
	goto	u4135
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l4063:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4145:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4140:
	addlw	-1
	skipz
	goto	u4145
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l4065:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l4067:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l4069:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l4071
	line	69
	
l782:	
	line	70
	
l4071:	
	movlw	01h
u4155:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4155
	line	71
	
l4073:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4165
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4165
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4165:
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l4079
u4160:
	line	72
	
l4075:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l4077:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l4079
	line	74
	
l783:	
	line	75
	
l4079:	
	movlw	01h
u4175:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u4175
	line	76
	
l4081:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l4071
u4180:
	goto	l4083
	
l784:	
	line	77
	
l4083:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l780
	
l4085:	
	line	78
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   37[BANK0 ] float 
;;  f2              3   40[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   49[BANK0 ] unsigned char 
;;  exp2            1   48[BANK0 ] unsigned char 
;;  sign            1   47[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   37[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text514
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3973:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l3975:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3870
	goto	l3981
u3870:
	
l3977:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l3985
u3880:
	
l3979:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l3985
u3890:
	goto	l3981
	
l737:	
	line	93
	
l3981:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l738
	
l3983:	
	goto	l738
	
l735:	
	line	94
	
l3985:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3900
	goto	l741
u3900:
	
l3987:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l3991
u3910:
	
l3989:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l3991
u3920:
	
l741:	
	line	95
	goto	l738
	
l739:	
	line	96
	
l3991:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l3993:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l742
u3930:
	line	98
	
l3995:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l742:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l743
u3940:
	line	100
	
l3997:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l743:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l3999:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l4001:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l4013
u3950:
	goto	l4003
	line	109
	
l745:	
	line	110
	
l4003:	
	movlw	01h
u3965:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3965
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l4005:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3971
	goto	u3970
u3971:
	goto	l4011
u3970:
	
l4007:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4003
u3980:
	goto	l4011
	
l747:	
	goto	l4011
	
l748:	
	line	113
	goto	l4011
	
l750:	
	line	114
	
l4009:	
	movlw	01h
u3995:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3995

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l4011
	line	116
	
l749:	
	line	113
	
l4011:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l4009
u4000:
	goto	l752
	
l751:	
	line	117
	goto	l752
	
l744:	
	
l4013:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l752
u4010:
	goto	l4015
	line	120
	
l754:	
	line	121
	
l4015:	
	movlw	01h
u4025:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u4025
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l4017:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4031
	goto	u4030
u4031:
	goto	l4023
u4030:
	
l4019:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l4015
u4040:
	goto	l4023
	
l756:	
	goto	l4023
	
l757:	
	line	124
	goto	l4023
	
l759:	
	line	125
	
l4021:	
	movlw	01h
u4055:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u4055

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l4023
	line	127
	
l758:	
	line	124
	
l4023:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l4021
u4060:
	goto	l752
	
l760:	
	goto	l752
	line	128
	
l753:	
	line	129
	
l752:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l4027
u4070:
	line	131
	
l4025:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l4027
	line	133
	
l761:	
	line	134
	
l4027:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l4031
u4080:
	line	136
	
l4029:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l4031
	line	138
	
l762:	
	line	139
	
l4031:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l4033:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4091
	addwf	(___ftadd@f2+1),f
u4091:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4092
	addwf	(___ftadd@f2+2),f
u4092:

	line	141
	
l4035:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4101
	goto	u4100
u4101:
	goto	l4041
u4100:
	line	142
	
l4037:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l4039:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l4041
	line	145
	
l763:	
	line	146
	
l4041:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l738
	
l4043:	
	line	148
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_dat
psect	text515,local,class=CODE,delta=2
global __ptext515
__ptext515:

;; *************** function _dat *****************
;; Defined at:
;;		line 39 in file "C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
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
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text515
	file	"C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
	line	39
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 6
; Regs used in _dat: [wreg]
	line	40
	
l3965:	
;program.c: 40: PORTD=dis;
	movf	(dat@dis),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	41
	
l3967:	
;program.c: 41: RB3=1;
	bsf	(51/8),(51)&7
	line	42
;program.c: 42: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_dat+0)+0+1),f
	movlw	251
movwf	((??_dat+0)+0),f
u4777:
	decfsz	((??_dat+0)+0),f
	goto	u4777
	decfsz	((??_dat+0)+0+1),f
	goto	u4777
	nop2
opt asmopt_on

	line	43
	
l3969:	
;program.c: 43: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	44
	
l3971:	
;program.c: 44: RB4=0;}
	bcf	(52/8),(52)&7
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_DC_ADC
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:

;; *************** function _DC_ADC *****************
;; Defined at:
;;		line 64 in file "C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADVAL1          2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
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
psect	text516
	file	"C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
	line	64
	global	__size_of_DC_ADC
	__size_of_DC_ADC	equ	__end_of_DC_ADC-_DC_ADC
	
_DC_ADC:	
	opt	stack 7
; Regs used in _DC_ADC: [wreg+btemp+1]
	line	65
	
l2867:	
;program.c: 65: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	66
;program.c: 66: RC1=1;
	bsf	(57/8),(57)&7
	line	67
	
l2869:	
;program.c: 67: ADCON0=0x09;
	movlw	(09h)
	movwf	(31)	;volatile
	line	68
;program.c: 68: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	69
	
l2871:	
;program.c: 69: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	70
;program.c: 70: while(GODONE==1);
	goto	l589
	
l590:	
	
l589:	
	btfsc	(250/8),(250)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l589
u1920:
	goto	l2873
	
l591:	
	line	72
	
l2873:	
;program.c: 71: int ADVAL1;
;program.c: 72: ADVAL1=(ADRESH<<8)|ADRESL;
	movf	(30),w	;volatile
	movwf	(??_DC_ADC+0)+0
	clrf	(??_DC_ADC+0)+0+1
	movlw	08h
	movwf	btemp+1
u1935:
	clrc
	rlf	(??_DC_ADC+0)+0,f
	rlf	(??_DC_ADC+0)+1,f
	decfsz	btemp+1,f
	goto	u1935
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	0+(??_DC_ADC+0)+0,w
	movwf	(DC_ADC@ADVAL1)
	movf	1+(??_DC_ADC+0)+0,w
	movwf	1+(DC_ADC@ADVAL1)
	line	73
	
l2875:	
;program.c: 73: T2CON=0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	74
	
l2877:	
;program.c: 74: PR2=36;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	75
	
l2879:	
;program.c: 75: CCPR1L=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	76
	
l2881:	
;program.c: 76: CCP1CON=0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	78
	
l2883:	
;program.c: 77: int i;
;program.c: 78: for(i=0;i<=36;i++){
	movlw	low(0)
	movwf	(DC_ADC@i)
	movlw	high(0)
	movwf	((DC_ADC@i))+1
	
l2885:	
	movf	(DC_ADC@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(025h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1945
	movlw	low(025h)
	subwf	(DC_ADC@i),w
u1945:

	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l2889
u1940:
	goto	l2893
	
l2887:	
	goto	l2893
	
l592:	
	line	79
	
l2889:	
;program.c: 79: CCPR1L=i;
	movf	(DC_ADC@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	80
;program.c: 80: _delay((unsigned long)((5)*(20000000/4000.0)));}
	opt asmopt_off
movlw	33
movwf	((??_DC_ADC+0)+0+1),f
	movlw	118
movwf	((??_DC_ADC+0)+0),f
u4787:
	decfsz	((??_DC_ADC+0)+0),f
	goto	u4787
	decfsz	((??_DC_ADC+0)+0+1),f
	goto	u4787
	clrwdt
opt asmopt_on

	line	78
	movlw	low(01h)
	addwf	(DC_ADC@i),f
	skipnc
	incf	(DC_ADC@i+1),f
	movlw	high(01h)
	addwf	(DC_ADC@i+1),f
	
l2891:	
	movf	(DC_ADC@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(025h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1955
	movlw	low(025h)
	subwf	(DC_ADC@i),w
u1955:

	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l2889
u1950:
	goto	l2893
	
l593:	
	line	81
	
l2893:	
;program.c: 81: if(ADVAL1<=500){
	movf	(DC_ADC@ADVAL1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1965
	movlw	low(01F5h)
	subwf	(DC_ADC@ADVAL1),w
u1965:

	skipnc
	goto	u1961
	goto	u1960
u1961:
	goto	l2899
u1960:
	line	82
	
l2895:	
;program.c: 82: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	83
;program.c: 83: RB2=0;
	bcf	(50/8),(50)&7
	line	84
;program.c: 84: RB5=0;
	bcf	(53/8),(53)&7
	line	85
;program.c: 85: RB6=0;
	bcf	(54/8),(54)&7
	line	86
	
l2897:	
;program.c: 86: _delay((unsigned long)((10)*(20000000/4000.0)));}
	opt asmopt_off
movlw	65
movwf	((??_DC_ADC+0)+0+1),f
	movlw	238
movwf	((??_DC_ADC+0)+0),f
u4797:
	decfsz	((??_DC_ADC+0)+0),f
	goto	u4797
	decfsz	((??_DC_ADC+0)+0+1),f
	goto	u4797
	clrwdt
opt asmopt_on

	goto	l2899
	
l594:	
	line	87
	
l2899:	
;program.c: 87: if(ADVAL1<=10){
	movf	(DC_ADC@ADVAL1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u1975
	movlw	low(0Bh)
	subwf	(DC_ADC@ADVAL1),w
u1975:

	skipnc
	goto	u1971
	goto	u1970
u1971:
	goto	l2905
u1970:
	line	88
	
l2901:	
;program.c: 88: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	89
;program.c: 89: RB2=1;
	bsf	(50/8),(50)&7
	line	90
;program.c: 90: RB5=0;
	bcf	(53/8),(53)&7
	line	91
;program.c: 91: RB6=0;
	bcf	(54/8),(54)&7
	line	92
	
l2903:	
;program.c: 92: _delay((unsigned long)((10)*(20000000/4000.0)));}
	opt asmopt_off
movlw	65
movwf	((??_DC_ADC+0)+0+1),f
	movlw	238
movwf	((??_DC_ADC+0)+0),f
u4807:
	decfsz	((??_DC_ADC+0)+0),f
	goto	u4807
	decfsz	((??_DC_ADC+0)+0+1),f
	goto	u4807
	clrwdt
opt asmopt_on

	goto	l2905
	
l595:	
	line	93
	
l2905:	
;program.c: 93: if(ADVAL1<=20){
	movf	(DC_ADC@ADVAL1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1985
	movlw	low(015h)
	subwf	(DC_ADC@ADVAL1),w
u1985:

	skipnc
	goto	u1981
	goto	u1980
u1981:
	goto	l2911
u1980:
	line	94
	
l2907:	
;program.c: 94: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	95
;program.c: 95: RB2=0;
	bcf	(50/8),(50)&7
	line	96
;program.c: 96: RB5=1;
	bsf	(53/8),(53)&7
	line	97
;program.c: 97: RB6=0;
	bcf	(54/8),(54)&7
	line	98
	
l2909:	
;program.c: 98: _delay((unsigned long)((10)*(20000000/4000.0)));}
	opt asmopt_off
movlw	65
movwf	((??_DC_ADC+0)+0+1),f
	movlw	238
movwf	((??_DC_ADC+0)+0),f
u4817:
	decfsz	((??_DC_ADC+0)+0),f
	goto	u4817
	decfsz	((??_DC_ADC+0)+0+1),f
	goto	u4817
	clrwdt
opt asmopt_on

	goto	l2911
	
l596:	
	line	99
	
l2911:	
;program.c: 99: if(ADVAL1<=30){
	movf	(DC_ADC@ADVAL1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u1995
	movlw	low(01Fh)
	subwf	(DC_ADC@ADVAL1),w
u1995:

	skipnc
	goto	u1991
	goto	u1990
u1991:
	goto	l2917
u1990:
	line	100
	
l2913:	
;program.c: 100: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	101
;program.c: 101: RB2=0;
	bcf	(50/8),(50)&7
	line	102
;program.c: 102: RB5=0;
	bcf	(53/8),(53)&7
	line	103
;program.c: 103: RB6=0;
	bcf	(54/8),(54)&7
	line	104
	
l2915:	
;program.c: 104: _delay((unsigned long)((10)*(20000000/4000.0)));}
	opt asmopt_off
movlw	65
movwf	((??_DC_ADC+0)+0+1),f
	movlw	238
movwf	((??_DC_ADC+0)+0),f
u4827:
	decfsz	((??_DC_ADC+0)+0),f
	goto	u4827
	decfsz	((??_DC_ADC+0)+0+1),f
	goto	u4827
	clrwdt
opt asmopt_on

	goto	l2917
	
l597:	
	line	105
	
l2917:	
;program.c: 105: if(ADVAL1<=2500){
	movf	(DC_ADC@ADVAL1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09C5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2005
	movlw	low(09C5h)
	subwf	(DC_ADC@ADVAL1),w
u2005:

	skipnc
	goto	u2001
	goto	u2000
u2001:
	goto	l599
u2000:
	line	106
	
l2919:	
;program.c: 106: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	107
;program.c: 107: RB2=0;
	bcf	(50/8),(50)&7
	line	108
;program.c: 108: RB5=1;
	bsf	(53/8),(53)&7
	line	109
;program.c: 109: RB6=0;
	bcf	(54/8),(54)&7
	line	110
	
l2921:	
;program.c: 110: _delay((unsigned long)((10)*(20000000/4000.0)));}}
	opt asmopt_off
movlw	65
movwf	((??_DC_ADC+0)+0+1),f
	movlw	238
movwf	((??_DC_ADC+0)+0),f
u4837:
	decfsz	((??_DC_ADC+0)+0),f
	goto	u4837
	decfsz	((??_DC_ADC+0)+0+1),f
	goto	u4837
	clrwdt
opt asmopt_on

	goto	l599
	
l598:	
	
l599:	
	return
	opt stack 0
GLOBAL	__end_of_DC_ADC
	__end_of_DC_ADC:
;; =============== function _DC_ADC ends ============

	signat	_DC_ADC,88
	global	_cmd
psect	text517,local,class=CODE,delta=2
global __ptext517
__ptext517:

;; *************** function _cmd *****************
;; Defined at:
;;		line 33 in file "C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
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
;;		_ADC
;; This function uses a non-reentrant model
;;
psect	text517
	file	"C:\PIC16F877A Demo Concepts\ADC mapping using LCD\program.c"
	line	33
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 6
; Regs used in _cmd: [wreg]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	34
	
l3957:	
;program.c: 34: PORTD=a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	35
	
l3959:	
;program.c: 35: RB3=0;
	bcf	(51/8),(51)&7
	line	36
;program.c: 36: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_cmd+0)+0+1),f
	movlw	238
movwf	((??_cmd+0)+0),f
u4847:
	decfsz	((??_cmd+0)+0),f
	goto	u4847
	decfsz	((??_cmd+0)+0+1),f
	goto	u4847
	clrwdt
opt asmopt_on

	line	37
	
l3961:	
;program.c: 37: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	38
	
l3963:	
;program.c: 38: RB4=0;}
	bcf	(52/8),(52)&7
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	___awmod
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text518
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3883:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l3885:	
	btfss	(___awmod@dividend+1),7
	goto	u3741
	goto	u3740
u3741:
	goto	l3889
u3740:
	line	10
	
l3887:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3889
	line	12
	
l899:	
	line	13
	
l3889:	
	btfss	(___awmod@divisor+1),7
	goto	u3751
	goto	u3750
u3751:
	goto	l3893
u3750:
	line	14
	
l3891:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3893
	
l900:	
	line	15
	
l3893:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3761
	goto	u3760
u3761:
	goto	l3911
u3760:
	line	16
	
l3895:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3901
	
l903:	
	line	18
	
l3897:	
	movlw	01h
	
u3775:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3775
	line	19
	
l3899:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3901
	line	20
	
l902:	
	line	17
	
l3901:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l3897
u3780:
	goto	l3903
	
l904:	
	goto	l3903
	line	21
	
l905:	
	line	22
	
l3903:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3795
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3795:
	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l3907
u3790:
	line	23
	
l3905:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3907
	
l906:	
	line	24
	
l3907:	
	movlw	01h
	
u3805:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3805
	line	25
	
l3909:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l3903
u3810:
	goto	l3911
	
l907:	
	goto	l3911
	line	26
	
l901:	
	line	27
	
l3911:	
	movf	(___awmod@sign),w
	skipz
	goto	u3820
	goto	l3915
u3820:
	line	28
	
l3913:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3915
	
l908:	
	line	29
	
l3915:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l909
	
l3917:	
	line	30
	
l909:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text519
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l3859:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3671
	goto	u3670
u3671:
	goto	l3879
u3670:
	line	11
	
l3861:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l3865
	
l865:	
	line	13
	
l3863:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3685:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3685
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l3865
	line	15
	
l864:	
	line	12
	
l3865:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l3863
u3690:
	goto	l3867
	
l866:	
	goto	l3867
	line	16
	
l867:	
	line	17
	
l3867:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3705:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3705
	line	18
	
l3869:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3715
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3715
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3715
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3715:
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l3875
u3710:
	line	19
	
l3871:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l3873:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l3875
	line	21
	
l868:	
	line	22
	
l3875:	
	movlw	01h
u3725:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3725

	line	23
	
l3877:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l3867
u3730:
	goto	l3879
	
l869:	
	goto	l3879
	line	24
	
l863:	
	line	25
	
l3879:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l870
	
l3881:	
	line	26
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text520
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l3839:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l3843
u3620:
	line	7
	
l3841:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3631
	goto	u3632
u3631:
	addwf	(??___ftge+0)+1,f
	
u3632:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3633
	goto	u3634
u3633:
	addwf	(??___ftge+0)+2,f
	
u3634:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l3843
	
l858:	
	line	8
	
l3843:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l3847
u3640:
	line	9
	
l3845:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3651
	goto	u3652
u3651:
	addwf	(??___ftge+0)+1,f
	
u3652:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3653
	goto	u3654
u3653:
	addwf	(??___ftge+0)+2,f
	
u3654:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l3847
	
l859:	
	line	10
	
l3847:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l3849:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l3851:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3665
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3665
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3665:
	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l3855
u3660:
	
l3853:	
	clrc
	
	goto	l860
	
l3545:	
	
l3855:	
	setc
	
	goto	l860
	
l3547:	
	goto	l860
	
l3857:	
	line	13
	
l860:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text521
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l3831:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3611
	goto	u3610
u3611:
	goto	l3835
u3610:
	line	18
	
l3833:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l3835
	
l854:	
	line	19
	
l3835:	
	goto	l855
	
l3837:	
	line	20
	
l855:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text522
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l3811:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3551
	goto	u3550
u3551:
	goto	l3827
u3550:
	line	9
	
l3813:	
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	line	10
	goto	l3817
	
l846:	
	line	11
	
l3815:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3565:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3565
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l3817
	line	13
	
l845:	
	line	10
	
l3817:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l3815
u3570:
	goto	l3819
	
l847:	
	goto	l3819
	line	14
	
l848:	
	line	15
	
l3819:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3585
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3585
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3585
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3585:
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l3823
u3580:
	line	16
	
l3821:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l3823
	
l849:	
	line	17
	
l3823:	
	movlw	01h
u3595:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3595

	line	18
	
l3825:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l3819
u3600:
	goto	l3827
	
l850:	
	goto	l3827
	line	19
	
l844:	
	line	20
	
l3827:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l851
	
l3829:	
	line	21
	
l851:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text523
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3773:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l3775:	
	btfss	(___awdiv@divisor+1),7
	goto	u3451
	goto	u3450
u3451:
	goto	l3779
u3450:
	line	11
	
l3777:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3779
	line	13
	
l831:	
	line	14
	
l3779:	
	btfss	(___awdiv@dividend+1),7
	goto	u3461
	goto	u3460
u3461:
	goto	l832
u3460:
	line	15
	
l3781:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3783:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l832:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3471
	goto	u3470
u3471:
	goto	l3803
u3470:
	line	20
	
l3785:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3791
	
l835:	
	line	22
	
l3787:	
	movlw	01h
	
u3485:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3485
	line	23
	
l3789:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3791
	line	24
	
l834:	
	line	21
	
l3791:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l3787
u3490:
	goto	l3793
	
l836:	
	goto	l3793
	line	25
	
l837:	
	line	26
	
l3793:	
	movlw	01h
	
u3505:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3505
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3515
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3515:
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3799
u3510:
	line	28
	
l3795:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3797:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3799
	line	30
	
l838:	
	line	31
	
l3799:	
	movlw	01h
	
u3525:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3525
	line	32
	
l3801:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3793
u3530:
	goto	l3803
	
l839:	
	goto	l3803
	line	33
	
l833:	
	line	34
	
l3803:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3540
	goto	l3807
u3540:
	line	35
	
l3805:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3807
	
l840:	
	line	36
	
l3807:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l841
	
l3809:	
	line	37
	
l841:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    7[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   16[BANK0 ] unsigned long 
;;  exp1            1   20[BANK0 ] unsigned char 
;;  sign1           1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    7[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text524
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3715:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l3721
u3340:
	line	50
	
l3717:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l801
	
l3719:	
	goto	l801
	
l800:	
	line	51
	
l3721:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3355:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3350:
	addlw	-1
	skipz
	goto	u3355
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3723:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3725:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3727:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3729:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3731:	
	btfss	(___fttol@exp1),7
	goto	u3361
	goto	u3360
u3361:
	goto	l3741
u3360:
	line	57
	
l3733:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l3739
u3370:
	line	58
	
l3735:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l801
	
l3737:	
	goto	l801
	
l803:	
	goto	l3739
	line	59
	
l804:	
	line	60
	
l3739:	
	movlw	01h
u3385:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3385

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l3739
u3390:
	goto	l3751
	
l805:	
	line	62
	goto	l3751
	
l802:	
	line	63
	
l3741:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l3749
u3400:
	line	64
	
l3743:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l801
	
l3745:	
	goto	l801
	
l807:	
	line	65
	goto	l3749
	
l809:	
	line	66
	
l3747:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3415:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3415
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3749
	line	68
	
l808:	
	line	65
	
l3749:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l3747
u3420:
	goto	l3751
	
l810:	
	goto	l3751
	line	69
	
l806:	
	line	70
	
l3751:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3430
	goto	l3755
u3430:
	line	71
	
l3753:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l3755
	
l811:	
	line	72
	
l3755:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l801
	
l3757:	
	line	73
	
l801:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lltoft
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text525
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3685:	
	movf	(___ftpack@exp),w
	skipz
	goto	u3230
	goto	l3689
u3230:
	
l3687:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l3695
u3240:
	goto	l3689
	
l1059:	
	line	65
	
l3689:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1060
	
l3691:	
	goto	l1060
	
l1057:	
	line	66
	goto	l3695
	
l1062:	
	line	67
	
l3693:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3255:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3255

	goto	l3695
	line	69
	
l1061:	
	line	66
	
l3695:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l3693
u3260:
	goto	l1064
	
l1063:	
	line	70
	goto	l1064
	
l1065:	
	line	71
	
l3697:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3699:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l3701:	
	movlw	01h
u3275:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3275

	line	74
	
l1064:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3697
u3280:
	goto	l3705
	
l1066:	
	line	75
	goto	l3705
	
l1068:	
	line	76
	
l3703:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3295:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3295
	goto	l3705
	line	78
	
l1067:	
	line	75
	
l3705:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3703
u3300:
	
l1069:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l1070
u3310:
	line	80
	
l3707:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1070:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3709:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3325:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3320:
	addlw	-1
	skipz
	goto	u3325
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3711:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3330
	goto	l1071
u3330:
	line	84
	
l3713:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1071:	
	line	85
	line	86
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text526
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3673:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	goto	l3675
	line	6
	
l691:	
	line	7
	
l3675:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l692
u3190:
	line	8
	
l3677:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l692:	
	line	9
	movlw	01h
	
u3205:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3205
	line	10
	
l3679:	
	movlw	01h
	
u3215:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3215
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l3675
u3220:
	goto	l3681
	
l693:	
	line	12
	
l3681:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l694
	
l3683:	
	line	13
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    6[BANK0 ] unsigned char 
;;  product         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text527
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l3657:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___bmul@product)
	goto	l3659
	line	6
	
l685:	
	line	7
	
l3659:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l3663
u3170:
	line	8
	
l3661:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l3663
	
l686:	
	line	9
	
l3663:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l3665:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l3667:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l3659
u3180:
	goto	l3669
	
l687:	
	line	12
	
l3669:	
	movf	(___bmul@product),w
	goto	l688
	
l3671:	
	line	13
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] unsigned char 
;;  f2              3    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:        14       6       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text528
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l3603:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l3609
u3040:
	line	67
	
l3605:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l978
	
l3607:	
	goto	l978
	
l977:	
	line	68
	
l3609:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l3615
u3050:
	line	69
	
l3611:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l978
	
l3613:	
	goto	l978
	
l979:	
	line	70
	
l3615:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l3617:	
	movlw	0
	movwf	(__div_to_l_@quot+3)
	movlw	0
	movwf	(__div_to_l_@quot+2)
	movlw	0
	movwf	(__div_to_l_@quot+1)
	movlw	0
	movwf	(__div_to_l_@quot)

	line	75
	
l3619:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l3621:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l3623:	
	movlw	(020h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	goto	l3625
	line	78
	
l980:	
	line	79
	
l3625:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3065:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3065
	line	80
	
l3627:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u3075
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u3075
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u3075
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u3075:
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l981
u3070:
	line	81
	
l3629:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l3631:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l981:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	01h
u3085:
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	decf	fsr0,f
	decf	fsr0,f
	decf	fsr0,f
	addlw	-1
	skipz
	goto	u3085
	line	85
	
l3633:	
	movlw	low(01h)
	subwf	(__div_to_l_@cntr),f
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l3625
u3090:
	
l982:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u3101
	goto	u3100
u3101:
	goto	l3643
u3100:
	line	87
	
l3635:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l3641
u3110:
	line	88
	
l3637:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l978
	
l3639:	
	goto	l978
	
l984:	
	goto	l3641
	line	89
	
l985:	
	line	90
	
l3641:	
	movlw	01h
u3125:
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	addlw	-1
	skipz
	goto	u3125

	line	91
	movlw	(01h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	addwf	(__div_to_l_@exp1),f
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3641
u3130:
	goto	l3653
	
l986:	
	line	92
	goto	l3653
	
l983:	
	line	93
	
l3643:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l3651
u3140:
	line	94
	
l3645:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l978
	
l3647:	
	goto	l978
	
l988:	
	line	95
	goto	l3651
	
l990:	
	line	96
	
l3649:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3155:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3155
	line	97
	movlw	low(01h)
	subwf	(__div_to_l_@exp1),f
	goto	l3651
	line	98
	
l989:	
	line	95
	
l3651:	
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l3649
u3160:
	goto	l3653
	
l991:	
	goto	l3653
	line	99
	
l987:	
	line	100
	
l3653:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	goto	l978
	
l3655:	
	line	101
	
l978:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;;  f2              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        10       6       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text529
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l3549:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l3555
u2910:
	line	67
	
l3551:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l935
	
l3553:	
	goto	l935
	
l934:	
	line	68
	
l3555:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l936
u2920:
	line	69
	
l3557:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l935
	
l3559:	
	goto	l935
	
l936:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l3561:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l3563:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	movlw	0
	movwf	(__tdiv_to_l_@quot+3)
	movlw	0
	movwf	(__tdiv_to_l_@quot+2)
	movlw	0
	movwf	(__tdiv_to_l_@quot+1)
	movlw	0
	movwf	(__tdiv_to_l_@quot)

	line	75
	
l3565:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l3567:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	movwf	(__tdiv_to_l_@cntr)
	goto	l3569
	line	78
	
l937:	
	line	79
	
l3569:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u2935:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u2935
	line	80
	
l3571:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2945
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2945
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2945:
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l3577
u2940:
	line	81
	
l3573:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l3575:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	goto	l3577
	line	83
	
l938:	
	line	84
	
l3577:	
	movlw	01h
u2955:
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	addlw	-1
	skipz
	goto	u2955
	line	85
	
l3579:	
	movlw	low(01h)
	subwf	(__tdiv_to_l_@cntr),f
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l3569
u2960:
	
l939:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2971
	goto	u2970
u2971:
	goto	l3589
u2970:
	line	87
	
l3581:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l3587
u2980:
	line	88
	
l3583:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l935
	
l3585:	
	goto	l935
	
l941:	
	goto	l3587
	line	89
	
l942:	
	line	90
	
l3587:	
	movlw	01h
u2995:
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	addlw	-1
	skipz
	goto	u2995

	line	91
	movlw	(01h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	addwf	(__tdiv_to_l_@exp1),f
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l3587
u3000:
	goto	l3599
	
l943:	
	line	92
	goto	l3599
	
l940:	
	line	93
	
l3589:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l3597
u3010:
	line	94
	
l3591:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l935
	
l3593:	
	goto	l935
	
l945:	
	line	95
	goto	l3597
	
l947:	
	line	96
	
l3595:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u3025:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u3025
	line	97
	movlw	low(01h)
	subwf	(__tdiv_to_l_@exp1),f
	goto	l3597
	line	98
	
l946:	
	line	95
	
l3597:	
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l3595
u3030:
	goto	l3599
	
l948:	
	goto	l3599
	line	99
	
l944:	
	line	100
	
l3599:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	goto	l935
	
l3601:	
	line	101
	
l935:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
psect	text530,local,class=CODE,delta=2
global __ptext530
__ptext530:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
