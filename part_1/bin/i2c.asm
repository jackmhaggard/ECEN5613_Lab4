;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module i2c
	
	.optsdcc -mmcs51 --model-large
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2cStartonce
	.globl _i2cDelay
	.globl _i2cSetPort
	.globl __time_out_timer_0__
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _ClockVar
	.globl _DevAddress
	.globl _SlaveACK
	.globl _i2cReadBlock_PARM_3
	.globl _i2cReadBlock_PARM_2
	.globl _i2cWriteBlock_PARM_3
	.globl _i2cWriteBlock_PARM_2
	.globl _i2cBegin_PARM_2
	.globl _i2cWrite_PARM_2
	.globl _i2cavailable
	.globl _i2cStart
	.globl _i2cStop
	.globl _i2cWritebyte
	.globl _i2cReadbyte
	.globl _i2cWrite
	.globl _i2cRead
	.globl _i2cBegin
	.globl _i2csetAdd
	.globl _i2cDetect
	.globl _i2cWriteBlock
	.globl _i2cReadBlock
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_i2cReadBlock_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_i2cavailable_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_i2cDelay_ClockVar_10000_17:
	.ds 2
_i2cWritebyte_uByte_10000_29:
	.ds 1
_i2cWritebyte_MaskByte_10000_30:
	.ds 1
_i2cReadbyte_MasterACK_10000_32:
	.ds 1
_i2cReadbyte_uByte_10000_33:
	.ds 1
_i2cReadbyte_MaskByte_10000_33:
	.ds 1
_i2cWrite_PARM_2:
	.ds 1
_i2cWrite_Byte_10000_36:
	.ds 1
_i2cRead_Address_10000_39:
	.ds 1
_i2cBegin_PARM_2:
	.ds 4
_i2cBegin_OscFreq_10000_42:
	.ds 4
_i2csetAdd_SlaveAddress_10000_44:
	.ds 1
_i2cWriteBlock_PARM_2:
	.ds 1
_i2cWriteBlock_PARM_3:
	.ds 3
_i2cWriteBlock_sAddress_10000_49:
	.ds 1
_i2cReadBlock_PARM_2:
	.ds 1
_i2cReadBlock_PARM_3:
	.ds 3
_i2cReadBlock_sAddress_10000_53:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_SlaveACK::
	.ds 1
_DevAddress::
	.ds 1
_ClockVar::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_time_out_timer_0__'
;------------------------------------------------------------
;	src/i2c.c:40: void _time_out_timer_0__(void)
;	-----------------------------------------
;	 function _time_out_timer_0__
;	-----------------------------------------
__time_out_timer_0__:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/i2c.c:42: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	src/i2c.c:43: TL0   = 0x00;	
	mov	_TL0,#0x00
;	src/i2c.c:44: TH0   = 0x4C;	
	mov	_TH0,#0x4c
;	src/i2c.c:45: TR0   = 1;	
;	assignBit
	setb	_TR0
;	src/i2c.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cSetPort'
;------------------------------------------------------------
;	src/i2c.c:53: void  i2cSetPort(void)
;	-----------------------------------------
;	 function i2cSetPort
;	-----------------------------------------
_i2cSetPort:
;	src/i2c.c:55: SDADIR |= SDABIT;
	orl	_P0,#0x01
;	src/i2c.c:56: SCLDIR |= SCLBIT;
	orl	_P0,#0x02
;	src/i2c.c:57: SDA_HIGH;
	orl	_P0,#0x01
;	src/i2c.c:58: SCL_HIGH;
	orl	_P0,#0x02
;	src/i2c.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cDelay'
;------------------------------------------------------------
;ClockVar      Allocated with name '_i2cDelay_ClockVar_10000_17'
;i             Allocated with name '_i2cDelay_i_10000_18'
;------------------------------------------------------------
;	src/i2c.c:66: void i2cDelay(unsigned int ClockVar)
;	-----------------------------------------
;	 function i2cDelay
;	-----------------------------------------
_i2cDelay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2cDelay_ClockVar_10000_17
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
	mov	dptr,#_i2cDelay_ClockVar_10000_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
00102$:
;	src/i2c.c:73: __endasm;
	NOP
