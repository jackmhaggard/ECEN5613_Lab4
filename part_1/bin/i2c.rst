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
      000008                        247 _i2cReadBlock_sloc0_1_0:
      000008                        248 	.ds 3
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
      000000                        265 _i2cavailable_sloc0_1_0:
      000000                        266 	.ds 1
                                    267 ;--------------------------------------------------------
                                    268 ; paged external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area PSEG    (PAG,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; uninitialized external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XSEG    (XDATA)
      000003                        275 _i2cDelay_ClockVar_10000_17:
      000003                        276 	.ds 2
      000005                        277 _i2cWritebyte_uByte_10000_29:
      000005                        278 	.ds 1
      000006                        279 _i2cWritebyte_MaskByte_10000_30:
      000006                        280 	.ds 1
      000007                        281 _i2cReadbyte_MasterACK_10000_32:
      000007                        282 	.ds 1
      000008                        283 _i2cReadbyte_uByte_10000_33:
      000008                        284 	.ds 1
      000009                        285 _i2cReadbyte_MaskByte_10000_33:
      000009                        286 	.ds 1
      00000A                        287 _i2cWrite_PARM_2:
      00000A                        288 	.ds 1
      00000B                        289 _i2cWrite_Byte_10000_36:
      00000B                        290 	.ds 1
      00000C                        291 _i2cRead_Address_10000_39:
      00000C                        292 	.ds 1
      00000D                        293 _i2cBegin_PARM_2:
      00000D                        294 	.ds 4
      000011                        295 _i2cBegin_OscFreq_10000_42:
      000011                        296 	.ds 4
      000015                        297 _i2csetAdd_SlaveAddress_10000_44:
      000015                        298 	.ds 1
      000016                        299 _i2cWriteBlock_PARM_2:
      000016                        300 	.ds 1
      000017                        301 _i2cWriteBlock_PARM_3:
      000017                        302 	.ds 3
      00001A                        303 _i2cWriteBlock_sAddress_10000_49:
      00001A                        304 	.ds 1
      00001B                        305 _i2cReadBlock_PARM_2:
      00001B                        306 	.ds 1
      00001C                        307 _i2cReadBlock_PARM_3:
      00001C                        308 	.ds 3
      00001F                        309 _i2cReadBlock_sAddress_10000_53:
      00001F                        310 	.ds 1
                                    311 ;--------------------------------------------------------
                                    312 ; absolute external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XABS    (ABS,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; initialized external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XISEG   (XDATA)
      000072                        319 _SlaveACK::
      000072                        320 	.ds 1
      000073                        321 _DevAddress::
      000073                        322 	.ds 1
      000074                        323 _ClockVar::
      000074                        324 	.ds 1
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
      0021E0                        358 __time_out_timer_0__:
                           000007   359 	ar7 = 0x07
                           000006   360 	ar6 = 0x06
                           000005   361 	ar5 = 0x05
                           000004   362 	ar4 = 0x04
                           000003   363 	ar3 = 0x03
                           000002   364 	ar2 = 0x02
                           000001   365 	ar1 = 0x01
                           000000   366 	ar0 = 0x00
                                    367 ;	src/i2c.c:42: TMOD |= 0x01;
      0021E0 43 89 01         [24]  368 	orl	_TMOD,#0x01
                                    369 ;	src/i2c.c:43: TL0   = 0x00;	
      0021E3 75 8A 00         [24]  370 	mov	_TL0,#0x00
                                    371 ;	src/i2c.c:44: TH0   = 0x4C;	
      0021E6 75 8C 4C         [24]  372 	mov	_TH0,#0x4c
                                    373 ;	src/i2c.c:45: TR0   = 1;	
                                    374 ;	assignBit
      0021E9 D2 8C            [12]  375 	setb	_TR0
                                    376 ;	src/i2c.c:46: }
      0021EB 22               [24]  377 	ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'i2cSetPort'
                                    380 ;------------------------------------------------------------
                                    381 ;	src/i2c.c:53: void  i2cSetPort(void)
                                    382 ;	-----------------------------------------
                                    383 ;	 function i2cSetPort
                                    384 ;	-----------------------------------------
      0021EC                        385 _i2cSetPort:
                                    386 ;	src/i2c.c:55: SDADIR |= SDABIT;
      0021EC 43 80 01         [24]  387 	orl	_P0,#0x01
                                    388 ;	src/i2c.c:56: SCLDIR |= SCLBIT;
      0021EF 43 80 02         [24]  389 	orl	_P0,#0x02
                                    390 ;	src/i2c.c:57: SDA_HIGH;
      0021F2 43 80 01         [24]  391 	orl	_P0,#0x01
                                    392 ;	src/i2c.c:58: SCL_HIGH;
      0021F5 43 80 02         [24]  393 	orl	_P0,#0x02
                                    394 ;	src/i2c.c:59: }
      0021F8 22               [24]  395 	ret
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'i2cDelay'
                                    398 ;------------------------------------------------------------
                                    399 ;ClockVar      Allocated with name '_i2cDelay_ClockVar_10000_17'
                                    400 ;i             Allocated with name '_i2cDelay_i_10000_18'
                                    401 ;------------------------------------------------------------
                                    402 ;	src/i2c.c:66: void i2cDelay(unsigned int ClockVar)
                                    403 ;	-----------------------------------------
                                    404 ;	 function i2cDelay
                                    405 ;	-----------------------------------------
      0021F9                        406 _i2cDelay:
      0021F9 AF 83            [24]  407 	mov	r7,dph
      0021FB E5 82            [12]  408 	mov	a,dpl
      0021FD 90 00 03         [24]  409 	mov	dptr,#_i2cDelay_ClockVar_10000_17
      002200 F0               [24]  410 	movx	@dptr,a
      002201 EF               [12]  411 	mov	a,r7
      002202 A3               [24]  412 	inc	dptr
      002203 F0               [24]  413 	movx	@dptr,a
                                    414 ;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
      002204 90 00 03         [24]  415 	mov	dptr,#_i2cDelay_ClockVar_10000_17
      002207 E0               [24]  416 	movx	a,@dptr
      002208 FE               [12]  417 	mov	r6,a
      002209 A3               [24]  418 	inc	dptr
      00220A E0               [24]  419 	movx	a,@dptr
      00220B FF               [12]  420 	mov	r7,a
      00220C 7D 00            [12]  421 	mov	r5,#0x00
      00220E                        422 00102$:
                                    423 ;	src/i2c.c:73: __endasm;
      00220E 00               [12]  424 	NOP
                                    425 ;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
      00220F 0D               [12]  426 	inc	r5
      002210 ED               [12]  427 	mov	a,r5
      002211 FB               [12]  428 	mov	r3,a
      002212 33               [12]  429 	rlc	a
      002213 95 E0            [12]  430 	subb	a,acc
      002215 FC               [12]  431 	mov	r4,a
      002216 C3               [12]  432 	clr	c
      002217 EE               [12]  433 	mov	a,r6
      002218 9B               [12]  434 	subb	a,r3
      002219 EF               [12]  435 	mov	a,r7
      00221A 9C               [12]  436 	subb	a,r4
      00221B 50 F1            [24]  437 	jnc	00102$
                                    438 ;	src/i2c.c:75: }
      00221D 22               [24]  439 	ret
                                    440 ;------------------------------------------------------------
                                    441 ;Allocation info for local variables in function 'i2cavailable'
                                    442 ;------------------------------------------------------------
                                    443 ;	src/i2c.c:82: unsigned char i2cavailable(void)
                                    444 ;	-----------------------------------------
                                    445 ;	 function i2cavailable
                                    446 ;	-----------------------------------------
      00221E                        447 _i2cavailable:
                                    448 ;	src/i2c.c:84: return (!(SDA | SCL));
      00221E 74 01            [12]  449 	mov	a,#0x01
      002220 55 80            [12]  450 	anl	a,_P0
      002222 FF               [12]  451 	mov	r7,a
      002223 74 02            [12]  452 	mov	a,#0x02
      002225 55 80            [12]  453 	anl	a,_P0
      002227 42 07            [12]  454 	orl	ar7,a
      002229 EF               [12]  455 	mov	a,r7
      00222A B4 01 00         [24]  456 	cjne	a,#0x01,00103$
      00222D                        457 00103$:
      00222D 92 00            [24]  458 	mov  _i2cavailable_sloc0_1_0,c
      00222F E4               [12]  459 	clr	a
      002230 33               [12]  460 	rlc	a
                                    461 ;	src/i2c.c:85: }
      002231 F5 82            [12]  462 	mov	dpl,a
      002233 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'i2cStart'
                                    466 ;------------------------------------------------------------
                                    467 ;	src/i2c.c:92: void i2cStart(void)
                                    468 ;	-----------------------------------------
                                    469 ;	 function i2cStart
                                    470 ;	-----------------------------------------
      002234                        471 _i2cStart:
                                    472 ;	src/i2c.c:95: back:
      002234                        473 00101$:
                                    474 ;	src/i2c.c:96: if(SDA == 0)
      002234 E5 80            [12]  475 	mov	a,_P0
      002236 30 E0 FB         [24]  476 	jnb	acc.0,00101$
                                    477 ;	src/i2c.c:98: if(SCL == 0)
      002239 E5 80            [12]  478 	mov	a,_P0
      00223B 30 E1 F6         [24]  479 	jnb	acc.1,00101$
                                    480 ;	src/i2c.c:101: SDA_HIGH;
      00223E 43 80 01         [24]  481 	orl	_P0,#0x01
                                    482 ;	src/i2c.c:102: SCL_HIGH;
      002241 43 80 02         [24]  483 	orl	_P0,#0x02
                                    484 ;	src/i2c.c:103: i2cClock(ClockVar);
      002244 90 00 74         [24]  485 	mov	dptr,#_ClockVar
      002247 E0               [24]  486 	movx	a,@dptr
      002248 FE               [12]  487 	mov	r6,a
      002249 7F 00            [12]  488 	mov	r7,#0x00
      00224B 8E 82            [24]  489 	mov	dpl, r6
      00224D 8F 83            [24]  490 	mov	dph, r7
      00224F 12 21 F9         [24]  491 	lcall	_i2cDelay
                                    492 ;	src/i2c.c:104: SDA_LOW;
      002252 53 80 FE         [24]  493 	anl	_P0,#0xfe
                                    494 ;	src/i2c.c:105: SCL_LOW;
      002255 53 80 FC         [24]  495 	anl	_P0,#0xfc
                                    496 ;	src/i2c.c:106: }
      002258 22               [24]  497 	ret
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'i2cStartonce'
                                    500 ;------------------------------------------------------------
                                    501 ;	src/i2c.c:113: void i2cStartonce(void)
                                    502 ;	-----------------------------------------
                                    503 ;	 function i2cStartonce
                                    504 ;	-----------------------------------------
      002259                        505 _i2cStartonce:
                                    506 ;	src/i2c.c:115: SDA_HIGH;
      002259 43 80 01         [24]  507 	orl	_P0,#0x01
                                    508 ;	src/i2c.c:116: SCL_HIGH;
      00225C 43 80 02         [24]  509 	orl	_P0,#0x02
                                    510 ;	src/i2c.c:117: i2cClock(ClockVar);
      00225F 90 00 74         [24]  511 	mov	dptr,#_ClockVar
      002262 E0               [24]  512 	movx	a,@dptr
      002263 FE               [12]  513 	mov	r6,a
      002264 7F 00            [12]  514 	mov	r7,#0x00
      002266 8E 82            [24]  515 	mov	dpl, r6
      002268 8F 83            [24]  516 	mov	dph, r7
      00226A 12 21 F9         [24]  517 	lcall	_i2cDelay
                                    518 ;	src/i2c.c:118: SDA_LOW;
      00226D 53 80 FE         [24]  519 	anl	_P0,#0xfe
                                    520 ;	src/i2c.c:119: SCL_LOW;
      002270 53 80 FC         [24]  521 	anl	_P0,#0xfc
                                    522 ;	src/i2c.c:120: }
      002273 22               [24]  523 	ret
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'i2cStop'
                                    526 ;------------------------------------------------------------
                                    527 ;	src/i2c.c:127: void i2cStop(void)
                                    528 ;	-----------------------------------------
                                    529 ;	 function i2cStop
                                    530 ;	-----------------------------------------
      002274                        531 _i2cStop:
                                    532 ;	src/i2c.c:129: SDA_LOW;
      002274 53 80 FE         [24]  533 	anl	_P0,#0xfe
                                    534 ;	src/i2c.c:130: SCL_HIGH;
      002277 43 80 02         [24]  535 	orl	_P0,#0x02
                                    536 ;	src/i2c.c:131: i2cClock(ClockVar);
      00227A 90 00 74         [24]  537 	mov	dptr,#_ClockVar
      00227D E0               [24]  538 	movx	a,@dptr
      00227E FE               [12]  539 	mov	r6,a
      00227F 7F 00            [12]  540 	mov	r7,#0x00
      002281 8E 82            [24]  541 	mov	dpl, r6
      002283 8F 83            [24]  542 	mov	dph, r7
      002285 12 21 F9         [24]  543 	lcall	_i2cDelay
                                    544 ;	src/i2c.c:132: SDA_HIGH;
      002288 43 80 01         [24]  545 	orl	_P0,#0x01
                                    546 ;	src/i2c.c:133: SCL_LOW;
      00228B 53 80 FC         [24]  547 	anl	_P0,#0xfc
                                    548 ;	src/i2c.c:134: }
      00228E 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'i2cWritebyte'
                                    552 ;------------------------------------------------------------
                                    553 ;uByte         Allocated with name '_i2cWritebyte_uByte_10000_29'
                                    554 ;MaskByte      Allocated with name '_i2cWritebyte_MaskByte_10000_30'
                                    555 ;------------------------------------------------------------
                                    556 ;	src/i2c.c:141: void i2cWritebyte(unsigned char uByte)
                                    557 ;	-----------------------------------------
                                    558 ;	 function i2cWritebyte
                                    559 ;	-----------------------------------------
      00228F                        560 _i2cWritebyte:
      00228F E5 82            [12]  561 	mov	a,dpl
      002291 90 00 05         [24]  562 	mov	dptr,#_i2cWritebyte_uByte_10000_29
      002294 F0               [24]  563 	movx	@dptr,a
                                    564 ;	src/i2c.c:144: MaskByte = 0x80;
      002295 90 00 06         [24]  565 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      002298 74 80            [12]  566 	mov	a,#0x80
      00229A F0               [24]  567 	movx	@dptr,a
                                    568 ;	src/i2c.c:145: do
      00229B 90 00 05         [24]  569 	mov	dptr,#_i2cWritebyte_uByte_10000_29
      00229E E0               [24]  570 	movx	a,@dptr
      00229F FF               [12]  571 	mov	r7,a
      0022A0                        572 00104$:
                                    573 ;	src/i2c.c:147: if(uByte & MaskByte)
      0022A0 90 00 06         [24]  574 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      0022A3 E0               [24]  575 	movx	a,@dptr
      0022A4 5F               [12]  576 	anl	a,r7
      0022A5 60 05            [24]  577 	jz	00102$
                                    578 ;	src/i2c.c:148: SDA_HIGH;
      0022A7 43 80 01         [24]  579 	orl	_P0,#0x01
      0022AA 80 03            [24]  580 	sjmp	00103$
      0022AC                        581 00102$:
                                    582 ;	src/i2c.c:150: SDA_LOW;
      0022AC 53 80 FE         [24]  583 	anl	_P0,#0xfe
      0022AF                        584 00103$:
                                    585 ;	src/i2c.c:151: SCL_HIGH;
      0022AF 43 80 02         [24]  586 	orl	_P0,#0x02
                                    587 ;	src/i2c.c:152: i2cClock(ClockVar);
      0022B2 90 00 74         [24]  588 	mov	dptr,#_ClockVar
      0022B5 E0               [24]  589 	movx	a,@dptr
      0022B6 FD               [12]  590 	mov	r5,a
      0022B7 7E 00            [12]  591 	mov	r6,#0x00
      0022B9 8D 82            [24]  592 	mov	dpl, r5
      0022BB 8E 83            [24]  593 	mov	dph, r6
      0022BD C0 07            [24]  594 	push	ar7
      0022BF 12 21 F9         [24]  595 	lcall	_i2cDelay
                                    596 ;	src/i2c.c:153: SCL_LOW;
      0022C2 53 80 FC         [24]  597 	anl	_P0,#0xfc
                                    598 ;	src/i2c.c:154: i2cClock(ClockVar);
      0022C5 90 00 74         [24]  599 	mov	dptr,#_ClockVar
      0022C8 E0               [24]  600 	movx	a,@dptr
      0022C9 FD               [12]  601 	mov	r5,a
      0022CA 7E 00            [12]  602 	mov	r6,#0x00
      0022CC 8D 82            [24]  603 	mov	dpl, r5
      0022CE 8E 83            [24]  604 	mov	dph, r6
      0022D0 12 21 F9         [24]  605 	lcall	_i2cDelay
      0022D3 D0 07            [24]  606 	pop	ar7
                                    607 ;	src/i2c.c:155: MaskByte /= 2;
      0022D5 90 00 06         [24]  608 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      0022D8 E0               [24]  609 	movx	a,@dptr
      0022D9 75 F0 02         [24]  610 	mov	b,#0x02
      0022DC 84               [48]  611 	div	ab
      0022DD F0               [24]  612 	movx	@dptr,a
                                    613 ;	src/i2c.c:157: while(MaskByte>0);
      0022DE E0               [24]  614 	movx	a,@dptr
      0022DF 70 BF            [24]  615 	jnz	00104$
                                    616 ;	src/i2c.c:158: SDA_HIGH;
      0022E1 43 80 01         [24]  617 	orl	_P0,#0x01
                                    618 ;	src/i2c.c:159: SCL_HIGH;
      0022E4 43 80 02         [24]  619 	orl	_P0,#0x02
                                    620 ;	src/i2c.c:160: i2cClock(ClockVar);
      0022E7 90 00 74         [24]  621 	mov	dptr,#_ClockVar
      0022EA E0               [24]  622 	movx	a,@dptr
      0022EB FE               [12]  623 	mov	r6,a
      0022EC 7F 00            [12]  624 	mov	r7,#0x00
      0022EE 8E 82            [24]  625 	mov	dpl, r6
      0022F0 8F 83            [24]  626 	mov	dph, r7
      0022F2 12 21 F9         [24]  627 	lcall	_i2cDelay
                                    628 ;	src/i2c.c:161: SlaveACK = SDA;
      0022F5 90 00 72         [24]  629 	mov	dptr,#_SlaveACK
      0022F8 74 01            [12]  630 	mov	a,#0x01
      0022FA 55 80            [12]  631 	anl	a,_P0
      0022FC F0               [24]  632 	movx	@dptr,a
                                    633 ;	src/i2c.c:162: SCL_LOW;
      0022FD 53 80 FC         [24]  634 	anl	_P0,#0xfc
                                    635 ;	src/i2c.c:163: }
      002300 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'i2cReadbyte'
                                    639 ;------------------------------------------------------------
                                    640 ;MasterACK     Allocated with name '_i2cReadbyte_MasterACK_10000_32'
                                    641 ;uByte         Allocated with name '_i2cReadbyte_uByte_10000_33'
                                    642 ;MaskByte      Allocated with name '_i2cReadbyte_MaskByte_10000_33'
                                    643 ;------------------------------------------------------------
                                    644 ;	src/i2c.c:170: unsigned char i2cReadbyte(unsigned char MasterACK)
                                    645 ;	-----------------------------------------
                                    646 ;	 function i2cReadbyte
                                    647 ;	-----------------------------------------
      002301                        648 _i2cReadbyte:
      002301 E5 82            [12]  649 	mov	a,dpl
      002303 90 00 07         [24]  650 	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
      002306 F0               [24]  651 	movx	@dptr,a
                                    652 ;	src/i2c.c:174: uByte    = 0;
      002307 90 00 08         [24]  653 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      00230A E4               [12]  654 	clr	a
      00230B F0               [24]  655 	movx	@dptr,a
                                    656 ;	src/i2c.c:175: MaskByte = 0x80;
      00230C 90 00 09         [24]  657 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      00230F 74 80            [12]  658 	mov	a,#0x80
      002311 F0               [24]  659 	movx	@dptr,a
                                    660 ;	src/i2c.c:176: do
      002312                        661 00103$:
                                    662 ;	src/i2c.c:178: SCL_HIGH;
      002312 43 80 02         [24]  663 	orl	_P0,#0x02
                                    664 ;	src/i2c.c:179: if(SDA == 1)
      002315 74 01            [12]  665 	mov	a,#0x01
      002317 55 80            [12]  666 	anl	a,_P0
      002319 FF               [12]  667 	mov	r7,a
      00231A BF 01 0B         [24]  668 	cjne	r7,#0x01,00102$
                                    669 ;	src/i2c.c:181: uByte |= MaskByte;
      00231D 90 00 09         [24]  670 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      002320 E0               [24]  671 	movx	a,@dptr
      002321 FF               [12]  672 	mov	r7,a
      002322 90 00 08         [24]  673 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      002325 E0               [24]  674 	movx	a,@dptr
      002326 4F               [12]  675 	orl	a,r7
      002327 F0               [24]  676 	movx	@dptr,a
      002328                        677 00102$:
                                    678 ;	src/i2c.c:183: SCL_LOW;
      002328 53 80 FC         [24]  679 	anl	_P0,#0xfc
                                    680 ;	src/i2c.c:184: MaskByte /= 2;
      00232B 90 00 09         [24]  681 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      00232E E0               [24]  682 	movx	a,@dptr
      00232F 75 F0 02         [24]  683 	mov	b,#0x02
      002332 84               [48]  684 	div	ab
      002333 F0               [24]  685 	movx	@dptr,a
                                    686 ;	src/i2c.c:186: while(MaskByte > 0);
      002334 E0               [24]  687 	movx	a,@dptr
      002335 70 DB            [24]  688 	jnz	00103$
                                    689 ;	src/i2c.c:187: if(MasterACK==1)
      002337 90 00 07         [24]  690 	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
      00233A E0               [24]  691 	movx	a,@dptr
      00233B FF               [12]  692 	mov	r7,a
      00233C BF 01 05         [24]  693 	cjne	r7,#0x01,00107$
                                    694 ;	src/i2c.c:188: SDA_HIGH;
      00233F 43 80 01         [24]  695 	orl	_P0,#0x01
      002342 80 03            [24]  696 	sjmp	00108$
      002344                        697 00107$:
                                    698 ;	src/i2c.c:190: SDA_LOW;
      002344 53 80 FE         [24]  699 	anl	_P0,#0xfe
      002347                        700 00108$:
                                    701 ;	src/i2c.c:191: SCL_LOW;
      002347 53 80 FC         [24]  702 	anl	_P0,#0xfc
                                    703 ;	src/i2c.c:192: SDA_HIGH;
      00234A 43 80 01         [24]  704 	orl	_P0,#0x01
                                    705 ;	src/i2c.c:193: return uByte;
      00234D 90 00 08         [24]  706 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      002350 E0               [24]  707 	movx	a,@dptr
                                    708 ;	src/i2c.c:194: }
      002351 F5 82            [12]  709 	mov	dpl,a
      002353 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'i2cWrite'
                                    713 ;------------------------------------------------------------
                                    714 ;Address       Allocated with name '_i2cWrite_PARM_2'
                                    715 ;Byte          Allocated with name '_i2cWrite_Byte_10000_36'
                                    716 ;------------------------------------------------------------
                                    717 ;	src/i2c.c:201: void i2cWrite(unsigned char Byte,unsigned char Address)
                                    718 ;	-----------------------------------------
                                    719 ;	 function i2cWrite
                                    720 ;	-----------------------------------------
      002354                        721 _i2cWrite:
      002354 E5 82            [12]  722 	mov	a,dpl
      002356 90 00 0B         [24]  723 	mov	dptr,#_i2cWrite_Byte_10000_36
      002359 F0               [24]  724 	movx	@dptr,a
                                    725 ;	src/i2c.c:203: do
      00235A                        726 00103$:
                                    727 ;	src/i2c.c:205: i2cStart();
      00235A 12 22 34         [24]  728 	lcall	_i2cStart
                                    729 ;	src/i2c.c:206: i2cWritebyte(DevAddress);
      00235D 90 00 73         [24]  730 	mov	dptr,#_DevAddress
      002360 E0               [24]  731 	movx	a,@dptr
      002361 F5 82            [12]  732 	mov	dpl,a
      002363 12 22 8F         [24]  733 	lcall	_i2cWritebyte
                                    734 ;	src/i2c.c:207: if(SlaveACK == 1)
      002366 90 00 72         [24]  735 	mov	dptr,#_SlaveACK
      002369 E0               [24]  736 	movx	a,@dptr
      00236A FF               [12]  737 	mov	r7,a
      00236B BF 01 03         [24]  738 	cjne	r7,#0x01,00104$
                                    739 ;	src/i2c.c:208: i2cStop();
      00236E 12 22 74         [24]  740 	lcall	_i2cStop
      002371                        741 00104$:
                                    742 ;	src/i2c.c:210: while(SlaveACK==1);
      002371 90 00 72         [24]  743 	mov	dptr,#_SlaveACK
      002374 E0               [24]  744 	movx	a,@dptr
      002375 FF               [12]  745 	mov	r7,a
      002376 BF 01 02         [24]  746 	cjne	r7,#0x01,00128$
      002379 80 DF            [24]  747 	sjmp	00103$
      00237B                        748 00128$:
                                    749 ;	src/i2c.c:211: i2cWritebyte(Address);
      00237B 90 00 0A         [24]  750 	mov	dptr,#_i2cWrite_PARM_2
      00237E E0               [24]  751 	movx	a,@dptr
      00237F F5 82            [12]  752 	mov	dpl,a
      002381 12 22 8F         [24]  753 	lcall	_i2cWritebyte
                                    754 ;	src/i2c.c:212: i2cWritebyte(Byte);
      002384 90 00 0B         [24]  755 	mov	dptr,#_i2cWrite_Byte_10000_36
      002387 E0               [24]  756 	movx	a,@dptr
      002388 F5 82            [12]  757 	mov	dpl,a
      00238A 12 22 8F         [24]  758 	lcall	_i2cWritebyte
                                    759 ;	src/i2c.c:213: i2cStop();
                                    760 ;	src/i2c.c:214: }
      00238D 02 22 74         [24]  761 	ljmp	_i2cStop
                                    762 ;------------------------------------------------------------
                                    763 ;Allocation info for local variables in function 'i2cRead'
                                    764 ;------------------------------------------------------------
                                    765 ;Address       Allocated with name '_i2cRead_Address_10000_39'
                                    766 ;ReadByte      Allocated with name '_i2cRead_ReadByte_10000_40'
                                    767 ;------------------------------------------------------------
                                    768 ;	src/i2c.c:221: unsigned char i2cRead(unsigned char Address)
                                    769 ;	-----------------------------------------
                                    770 ;	 function i2cRead
                                    771 ;	-----------------------------------------
      002390                        772 _i2cRead:
      002390 E5 82            [12]  773 	mov	a,dpl
      002392 90 00 0C         [24]  774 	mov	dptr,#_i2cRead_Address_10000_39
      002395 F0               [24]  775 	movx	@dptr,a
                                    776 ;	src/i2c.c:224: do
      002396                        777 00103$:
                                    778 ;	src/i2c.c:226: i2cStart();
      002396 12 22 34         [24]  779 	lcall	_i2cStart
                                    780 ;	src/i2c.c:227: i2cWritebyte(DevAddress);
      002399 90 00 73         [24]  781 	mov	dptr,#_DevAddress
      00239C E0               [24]  782 	movx	a,@dptr
      00239D F5 82            [12]  783 	mov	dpl,a
      00239F 12 22 8F         [24]  784 	lcall	_i2cWritebyte
                                    785 ;	src/i2c.c:228: if(SlaveACK==1)
      0023A2 90 00 72         [24]  786 	mov	dptr,#_SlaveACK
      0023A5 E0               [24]  787 	movx	a,@dptr
      0023A6 FF               [12]  788 	mov	r7,a
      0023A7 BF 01 03         [24]  789 	cjne	r7,#0x01,00104$
                                    790 ;	src/i2c.c:229: i2cStop();
      0023AA 12 22 74         [24]  791 	lcall	_i2cStop
      0023AD                        792 00104$:
                                    793 ;	src/i2c.c:231: while(SlaveACK==1);
      0023AD 90 00 72         [24]  794 	mov	dptr,#_SlaveACK
      0023B0 E0               [24]  795 	movx	a,@dptr
      0023B1 FF               [12]  796 	mov	r7,a
      0023B2 BF 01 02         [24]  797 	cjne	r7,#0x01,00128$
      0023B5 80 DF            [24]  798 	sjmp	00103$
      0023B7                        799 00128$:
                                    800 ;	src/i2c.c:232: i2cWritebyte(Address);
      0023B7 90 00 0C         [24]  801 	mov	dptr,#_i2cRead_Address_10000_39
      0023BA E0               [24]  802 	movx	a,@dptr
      0023BB F5 82            [12]  803 	mov	dpl,a
      0023BD 12 22 8F         [24]  804 	lcall	_i2cWritebyte
                                    805 ;	src/i2c.c:233: i2cStop();
      0023C0 12 22 74         [24]  806 	lcall	_i2cStop
                                    807 ;	src/i2c.c:234: i2cStart();
      0023C3 12 22 34         [24]  808 	lcall	_i2cStart
                                    809 ;	src/i2c.c:235: i2cWritebyte(DevAddress+1);
      0023C6 90 00 73         [24]  810 	mov	dptr,#_DevAddress
      0023C9 E0               [24]  811 	movx	a,@dptr
      0023CA FF               [12]  812 	mov	r7,a
      0023CB 0F               [12]  813 	inc	r7
      0023CC 8F 82            [24]  814 	mov	dpl, r7
      0023CE 12 22 8F         [24]  815 	lcall	_i2cWritebyte
                                    816 ;	src/i2c.c:236: ReadByte = i2cReadbyte(1);
      0023D1 75 82 01         [24]  817 	mov	dpl, #0x01
      0023D4 12 23 01         [24]  818 	lcall	_i2cReadbyte
      0023D7 AF 82            [24]  819 	mov	r7, dpl
                                    820 ;	src/i2c.c:237: i2cStop();
      0023D9 C0 07            [24]  821 	push	ar7
      0023DB 12 22 74         [24]  822 	lcall	_i2cStop
      0023DE D0 07            [24]  823 	pop	ar7
                                    824 ;	src/i2c.c:238: return ReadByte;
      0023E0 8F 82            [24]  825 	mov	dpl, r7
                                    826 ;	src/i2c.c:239: }
      0023E2 22               [24]  827 	ret
                                    828 ;------------------------------------------------------------
                                    829 ;Allocation info for local variables in function 'i2cBegin'
                                    830 ;------------------------------------------------------------
                                    831 ;Speed         Allocated with name '_i2cBegin_PARM_2'
                                    832 ;OscFreq       Allocated with name '_i2cBegin_OscFreq_10000_42'
                                    833 ;teMp          Allocated with name '_i2cBegin_teMp_10000_43'
                                    834 ;------------------------------------------------------------
                                    835 ;	src/i2c.c:246: unsigned char i2cBegin(unsigned long OscFreq,unsigned long Speed)
                                    836 ;	-----------------------------------------
                                    837 ;	 function i2cBegin
                                    838 ;	-----------------------------------------
      0023E3                        839 _i2cBegin:
      0023E3 AF 82            [24]  840 	mov	r7,dpl
      0023E5 AE 83            [24]  841 	mov	r6,dph
      0023E7 AD F0            [24]  842 	mov	r5,b
      0023E9 FC               [12]  843 	mov	r4,a
      0023EA 90 00 11         [24]  844 	mov	dptr,#_i2cBegin_OscFreq_10000_42
      0023ED EF               [12]  845 	mov	a,r7
      0023EE F0               [24]  846 	movx	@dptr,a
      0023EF EE               [12]  847 	mov	a,r6
      0023F0 A3               [24]  848 	inc	dptr
      0023F1 F0               [24]  849 	movx	@dptr,a
      0023F2 ED               [12]  850 	mov	a,r5
      0023F3 A3               [24]  851 	inc	dptr
      0023F4 F0               [24]  852 	movx	@dptr,a
      0023F5 EC               [12]  853 	mov	a,r4
      0023F6 A3               [24]  854 	inc	dptr
      0023F7 F0               [24]  855 	movx	@dptr,a
                                    856 ;	src/i2c.c:248: unsigned char teMp = 12 / ((OscFreq / 1000)/1000);
      0023F8 90 00 11         [24]  857 	mov	dptr,#_i2cBegin_OscFreq_10000_42
      0023FB E0               [24]  858 	movx	a,@dptr
      0023FC FC               [12]  859 	mov	r4,a
      0023FD A3               [24]  860 	inc	dptr
      0023FE E0               [24]  861 	movx	a,@dptr
      0023FF FD               [12]  862 	mov	r5,a
      002400 A3               [24]  863 	inc	dptr
      002401 E0               [24]  864 	movx	a,@dptr
      002402 FE               [12]  865 	mov	r6,a
      002403 A3               [24]  866 	inc	dptr
      002404 E0               [24]  867 	movx	a,@dptr
      002405 FF               [12]  868 	mov	r7,a
      002406 90 00 20         [24]  869 	mov	dptr,#__divulong_PARM_2
      002409 74 E8            [12]  870 	mov	a,#0xe8
      00240B F0               [24]  871 	movx	@dptr,a
      00240C 74 03            [12]  872 	mov	a,#0x03
      00240E A3               [24]  873 	inc	dptr
      00240F F0               [24]  874 	movx	@dptr,a
      002410 E4               [12]  875 	clr	a
      002411 A3               [24]  876 	inc	dptr
      002412 F0               [24]  877 	movx	@dptr,a
      002413 A3               [24]  878 	inc	dptr
      002414 F0               [24]  879 	movx	@dptr,a
      002415 8C 82            [24]  880 	mov	dpl, r4
      002417 8D 83            [24]  881 	mov	dph, r5
      002419 8E F0            [24]  882 	mov	b, r6
      00241B EF               [12]  883 	mov	a, r7
      00241C 12 25 4F         [24]  884 	lcall	__divulong
      00241F AC 82            [24]  885 	mov	r4, dpl
      002421 AD 83            [24]  886 	mov	r5, dph
      002423 AE F0            [24]  887 	mov	r6, b
      002425 FF               [12]  888 	mov	r7, a
      002426 90 00 20         [24]  889 	mov	dptr,#__divulong_PARM_2
      002429 74 E8            [12]  890 	mov	a,#0xe8
      00242B F0               [24]  891 	movx	@dptr,a
      00242C 74 03            [12]  892 	mov	a,#0x03
      00242E A3               [24]  893 	inc	dptr
      00242F F0               [24]  894 	movx	@dptr,a
      002430 E4               [12]  895 	clr	a
      002431 A3               [24]  896 	inc	dptr
      002432 F0               [24]  897 	movx	@dptr,a
      002433 A3               [24]  898 	inc	dptr
      002434 F0               [24]  899 	movx	@dptr,a
      002435 8C 82            [24]  900 	mov	dpl, r4
      002437 8D 83            [24]  901 	mov	dph, r5
      002439 8E F0            [24]  902 	mov	b, r6
      00243B EF               [12]  903 	mov	a, r7
      00243C 12 25 4F         [24]  904 	lcall	__divulong
      00243F AC 82            [24]  905 	mov	r4, dpl
      002441 AD 83            [24]  906 	mov	r5, dph
      002443 90 00 2E         [24]  907 	mov	dptr,#__divsint_PARM_2
      002446 EC               [12]  908 	mov	a,r4
      002447 F0               [24]  909 	movx	@dptr,a
      002448 ED               [12]  910 	mov	a,r5
      002449 A3               [24]  911 	inc	dptr
      00244A F0               [24]  912 	movx	@dptr,a
      00244B 90 00 0C         [24]  913 	mov	dptr,#0x000c
      00244E 12 26 5E         [24]  914 	lcall	__divsint
      002451 AE 82            [24]  915 	mov	r6, dpl
                                    916 ;	src/i2c.c:249: teMp = teMp + CLOCK_ERROR_CORRECTION;
      002453 0E               [12]  917 	inc	r6
      002454 0E               [12]  918 	inc	r6
      002455 0E               [12]  919 	inc	r6
                                    920 ;	src/i2c.c:250: ClockVar = teMp / Speed;
      002456 90 00 0D         [24]  921 	mov	dptr,#_i2cBegin_PARM_2
      002459 E0               [24]  922 	movx	a,@dptr
      00245A FB               [12]  923 	mov	r3,a
      00245B A3               [24]  924 	inc	dptr
      00245C E0               [24]  925 	movx	a,@dptr
      00245D FC               [12]  926 	mov	r4,a
      00245E A3               [24]  927 	inc	dptr
      00245F E0               [24]  928 	movx	a,@dptr
      002460 FD               [12]  929 	mov	r5,a
      002461 A3               [24]  930 	inc	dptr
      002462 E0               [24]  931 	movx	a,@dptr
      002463 FF               [12]  932 	mov	r7,a
      002464 8E 00            [24]  933 	mov	ar0,r6
      002466 79 00            [12]  934 	mov	r1,#0x00
      002468 7A 00            [12]  935 	mov	r2,#0x00
      00246A 7E 00            [12]  936 	mov	r6,#0x00
      00246C 90 00 20         [24]  937 	mov	dptr,#__divulong_PARM_2
      00246F EB               [12]  938 	mov	a,r3
      002470 F0               [24]  939 	movx	@dptr,a
      002471 EC               [12]  940 	mov	a,r4
      002472 A3               [24]  941 	inc	dptr
      002473 F0               [24]  942 	movx	@dptr,a
      002474 ED               [12]  943 	mov	a,r5
      002475 A3               [24]  944 	inc	dptr
      002476 F0               [24]  945 	movx	@dptr,a
      002477 EF               [12]  946 	mov	a,r7
      002478 A3               [24]  947 	inc	dptr
      002479 F0               [24]  948 	movx	@dptr,a
      00247A 88 82            [24]  949 	mov	dpl, r0
      00247C 89 83            [24]  950 	mov	dph, r1
      00247E 8A F0            [24]  951 	mov	b, r2
      002480 EE               [12]  952 	mov	a, r6
      002481 12 25 4F         [24]  953 	lcall	__divulong
      002484 AC 82            [24]  954 	mov	r4, dpl
      002486 90 00 74         [24]  955 	mov	dptr,#_ClockVar
      002489 EC               [12]  956 	mov	a,r4
      00248A F0               [24]  957 	movx	@dptr,a
                                    958 ;	src/i2c.c:251: }
      00248B 22               [24]  959 	ret
                                    960 ;------------------------------------------------------------
                                    961 ;Allocation info for local variables in function 'i2csetAdd'
                                    962 ;------------------------------------------------------------
                                    963 ;SlaveAddress  Allocated with name '_i2csetAdd_SlaveAddress_10000_44'
                                    964 ;------------------------------------------------------------
                                    965 ;	src/i2c.c:258: void i2csetAdd(unsigned char SlaveAddress)
                                    966 ;	-----------------------------------------
                                    967 ;	 function i2csetAdd
                                    968 ;	-----------------------------------------
      00248C                        969 _i2csetAdd:
      00248C E5 82            [12]  970 	mov	a,dpl
      00248E 90 00 15         [24]  971 	mov	dptr,#_i2csetAdd_SlaveAddress_10000_44
      002491 F0               [24]  972 	movx	@dptr,a
                                    973 ;	src/i2c.c:260: DevAddress = SlaveAddress;
      002492 E0               [24]  974 	movx	a,@dptr
      002493 90 00 73         [24]  975 	mov	dptr,#_DevAddress
      002496 F0               [24]  976 	movx	@dptr,a
                                    977 ;	src/i2c.c:261: }
      002497 22               [24]  978 	ret
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'i2cDetect'
                                    981 ;------------------------------------------------------------
                                    982 ;_Address      Allocated with name '_i2cDetect__Address_10000_46'
                                    983 ;------------------------------------------------------------
                                    984 ;	src/i2c.c:275: unsigned char i2cDetect(unsigned char _Address)
                                    985 ;	-----------------------------------------
                                    986 ;	 function i2cDetect
                                    987 ;	-----------------------------------------
      002498                        988 _i2cDetect:
                                    989 ;	src/i2c.c:278: }
      002498 22               [24]  990 	ret
                                    991 ;------------------------------------------------------------
                                    992 ;Allocation info for local variables in function 'i2cWriteBlock'
                                    993 ;------------------------------------------------------------
                                    994 ;eAddress      Allocated with name '_i2cWriteBlock_PARM_2'
                                    995 ;dPtr          Allocated with name '_i2cWriteBlock_PARM_3'
                                    996 ;sAddress      Allocated with name '_i2cWriteBlock_sAddress_10000_49'
                                    997 ;duMmy         Allocated with name '_i2cWriteBlock_duMmy_10000_50'
                                    998 ;i             Allocated with name '_i2cWriteBlock_i_10000_50'
                                    999 ;------------------------------------------------------------
                                   1000 ;	src/i2c.c:285: void i2cWriteBlock(unsigned char sAddress,unsigned char eAddress,unsigned char *dPtr)
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function i2cWriteBlock
                                   1003 ;	-----------------------------------------
      002499                       1004 _i2cWriteBlock:
      002499 E5 82            [12] 1005 	mov	a,dpl
      00249B 90 00 1A         [24] 1006 	mov	dptr,#_i2cWriteBlock_sAddress_10000_49
      00249E F0               [24] 1007 	movx	@dptr,a
                                   1008 ;	src/i2c.c:289: for(duMmy=sAddress;i<= eAddress;duMmy++)
      00249F E0               [24] 1009 	movx	a,@dptr
      0024A0 FF               [12] 1010 	mov	r7,a
      0024A1 90 00 17         [24] 1011 	mov	dptr,#_i2cWriteBlock_PARM_3
      0024A4 E0               [24] 1012 	movx	a,@dptr
      0024A5 FC               [12] 1013 	mov	r4,a
      0024A6 A3               [24] 1014 	inc	dptr
      0024A7 E0               [24] 1015 	movx	a,@dptr
      0024A8 FD               [12] 1016 	mov	r5,a
      0024A9 A3               [24] 1017 	inc	dptr
      0024AA E0               [24] 1018 	movx	a,@dptr
      0024AB FE               [12] 1019 	mov	r6,a
      0024AC 90 00 16         [24] 1020 	mov	dptr,#_i2cWriteBlock_PARM_2
      0024AF E0               [24] 1021 	movx	a,@dptr
      0024B0 FB               [12] 1022 	mov	r3,a
      0024B1 7A 00            [12] 1023 	mov	r2,#0x00
      0024B3                       1024 00103$:
      0024B3 C3               [12] 1025 	clr	c
      0024B4 EB               [12] 1026 	mov	a,r3
      0024B5 9A               [12] 1027 	subb	a,r2
      0024B6 40 3C            [24] 1028 	jc	00105$
                                   1029 ;	src/i2c.c:291: i2cWrite(dPtr[i],duMmy);
      0024B8 C0 03            [24] 1030 	push	ar3
      0024BA EA               [12] 1031 	mov	a,r2
      0024BB 2C               [12] 1032 	add	a, r4
      0024BC F8               [12] 1033 	mov	r0,a
      0024BD E4               [12] 1034 	clr	a
      0024BE 3D               [12] 1035 	addc	a, r5
      0024BF F9               [12] 1036 	mov	r1,a
      0024C0 8E 03            [24] 1037 	mov	ar3,r6
      0024C2 88 82            [24] 1038 	mov	dpl,r0
      0024C4 89 83            [24] 1039 	mov	dph,r1
      0024C6 8B F0            [24] 1040 	mov	b,r3
      0024C8 12 31 DF         [24] 1041 	lcall	__gptrget
      0024CB F8               [12] 1042 	mov	r0,a
      0024CC 90 00 0A         [24] 1043 	mov	dptr,#_i2cWrite_PARM_2
      0024CF EF               [12] 1044 	mov	a,r7
      0024D0 F0               [24] 1045 	movx	@dptr,a
      0024D1 88 82            [24] 1046 	mov	dpl, r0
      0024D3 C0 07            [24] 1047 	push	ar7
      0024D5 C0 06            [24] 1048 	push	ar6
      0024D7 C0 05            [24] 1049 	push	ar5
      0024D9 C0 04            [24] 1050 	push	ar4
      0024DB C0 03            [24] 1051 	push	ar3
      0024DD C0 02            [24] 1052 	push	ar2
      0024DF 12 23 54         [24] 1053 	lcall	_i2cWrite
      0024E2 D0 02            [24] 1054 	pop	ar2
      0024E4 D0 03            [24] 1055 	pop	ar3
      0024E6 D0 04            [24] 1056 	pop	ar4
      0024E8 D0 05            [24] 1057 	pop	ar5
      0024EA D0 06            [24] 1058 	pop	ar6
      0024EC D0 07            [24] 1059 	pop	ar7
                                   1060 ;	src/i2c.c:292: i++;
      0024EE 0A               [12] 1061 	inc	r2
                                   1062 ;	src/i2c.c:289: for(duMmy=sAddress;i<= eAddress;duMmy++)
      0024EF 0F               [12] 1063 	inc	r7
      0024F0 D0 03            [24] 1064 	pop	ar3
      0024F2 80 BF            [24] 1065 	sjmp	00103$
      0024F4                       1066 00105$:
                                   1067 ;	src/i2c.c:294: }
      0024F4 22               [24] 1068 	ret
                                   1069 ;------------------------------------------------------------
                                   1070 ;Allocation info for local variables in function 'i2cReadBlock'
                                   1071 ;------------------------------------------------------------
                                   1072 ;sloc0         Allocated with name '_i2cReadBlock_sloc0_1_0'
                                   1073 ;eAddress      Allocated with name '_i2cReadBlock_PARM_2'
                                   1074 ;dPtr          Allocated with name '_i2cReadBlock_PARM_3'
                                   1075 ;sAddress      Allocated with name '_i2cReadBlock_sAddress_10000_53'
                                   1076 ;duMmy         Allocated with name '_i2cReadBlock_duMmy_10000_54'
                                   1077 ;i             Allocated with name '_i2cReadBlock_i_10000_54'
                                   1078 ;------------------------------------------------------------
                                   1079 ;	src/i2c.c:301: void i2cReadBlock(unsigned char sAddress,unsigned char eAddress,unsigned char *dPtr)
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function i2cReadBlock
                                   1082 ;	-----------------------------------------
      0024F5                       1083 _i2cReadBlock:
      0024F5 E5 82            [12] 1084 	mov	a,dpl
      0024F7 90 00 1F         [24] 1085 	mov	dptr,#_i2cReadBlock_sAddress_10000_53
      0024FA F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	src/i2c.c:305: for(duMmy=sAddress;i<= eAddress;duMmy++)
      0024FB E0               [24] 1088 	movx	a,@dptr
      0024FC FF               [12] 1089 	mov	r7,a
      0024FD 90 00 1C         [24] 1090 	mov	dptr,#_i2cReadBlock_PARM_3
      002500 E0               [24] 1091 	movx	a,@dptr
      002501 FC               [12] 1092 	mov	r4,a
      002502 A3               [24] 1093 	inc	dptr
      002503 E0               [24] 1094 	movx	a,@dptr
      002504 FD               [12] 1095 	mov	r5,a
      002505 A3               [24] 1096 	inc	dptr
      002506 E0               [24] 1097 	movx	a,@dptr
      002507 FE               [12] 1098 	mov	r6,a
      002508 90 00 1B         [24] 1099 	mov	dptr,#_i2cReadBlock_PARM_2
      00250B E0               [24] 1100 	movx	a,@dptr
      00250C FB               [12] 1101 	mov	r3,a
      00250D 7A 00            [12] 1102 	mov	r2,#0x00
      00250F                       1103 00103$:
      00250F C3               [12] 1104 	clr	c
      002510 EB               [12] 1105 	mov	a,r3
      002511 9A               [12] 1106 	subb	a,r2
      002512 40 3A            [24] 1107 	jc	00105$
                                   1108 ;	src/i2c.c:307: dPtr[i] = i2cRead(duMmy);
      002514 C0 03            [24] 1109 	push	ar3
      002516 EA               [12] 1110 	mov	a,r2
      002517 2C               [12] 1111 	add	a, r4
      002518 F5 08            [12] 1112 	mov	_i2cReadBlock_sloc0_1_0,a
      00251A E4               [12] 1113 	clr	a
      00251B 3D               [12] 1114 	addc	a, r5
      00251C F5 09            [12] 1115 	mov	(_i2cReadBlock_sloc0_1_0 + 1),a
      00251E 8E 0A            [24] 1116 	mov	(_i2cReadBlock_sloc0_1_0 + 2),r6
      002520 8F 82            [24] 1117 	mov	dpl, r7
      002522 C0 07            [24] 1118 	push	ar7
      002524 C0 06            [24] 1119 	push	ar6
      002526 C0 05            [24] 1120 	push	ar5
      002528 C0 04            [24] 1121 	push	ar4
      00252A C0 02            [24] 1122 	push	ar2
      00252C 12 23 90         [24] 1123 	lcall	_i2cRead
      00252F AB 82            [24] 1124 	mov	r3, dpl
      002531 D0 02            [24] 1125 	pop	ar2
      002533 D0 04            [24] 1126 	pop	ar4
      002535 D0 05            [24] 1127 	pop	ar5
      002537 D0 06            [24] 1128 	pop	ar6
      002539 D0 07            [24] 1129 	pop	ar7
      00253B 85 08 82         [24] 1130 	mov	dpl,_i2cReadBlock_sloc0_1_0
      00253E 85 09 83         [24] 1131 	mov	dph,(_i2cReadBlock_sloc0_1_0 + 1)
      002541 85 0A F0         [24] 1132 	mov	b,(_i2cReadBlock_sloc0_1_0 + 2)
      002544 EB               [12] 1133 	mov	a,r3
      002545 12 26 43         [24] 1134 	lcall	__gptrput
                                   1135 ;	src/i2c.c:308: i++;
      002548 0A               [12] 1136 	inc	r2
                                   1137 ;	src/i2c.c:305: for(duMmy=sAddress;i<= eAddress;duMmy++)
      002549 0F               [12] 1138 	inc	r7
      00254A D0 03            [24] 1139 	pop	ar3
      00254C 80 C1            [24] 1140 	sjmp	00103$
      00254E                       1141 00105$:
                                   1142 ;	src/i2c.c:310: }
      00254E 22               [24] 1143 	ret
                                   1144 	.area CSEG    (CODE)
                                   1145 	.area CONST   (CODE)
                                   1146 	.area XINIT   (CODE)
      0032E0                       1147 __xinit__SlaveACK:
      0032E0 00                    1148 	.db #0x00	; 0
      0032E1                       1149 __xinit__DevAddress:
      0032E1 00                    1150 	.db #0x00	; 0
      0032E2                       1151 __xinit__ClockVar:
      0032E2 00                    1152 	.db #0x00	; 0
                                   1153 	.area CABS    (ABS,CODE)
