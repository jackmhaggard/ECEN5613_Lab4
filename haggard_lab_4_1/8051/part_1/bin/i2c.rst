                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2cStartonce
                                     12 	.globl _i2cDelay
                                     13 	.globl _i2cSetPort
                                     14 	.globl __time_out_timer_0__
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _ClockVar
                                    112 	.globl _DevAddress
                                    113 	.globl _SlaveACK
                                    114 	.globl _i2cReadBlock_PARM_3
                                    115 	.globl _i2cReadBlock_PARM_2
                                    116 	.globl _i2cWriteBlock_PARM_3
                                    117 	.globl _i2cWriteBlock_PARM_2
                                    118 	.globl _i2cBegin_PARM_2
                                    119 	.globl _i2cWrite_PARM_2
                                    120 	.globl _i2cavailable
                                    121 	.globl _i2cStart
                                    122 	.globl _i2cStop
                                    123 	.globl _i2cWritebyte
                                    124 	.globl _i2cReadbyte
                                    125 	.globl _i2cWrite
                                    126 	.globl _i2cRead
                                    127 	.globl _i2cBegin
                                    128 	.globl _i2csetAdd
                                    129 	.globl _i2cDetect
                                    130 	.globl _i2cWriteBlock
                                    131 	.globl _i2cReadBlock
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 _P0	=	0x0080
                           000081   138 _SP	=	0x0081
                           000082   139 _DPL	=	0x0082
                           000083   140 _DPH	=	0x0083
                           000087   141 _PCON	=	0x0087
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008A   144 _TL0	=	0x008a
                           00008B   145 _TL1	=	0x008b
                           00008C   146 _TH0	=	0x008c
                           00008D   147 _TH1	=	0x008d
                           000090   148 _P1	=	0x0090
                           000098   149 _SCON	=	0x0098
                           000099   150 _SBUF	=	0x0099
                           0000A0   151 _P2	=	0x00a0
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 _PSW	=	0x00d0
                           0000E0   156 _ACC	=	0x00e0
                           0000F0   157 _B	=	0x00f0
                                    158 ;--------------------------------------------------------
                                    159 ; special function bits
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           000080   163 _P0_0	=	0x0080
                           000081   164 _P0_1	=	0x0081
                           000082   165 _P0_2	=	0x0082
                           000083   166 _P0_3	=	0x0083
                           000084   167 _P0_4	=	0x0084
                           000085   168 _P0_5	=	0x0085
                           000086   169 _P0_6	=	0x0086
                           000087   170 _P0_7	=	0x0087
                           000088   171 _IT0	=	0x0088
                           000089   172 _IE0	=	0x0089
                           00008A   173 _IT1	=	0x008a
                           00008B   174 _IE1	=	0x008b
                           00008C   175 _TR0	=	0x008c
                           00008D   176 _TF0	=	0x008d
                           00008E   177 _TR1	=	0x008e
                           00008F   178 _TF1	=	0x008f
                           000090   179 _P1_0	=	0x0090
                           000091   180 _P1_1	=	0x0091
                           000092   181 _P1_2	=	0x0092
                           000093   182 _P1_3	=	0x0093
                           000094   183 _P1_4	=	0x0094
                           000095   184 _P1_5	=	0x0095
                           000096   185 _P1_6	=	0x0096
                           000097   186 _P1_7	=	0x0097
                           000098   187 _RI	=	0x0098
                           000099   188 _TI	=	0x0099
                           00009A   189 _RB8	=	0x009a
                           00009B   190 _TB8	=	0x009b
                           00009C   191 _REN	=	0x009c
                           00009D   192 _SM2	=	0x009d
                           00009E   193 _SM1	=	0x009e
                           00009F   194 _SM0	=	0x009f
                           0000A0   195 _P2_0	=	0x00a0
                           0000A1   196 _P2_1	=	0x00a1
                           0000A2   197 _P2_2	=	0x00a2
                           0000A3   198 _P2_3	=	0x00a3
                           0000A4   199 _P2_4	=	0x00a4
                           0000A5   200 _P2_5	=	0x00a5
                           0000A6   201 _P2_6	=	0x00a6
                           0000A7   202 _P2_7	=	0x00a7
                           0000A8   203 _EX0	=	0x00a8
                           0000A9   204 _ET0	=	0x00a9
                           0000AA   205 _EX1	=	0x00aa
                           0000AB   206 _ET1	=	0x00ab
                           0000AC   207 _ES	=	0x00ac
                           0000AF   208 _EA	=	0x00af
                           0000B0   209 _P3_0	=	0x00b0
                           0000B1   210 _P3_1	=	0x00b1
                           0000B2   211 _P3_2	=	0x00b2
                           0000B3   212 _P3_3	=	0x00b3
                           0000B4   213 _P3_4	=	0x00b4
                           0000B5   214 _P3_5	=	0x00b5
                           0000B6   215 _P3_6	=	0x00b6
                           0000B7   216 _P3_7	=	0x00b7
                           0000B0   217 _RXD	=	0x00b0
                           0000B1   218 _TXD	=	0x00b1
                           0000B2   219 _INT0	=	0x00b2
                           0000B3   220 _INT1	=	0x00b3
                           0000B4   221 _T0	=	0x00b4
                           0000B5   222 _T1	=	0x00b5
                           0000B6   223 _WR	=	0x00b6
                           0000B7   224 _RD	=	0x00b7
                           0000B8   225 _PX0	=	0x00b8
                           0000B9   226 _PT0	=	0x00b9
                           0000BA   227 _PX1	=	0x00ba
                           0000BB   228 _PT1	=	0x00bb
                           0000BC   229 _PS	=	0x00bc
                           0000D0   230 _P	=	0x00d0
                           0000D1   231 _F1	=	0x00d1
                           0000D2   232 _OV	=	0x00d2
                           0000D3   233 _RS0	=	0x00d3
                           0000D4   234 _RS1	=	0x00d4
                           0000D5   235 _F0	=	0x00d5
                           0000D6   236 _AC	=	0x00d6
                           0000D7   237 _CY	=	0x00d7
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable register banks
                                    240 ;--------------------------------------------------------
                                    241 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        242 	.ds 8
                                    243 ;--------------------------------------------------------
                                    244 ; internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area DSEG    (DATA)
      00000A                        247 _i2cReadBlock_sloc0_1_0:
      00000A                        248 	.ds 3
                                    249 ;--------------------------------------------------------
                                    250 ; overlayable items in internal ram
                                    251 ;--------------------------------------------------------
                                    252 ;--------------------------------------------------------
                                    253 ; indirectly addressable internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area ISEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area IABS    (ABS,DATA)
                                    260 	.area IABS    (ABS,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; bit data
                                    263 ;--------------------------------------------------------
                                    264 	.area BSEG    (BIT)
                                    265 ;--------------------------------------------------------
                                    266 ; paged external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area PSEG    (PAG,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; uninitialized external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XSEG    (XDATA)
      000009                        273 _i2cDelay_ClockVar_10000_17:
      000009                        274 	.ds 2
      00000B                        275 _i2cavailable_sloc0_1_0:
      00000B                        276 	.ds 1
      00000C                        277 _i2cWritebyte_uByte_10000_29:
      00000C                        278 	.ds 1
      00000D                        279 _i2cWritebyte_MaskByte_10000_30:
      00000D                        280 	.ds 1
      00000E                        281 _i2cReadbyte_MasterACK_10000_32:
      00000E                        282 	.ds 1
      00000F                        283 _i2cReadbyte_uByte_10000_33:
      00000F                        284 	.ds 1
      000010                        285 _i2cReadbyte_MaskByte_10000_33:
      000010                        286 	.ds 1
      000011                        287 _i2cWrite_PARM_2:
      000011                        288 	.ds 1
      000012                        289 _i2cWrite_Byte_10000_36:
      000012                        290 	.ds 1
      000013                        291 _i2cRead_Address_10000_39:
      000013                        292 	.ds 1
      000014                        293 _i2cBegin_PARM_2:
      000014                        294 	.ds 4
      000018                        295 _i2cBegin_OscFreq_10000_42:
      000018                        296 	.ds 4
      00001C                        297 _i2csetAdd_SlaveAddress_10000_44:
      00001C                        298 	.ds 1
      00001D                        299 _i2cWriteBlock_PARM_2:
      00001D                        300 	.ds 1
      00001E                        301 _i2cWriteBlock_PARM_3:
      00001E                        302 	.ds 3
      000021                        303 _i2cWriteBlock_sAddress_10000_49:
      000021                        304 	.ds 1
      000022                        305 _i2cReadBlock_PARM_2:
      000022                        306 	.ds 1
      000023                        307 _i2cReadBlock_PARM_3:
      000023                        308 	.ds 3
      000026                        309 _i2cReadBlock_sAddress_10000_53:
      000026                        310 	.ds 1
                                    311 ;--------------------------------------------------------
                                    312 ; absolute external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XABS    (ABS,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; initialized external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XISEG   (XDATA)
      000087                        319 _SlaveACK::
      000087                        320 	.ds 1
      000088                        321 _DevAddress::
      000088                        322 	.ds 1
      000089                        323 _ClockVar::
      000089                        324 	.ds 1
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT0 (CODE)
                                    327 	.area GSINIT1 (CODE)
                                    328 	.area GSINIT2 (CODE)
                                    329 	.area GSINIT3 (CODE)
                                    330 	.area GSINIT4 (CODE)
                                    331 	.area GSINIT5 (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area CSEG    (CODE)
                                    335 ;--------------------------------------------------------
                                    336 ; global & static initialisations
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.area GSFINAL (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 ;--------------------------------------------------------
                                    343 ; Home
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area HOME    (CODE)
                                    347 ;--------------------------------------------------------
                                    348 ; code
                                    349 ;--------------------------------------------------------
                                    350 	.area CSEG    (CODE)
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function '_time_out_timer_0__'
                                    353 ;------------------------------------------------------------
                                    354 ;	src/i2c.c:40: void _time_out_timer_0__(void)
                                    355 ;	-----------------------------------------
                                    356 ;	 function _time_out_timer_0__
                                    357 ;	-----------------------------------------
      00252D                        358 __time_out_timer_0__:
                           000007   359 	ar7 = 0x07
                           000006   360 	ar6 = 0x06
                           000005   361 	ar5 = 0x05
                           000004   362 	ar4 = 0x04
                           000003   363 	ar3 = 0x03
                           000002   364 	ar2 = 0x02
                           000001   365 	ar1 = 0x01
                           000000   366 	ar0 = 0x00
                                    367 ;	src/i2c.c:42: TMOD |= 0x01;
      00252D 43 89 01         [24]  368 	orl	_TMOD,#0x01
                                    369 ;	src/i2c.c:43: TL0   = 0x00;	
      002530 75 8A 00         [24]  370 	mov	_TL0,#0x00
                                    371 ;	src/i2c.c:44: TH0   = 0x4C;	
      002533 75 8C 4C         [24]  372 	mov	_TH0,#0x4c
                                    373 ;	src/i2c.c:45: TR0   = 1;	
                                    374 ;	assignBit
      002536 D2 8C            [12]  375 	setb	_TR0
                                    376 ;	src/i2c.c:46: }
      002538 22               [24]  377 	ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'i2cSetPort'
                                    380 ;------------------------------------------------------------
                                    381 ;	src/i2c.c:53: void  i2cSetPort(void)
                                    382 ;	-----------------------------------------
                                    383 ;	 function i2cSetPort
                                    384 ;	-----------------------------------------
      002539                        385 _i2cSetPort:
                                    386 ;	src/i2c.c:55: SDADIR |= SDABIT;
      002539 43 90 02         [24]  387 	orl	_P1,#0x02
                                    388 ;	src/i2c.c:56: SCLDIR |= SCLBIT;
      00253C 43 90 01         [24]  389 	orl	_P1,#0x01
                                    390 ;	src/i2c.c:57: SDA_HIGH;
                                    391 ;	assignBit
      00253F D2 91            [12]  392 	setb	_P1_1
                                    393 ;	src/i2c.c:58: SCL_HIGH;
                                    394 ;	assignBit
      002541 D2 90            [12]  395 	setb	_P1_0
                                    396 ;	src/i2c.c:59: }
      002543 22               [24]  397 	ret
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'i2cDelay'
                                    400 ;------------------------------------------------------------
                                    401 ;ClockVar      Allocated with name '_i2cDelay_ClockVar_10000_17'
                                    402 ;i             Allocated with name '_i2cDelay_i_10000_18'
                                    403 ;------------------------------------------------------------
                                    404 ;	src/i2c.c:66: void i2cDelay(unsigned int ClockVar)
                                    405 ;	-----------------------------------------
                                    406 ;	 function i2cDelay
                                    407 ;	-----------------------------------------
      002544                        408 _i2cDelay:
      002544 AF 83            [24]  409 	mov	r7,dph
      002546 E5 82            [12]  410 	mov	a,dpl
      002548 90 00 09         [24]  411 	mov	dptr,#_i2cDelay_ClockVar_10000_17
      00254B F0               [24]  412 	movx	@dptr,a
      00254C EF               [12]  413 	mov	a,r7
      00254D A3               [24]  414 	inc	dptr
      00254E F0               [24]  415 	movx	@dptr,a
                                    416 ;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
      00254F 90 00 09         [24]  417 	mov	dptr,#_i2cDelay_ClockVar_10000_17
      002552 E0               [24]  418 	movx	a,@dptr
      002553 FE               [12]  419 	mov	r6,a
      002554 A3               [24]  420 	inc	dptr
      002555 E0               [24]  421 	movx	a,@dptr
      002556 FF               [12]  422 	mov	r7,a
      002557 7D 00            [12]  423 	mov	r5,#0x00
      002559                        424 00102$:
                                    425 ;	src/i2c.c:73: __endasm;
      002559 00               [12]  426 	NOP
                                    427 ;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
      00255A 0D               [12]  428 	inc	r5
      00255B ED               [12]  429 	mov	a,r5
      00255C FB               [12]  430 	mov	r3,a
      00255D 33               [12]  431 	rlc	a
      00255E 95 E0            [12]  432 	subb	a,acc
      002560 FC               [12]  433 	mov	r4,a
      002561 C3               [12]  434 	clr	c
      002562 EE               [12]  435 	mov	a,r6
      002563 9B               [12]  436 	subb	a,r3
      002564 EF               [12]  437 	mov	a,r7
      002565 9C               [12]  438 	subb	a,r4
      002566 50 F1            [24]  439 	jnc	00102$
                                    440 ;	src/i2c.c:75: }
      002568 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function 'i2cavailable'
                                    444 ;------------------------------------------------------------
                                    445 ;sloc0         Allocated with name '_i2cavailable_sloc0_1_0'
                                    446 ;------------------------------------------------------------
                                    447 ;	src/i2c.c:82: unsigned char i2cavailable(void)
                                    448 ;	-----------------------------------------
                                    449 ;	 function i2cavailable
                                    450 ;	-----------------------------------------
      002569                        451 _i2cavailable:
                                    452 ;	src/i2c.c:84: return (!(SDA | SCL));
      002569 90 00 0B         [24]  453 	mov	dptr,#_i2cavailable_sloc0_1_0
      00256C A2 91            [12]  454 	mov	c,_P1_1
      00256E 72 90            [24]  455 	orl	c,_P1_0
      002570 E4               [12]  456 	clr	a
      002571 33               [12]  457 	rlc	a
      002572 F0               [24]  458 	movx	@dptr,a
      002573 90 00 0B         [24]  459 	mov	dptr,#_i2cavailable_sloc0_1_0
      002576 E0               [24]  460 	movx	a,@dptr
      002577 B4 01 00         [24]  461 	cjne	a,#0x01,00103$
      00257A                        462 00103$:
      00257A E4               [12]  463 	clr	a
      00257B 33               [12]  464 	rlc	a
      00257C F0               [24]  465 	movx	@dptr,a
      00257D 90 00 0B         [24]  466 	mov	dptr,#_i2cavailable_sloc0_1_0
      002580 E0               [24]  467 	movx	a,@dptr
                                    468 ;	src/i2c.c:85: }
      002581 F5 82            [12]  469 	mov	dpl,a
      002583 22               [24]  470 	ret
                                    471 ;------------------------------------------------------------
                                    472 ;Allocation info for local variables in function 'i2cStart'
                                    473 ;------------------------------------------------------------
                                    474 ;	src/i2c.c:92: void i2cStart(void)
                                    475 ;	-----------------------------------------
                                    476 ;	 function i2cStart
                                    477 ;	-----------------------------------------
      002584                        478 _i2cStart:
                                    479 ;	src/i2c.c:95: back:
      002584                        480 00101$:
                                    481 ;	src/i2c.c:96: if(SDA == 0)
      002584 30 91 FD         [24]  482 	jnb	_P1_1,00101$
                                    483 ;	src/i2c.c:98: if(SCL == 0)
      002587 30 90 FA         [24]  484 	jnb	_P1_0,00101$
                                    485 ;	src/i2c.c:101: SDA_HIGH;
                                    486 ;	assignBit
      00258A D2 91            [12]  487 	setb	_P1_1
                                    488 ;	src/i2c.c:102: SCL_HIGH;
                                    489 ;	assignBit
      00258C D2 90            [12]  490 	setb	_P1_0
                                    491 ;	src/i2c.c:103: i2cClock(ClockVar);
      00258E 90 00 89         [24]  492 	mov	dptr,#_ClockVar
      002591 E0               [24]  493 	movx	a,@dptr
      002592 FE               [12]  494 	mov	r6,a
      002593 7F 00            [12]  495 	mov	r7,#0x00
      002595 8E 82            [24]  496 	mov	dpl, r6
      002597 8F 83            [24]  497 	mov	dph, r7
      002599 12 25 44         [24]  498 	lcall	_i2cDelay
                                    499 ;	src/i2c.c:104: SDA_LOW;
                                    500 ;	assignBit
      00259C C2 91            [12]  501 	clr	_P1_1
                                    502 ;	src/i2c.c:105: SCL_LOW;
                                    503 ;	assignBit
      00259E C2 90            [12]  504 	clr	_P1_0
                                    505 ;	src/i2c.c:109: }
      0025A0 22               [24]  506 	ret
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'i2cStartonce'
                                    509 ;------------------------------------------------------------
                                    510 ;	src/i2c.c:116: void i2cStartonce(void)
                                    511 ;	-----------------------------------------
                                    512 ;	 function i2cStartonce
                                    513 ;	-----------------------------------------
      0025A1                        514 _i2cStartonce:
                                    515 ;	src/i2c.c:118: SDA_HIGH;
                                    516 ;	assignBit
      0025A1 D2 91            [12]  517 	setb	_P1_1
                                    518 ;	src/i2c.c:119: SCL_HIGH;
                                    519 ;	assignBit
      0025A3 D2 90            [12]  520 	setb	_P1_0
                                    521 ;	src/i2c.c:120: i2cClock(ClockVar);
      0025A5 90 00 89         [24]  522 	mov	dptr,#_ClockVar
      0025A8 E0               [24]  523 	movx	a,@dptr
      0025A9 FE               [12]  524 	mov	r6,a
      0025AA 7F 00            [12]  525 	mov	r7,#0x00
      0025AC 8E 82            [24]  526 	mov	dpl, r6
      0025AE 8F 83            [24]  527 	mov	dph, r7
      0025B0 12 25 44         [24]  528 	lcall	_i2cDelay
                                    529 ;	src/i2c.c:121: SDA_LOW;
                                    530 ;	assignBit
      0025B3 C2 91            [12]  531 	clr	_P1_1
                                    532 ;	src/i2c.c:122: SCL_LOW;
                                    533 ;	assignBit
      0025B5 C2 90            [12]  534 	clr	_P1_0
                                    535 ;	src/i2c.c:123: }
      0025B7 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'i2cStop'
                                    539 ;------------------------------------------------------------
                                    540 ;	src/i2c.c:130: void i2cStop(void)
                                    541 ;	-----------------------------------------
                                    542 ;	 function i2cStop
                                    543 ;	-----------------------------------------
      0025B8                        544 _i2cStop:
                                    545 ;	src/i2c.c:133: SDA_LOW;
                                    546 ;	assignBit
      0025B8 C2 91            [12]  547 	clr	_P1_1
                                    548 ;	src/i2c.c:134: SCL_HIGH;
                                    549 ;	assignBit
      0025BA D2 90            [12]  550 	setb	_P1_0
                                    551 ;	src/i2c.c:135: i2cClock(ClockVar);
      0025BC 90 00 89         [24]  552 	mov	dptr,#_ClockVar
      0025BF E0               [24]  553 	movx	a,@dptr
      0025C0 FE               [12]  554 	mov	r6,a
      0025C1 7F 00            [12]  555 	mov	r7,#0x00
      0025C3 8E 82            [24]  556 	mov	dpl, r6
      0025C5 8F 83            [24]  557 	mov	dph, r7
      0025C7 12 25 44         [24]  558 	lcall	_i2cDelay
                                    559 ;	src/i2c.c:136: SDA_HIGH;
                                    560 ;	assignBit
      0025CA D2 91            [12]  561 	setb	_P1_1
                                    562 ;	src/i2c.c:138: }
      0025CC 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'i2cWritebyte'
                                    566 ;------------------------------------------------------------
                                    567 ;uByte         Allocated with name '_i2cWritebyte_uByte_10000_29'
                                    568 ;MaskByte      Allocated with name '_i2cWritebyte_MaskByte_10000_30'
                                    569 ;------------------------------------------------------------
                                    570 ;	src/i2c.c:145: void i2cWritebyte(unsigned char uByte)
                                    571 ;	-----------------------------------------
                                    572 ;	 function i2cWritebyte
                                    573 ;	-----------------------------------------
      0025CD                        574 _i2cWritebyte:
      0025CD E5 82            [12]  575 	mov	a,dpl
      0025CF 90 00 0C         [24]  576 	mov	dptr,#_i2cWritebyte_uByte_10000_29
      0025D2 F0               [24]  577 	movx	@dptr,a
                                    578 ;	src/i2c.c:148: MaskByte = 0x80;
      0025D3 90 00 0D         [24]  579 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      0025D6 74 80            [12]  580 	mov	a,#0x80
      0025D8 F0               [24]  581 	movx	@dptr,a
                                    582 ;	src/i2c.c:149: do
      0025D9 90 00 0C         [24]  583 	mov	dptr,#_i2cWritebyte_uByte_10000_29
      0025DC E0               [24]  584 	movx	a,@dptr
      0025DD FF               [12]  585 	mov	r7,a
      0025DE                        586 00104$:
                                    587 ;	src/i2c.c:151: if(uByte & MaskByte)
      0025DE 90 00 0D         [24]  588 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      0025E1 E0               [24]  589 	movx	a,@dptr
      0025E2 5F               [12]  590 	anl	a,r7
      0025E3 60 04            [24]  591 	jz	00102$
                                    592 ;	src/i2c.c:152: SDA_HIGH;
                                    593 ;	assignBit
      0025E5 D2 91            [12]  594 	setb	_P1_1
      0025E7 80 02            [24]  595 	sjmp	00103$
      0025E9                        596 00102$:
                                    597 ;	src/i2c.c:154: SDA_LOW;
                                    598 ;	assignBit
      0025E9 C2 91            [12]  599 	clr	_P1_1
      0025EB                        600 00103$:
                                    601 ;	src/i2c.c:155: SCL_HIGH;
                                    602 ;	assignBit
      0025EB D2 90            [12]  603 	setb	_P1_0
                                    604 ;	src/i2c.c:156: i2cClock(ClockVar);
      0025ED 90 00 89         [24]  605 	mov	dptr,#_ClockVar
      0025F0 E0               [24]  606 	movx	a,@dptr
      0025F1 FD               [12]  607 	mov	r5,a
      0025F2 7E 00            [12]  608 	mov	r6,#0x00
      0025F4 8D 82            [24]  609 	mov	dpl, r5
      0025F6 8E 83            [24]  610 	mov	dph, r6
      0025F8 C0 07            [24]  611 	push	ar7
      0025FA 12 25 44         [24]  612 	lcall	_i2cDelay
                                    613 ;	src/i2c.c:157: SCL_LOW;
                                    614 ;	assignBit
      0025FD C2 90            [12]  615 	clr	_P1_0
                                    616 ;	src/i2c.c:158: i2cClock(ClockVar);
      0025FF 90 00 89         [24]  617 	mov	dptr,#_ClockVar
      002602 E0               [24]  618 	movx	a,@dptr
      002603 FD               [12]  619 	mov	r5,a
      002604 7E 00            [12]  620 	mov	r6,#0x00
      002606 8D 82            [24]  621 	mov	dpl, r5
      002608 8E 83            [24]  622 	mov	dph, r6
      00260A 12 25 44         [24]  623 	lcall	_i2cDelay
      00260D D0 07            [24]  624 	pop	ar7
                                    625 ;	src/i2c.c:159: MaskByte /= 2;
      00260F 90 00 0D         [24]  626 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      002612 E0               [24]  627 	movx	a,@dptr
      002613 75 F0 02         [24]  628 	mov	b,#0x02
      002616 84               [48]  629 	div	ab
      002617 F0               [24]  630 	movx	@dptr,a
                                    631 ;	src/i2c.c:161: while(MaskByte>0);
      002618 E0               [24]  632 	movx	a,@dptr
      002619 70 C3            [24]  633 	jnz	00104$
                                    634 ;	src/i2c.c:163: SCL_HIGH;
                                    635 ;	assignBit
      00261B D2 90            [12]  636 	setb	_P1_0
                                    637 ;	src/i2c.c:164: i2cClock(ClockVar);
      00261D 90 00 89         [24]  638 	mov	dptr,#_ClockVar
      002620 E0               [24]  639 	movx	a,@dptr
      002621 FE               [12]  640 	mov	r6,a
      002622 7F 00            [12]  641 	mov	r7,#0x00
      002624 8E 82            [24]  642 	mov	dpl, r6
      002626 8F 83            [24]  643 	mov	dph, r7
      002628 12 25 44         [24]  644 	lcall	_i2cDelay
                                    645 ;	src/i2c.c:165: SlaveACK = SDA;
      00262B 90 00 87         [24]  646 	mov	dptr,#_SlaveACK
      00262E A2 91            [12]  647 	mov	c,_P1_1
      002630 E4               [12]  648 	clr	a
      002631 33               [12]  649 	rlc	a
      002632 F0               [24]  650 	movx	@dptr,a
                                    651 ;	src/i2c.c:166: SCL_LOW;
                                    652 ;	assignBit
      002633 C2 90            [12]  653 	clr	_P1_0
                                    654 ;	src/i2c.c:167: i2cClock(ClockVar);
      002635 90 00 89         [24]  655 	mov	dptr,#_ClockVar
      002638 E0               [24]  656 	movx	a,@dptr
      002639 FE               [12]  657 	mov	r6,a
      00263A 7F 00            [12]  658 	mov	r7,#0x00
      00263C 8E 82            [24]  659 	mov	dpl, r6
      00263E 8F 83            [24]  660 	mov	dph, r7
                                    661 ;	src/i2c.c:168: }
      002640 02 25 44         [24]  662 	ljmp	_i2cDelay
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'i2cReadbyte'
                                    665 ;------------------------------------------------------------
                                    666 ;MasterACK     Allocated with name '_i2cReadbyte_MasterACK_10000_32'
                                    667 ;uByte         Allocated with name '_i2cReadbyte_uByte_10000_33'
                                    668 ;MaskByte      Allocated with name '_i2cReadbyte_MaskByte_10000_33'
                                    669 ;------------------------------------------------------------
                                    670 ;	src/i2c.c:175: unsigned char i2cReadbyte(unsigned char MasterACK)
                                    671 ;	-----------------------------------------
                                    672 ;	 function i2cReadbyte
                                    673 ;	-----------------------------------------
      002643                        674 _i2cReadbyte:
      002643 E5 82            [12]  675 	mov	a,dpl
      002645 90 00 0E         [24]  676 	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
      002648 F0               [24]  677 	movx	@dptr,a
                                    678 ;	src/i2c.c:179: uByte    = 0;
      002649 90 00 0F         [24]  679 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      00264C E4               [12]  680 	clr	a
      00264D F0               [24]  681 	movx	@dptr,a
                                    682 ;	src/i2c.c:180: MaskByte = 0x80;
      00264E 90 00 10         [24]  683 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      002651 74 80            [12]  684 	mov	a,#0x80
      002653 F0               [24]  685 	movx	@dptr,a
                                    686 ;	src/i2c.c:181: do
      002654                        687 00103$:
                                    688 ;	src/i2c.c:184: SCL_HIGH;
                                    689 ;	assignBit
      002654 D2 90            [12]  690 	setb	_P1_0
                                    691 ;	src/i2c.c:186: if(SDA == 1)
      002656 30 91 0B         [24]  692 	jnb	_P1_1,00102$
                                    693 ;	src/i2c.c:188: uByte |= MaskByte;
      002659 90 00 10         [24]  694 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      00265C E0               [24]  695 	movx	a,@dptr
      00265D FF               [12]  696 	mov	r7,a
      00265E 90 00 0F         [24]  697 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      002661 E0               [24]  698 	movx	a,@dptr
      002662 4F               [12]  699 	orl	a,r7
      002663 F0               [24]  700 	movx	@dptr,a
      002664                        701 00102$:
                                    702 ;	src/i2c.c:190: i2cClock(ClockVar);
      002664 90 00 89         [24]  703 	mov	dptr,#_ClockVar
      002667 E0               [24]  704 	movx	a,@dptr
      002668 FE               [12]  705 	mov	r6,a
      002669 7F 00            [12]  706 	mov	r7,#0x00
      00266B 8E 82            [24]  707 	mov	dpl, r6
      00266D 8F 83            [24]  708 	mov	dph, r7
      00266F 12 25 44         [24]  709 	lcall	_i2cDelay
                                    710 ;	src/i2c.c:191: SCL_LOW;
                                    711 ;	assignBit
      002672 C2 90            [12]  712 	clr	_P1_0
                                    713 ;	src/i2c.c:192: i2cClock(ClockVar);
      002674 90 00 89         [24]  714 	mov	dptr,#_ClockVar
      002677 E0               [24]  715 	movx	a,@dptr
      002678 FE               [12]  716 	mov	r6,a
      002679 7F 00            [12]  717 	mov	r7,#0x00
      00267B 8E 82            [24]  718 	mov	dpl, r6
      00267D 8F 83            [24]  719 	mov	dph, r7
      00267F 12 25 44         [24]  720 	lcall	_i2cDelay
                                    721 ;	src/i2c.c:193: MaskByte /= 2;
      002682 90 00 10         [24]  722 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      002685 E0               [24]  723 	movx	a,@dptr
      002686 75 F0 02         [24]  724 	mov	b,#0x02
      002689 84               [48]  725 	div	ab
      00268A F0               [24]  726 	movx	@dptr,a
                                    727 ;	src/i2c.c:195: while(MaskByte > 0);
      00268B E0               [24]  728 	movx	a,@dptr
      00268C 70 C6            [24]  729 	jnz	00103$
                                    730 ;	src/i2c.c:196: SCL_HIGH;
                                    731 ;	assignBit
      00268E D2 90            [12]  732 	setb	_P1_0
                                    733 ;	src/i2c.c:197: i2cClock(ClockVar);
      002690 90 00 89         [24]  734 	mov	dptr,#_ClockVar
      002693 E0               [24]  735 	movx	a,@dptr
      002694 FE               [12]  736 	mov	r6,a
      002695 7F 00            [12]  737 	mov	r7,#0x00
      002697 8E 82            [24]  738 	mov	dpl, r6
      002699 8F 83            [24]  739 	mov	dph, r7
      00269B 12 25 44         [24]  740 	lcall	_i2cDelay
                                    741 ;	src/i2c.c:198: if(MasterACK==1)
      00269E 90 00 0E         [24]  742 	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
      0026A1 E0               [24]  743 	movx	a,@dptr
      0026A2 FF               [12]  744 	mov	r7,a
      0026A3 BF 01 04         [24]  745 	cjne	r7,#0x01,00107$
                                    746 ;	src/i2c.c:199: SDA_HIGH;
                                    747 ;	assignBit
      0026A6 D2 91            [12]  748 	setb	_P1_1
      0026A8 80 02            [24]  749 	sjmp	00108$
      0026AA                        750 00107$:
                                    751 ;	src/i2c.c:201: SDA_LOW;
                                    752 ;	assignBit
      0026AA C2 91            [12]  753 	clr	_P1_1
      0026AC                        754 00108$:
                                    755 ;	src/i2c.c:202: i2cClock(ClockVar);
      0026AC 90 00 89         [24]  756 	mov	dptr,#_ClockVar
      0026AF E0               [24]  757 	movx	a,@dptr
      0026B0 FE               [12]  758 	mov	r6,a
      0026B1 7F 00            [12]  759 	mov	r7,#0x00
      0026B3 8E 82            [24]  760 	mov	dpl, r6
      0026B5 8F 83            [24]  761 	mov	dph, r7
      0026B7 12 25 44         [24]  762 	lcall	_i2cDelay
                                    763 ;	src/i2c.c:204: SCL_LOW;
                                    764 ;	assignBit
      0026BA C2 90            [12]  765 	clr	_P1_0
                                    766 ;	src/i2c.c:206: i2cClock(ClockVar);
      0026BC 90 00 89         [24]  767 	mov	dptr,#_ClockVar
      0026BF E0               [24]  768 	movx	a,@dptr
      0026C0 FE               [12]  769 	mov	r6,a
      0026C1 7F 00            [12]  770 	mov	r7,#0x00
      0026C3 8E 82            [24]  771 	mov	dpl, r6
      0026C5 8F 83            [24]  772 	mov	dph, r7
      0026C7 12 25 44         [24]  773 	lcall	_i2cDelay
                                    774 ;	src/i2c.c:208: return uByte;
      0026CA 90 00 0F         [24]  775 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      0026CD E0               [24]  776 	movx	a,@dptr
                                    777 ;	src/i2c.c:209: }
      0026CE F5 82            [12]  778 	mov	dpl,a
      0026D0 22               [24]  779 	ret
                                    780 ;------------------------------------------------------------
                                    781 ;Allocation info for local variables in function 'i2cWrite'
                                    782 ;------------------------------------------------------------
                                    783 ;Address       Allocated with name '_i2cWrite_PARM_2'
                                    784 ;Byte          Allocated with name '_i2cWrite_Byte_10000_36'
                                    785 ;------------------------------------------------------------
                                    786 ;	src/i2c.c:216: void i2cWrite(unsigned char Byte,unsigned char Address)
                                    787 ;	-----------------------------------------
                                    788 ;	 function i2cWrite
                                    789 ;	-----------------------------------------
      0026D1                        790 _i2cWrite:
      0026D1 E5 82            [12]  791 	mov	a,dpl
      0026D3 90 00 12         [24]  792 	mov	dptr,#_i2cWrite_Byte_10000_36
      0026D6 F0               [24]  793 	movx	@dptr,a
                                    794 ;	src/i2c.c:218: do
      0026D7                        795 00103$:
                                    796 ;	src/i2c.c:220: i2cStartonce();
      0026D7 12 25 A1         [24]  797 	lcall	_i2cStartonce
                                    798 ;	src/i2c.c:221: i2cWritebyte(DevAddress);
      0026DA 90 00 88         [24]  799 	mov	dptr,#_DevAddress
      0026DD E0               [24]  800 	movx	a,@dptr
      0026DE F5 82            [12]  801 	mov	dpl,a
      0026E0 12 25 CD         [24]  802 	lcall	_i2cWritebyte
                                    803 ;	src/i2c.c:223: if(SlaveACK == 1)
      0026E3 90 00 87         [24]  804 	mov	dptr,#_SlaveACK
      0026E6 E0               [24]  805 	movx	a,@dptr
      0026E7 FF               [12]  806 	mov	r7,a
      0026E8 BF 01 03         [24]  807 	cjne	r7,#0x01,00104$
                                    808 ;	src/i2c.c:224: i2cStop();
      0026EB 12 25 B8         [24]  809 	lcall	_i2cStop
      0026EE                        810 00104$:
                                    811 ;	src/i2c.c:226: while(SlaveACK==1);
      0026EE 90 00 87         [24]  812 	mov	dptr,#_SlaveACK
      0026F1 E0               [24]  813 	movx	a,@dptr
      0026F2 FF               [12]  814 	mov	r7,a
      0026F3 BF 01 02         [24]  815 	cjne	r7,#0x01,00128$
      0026F6 80 DF            [24]  816 	sjmp	00103$
      0026F8                        817 00128$:
                                    818 ;	src/i2c.c:227: i2cWritebyte(Address);
      0026F8 90 00 11         [24]  819 	mov	dptr,#_i2cWrite_PARM_2
      0026FB E0               [24]  820 	movx	a,@dptr
      0026FC F5 82            [12]  821 	mov	dpl,a
      0026FE 12 25 CD         [24]  822 	lcall	_i2cWritebyte
                                    823 ;	src/i2c.c:228: i2cWritebyte(Byte);
      002701 90 00 12         [24]  824 	mov	dptr,#_i2cWrite_Byte_10000_36
      002704 E0               [24]  825 	movx	a,@dptr
      002705 F5 82            [12]  826 	mov	dpl,a
      002707 12 25 CD         [24]  827 	lcall	_i2cWritebyte
                                    828 ;	src/i2c.c:229: i2cStop();
                                    829 ;	src/i2c.c:230: }
      00270A 02 25 B8         [24]  830 	ljmp	_i2cStop
                                    831 ;------------------------------------------------------------
                                    832 ;Allocation info for local variables in function 'i2cRead'
                                    833 ;------------------------------------------------------------
                                    834 ;Address       Allocated with name '_i2cRead_Address_10000_39'
                                    835 ;ReadByte      Allocated with name '_i2cRead_ReadByte_10000_40'
                                    836 ;------------------------------------------------------------
                                    837 ;	src/i2c.c:237: unsigned char i2cRead(unsigned char Address)
                                    838 ;	-----------------------------------------
                                    839 ;	 function i2cRead
                                    840 ;	-----------------------------------------
      00270D                        841 _i2cRead:
      00270D E5 82            [12]  842 	mov	a,dpl
      00270F 90 00 13         [24]  843 	mov	dptr,#_i2cRead_Address_10000_39
      002712 F0               [24]  844 	movx	@dptr,a
                                    845 ;	src/i2c.c:240: do
      002713                        846 00103$:
                                    847 ;	src/i2c.c:242: i2cStartonce();
      002713 12 25 A1         [24]  848 	lcall	_i2cStartonce
                                    849 ;	src/i2c.c:243: i2cWritebyte(DevAddress);
      002716 90 00 88         [24]  850 	mov	dptr,#_DevAddress
      002719 E0               [24]  851 	movx	a,@dptr
      00271A F5 82            [12]  852 	mov	dpl,a
      00271C 12 25 CD         [24]  853 	lcall	_i2cWritebyte
                                    854 ;	src/i2c.c:245: if(SlaveACK==1)
      00271F 90 00 87         [24]  855 	mov	dptr,#_SlaveACK
      002722 E0               [24]  856 	movx	a,@dptr
      002723 FF               [12]  857 	mov	r7,a
      002724 BF 01 03         [24]  858 	cjne	r7,#0x01,00104$
                                    859 ;	src/i2c.c:246: i2cStop();
      002727 12 25 B8         [24]  860 	lcall	_i2cStop
      00272A                        861 00104$:
                                    862 ;	src/i2c.c:248: while(SlaveACK==1);
      00272A 90 00 87         [24]  863 	mov	dptr,#_SlaveACK
      00272D E0               [24]  864 	movx	a,@dptr
      00272E FF               [12]  865 	mov	r7,a
      00272F BF 01 02         [24]  866 	cjne	r7,#0x01,00128$
      002732 80 DF            [24]  867 	sjmp	00103$
      002734                        868 00128$:
                                    869 ;	src/i2c.c:249: i2cWritebyte(Address);
      002734 90 00 13         [24]  870 	mov	dptr,#_i2cRead_Address_10000_39
      002737 E0               [24]  871 	movx	a,@dptr
      002738 F5 82            [12]  872 	mov	dpl,a
      00273A 12 25 CD         [24]  873 	lcall	_i2cWritebyte
                                    874 ;	src/i2c.c:252: i2cStartonce();
      00273D 12 25 A1         [24]  875 	lcall	_i2cStartonce
                                    876 ;	src/i2c.c:253: i2cWritebyte(DevAddress+1);
      002740 90 00 88         [24]  877 	mov	dptr,#_DevAddress
      002743 E0               [24]  878 	movx	a,@dptr
      002744 FF               [12]  879 	mov	r7,a
      002745 0F               [12]  880 	inc	r7
      002746 8F 82            [24]  881 	mov	dpl, r7
      002748 12 25 CD         [24]  882 	lcall	_i2cWritebyte
                                    883 ;	src/i2c.c:255: ReadByte = i2cReadbyte(1);
      00274B 75 82 01         [24]  884 	mov	dpl, #0x01
      00274E 12 26 43         [24]  885 	lcall	_i2cReadbyte
      002751 AF 82            [24]  886 	mov	r7, dpl
                                    887 ;	src/i2c.c:256: i2cStop();
      002753 C0 07            [24]  888 	push	ar7
      002755 12 25 B8         [24]  889 	lcall	_i2cStop
      002758 D0 07            [24]  890 	pop	ar7
                                    891 ;	src/i2c.c:257: return ReadByte;
      00275A 8F 82            [24]  892 	mov	dpl, r7
                                    893 ;	src/i2c.c:258: }
      00275C 22               [24]  894 	ret
                                    895 ;------------------------------------------------------------
                                    896 ;Allocation info for local variables in function 'i2cBegin'
                                    897 ;------------------------------------------------------------
                                    898 ;Speed         Allocated with name '_i2cBegin_PARM_2'
                                    899 ;OscFreq       Allocated with name '_i2cBegin_OscFreq_10000_42'
                                    900 ;teMp          Allocated with name '_i2cBegin_teMp_10000_43'
                                    901 ;------------------------------------------------------------
                                    902 ;	src/i2c.c:265: unsigned char i2cBegin(unsigned long OscFreq,unsigned long Speed)
                                    903 ;	-----------------------------------------
                                    904 ;	 function i2cBegin
                                    905 ;	-----------------------------------------
      00275D                        906 _i2cBegin:
      00275D AF 82            [24]  907 	mov	r7,dpl
      00275F AE 83            [24]  908 	mov	r6,dph
      002761 AD F0            [24]  909 	mov	r5,b
      002763 FC               [12]  910 	mov	r4,a
      002764 90 00 18         [24]  911 	mov	dptr,#_i2cBegin_OscFreq_10000_42
      002767 EF               [12]  912 	mov	a,r7
      002768 F0               [24]  913 	movx	@dptr,a
      002769 EE               [12]  914 	mov	a,r6
      00276A A3               [24]  915 	inc	dptr
      00276B F0               [24]  916 	movx	@dptr,a
      00276C ED               [12]  917 	mov	a,r5
      00276D A3               [24]  918 	inc	dptr
      00276E F0               [24]  919 	movx	@dptr,a
      00276F EC               [12]  920 	mov	a,r4
      002770 A3               [24]  921 	inc	dptr
      002771 F0               [24]  922 	movx	@dptr,a
                                    923 ;	src/i2c.c:267: unsigned long teMp = 12 / ((OscFreq / 1000)/1000);
      002772 90 00 18         [24]  924 	mov	dptr,#_i2cBegin_OscFreq_10000_42
      002775 E0               [24]  925 	movx	a,@dptr
      002776 FC               [12]  926 	mov	r4,a
      002777 A3               [24]  927 	inc	dptr
      002778 E0               [24]  928 	movx	a,@dptr
      002779 FD               [12]  929 	mov	r5,a
      00277A A3               [24]  930 	inc	dptr
      00277B E0               [24]  931 	movx	a,@dptr
      00277C FE               [12]  932 	mov	r6,a
      00277D A3               [24]  933 	inc	dptr
      00277E E0               [24]  934 	movx	a,@dptr
      00277F FF               [12]  935 	mov	r7,a
      002780 90 00 27         [24]  936 	mov	dptr,#__divulong_PARM_2
      002783 74 E8            [12]  937 	mov	a,#0xe8
      002785 F0               [24]  938 	movx	@dptr,a
      002786 74 03            [12]  939 	mov	a,#0x03
      002788 A3               [24]  940 	inc	dptr
      002789 F0               [24]  941 	movx	@dptr,a
      00278A E4               [12]  942 	clr	a
      00278B A3               [24]  943 	inc	dptr
      00278C F0               [24]  944 	movx	@dptr,a
      00278D A3               [24]  945 	inc	dptr
      00278E F0               [24]  946 	movx	@dptr,a
      00278F 8C 82            [24]  947 	mov	dpl, r4
      002791 8D 83            [24]  948 	mov	dph, r5
      002793 8E F0            [24]  949 	mov	b, r6
      002795 EF               [12]  950 	mov	a, r7
      002796 12 28 D0         [24]  951 	lcall	__divulong
      002799 AC 82            [24]  952 	mov	r4, dpl
      00279B AD 83            [24]  953 	mov	r5, dph
      00279D AE F0            [24]  954 	mov	r6, b
      00279F FF               [12]  955 	mov	r7, a
      0027A0 90 00 27         [24]  956 	mov	dptr,#__divulong_PARM_2
      0027A3 74 E8            [12]  957 	mov	a,#0xe8
      0027A5 F0               [24]  958 	movx	@dptr,a
      0027A6 74 03            [12]  959 	mov	a,#0x03
      0027A8 A3               [24]  960 	inc	dptr
      0027A9 F0               [24]  961 	movx	@dptr,a
      0027AA E4               [12]  962 	clr	a
      0027AB A3               [24]  963 	inc	dptr
      0027AC F0               [24]  964 	movx	@dptr,a
      0027AD A3               [24]  965 	inc	dptr
      0027AE F0               [24]  966 	movx	@dptr,a
      0027AF 8C 82            [24]  967 	mov	dpl, r4
      0027B1 8D 83            [24]  968 	mov	dph, r5
      0027B3 8E F0            [24]  969 	mov	b, r6
      0027B5 EF               [12]  970 	mov	a, r7
      0027B6 12 28 D0         [24]  971 	lcall	__divulong
      0027B9 AC 82            [24]  972 	mov	r4, dpl
      0027BB AD 83            [24]  973 	mov	r5, dph
      0027BD 90 00 45         [24]  974 	mov	dptr,#__divsint_PARM_2
      0027C0 EC               [12]  975 	mov	a,r4
      0027C1 F0               [24]  976 	movx	@dptr,a
      0027C2 ED               [12]  977 	mov	a,r5
      0027C3 A3               [24]  978 	inc	dptr
      0027C4 F0               [24]  979 	movx	@dptr,a
                                    980 ;	src/i2c.c:268: teMp = teMp + CLOCK_ERROR_CORRECTION;
      0027C5 90 00 0C         [24]  981 	mov	dptr,#0x000c
      0027C8 12 2C 32         [24]  982 	lcall	__divsint
      0027CB AE 82            [24]  983 	mov	r6, dpl
      0027CD AF 83            [24]  984 	mov	r7, dph
      0027CF E4               [12]  985 	clr	a
      0027D0 FD               [12]  986 	mov	r5,a
      0027D1 FC               [12]  987 	mov	r4,a
      0027D2 74 03            [12]  988 	mov	a,#0x03
      0027D4 2E               [12]  989 	add	a, r6
      0027D5 FE               [12]  990 	mov	r6,a
      0027D6 E4               [12]  991 	clr	a
      0027D7 3F               [12]  992 	addc	a, r7
      0027D8 FF               [12]  993 	mov	r7,a
      0027D9 E4               [12]  994 	clr	a
      0027DA 3D               [12]  995 	addc	a, r5
      0027DB FD               [12]  996 	mov	r5,a
      0027DC E4               [12]  997 	clr	a
      0027DD 3C               [12]  998 	addc	a, r4
      0027DE FC               [12]  999 	mov	r4,a
                                   1000 ;	src/i2c.c:269: ClockVar = teMp / Speed;
      0027DF 90 00 14         [24] 1001 	mov	dptr,#_i2cBegin_PARM_2
      0027E2 E0               [24] 1002 	movx	a,@dptr
      0027E3 F8               [12] 1003 	mov	r0,a
      0027E4 A3               [24] 1004 	inc	dptr
      0027E5 E0               [24] 1005 	movx	a,@dptr
      0027E6 F9               [12] 1006 	mov	r1,a
      0027E7 A3               [24] 1007 	inc	dptr
      0027E8 E0               [24] 1008 	movx	a,@dptr
      0027E9 FA               [12] 1009 	mov	r2,a
      0027EA A3               [24] 1010 	inc	dptr
      0027EB E0               [24] 1011 	movx	a,@dptr
      0027EC FB               [12] 1012 	mov	r3,a
      0027ED 90 00 27         [24] 1013 	mov	dptr,#__divulong_PARM_2
      0027F0 E8               [12] 1014 	mov	a,r0
      0027F1 F0               [24] 1015 	movx	@dptr,a
      0027F2 E9               [12] 1016 	mov	a,r1
      0027F3 A3               [24] 1017 	inc	dptr
      0027F4 F0               [24] 1018 	movx	@dptr,a
      0027F5 EA               [12] 1019 	mov	a,r2
      0027F6 A3               [24] 1020 	inc	dptr
      0027F7 F0               [24] 1021 	movx	@dptr,a
      0027F8 EB               [12] 1022 	mov	a,r3
      0027F9 A3               [24] 1023 	inc	dptr
      0027FA F0               [24] 1024 	movx	@dptr,a
      0027FB 8E 82            [24] 1025 	mov	dpl, r6
      0027FD 8F 83            [24] 1026 	mov	dph, r7
      0027FF 8D F0            [24] 1027 	mov	b, r5
      002801 EC               [12] 1028 	mov	a, r4
      002802 12 28 D0         [24] 1029 	lcall	__divulong
      002805 AC 82            [24] 1030 	mov	r4, dpl
      002807 90 00 89         [24] 1031 	mov	dptr,#_ClockVar
      00280A EC               [12] 1032 	mov	a,r4
      00280B F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	src/i2c.c:271: }
      00280C 22               [24] 1035 	ret
                                   1036 ;------------------------------------------------------------
                                   1037 ;Allocation info for local variables in function 'i2csetAdd'
                                   1038 ;------------------------------------------------------------
                                   1039 ;SlaveAddress  Allocated with name '_i2csetAdd_SlaveAddress_10000_44'
                                   1040 ;------------------------------------------------------------
                                   1041 ;	src/i2c.c:278: void i2csetAdd(unsigned char SlaveAddress)
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function i2csetAdd
                                   1044 ;	-----------------------------------------
      00280D                       1045 _i2csetAdd:
      00280D E5 82            [12] 1046 	mov	a,dpl
      00280F 90 00 1C         [24] 1047 	mov	dptr,#_i2csetAdd_SlaveAddress_10000_44
      002812 F0               [24] 1048 	movx	@dptr,a
                                   1049 ;	src/i2c.c:280: DevAddress = SlaveAddress;
      002813 E0               [24] 1050 	movx	a,@dptr
      002814 90 00 88         [24] 1051 	mov	dptr,#_DevAddress
      002817 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	src/i2c.c:281: }
      002818 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'i2cDetect'
                                   1057 ;------------------------------------------------------------
                                   1058 ;_Address      Allocated with name '_i2cDetect__Address_10000_46'
                                   1059 ;------------------------------------------------------------
                                   1060 ;	src/i2c.c:295: unsigned char i2cDetect(unsigned char _Address)
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function i2cDetect
                                   1063 ;	-----------------------------------------
      002819                       1064 _i2cDetect:
                                   1065 ;	src/i2c.c:298: }
      002819 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'i2cWriteBlock'
                                   1069 ;------------------------------------------------------------
                                   1070 ;eAddress      Allocated with name '_i2cWriteBlock_PARM_2'
                                   1071 ;dPtr          Allocated with name '_i2cWriteBlock_PARM_3'
                                   1072 ;sAddress      Allocated with name '_i2cWriteBlock_sAddress_10000_49'
                                   1073 ;duMmy         Allocated with name '_i2cWriteBlock_duMmy_10000_50'
                                   1074 ;i             Allocated with name '_i2cWriteBlock_i_10000_50'
                                   1075 ;------------------------------------------------------------
                                   1076 ;	src/i2c.c:305: void i2cWriteBlock(unsigned char sAddress,unsigned char eAddress,unsigned char *dPtr)
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function i2cWriteBlock
                                   1079 ;	-----------------------------------------
      00281A                       1080 _i2cWriteBlock:
      00281A E5 82            [12] 1081 	mov	a,dpl
      00281C 90 00 21         [24] 1082 	mov	dptr,#_i2cWriteBlock_sAddress_10000_49
      00281F F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	src/i2c.c:309: for(duMmy=sAddress;i<= eAddress;duMmy++)
      002820 E0               [24] 1085 	movx	a,@dptr
      002821 FF               [12] 1086 	mov	r7,a
      002822 90 00 1E         [24] 1087 	mov	dptr,#_i2cWriteBlock_PARM_3
      002825 E0               [24] 1088 	movx	a,@dptr
      002826 FC               [12] 1089 	mov	r4,a
      002827 A3               [24] 1090 	inc	dptr
      002828 E0               [24] 1091 	movx	a,@dptr
      002829 FD               [12] 1092 	mov	r5,a
      00282A A3               [24] 1093 	inc	dptr
      00282B E0               [24] 1094 	movx	a,@dptr
      00282C FE               [12] 1095 	mov	r6,a
      00282D 90 00 1D         [24] 1096 	mov	dptr,#_i2cWriteBlock_PARM_2
      002830 E0               [24] 1097 	movx	a,@dptr
      002831 FB               [12] 1098 	mov	r3,a
      002832 7A 00            [12] 1099 	mov	r2,#0x00
      002834                       1100 00103$:
      002834 C3               [12] 1101 	clr	c
      002835 EB               [12] 1102 	mov	a,r3
      002836 9A               [12] 1103 	subb	a,r2
      002837 40 3C            [24] 1104 	jc	00105$
                                   1105 ;	src/i2c.c:311: i2cWrite(dPtr[i],duMmy);
      002839 C0 03            [24] 1106 	push	ar3
      00283B EA               [12] 1107 	mov	a,r2
      00283C 2C               [12] 1108 	add	a, r4
      00283D F8               [12] 1109 	mov	r0,a
      00283E E4               [12] 1110 	clr	a
      00283F 3D               [12] 1111 	addc	a, r5
      002840 F9               [12] 1112 	mov	r1,a
      002841 8E 03            [24] 1113 	mov	ar3,r6
      002843 88 82            [24] 1114 	mov	dpl,r0
      002845 89 83            [24] 1115 	mov	dph,r1
      002847 8B F0            [24] 1116 	mov	b,r3
      002849 12 37 93         [24] 1117 	lcall	__gptrget
      00284C F8               [12] 1118 	mov	r0,a
      00284D 90 00 11         [24] 1119 	mov	dptr,#_i2cWrite_PARM_2
      002850 EF               [12] 1120 	mov	a,r7
      002851 F0               [24] 1121 	movx	@dptr,a
      002852 88 82            [24] 1122 	mov	dpl, r0
      002854 C0 07            [24] 1123 	push	ar7
      002856 C0 06            [24] 1124 	push	ar6
      002858 C0 05            [24] 1125 	push	ar5
      00285A C0 04            [24] 1126 	push	ar4
      00285C C0 03            [24] 1127 	push	ar3
      00285E C0 02            [24] 1128 	push	ar2
      002860 12 26 D1         [24] 1129 	lcall	_i2cWrite
      002863 D0 02            [24] 1130 	pop	ar2
      002865 D0 03            [24] 1131 	pop	ar3
      002867 D0 04            [24] 1132 	pop	ar4
      002869 D0 05            [24] 1133 	pop	ar5
      00286B D0 06            [24] 1134 	pop	ar6
      00286D D0 07            [24] 1135 	pop	ar7
                                   1136 ;	src/i2c.c:312: i++;
      00286F 0A               [12] 1137 	inc	r2
                                   1138 ;	src/i2c.c:309: for(duMmy=sAddress;i<= eAddress;duMmy++)
      002870 0F               [12] 1139 	inc	r7
      002871 D0 03            [24] 1140 	pop	ar3
      002873 80 BF            [24] 1141 	sjmp	00103$
      002875                       1142 00105$:
                                   1143 ;	src/i2c.c:314: }
      002875 22               [24] 1144 	ret
                                   1145 ;------------------------------------------------------------
                                   1146 ;Allocation info for local variables in function 'i2cReadBlock'
                                   1147 ;------------------------------------------------------------
                                   1148 ;sloc0         Allocated with name '_i2cReadBlock_sloc0_1_0'
                                   1149 ;eAddress      Allocated with name '_i2cReadBlock_PARM_2'
                                   1150 ;dPtr          Allocated with name '_i2cReadBlock_PARM_3'
                                   1151 ;sAddress      Allocated with name '_i2cReadBlock_sAddress_10000_53'
                                   1152 ;duMmy         Allocated with name '_i2cReadBlock_duMmy_10000_54'
                                   1153 ;i             Allocated with name '_i2cReadBlock_i_10000_54'
                                   1154 ;------------------------------------------------------------
                                   1155 ;	src/i2c.c:321: void i2cReadBlock(unsigned char sAddress,unsigned char eAddress,unsigned char *dPtr)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function i2cReadBlock
                                   1158 ;	-----------------------------------------
      002876                       1159 _i2cReadBlock:
      002876 E5 82            [12] 1160 	mov	a,dpl
      002878 90 00 26         [24] 1161 	mov	dptr,#_i2cReadBlock_sAddress_10000_53
      00287B F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	src/i2c.c:325: for(duMmy=sAddress;i<= eAddress;duMmy++)
      00287C E0               [24] 1164 	movx	a,@dptr
      00287D FF               [12] 1165 	mov	r7,a
      00287E 90 00 23         [24] 1166 	mov	dptr,#_i2cReadBlock_PARM_3
      002881 E0               [24] 1167 	movx	a,@dptr
      002882 FC               [12] 1168 	mov	r4,a
      002883 A3               [24] 1169 	inc	dptr
      002884 E0               [24] 1170 	movx	a,@dptr
      002885 FD               [12] 1171 	mov	r5,a
      002886 A3               [24] 1172 	inc	dptr
      002887 E0               [24] 1173 	movx	a,@dptr
      002888 FE               [12] 1174 	mov	r6,a
      002889 90 00 22         [24] 1175 	mov	dptr,#_i2cReadBlock_PARM_2
      00288C E0               [24] 1176 	movx	a,@dptr
      00288D FB               [12] 1177 	mov	r3,a
      00288E 7A 00            [12] 1178 	mov	r2,#0x00
      002890                       1179 00103$:
      002890 C3               [12] 1180 	clr	c
      002891 EB               [12] 1181 	mov	a,r3
      002892 9A               [12] 1182 	subb	a,r2
      002893 40 3A            [24] 1183 	jc	00105$
                                   1184 ;	src/i2c.c:327: dPtr[i] = i2cRead(duMmy);
      002895 C0 03            [24] 1185 	push	ar3
      002897 EA               [12] 1186 	mov	a,r2
      002898 2C               [12] 1187 	add	a, r4
      002899 F5 0A            [12] 1188 	mov	_i2cReadBlock_sloc0_1_0,a
      00289B E4               [12] 1189 	clr	a
      00289C 3D               [12] 1190 	addc	a, r5
      00289D F5 0B            [12] 1191 	mov	(_i2cReadBlock_sloc0_1_0 + 1),a
      00289F 8E 0C            [24] 1192 	mov	(_i2cReadBlock_sloc0_1_0 + 2),r6
      0028A1 8F 82            [24] 1193 	mov	dpl, r7
      0028A3 C0 07            [24] 1194 	push	ar7
      0028A5 C0 06            [24] 1195 	push	ar6
      0028A7 C0 05            [24] 1196 	push	ar5
      0028A9 C0 04            [24] 1197 	push	ar4
      0028AB C0 02            [24] 1198 	push	ar2
      0028AD 12 27 0D         [24] 1199 	lcall	_i2cRead
      0028B0 AB 82            [24] 1200 	mov	r3, dpl
      0028B2 D0 02            [24] 1201 	pop	ar2
      0028B4 D0 04            [24] 1202 	pop	ar4
      0028B6 D0 05            [24] 1203 	pop	ar5
      0028B8 D0 06            [24] 1204 	pop	ar6
      0028BA D0 07            [24] 1205 	pop	ar7
      0028BC 85 0A 82         [24] 1206 	mov	dpl,_i2cReadBlock_sloc0_1_0
      0028BF 85 0B 83         [24] 1207 	mov	dph,(_i2cReadBlock_sloc0_1_0 + 1)
      0028C2 85 0C F0         [24] 1208 	mov	b,(_i2cReadBlock_sloc0_1_0 + 2)
      0028C5 EB               [12] 1209 	mov	a,r3
      0028C6 12 2A E4         [24] 1210 	lcall	__gptrput
                                   1211 ;	src/i2c.c:328: i++;
      0028C9 0A               [12] 1212 	inc	r2
                                   1213 ;	src/i2c.c:325: for(duMmy=sAddress;i<= eAddress;duMmy++)
      0028CA 0F               [12] 1214 	inc	r7
      0028CB D0 03            [24] 1215 	pop	ar3
      0028CD 80 C1            [24] 1216 	sjmp	00103$
      0028CF                       1217 00105$:
                                   1218 ;	src/i2c.c:330: }
      0028CF 22               [24] 1219 	ret
                                   1220 	.area CSEG    (CODE)
                                   1221 	.area CONST   (CODE)
                                   1222 	.area XINIT   (CODE)
      0038FB                       1223 __xinit__SlaveACK:
      0038FB 00                    1224 	.db #0x00	; 0
      0038FC                       1225 __xinit__DevAddress:
      0038FC 00                    1226 	.db #0x00	; 0
      0038FD                       1227 __xinit__ClockVar:
      0038FD 00                    1228 	.db #0x00	; 0
                                   1229 	.area CABS    (ABS,CODE)