;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
	inc	r5
	mov	a,r5
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc	00102$
;	src/i2c.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cavailable'
;------------------------------------------------------------
;	src/i2c.c:82: unsigned char i2cavailable(void)
;	-----------------------------------------
;	 function i2cavailable
;	-----------------------------------------
_i2cavailable:
;	src/i2c.c:84: return (!(SDA | SCL));
	mov	a,#0x01
	anl	a,_P0
	mov	r7,a
	mov	a,#0x02
	anl	a,_P0
	orl	ar7,a
	mov	a,r7
	cjne	a,#0x01,00103$
00103$:
	mov  _i2cavailable_sloc0_1_0,c
	clr	a
	rlc	a
;	src/i2c.c:85: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cStart'
;------------------------------------------------------------
;	src/i2c.c:92: void i2cStart(void)
;	-----------------------------------------
;	 function i2cStart
;	-----------------------------------------
_i2cStart:
;	src/i2c.c:95: back:
00101$:
;	src/i2c.c:96: if(SDA == 0)
	mov	a,_P0
	jnb	acc.0,00101$
;	src/i2c.c:98: if(SCL == 0)
	mov	a,_P0
	jnb	acc.1,00101$
;	src/i2c.c:101: SDA_HIGH;
	orl	_P0,#0x01
;	src/i2c.c:102: SCL_HIGH;
	orl	_P0,#0x02
;	src/i2c.c:103: i2cClock(ClockVar);
	mov	dptr,#_ClockVar
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	_i2cDelay
;	src/i2c.c:104: SDA_LOW;
	anl	_P0,#0xfe
;	src/i2c.c:105: SCL_LOW;
	anl	_P0,#0xfc
;	src/i2c.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cStartonce'
;------------------------------------------------------------
;	src/i2c.c:113: void i2cStartonce(void)
;	-----------------------------------------
;	 function i2cStartonce
;	-----------------------------------------
_i2cStartonce:
;	src/i2c.c:115: SDA_HIGH;
	orl	_P0,#0x01
;	src/i2c.c:116: SCL_HIGH;
	orl	_P0,#0x02
;	src/i2c.c:117: i2cClock(ClockVar);
	mov	dptr,#_ClockVar
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	_i2cDelay
;	src/i2c.c:118: SDA_LOW;
	anl	_P0,#0xfe
;	src/i2c.c:119: SCL_LOW;
	anl	_P0,#0xfc
;	src/i2c.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cStop'
;------------------------------------------------------------
;	src/i2c.c:127: void i2cStop(void)
;	-----------------------------------------
;	 function i2cStop
;	-----------------------------------------
_i2cStop:
;	src/i2c.c:129: SDA_LOW;
	anl	_P0,#0xfe
;	src/i2c.c:130: SCL_HIGH;
	orl	_P0,#0x02
;	src/i2c.c:131: i2cClock(ClockVar);
	mov	dptr,#_ClockVar
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	_i2cDelay
;	src/i2c.c:132: SDA_HIGH;
	orl	_P0,#0x01
;	src/i2c.c:133: SCL_LOW;
	anl	_P0,#0xfc
;	src/i2c.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cWritebyte'
;------------------------------------------------------------
;uByte         Allocated with name '_i2cWritebyte_uByte_10000_29'
;MaskByte      Allocated with name '_i2cWritebyte_MaskByte_10000_30'
;------------------------------------------------------------
;	src/i2c.c:141: void i2cWritebyte(unsigned char uByte)
;	-----------------------------------------
;	 function i2cWritebyte
;	-----------------------------------------
_i2cWritebyte:
	mov	a,dpl
	mov	dptr,#_i2cWritebyte_uByte_10000_29
	movx	@dptr,a
;	src/i2c.c:144: MaskByte = 0x80;
	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
	mov	a,#0x80
	movx	@dptr,a
;	src/i2c.c:145: do
	mov	dptr,#_i2cWritebyte_uByte_10000_29
	movx	a,@dptr
	mov	r7,a
00104$:
;	src/i2c.c:147: if(uByte & MaskByte)
	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
	movx	a,@dptr
	anl	a,r7
	jz	00102$
;	src/i2c.c:148: SDA_HIGH;
	orl	_P0,#0x01
	sjmp	00103$
00102$:
;	src/i2c.c:150: SDA_LOW;
	anl	_P0,#0xfe
00103$:
;	src/i2c.c:151: SCL_HIGH;
	orl	_P0,#0x02
;	src/i2c.c:152: i2cClock(ClockVar);
	mov	dptr,#_ClockVar
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dpl, r5
	mov	dph, r6
	push	ar7
	lcall	_i2cDelay
;	src/i2c.c:153: SCL_LOW;
	anl	_P0,#0xfc
;	src/i2c.c:154: i2cClock(ClockVar);
	mov	dptr,#_ClockVar
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dpl, r5
	mov	dph, r6
	lcall	_i2cDelay
	pop	ar7
;	src/i2c.c:155: MaskByte /= 2;
	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
	movx	a,@dptr
	mov	b,#0x02
	div	ab
	movx	@dptr,a
;	src/i2c.c:157: while(MaskByte>0);
	movx	a,@dptr
	jnz	00104$
;	src/i2c.c:158: SDA_HIGH;
	orl	_P0,#0x01
;	src/i2c.c:159: SCL_HIGH;
	orl	_P0,#0x02
;	src/i2c.c:160: i2cClock(ClockVar);
	mov	dptr,#_ClockVar
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	_i2cDelay
;	src/i2c.c:161: SlaveACK = SDA;
	mov	dptr,#_SlaveACK
	mov	a,#0x01
	anl	a,_P0
	movx	@dptr,a
;	src/i2c.c:162: SCL_LOW;
	anl	_P0,#0xfc
;	src/i2c.c:163: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cReadbyte'
;------------------------------------------------------------
;MasterACK     Allocated with name '_i2cReadbyte_MasterACK_10000_32'
;uByte         Allocated with name '_i2cReadbyte_uByte_10000_33'
;MaskByte      Allocated with name '_i2cReadbyte_MaskByte_10000_33'
;------------------------------------------------------------
;	src/i2c.c:170: unsigned char i2cReadbyte(unsigned char MasterACK)
;	-----------------------------------------
;	 function i2cReadbyte
;	-----------------------------------------
_i2cReadbyte:
	mov	a,dpl
	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
	movx	@dptr,a
;	src/i2c.c:174: uByte    = 0;
	mov	dptr,#_i2cReadbyte_uByte_10000_33
	clr	a
	movx	@dptr,a
;	src/i2c.c:175: MaskByte = 0x80;
	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
	mov	a,#0x80
	movx	@dptr,a
;	src/i2c.c:176: do
00103$:
;	src/i2c.c:178: SCL_HIGH;
	orl	_P0,#0x02
;	src/i2c.c:179: if(SDA == 1)
	mov	a,#0x01
	anl	a,_P0
	mov	r7,a
	cjne	r7,#0x01,00102$
;	src/i2c.c:181: uByte |= MaskByte;
	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cReadbyte_uByte_10000_33
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
00102$:
;	src/i2c.c:183: SCL_LOW;
	anl	_P0,#0xfc
;	src/i2c.c:184: MaskByte /= 2;
	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
	movx	a,@dptr
	mov	b,#0x02
	div	ab
	movx	@dptr,a
;	src/i2c.c:186: while(MaskByte > 0);
	movx	a,@dptr
	jnz	00103$
;	src/i2c.c:187: if(MasterACK==1)
	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00107$
;	src/i2c.c:188: SDA_HIGH;
	orl	_P0,#0x01
	sjmp	00108$
00107$:
;	src/i2c.c:190: SDA_LOW;
	anl	_P0,#0xfe
00108$:
;	src/i2c.c:191: SCL_LOW;
	anl	_P0,#0xfc
;	src/i2c.c:192: SDA_HIGH;
	orl	_P0,#0x01
;	src/i2c.c:193: return uByte;
	mov	dptr,#_i2cReadbyte_uByte_10000_33
	movx	a,@dptr
;	src/i2c.c:194: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cWrite'
;------------------------------------------------------------
;Address       Allocated with name '_i2cWrite_PARM_2'
;Byte          Allocated with name '_i2cWrite_Byte_10000_36'
;------------------------------------------------------------
;	src/i2c.c:201: void i2cWrite(unsigned char Byte,unsigned char Address)
;	-----------------------------------------
;	 function i2cWrite
;	-----------------------------------------
_i2cWrite:
	mov	a,dpl
	mov	dptr,#_i2cWrite_Byte_10000_36
	movx	@dptr,a
;	src/i2c.c:203: do
00103$:
;	src/i2c.c:205: i2cStart();
	lcall	_i2cStart
;	src/i2c.c:206: i2cWritebyte(DevAddress);
	mov	dptr,#_DevAddress
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cWritebyte
;	src/i2c.c:207: if(SlaveACK == 1)
	mov	dptr,#_SlaveACK
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
;	src/i2c.c:208: i2cStop();
	lcall	_i2cStop
00104$:
;	src/i2c.c:210: while(SlaveACK==1);
	mov	dptr,#_SlaveACK
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00128$
	sjmp	00103$
00128$:
;	src/i2c.c:211: i2cWritebyte(Address);
	mov	dptr,#_i2cWrite_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cWritebyte
;	src/i2c.c:212: i2cWritebyte(Byte);
	mov	dptr,#_i2cWrite_Byte_10000_36
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cWritebyte
;	src/i2c.c:213: i2cStop();
;	src/i2c.c:214: }
	ljmp	_i2cStop
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cRead'
;------------------------------------------------------------
;Address       Allocated with name '_i2cRead_Address_10000_39'
;ReadByte      Allocated with name '_i2cRead_ReadByte_10000_40'
;------------------------------------------------------------
;	src/i2c.c:221: unsigned char i2cRead(unsigned char Address)
;	-----------------------------------------
;	 function i2cRead
;	-----------------------------------------
_i2cRead:
	mov	a,dpl
	mov	dptr,#_i2cRead_Address_10000_39
	movx	@dptr,a
;	src/i2c.c:224: do
00103$:
;	src/i2c.c:226: i2cStart();
	lcall	_i2cStart
;	src/i2c.c:227: i2cWritebyte(DevAddress);
	mov	dptr,#_DevAddress
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cWritebyte
;	src/i2c.c:228: if(SlaveACK==1)
	mov	dptr,#_SlaveACK
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
;	src/i2c.c:229: i2cStop();
	lcall	_i2cStop
00104$:
;	src/i2c.c:231: while(SlaveACK==1);
	mov	dptr,#_SlaveACK
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00128$
	sjmp	00103$
00128$:
;	src/i2c.c:232: i2cWritebyte(Address);
	mov	dptr,#_i2cRead_Address_10000_39
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2cWritebyte
;	src/i2c.c:233: i2cStop();
	lcall	_i2cStop
;	src/i2c.c:234: i2cStart();
	lcall	_i2cStart
;	src/i2c.c:235: i2cWritebyte(DevAddress+1);
	mov	dptr,#_DevAddress
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dpl, r7
	lcall	_i2cWritebyte
;	src/i2c.c:236: ReadByte = i2cReadbyte(1);
	mov	dpl, #0x01
	lcall	_i2cReadbyte
	mov	r7, dpl
;	src/i2c.c:237: i2cStop();
	push	ar7
	lcall	_i2cStop
	pop	ar7
;	src/i2c.c:238: return ReadByte;
	mov	dpl, r7
;	src/i2c.c:239: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cBegin'
;------------------------------------------------------------
;Speed         Allocated with name '_i2cBegin_PARM_2'
;OscFreq       Allocated with name '_i2cBegin_OscFreq_10000_42'
;teMp          Allocated with name '_i2cBegin_teMp_10000_43'
;------------------------------------------------------------
;	src/i2c.c:246: unsigned char i2cBegin(unsigned long OscFreq,unsigned long Speed)
;	-----------------------------------------
;	 function i2cBegin
;	-----------------------------------------
_i2cBegin:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_i2cBegin_OscFreq_10000_42
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/i2c.c:248: unsigned char teMp = 12 / ((OscFreq / 1000)/1000);
	mov	dptr,#_i2cBegin_OscFreq_10000_42
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xe8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xe8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	dptr,#__divsint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000c
	lcall	__divsint
	mov	r6, dpl
;	src/i2c.c:249: teMp = teMp + CLOCK_ERROR_CORRECTION;
	inc	r6
	inc	r6
	inc	r6
;	src/i2c.c:250: ClockVar = teMp / Speed;
	mov	dptr,#_i2cBegin_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r6
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r6,#0x00
	mov	dptr,#__divulong_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r6
	lcall	__divulong
	mov	r4, dpl
	mov	dptr,#_ClockVar
	mov	a,r4
	movx	@dptr,a
;	src/i2c.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2csetAdd'
;------------------------------------------------------------
;SlaveAddress  Allocated with name '_i2csetAdd_SlaveAddress_10000_44'
;------------------------------------------------------------
;	src/i2c.c:258: void i2csetAdd(unsigned char SlaveAddress)
;	-----------------------------------------
;	 function i2csetAdd
;	-----------------------------------------
_i2csetAdd:
	mov	a,dpl
	mov	dptr,#_i2csetAdd_SlaveAddress_10000_44
	movx	@dptr,a
;	src/i2c.c:260: DevAddress = SlaveAddress;
	movx	a,@dptr
	mov	dptr,#_DevAddress
	movx	@dptr,a
;	src/i2c.c:261: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cDetect'
;------------------------------------------------------------
;_Address      Allocated with name '_i2cDetect__Address_10000_46'
;------------------------------------------------------------
;	src/i2c.c:275: unsigned char i2cDetect(unsigned char _Address)
;	-----------------------------------------
;	 function i2cDetect
;	-----------------------------------------
_i2cDetect:
;	src/i2c.c:278: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cWriteBlock'
;------------------------------------------------------------
;eAddress      Allocated with name '_i2cWriteBlock_PARM_2'
;dPtr          Allocated with name '_i2cWriteBlock_PARM_3'
;sAddress      Allocated with name '_i2cWriteBlock_sAddress_10000_49'
;duMmy         Allocated with name '_i2cWriteBlock_duMmy_10000_50'
;i             Allocated with name '_i2cWriteBlock_i_10000_50'
;------------------------------------------------------------
;	src/i2c.c:285: void i2cWriteBlock(unsigned char sAddress,unsigned char eAddress,unsigned char *dPtr)
;	-----------------------------------------
;	 function i2cWriteBlock
;	-----------------------------------------
_i2cWriteBlock:
	mov	a,dpl
	mov	dptr,#_i2cWriteBlock_sAddress_10000_49
	movx	@dptr,a
;	src/i2c.c:289: for(duMmy=sAddress;i<= eAddress;duMmy++)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cWriteBlock_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_i2cWriteBlock_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,r2
	jc	00105$
;	src/i2c.c:291: i2cWrite(dPtr[i],duMmy);
	push	ar3
	mov	a,r2
	add	a, r4
	mov	r0,a
	clr	a
	addc	a, r5
	mov	r1,a
	mov	ar3,r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_i2cWrite_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl, r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2cWrite
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/i2c.c:292: i++;
	inc	r2
;	src/i2c.c:289: for(duMmy=sAddress;i<= eAddress;duMmy++)
	inc	r7
	pop	ar3
	sjmp	00103$
00105$:
;	src/i2c.c:294: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cReadBlock'
;------------------------------------------------------------
;sloc0         Allocated with name '_i2cReadBlock_sloc0_1_0'
;eAddress      Allocated with name '_i2cReadBlock_PARM_2'
;dPtr          Allocated with name '_i2cReadBlock_PARM_3'
;sAddress      Allocated with name '_i2cReadBlock_sAddress_10000_53'
;duMmy         Allocated with name '_i2cReadBlock_duMmy_10000_54'
;i             Allocated with name '_i2cReadBlock_i_10000_54'
;------------------------------------------------------------
;	src/i2c.c:301: void i2cReadBlock(unsigned char sAddress,unsigned char eAddress,unsigned char *dPtr)
;	-----------------------------------------
;	 function i2cReadBlock
;	-----------------------------------------
_i2cReadBlock:
	mov	a,dpl
	mov	dptr,#_i2cReadBlock_sAddress_10000_53
	movx	@dptr,a
;	src/i2c.c:305: for(duMmy=sAddress;i<= eAddress;duMmy++)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2cReadBlock_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_i2cReadBlock_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,r2
	jc	00105$
;	src/i2c.c:307: dPtr[i] = i2cRead(duMmy);
	push	ar3
	mov	a,r2
	add	a, r4
	mov	_i2cReadBlock_sloc0_1_0,a
	clr	a
	addc	a, r5
	mov	(_i2cReadBlock_sloc0_1_0 + 1),a
	mov	(_i2cReadBlock_sloc0_1_0 + 2),r6
	mov	dpl, r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	_i2cRead
	mov	r3, dpl
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_i2cReadBlock_sloc0_1_0
	mov	dph,(_i2cReadBlock_sloc0_1_0 + 1)
	mov	b,(_i2cReadBlock_sloc0_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	src/i2c.c:308: i++;
	inc	r2
;	src/i2c.c:305: for(duMmy=sAddress;i<= eAddress;duMmy++)
	inc	r7
	pop	ar3
	sjmp	00103$
00105$:
;	src/i2c.c:310: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__SlaveACK:
	.db #0x00	; 0
__xinit__DevAddress:
	.db #0x00	; 0
__xinit__ClockVar:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
