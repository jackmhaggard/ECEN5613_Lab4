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
                                    265 ;--------------------------------------------------------
                                    266 ; paged external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area PSEG    (PAG,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; uninitialized external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XSEG    (XDATA)
      000065                        273 _i2cDelay_ClockVar_10000_17:
      000065                        274 	.ds 2
      000067                        275 _i2cavailable_sloc0_1_0:
      000067                        276 	.ds 1
      000068                        277 _i2cWritebyte_uByte_10000_29:
      000068                        278 	.ds 1
      000069                        279 _i2cWritebyte_MaskByte_10000_30:
      000069                        280 	.ds 1
      00006A                        281 _i2cReadbyte_MasterACK_10000_32:
      00006A                        282 	.ds 1
      00006B                        283 _i2cReadbyte_uByte_10000_33:
      00006B                        284 	.ds 1
      00006C                        285 _i2cReadbyte_MaskByte_10000_33:
      00006C                        286 	.ds 1
      00006D                        287 _i2cWrite_PARM_2:
      00006D                        288 	.ds 1
      00006E                        289 _i2cWrite_Byte_10000_36:
      00006E                        290 	.ds 1
      00006F                        291 _i2cRead_Address_10000_39:
      00006F                        292 	.ds 1
      000070                        293 _i2cBegin_PARM_2:
      000070                        294 	.ds 4
      000074                        295 _i2cBegin_OscFreq_10000_42:
      000074                        296 	.ds 4
      000078                        297 _i2csetAdd_SlaveAddress_10000_44:
      000078                        298 	.ds 1
      000079                        299 _i2cWriteBlock_PARM_2:
      000079                        300 	.ds 1
      00007A                        301 _i2cWriteBlock_PARM_3:
      00007A                        302 	.ds 3
      00007D                        303 _i2cWriteBlock_sAddress_10000_49:
      00007D                        304 	.ds 1
      00007E                        305 _i2cReadBlock_PARM_2:
      00007E                        306 	.ds 1
      00007F                        307 _i2cReadBlock_PARM_3:
      00007F                        308 	.ds 3
      000082                        309 _i2cReadBlock_sAddress_10000_53:
      000082                        310 	.ds 1
                                    311 ;--------------------------------------------------------
                                    312 ; absolute external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XABS    (ABS,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; initialized external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XISEG   (XDATA)
      0000E8                        319 _SlaveACK::
      0000E8                        320 	.ds 1
      0000E9                        321 _DevAddress::
      0000E9                        322 	.ds 1
      0000EA                        323 _ClockVar::
      0000EA                        324 	.ds 1
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
      002845                        358 __time_out_timer_0__:
                           000007   359 	ar7 = 0x07
                           000006   360 	ar6 = 0x06
                           000005   361 	ar5 = 0x05
                           000004   362 	ar4 = 0x04
                           000003   363 	ar3 = 0x03
                           000002   364 	ar2 = 0x02
                           000001   365 	ar1 = 0x01
                           000000   366 	ar0 = 0x00
                                    367 ;	src/i2c.c:42: TMOD |= 0x01;
      002845 43 89 01         [24]  368 	orl	_TMOD,#0x01
                                    369 ;	src/i2c.c:43: TL0   = 0x00;	
      002848 75 8A 00         [24]  370 	mov	_TL0,#0x00
                                    371 ;	src/i2c.c:44: TH0   = 0x4C;	
      00284B 75 8C 4C         [24]  372 	mov	_TH0,#0x4c
                                    373 ;	src/i2c.c:45: TR0   = 1;	
                                    374 ;	assignBit
      00284E D2 8C            [12]  375 	setb	_TR0
                                    376 ;	src/i2c.c:46: }
      002850 22               [24]  377 	ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'i2cSetPort'
                                    380 ;------------------------------------------------------------
                                    381 ;	src/i2c.c:53: void  i2cSetPort(void)
                                    382 ;	-----------------------------------------
                                    383 ;	 function i2cSetPort
                                    384 ;	-----------------------------------------
      002851                        385 _i2cSetPort:
                                    386 ;	src/i2c.c:55: SDADIR |= SDABIT;
      002851 43 90 02         [24]  387 	orl	_P1,#0x02
                                    388 ;	src/i2c.c:56: SCLDIR |= SCLBIT;
      002854 43 90 01         [24]  389 	orl	_P1,#0x01
                                    390 ;	src/i2c.c:57: SDA_HIGH;
                                    391 ;	assignBit
      002857 D2 91            [12]  392 	setb	_P1_1
                                    393 ;	src/i2c.c:58: SCL_HIGH;
                                    394 ;	assignBit
      002859 D2 90            [12]  395 	setb	_P1_0
                                    396 ;	src/i2c.c:59: }
      00285B 22               [24]  397 	ret
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
      00285C                        408 _i2cDelay:
      00285C AF 83            [24]  409 	mov	r7,dph
      00285E E5 82            [12]  410 	mov	a,dpl
      002860 90 00 65         [24]  411 	mov	dptr,#_i2cDelay_ClockVar_10000_17
      002863 F0               [24]  412 	movx	@dptr,a
      002864 EF               [12]  413 	mov	a,r7
      002865 A3               [24]  414 	inc	dptr
      002866 F0               [24]  415 	movx	@dptr,a
                                    416 ;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
      002867 90 00 65         [24]  417 	mov	dptr,#_i2cDelay_ClockVar_10000_17
      00286A E0               [24]  418 	movx	a,@dptr
      00286B FE               [12]  419 	mov	r6,a
      00286C A3               [24]  420 	inc	dptr
      00286D E0               [24]  421 	movx	a,@dptr
      00286E FF               [12]  422 	mov	r7,a
      00286F 7D 00            [12]  423 	mov	r5,#0x00
      002871                        424 00102$:
                                    425 ;	src/i2c.c:73: __endasm;
      002871 00               [12]  426 	NOP
                                    427 ;	src/i2c.c:69: for(i=0;i<=ClockVar;i++)
      002872 0D               [12]  428 	inc	r5
      002873 ED               [12]  429 	mov	a,r5
      002874 FB               [12]  430 	mov	r3,a
      002875 33               [12]  431 	rlc	a
      002876 95 E0            [12]  432 	subb	a,acc
      002878 FC               [12]  433 	mov	r4,a
      002879 C3               [12]  434 	clr	c
      00287A EE               [12]  435 	mov	a,r6
      00287B 9B               [12]  436 	subb	a,r3
      00287C EF               [12]  437 	mov	a,r7
      00287D 9C               [12]  438 	subb	a,r4
      00287E 50 F1            [24]  439 	jnc	00102$
                                    440 ;	src/i2c.c:75: }
      002880 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function 'i2cavailable'
                                    444 ;------------------------------------------------------------
                                    445 ;sloc0         Allocated with name '_i2cavailable_sloc0_1_0'
                                    446 ;------------------------------------------------------------
                                    447 ;	src/i2c.c:82: unsigned char i2cavailable(void)
                                    448 ;	-----------------------------------------
                                    449 ;	 function i2cavailable
                                    450 ;	-----------------------------------------
      002881                        451 _i2cavailable:
                                    452 ;	src/i2c.c:84: return (!(SDA | SCL));
      002881 90 00 67         [24]  453 	mov	dptr,#_i2cavailable_sloc0_1_0
      002884 A2 91            [12]  454 	mov	c,_P1_1
      002886 72 90            [24]  455 	orl	c,_P1_0
      002888 E4               [12]  456 	clr	a
      002889 33               [12]  457 	rlc	a
      00288A F0               [24]  458 	movx	@dptr,a
      00288B 90 00 67         [24]  459 	mov	dptr,#_i2cavailable_sloc0_1_0
      00288E E0               [24]  460 	movx	a,@dptr
      00288F B4 01 00         [24]  461 	cjne	a,#0x01,00103$
      002892                        462 00103$:
      002892 E4               [12]  463 	clr	a
      002893 33               [12]  464 	rlc	a
      002894 F0               [24]  465 	movx	@dptr,a
      002895 90 00 67         [24]  466 	mov	dptr,#_i2cavailable_sloc0_1_0
      002898 E0               [24]  467 	movx	a,@dptr
                                    468 ;	src/i2c.c:85: }
      002899 F5 82            [12]  469 	mov	dpl,a
      00289B 22               [24]  470 	ret
                                    471 ;------------------------------------------------------------
                                    472 ;Allocation info for local variables in function 'i2cStart'
                                    473 ;------------------------------------------------------------
                                    474 ;	src/i2c.c:92: void i2cStart(void)
                                    475 ;	-----------------------------------------
                                    476 ;	 function i2cStart
                                    477 ;	-----------------------------------------
      00289C                        478 _i2cStart:
                                    479 ;	src/i2c.c:95: back:
      00289C                        480 00101$:
                                    481 ;	src/i2c.c:96: if(SDA == 0)
      00289C 30 91 FD         [24]  482 	jnb	_P1_1,00101$
                                    483 ;	src/i2c.c:98: if(SCL == 0)
      00289F 30 90 FA         [24]  484 	jnb	_P1_0,00101$
                                    485 ;	src/i2c.c:101: SDA_HIGH;
                                    486 ;	assignBit
      0028A2 D2 91            [12]  487 	setb	_P1_1
                                    488 ;	src/i2c.c:102: SCL_HIGH;
                                    489 ;	assignBit
      0028A4 D2 90            [12]  490 	setb	_P1_0
                                    491 ;	src/i2c.c:103: i2cClock(ClockVar);
      0028A6 90 00 EA         [24]  492 	mov	dptr,#_ClockVar
      0028A9 E0               [24]  493 	movx	a,@dptr
      0028AA FE               [12]  494 	mov	r6,a
      0028AB 7F 00            [12]  495 	mov	r7,#0x00
      0028AD 8E 82            [24]  496 	mov	dpl, r6
      0028AF 8F 83            [24]  497 	mov	dph, r7
      0028B1 12 28 5C         [24]  498 	lcall	_i2cDelay
                                    499 ;	src/i2c.c:104: SDA_LOW;
                                    500 ;	assignBit
      0028B4 C2 91            [12]  501 	clr	_P1_1
                                    502 ;	src/i2c.c:105: SCL_LOW;
                                    503 ;	assignBit
      0028B6 C2 90            [12]  504 	clr	_P1_0
                                    505 ;	src/i2c.c:109: }
      0028B8 22               [24]  506 	ret
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'i2cStartonce'
                                    509 ;------------------------------------------------------------
                                    510 ;	src/i2c.c:116: void i2cStartonce(void)
                                    511 ;	-----------------------------------------
                                    512 ;	 function i2cStartonce
                                    513 ;	-----------------------------------------
      0028B9                        514 _i2cStartonce:
                                    515 ;	src/i2c.c:118: SDA_HIGH;
                                    516 ;	assignBit
      0028B9 D2 91            [12]  517 	setb	_P1_1
                                    518 ;	src/i2c.c:119: SCL_HIGH;
                                    519 ;	assignBit
      0028BB D2 90            [12]  520 	setb	_P1_0
                                    521 ;	src/i2c.c:120: i2cClock(ClockVar);
      0028BD 90 00 EA         [24]  522 	mov	dptr,#_ClockVar
      0028C0 E0               [24]  523 	movx	a,@dptr
      0028C1 FE               [12]  524 	mov	r6,a
      0028C2 7F 00            [12]  525 	mov	r7,#0x00
      0028C4 8E 82            [24]  526 	mov	dpl, r6
      0028C6 8F 83            [24]  527 	mov	dph, r7
      0028C8 12 28 5C         [24]  528 	lcall	_i2cDelay
                                    529 ;	src/i2c.c:121: SDA_LOW;
                                    530 ;	assignBit
      0028CB C2 91            [12]  531 	clr	_P1_1
                                    532 ;	src/i2c.c:122: SCL_LOW;
                                    533 ;	assignBit
      0028CD C2 90            [12]  534 	clr	_P1_0
                                    535 ;	src/i2c.c:123: }
      0028CF 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'i2cStop'
                                    539 ;------------------------------------------------------------
                                    540 ;	src/i2c.c:130: void i2cStop(void)
                                    541 ;	-----------------------------------------
                                    542 ;	 function i2cStop
                                    543 ;	-----------------------------------------
      0028D0                        544 _i2cStop:
                                    545 ;	src/i2c.c:133: SDA_LOW;
                                    546 ;	assignBit
      0028D0 C2 91            [12]  547 	clr	_P1_1
                                    548 ;	src/i2c.c:134: SCL_HIGH;
                                    549 ;	assignBit
      0028D2 D2 90            [12]  550 	setb	_P1_0
                                    551 ;	src/i2c.c:135: i2cClock(ClockVar);
      0028D4 90 00 EA         [24]  552 	mov	dptr,#_ClockVar
      0028D7 E0               [24]  553 	movx	a,@dptr
      0028D8 FE               [12]  554 	mov	r6,a
      0028D9 7F 00            [12]  555 	mov	r7,#0x00
      0028DB 8E 82            [24]  556 	mov	dpl, r6
      0028DD 8F 83            [24]  557 	mov	dph, r7
      0028DF 12 28 5C         [24]  558 	lcall	_i2cDelay
                                    559 ;	src/i2c.c:136: SDA_HIGH;
                                    560 ;	assignBit
      0028E2 D2 91            [12]  561 	setb	_P1_1
                                    562 ;	src/i2c.c:138: }
      0028E4 22               [24]  563 	ret
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
      0028E5                        574 _i2cWritebyte:
      0028E5 E5 82            [12]  575 	mov	a,dpl
      0028E7 90 00 68         [24]  576 	mov	dptr,#_i2cWritebyte_uByte_10000_29
      0028EA F0               [24]  577 	movx	@dptr,a
                                    578 ;	src/i2c.c:148: MaskByte = 0x80;
      0028EB 90 00 69         [24]  579 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      0028EE 74 80            [12]  580 	mov	a,#0x80
      0028F0 F0               [24]  581 	movx	@dptr,a
                                    582 ;	src/i2c.c:149: do
      0028F1 90 00 68         [24]  583 	mov	dptr,#_i2cWritebyte_uByte_10000_29
      0028F4 E0               [24]  584 	movx	a,@dptr
      0028F5 FF               [12]  585 	mov	r7,a
      0028F6                        586 00104$:
                                    587 ;	src/i2c.c:151: if(uByte & MaskByte)
      0028F6 90 00 69         [24]  588 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      0028F9 E0               [24]  589 	movx	a,@dptr
      0028FA 5F               [12]  590 	anl	a,r7
      0028FB 60 04            [24]  591 	jz	00102$
                                    592 ;	src/i2c.c:152: SDA_HIGH;
                                    593 ;	assignBit
      0028FD D2 91            [12]  594 	setb	_P1_1
      0028FF 80 02            [24]  595 	sjmp	00103$
      002901                        596 00102$:
                                    597 ;	src/i2c.c:154: SDA_LOW;
                                    598 ;	assignBit
      002901 C2 91            [12]  599 	clr	_P1_1
      002903                        600 00103$:
                                    601 ;	src/i2c.c:155: SCL_HIGH;
                                    602 ;	assignBit
      002903 D2 90            [12]  603 	setb	_P1_0
                                    604 ;	src/i2c.c:156: i2cClock(ClockVar);
      002905 90 00 EA         [24]  605 	mov	dptr,#_ClockVar
      002908 E0               [24]  606 	movx	a,@dptr
      002909 FD               [12]  607 	mov	r5,a
      00290A 7E 00            [12]  608 	mov	r6,#0x00
      00290C 8D 82            [24]  609 	mov	dpl, r5
      00290E 8E 83            [24]  610 	mov	dph, r6
      002910 C0 07            [24]  611 	push	ar7
      002912 12 28 5C         [24]  612 	lcall	_i2cDelay
                                    613 ;	src/i2c.c:157: SCL_LOW;
                                    614 ;	assignBit
      002915 C2 90            [12]  615 	clr	_P1_0
                                    616 ;	src/i2c.c:158: i2cClock(ClockVar);
      002917 90 00 EA         [24]  617 	mov	dptr,#_ClockVar
      00291A E0               [24]  618 	movx	a,@dptr
      00291B FD               [12]  619 	mov	r5,a
      00291C 7E 00            [12]  620 	mov	r6,#0x00
      00291E 8D 82            [24]  621 	mov	dpl, r5
      002920 8E 83            [24]  622 	mov	dph, r6
      002922 12 28 5C         [24]  623 	lcall	_i2cDelay
      002925 D0 07            [24]  624 	pop	ar7
                                    625 ;	src/i2c.c:159: MaskByte /= 2;
      002927 90 00 69         [24]  626 	mov	dptr,#_i2cWritebyte_MaskByte_10000_30
      00292A E0               [24]  627 	movx	a,@dptr
      00292B 75 F0 02         [24]  628 	mov	b,#0x02
      00292E 84               [48]  629 	div	ab
      00292F F0               [24]  630 	movx	@dptr,a
                                    631 ;	src/i2c.c:161: while(MaskByte>0);
      002930 E0               [24]  632 	movx	a,@dptr
      002931 70 C3            [24]  633 	jnz	00104$
                                    634 ;	src/i2c.c:163: SCL_HIGH;
                                    635 ;	assignBit
      002933 D2 90            [12]  636 	setb	_P1_0
                                    637 ;	src/i2c.c:164: i2cClock(ClockVar);
      002935 90 00 EA         [24]  638 	mov	dptr,#_ClockVar
      002938 E0               [24]  639 	movx	a,@dptr
      002939 FE               [12]  640 	mov	r6,a
      00293A 7F 00            [12]  641 	mov	r7,#0x00
      00293C 8E 82            [24]  642 	mov	dpl, r6
      00293E 8F 83            [24]  643 	mov	dph, r7
      002940 12 28 5C         [24]  644 	lcall	_i2cDelay
                                    645 ;	src/i2c.c:165: SlaveACK = SDA;
      002943 90 00 E8         [24]  646 	mov	dptr,#_SlaveACK
      002946 A2 91            [12]  647 	mov	c,_P1_1
      002948 E4               [12]  648 	clr	a
      002949 33               [12]  649 	rlc	a
      00294A F0               [24]  650 	movx	@dptr,a
                                    651 ;	src/i2c.c:166: SCL_LOW;
                                    652 ;	assignBit
      00294B C2 90            [12]  653 	clr	_P1_0
                                    654 ;	src/i2c.c:167: i2cClock(ClockVar);
      00294D 90 00 EA         [24]  655 	mov	dptr,#_ClockVar
      002950 E0               [24]  656 	movx	a,@dptr
      002951 FE               [12]  657 	mov	r6,a
      002952 7F 00            [12]  658 	mov	r7,#0x00
      002954 8E 82            [24]  659 	mov	dpl, r6
      002956 8F 83            [24]  660 	mov	dph, r7
                                    661 ;	src/i2c.c:168: }
      002958 02 28 5C         [24]  662 	ljmp	_i2cDelay
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
      00295B                        674 _i2cReadbyte:
      00295B E5 82            [12]  675 	mov	a,dpl
      00295D 90 00 6A         [24]  676 	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
      002960 F0               [24]  677 	movx	@dptr,a
                                    678 ;	src/i2c.c:179: uByte    = 0;
      002961 90 00 6B         [24]  679 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      002964 E4               [12]  680 	clr	a
      002965 F0               [24]  681 	movx	@dptr,a
                                    682 ;	src/i2c.c:180: MaskByte = 0x80;
      002966 90 00 6C         [24]  683 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      002969 74 80            [12]  684 	mov	a,#0x80
      00296B F0               [24]  685 	movx	@dptr,a
                                    686 ;	src/i2c.c:181: do
      00296C                        687 00103$:
                                    688 ;	src/i2c.c:184: SCL_HIGH;
                                    689 ;	assignBit
      00296C D2 90            [12]  690 	setb	_P1_0
                                    691 ;	src/i2c.c:186: if(SDA == 1)
      00296E 30 91 0B         [24]  692 	jnb	_P1_1,00102$
                                    693 ;	src/i2c.c:188: uByte |= MaskByte;
      002971 90 00 6C         [24]  694 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      002974 E0               [24]  695 	movx	a,@dptr
      002975 FF               [12]  696 	mov	r7,a
      002976 90 00 6B         [24]  697 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      002979 E0               [24]  698 	movx	a,@dptr
      00297A 4F               [12]  699 	orl	a,r7
      00297B F0               [24]  700 	movx	@dptr,a
      00297C                        701 00102$:
                                    702 ;	src/i2c.c:190: i2cClock(ClockVar);
      00297C 90 00 EA         [24]  703 	mov	dptr,#_ClockVar
      00297F E0               [24]  704 	movx	a,@dptr
      002980 FE               [12]  705 	mov	r6,a
      002981 7F 00            [12]  706 	mov	r7,#0x00
      002983 8E 82            [24]  707 	mov	dpl, r6
      002985 8F 83            [24]  708 	mov	dph, r7
      002987 12 28 5C         [24]  709 	lcall	_i2cDelay
                                    710 ;	src/i2c.c:191: SCL_LOW;
                                    711 ;	assignBit
      00298A C2 90            [12]  712 	clr	_P1_0
                                    713 ;	src/i2c.c:192: i2cClock(ClockVar);
      00298C 90 00 EA         [24]  714 	mov	dptr,#_ClockVar
      00298F E0               [24]  715 	movx	a,@dptr
      002990 FE               [12]  716 	mov	r6,a
      002991 7F 00            [12]  717 	mov	r7,#0x00
      002993 8E 82            [24]  718 	mov	dpl, r6
      002995 8F 83            [24]  719 	mov	dph, r7
      002997 12 28 5C         [24]  720 	lcall	_i2cDelay
                                    721 ;	src/i2c.c:193: MaskByte /= 2;
      00299A 90 00 6C         [24]  722 	mov	dptr,#_i2cReadbyte_MaskByte_10000_33
      00299D E0               [24]  723 	movx	a,@dptr
      00299E 75 F0 02         [24]  724 	mov	b,#0x02
      0029A1 84               [48]  725 	div	ab
      0029A2 F0               [24]  726 	movx	@dptr,a
                                    727 ;	src/i2c.c:195: while(MaskByte > 0);
      0029A3 E0               [24]  728 	movx	a,@dptr
      0029A4 70 C6            [24]  729 	jnz	00103$
                                    730 ;	src/i2c.c:196: SCL_HIGH;
                                    731 ;	assignBit
      0029A6 D2 90            [12]  732 	setb	_P1_0
                                    733 ;	src/i2c.c:197: i2cClock(ClockVar);
      0029A8 90 00 EA         [24]  734 	mov	dptr,#_ClockVar
      0029AB E0               [24]  735 	movx	a,@dptr
      0029AC FE               [12]  736 	mov	r6,a
      0029AD 7F 00            [12]  737 	mov	r7,#0x00
      0029AF 8E 82            [24]  738 	mov	dpl, r6
      0029B1 8F 83            [24]  739 	mov	dph, r7
      0029B3 12 28 5C         [24]  740 	lcall	_i2cDelay
                                    741 ;	src/i2c.c:198: if(MasterACK==1)
      0029B6 90 00 6A         [24]  742 	mov	dptr,#_i2cReadbyte_MasterACK_10000_32
      0029B9 E0               [24]  743 	movx	a,@dptr
      0029BA FF               [12]  744 	mov	r7,a
      0029BB BF 01 04         [24]  745 	cjne	r7,#0x01,00107$
                                    746 ;	src/i2c.c:199: SDA_HIGH;
                                    747 ;	assignBit
      0029BE D2 91            [12]  748 	setb	_P1_1
      0029C0 80 02            [24]  749 	sjmp	00108$
      0029C2                        750 00107$:
                                    751 ;	src/i2c.c:201: SDA_LOW;
                                    752 ;	assignBit
      0029C2 C2 91            [12]  753 	clr	_P1_1
      0029C4                        754 00108$:
                                    755 ;	src/i2c.c:202: i2cClock(ClockVar);
      0029C4 90 00 EA         [24]  756 	mov	dptr,#_ClockVar
      0029C7 E0               [24]  757 	movx	a,@dptr
      0029C8 FE               [12]  758 	mov	r6,a
      0029C9 7F 00            [12]  759 	mov	r7,#0x00
      0029CB 8E 82            [24]  760 	mov	dpl, r6
      0029CD 8F 83            [24]  761 	mov	dph, r7
      0029CF 12 28 5C         [24]  762 	lcall	_i2cDelay
                                    763 ;	src/i2c.c:204: SCL_LOW;
                                    764 ;	assignBit
      0029D2 C2 90            [12]  765 	clr	_P1_0
                                    766 ;	src/i2c.c:206: i2cClock(ClockVar);
      0029D4 90 00 EA         [24]  767 	mov	dptr,#_ClockVar
      0029D7 E0               [24]  768 	movx	a,@dptr
      0029D8 FE               [12]  769 	mov	r6,a
      0029D9 7F 00            [12]  770 	mov	r7,#0x00
      0029DB 8E 82            [24]  771 	mov	dpl, r6
      0029DD 8F 83            [24]  772 	mov	dph, r7
      0029DF 12 28 5C         [24]  773 	lcall	_i2cDelay
                                    774 ;	src/i2c.c:208: return uByte;
      0029E2 90 00 6B         [24]  775 	mov	dptr,#_i2cReadbyte_uByte_10000_33
      0029E5 E0               [24]  776 	movx	a,@dptr
                                    777 ;	src/i2c.c:209: }
      0029E6 F5 82            [12]  778 	mov	dpl,a
      0029E8 22               [24]  779 	ret
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
      0029E9                        790 _i2cWrite:
      0029E9 E5 82            [12]  791 	mov	a,dpl
      0029EB 90 00 6E         [24]  792 	mov	dptr,#_i2cWrite_Byte_10000_36
      0029EE F0               [24]  793 	movx	@dptr,a
                                    794 ;	src/i2c.c:218: do
      0029EF                        795 00103$:
                                    796 ;	src/i2c.c:220: i2cStartonce();
      0029EF 12 28 B9         [24]  797 	lcall	_i2cStartonce
                                    798 ;	src/i2c.c:221: i2cWritebyte(DevAddress);
      0029F2 90 00 E9         [24]  799 	mov	dptr,#_DevAddress
      0029F5 E0               [24]  800 	movx	a,@dptr
      0029F6 F5 82            [12]  801 	mov	dpl,a
      0029F8 12 28 E5         [24]  802 	lcall	_i2cWritebyte
                                    803 ;	src/i2c.c:223: if(SlaveACK == 1)
      0029FB 90 00 E8         [24]  804 	mov	dptr,#_SlaveACK
      0029FE E0               [24]  805 	movx	a,@dptr
      0029FF FF               [12]  806 	mov	r7,a
      002A00 BF 01 03         [24]  807 	cjne	r7,#0x01,00104$
                                    808 ;	src/i2c.c:224: i2cStop();
      002A03 12 28 D0         [24]  809 	lcall	_i2cStop
      002A06                        810 00104$:
                                    811 ;	src/i2c.c:226: while(SlaveACK==1);
      002A06 90 00 E8         [24]  812 	mov	dptr,#_SlaveACK
      002A09 E0               [24]  813 	movx	a,@dptr
      002A0A FF               [12]  814 	mov	r7,a
      002A0B BF 01 02         [24]  815 	cjne	r7,#0x01,00128$
      002A0E 80 DF            [24]  816 	sjmp	00103$
      002A10                        817 00128$:
                                    818 ;	src/i2c.c:227: i2cWritebyte(Address);
      002A10 90 00 6D         [24]  819 	mov	dptr,#_i2cWrite_PARM_2
      002A13 E0               [24]  820 	movx	a,@dptr
      002A14 F5 82            [12]  821 	mov	dpl,a
      002A16 12 28 E5         [24]  822 	lcall	_i2cWritebyte
                                    823 ;	src/i2c.c:228: i2cWritebyte(Byte);
      002A19 90 00 6E         [24]  824 	mov	dptr,#_i2cWrite_Byte_10000_36
      002A1C E0               [24]  825 	movx	a,@dptr
      002A1D F5 82            [12]  826 	mov	dpl,a
      002A1F 12 28 E5         [24]  827 	lcall	_i2cWritebyte
                                    828 ;	src/i2c.c:229: i2cStop();
                                    829 ;	src/i2c.c:230: }
      002A22 02 28 D0         [24]  830 	ljmp	_i2cStop
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
      002A25                        841 _i2cRead:
      002A25 E5 82            [12]  842 	mov	a,dpl
      002A27 90 00 6F         [24]  843 	mov	dptr,#_i2cRead_Address_10000_39
      002A2A F0               [24]  844 	movx	@dptr,a
                                    845 ;	src/i2c.c:240: do
      002A2B                        846 00103$:
                                    847 ;	src/i2c.c:242: i2cStartonce();
      002A2B 12 28 B9         [24]  848 	lcall	_i2cStartonce
                                    849 ;	src/i2c.c:243: i2cWritebyte(DevAddress);
      002A2E 90 00 E9         [24]  850 	mov	dptr,#_DevAddress
      002A31 E0               [24]  851 	movx	a,@dptr
      002A32 F5 82            [12]  852 	mov	dpl,a
      002A34 12 28 E5         [24]  853 	lcall	_i2cWritebyte
                                    854 ;	src/i2c.c:245: if(SlaveACK==1)
      002A37 90 00 E8         [24]  855 	mov	dptr,#_SlaveACK
      002A3A E0               [24]  856 	movx	a,@dptr
      002A3B FF               [12]  857 	mov	r7,a
      002A3C BF 01 03         [24]  858 	cjne	r7,#0x01,00104$
                                    859 ;	src/i2c.c:246: i2cStop();
      002A3F 12 28 D0         [24]  860 	lcall	_i2cStop
      002A42                        861 00104$:
                                    862 ;	src/i2c.c:248: while(SlaveACK==1);
      002A42 90 00 E8         [24]  863 	mov	dptr,#_SlaveACK
      002A45 E0               [24]  864 	movx	a,@dptr
      002A46 FF               [12]  865 	mov	r7,a
      002A47 BF 01 02         [24]  866 	cjne	r7,#0x01,00128$
      002A4A 80 DF            [24]  867 	sjmp	00103$
      002A4C                        868 00128$:
                                    869 ;	src/i2c.c:249: i2cWritebyte(Address);
      002A4C 90 00 6F         [24]  870 	mov	dptr,#_i2cRead_Address_10000_39
      002A4F E0               [24]  871 	movx	a,@dptr
      002A50 F5 82            [12]  872 	mov	dpl,a
      002A52 12 28 E5         [24]  873 	lcall	_i2cWritebyte
                                    874 ;	src/i2c.c:252: i2cStartonce();
      002A55 12 28 B9         [24]  875 	lcall	_i2cStartonce
                                    876 ;	src/i2c.c:253: i2cWritebyte(DevAddress+1);
      002A58 90 00 E9         [24]  877 	mov	dptr,#_DevAddress
      002A5B E0               [24]  878 	movx	a,@dptr
      002A5C FF               [12]  879 	mov	r7,a
      002A5D 0F               [12]  880 	inc	r7
      002A5E 8F 82            [24]  881 	mov	dpl, r7
      002A60 12 28 E5         [24]  882 	lcall	_i2cWritebyte
                                    883 ;	src/i2c.c:255: ReadByte = i2cReadbyte(1);
      002A63 75 82 01         [24]  884 	mov	dpl, #0x01
      002A66 12 29 5B         [24]  885 	lcall	_i2cReadbyte
      002A69 AF 82            [24]  886 	mov	r7, dpl
                                    887 ;	src/i2c.c:256: i2cStop();
      002A6B C0 07            [24]  888 	push	ar7
      002A6D 12 28 D0         [24]  889 	lcall	_i2cStop
      002A70 D0 07            [24]  890 	pop	ar7
                                    891 ;	src/i2c.c:257: return ReadByte;
      002A72 8F 82            [24]  892 	mov	dpl, r7
                                    893 ;	src/i2c.c:258: }
      002A74 22               [24]  894 	ret
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
      002A75                        906 _i2cBegin:
      002A75 AF 82            [24]  907 	mov	r7,dpl
      002A77 AE 83            [24]  908 	mov	r6,dph
      002A79 AD F0            [24]  909 	mov	r5,b
      002A7B FC               [12]  910 	mov	r4,a
      002A7C 90 00 74         [24]  911 	mov	dptr,#_i2cBegin_OscFreq_10000_42
      002A7F EF               [12]  912 	mov	a,r7
      002A80 F0               [24]  913 	movx	@dptr,a
      002A81 EE               [12]  914 	mov	a,r6
      002A82 A3               [24]  915 	inc	dptr
      002A83 F0               [24]  916 	movx	@dptr,a
      002A84 ED               [12]  917 	mov	a,r5
      002A85 A3               [24]  918 	inc	dptr
      002A86 F0               [24]  919 	movx	@dptr,a
      002A87 EC               [12]  920 	mov	a,r4
      002A88 A3               [24]  921 	inc	dptr
      002A89 F0               [24]  922 	movx	@dptr,a
                                    923 ;	src/i2c.c:267: unsigned long teMp = 12 / ((OscFreq / 1000)/1000);
      002A8A 90 00 74         [24]  924 	mov	dptr,#_i2cBegin_OscFreq_10000_42
      002A8D E0               [24]  925 	movx	a,@dptr
      002A8E FC               [12]  926 	mov	r4,a
      002A8F A3               [24]  927 	inc	dptr
      002A90 E0               [24]  928 	movx	a,@dptr
      002A91 FD               [12]  929 	mov	r5,a
      002A92 A3               [24]  930 	inc	dptr
      002A93 E0               [24]  931 	movx	a,@dptr
      002A94 FE               [12]  932 	mov	r6,a
      002A95 A3               [24]  933 	inc	dptr
      002A96 E0               [24]  934 	movx	a,@dptr
      002A97 FF               [12]  935 	mov	r7,a
      002A98 90 00 8A         [24]  936 	mov	dptr,#__divulong_PARM_2
      002A9B 74 E8            [12]  937 	mov	a,#0xe8
      002A9D F0               [24]  938 	movx	@dptr,a
      002A9E 74 03            [12]  939 	mov	a,#0x03
      002AA0 A3               [24]  940 	inc	dptr
      002AA1 F0               [24]  941 	movx	@dptr,a
      002AA2 E4               [12]  942 	clr	a
      002AA3 A3               [24]  943 	inc	dptr
      002AA4 F0               [24]  944 	movx	@dptr,a
      002AA5 A3               [24]  945 	inc	dptr
      002AA6 F0               [24]  946 	movx	@dptr,a
      002AA7 8C 82            [24]  947 	mov	dpl, r4
      002AA9 8D 83            [24]  948 	mov	dph, r5
      002AAB 8E F0            [24]  949 	mov	b, r6
      002AAD EF               [12]  950 	mov	a, r7
      002AAE 12 2C 75         [24]  951 	lcall	__divulong
      002AB1 AC 82            [24]  952 	mov	r4, dpl
      002AB3 AD 83            [24]  953 	mov	r5, dph
      002AB5 AE F0            [24]  954 	mov	r6, b
      002AB7 FF               [12]  955 	mov	r7, a
      002AB8 90 00 8A         [24]  956 	mov	dptr,#__divulong_PARM_2
      002ABB 74 E8            [12]  957 	mov	a,#0xe8
      002ABD F0               [24]  958 	movx	@dptr,a
      002ABE 74 03            [12]  959 	mov	a,#0x03
      002AC0 A3               [24]  960 	inc	dptr
      002AC1 F0               [24]  961 	movx	@dptr,a
      002AC2 E4               [12]  962 	clr	a
      002AC3 A3               [24]  963 	inc	dptr
      002AC4 F0               [24]  964 	movx	@dptr,a
      002AC5 A3               [24]  965 	inc	dptr
      002AC6 F0               [24]  966 	movx	@dptr,a
      002AC7 8C 82            [24]  967 	mov	dpl, r4
      002AC9 8D 83            [24]  968 	mov	dph, r5
      002ACB 8E F0            [24]  969 	mov	b, r6
      002ACD EF               [12]  970 	mov	a, r7
      002ACE 12 2C 75         [24]  971 	lcall	__divulong
      002AD1 AC 82            [24]  972 	mov	r4, dpl
      002AD3 AD 83            [24]  973 	mov	r5, dph
      002AD5 90 00 A4         [24]  974 	mov	dptr,#__divsint_PARM_2
      002AD8 EC               [12]  975 	mov	a,r4
      002AD9 F0               [24]  976 	movx	@dptr,a
      002ADA ED               [12]  977 	mov	a,r5
      002ADB A3               [24]  978 	inc	dptr
      002ADC F0               [24]  979 	movx	@dptr,a
                                    980 ;	src/i2c.c:268: teMp = teMp + CLOCK_ERROR_CORRECTION;
      002ADD 90 00 0C         [24]  981 	mov	dptr,#0x000c
      002AE0 12 2F 6F         [24]  982 	lcall	__divsint
      002AE3 AE 82            [24]  983 	mov	r6, dpl
      002AE5 AF 83            [24]  984 	mov	r7, dph
      002AE7 E4               [12]  985 	clr	a
      002AE8 FD               [12]  986 	mov	r5,a
      002AE9 FC               [12]  987 	mov	r4,a
      002AEA 74 03            [12]  988 	mov	a,#0x03
      002AEC 2E               [12]  989 	add	a, r6
      002AED FE               [12]  990 	mov	r6,a
      002AEE E4               [12]  991 	clr	a
      002AEF 3F               [12]  992 	addc	a, r7
      002AF0 FF               [12]  993 	mov	r7,a
      002AF1 E4               [12]  994 	clr	a
      002AF2 3D               [12]  995 	addc	a, r5
      002AF3 FD               [12]  996 	mov	r5,a
      002AF4 E4               [12]  997 	clr	a
      002AF5 3C               [12]  998 	addc	a, r4
      002AF6 FC               [12]  999 	mov	r4,a
                                   1000 ;	src/i2c.c:269: ClockVar = teMp / Speed;
      002AF7 90 00 70         [24] 1001 	mov	dptr,#_i2cBegin_PARM_2
      002AFA E0               [24] 1002 	movx	a,@dptr
      002AFB F8               [12] 1003 	mov	r0,a
      002AFC A3               [24] 1004 	inc	dptr
      002AFD E0               [24] 1005 	movx	a,@dptr
      002AFE F9               [12] 1006 	mov	r1,a
      002AFF A3               [24] 1007 	inc	dptr
      002B00 E0               [24] 1008 	movx	a,@dptr
      002B01 FA               [12] 1009 	mov	r2,a
      002B02 A3               [24] 1010 	inc	dptr
      002B03 E0               [24] 1011 	movx	a,@dptr
      002B04 FB               [12] 1012 	mov	r3,a
      002B05 90 00 8A         [24] 1013 	mov	dptr,#__divulong_PARM_2
      002B08 E8               [12] 1014 	mov	a,r0
      002B09 F0               [24] 1015 	movx	@dptr,a
      002B0A E9               [12] 1016 	mov	a,r1
      002B0B A3               [24] 1017 	inc	dptr
      002B0C F0               [24] 1018 	movx	@dptr,a
      002B0D EA               [12] 1019 	mov	a,r2
      002B0E A3               [24] 1020 	inc	dptr
      002B0F F0               [24] 1021 	movx	@dptr,a
      002B10 EB               [12] 1022 	mov	a,r3
      002B11 A3               [24] 1023 	inc	dptr
      002B12 F0               [24] 1024 	movx	@dptr,a
      002B13 8E 82            [24] 1025 	mov	dpl, r6
      002B15 8F 83            [24] 1026 	mov	dph, r7
      002B17 8D F0            [24] 1027 	mov	b, r5
      002B19 EC               [12] 1028 	mov	a, r4
      002B1A 12 2C 75         [24] 1029 	lcall	__divulong
      002B1D AC 82            [24] 1030 	mov	r4, dpl
      002B1F 90 00 EA         [24] 1031 	mov	dptr,#_ClockVar
      002B22 EC               [12] 1032 	mov	a,r4
      002B23 F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	src/i2c.c:271: }
      002B24 22               [24] 1035 	ret
                                   1036 ;------------------------------------------------------------
                                   1037 ;Allocation info for local variables in function 'i2csetAdd'
                                   1038 ;------------------------------------------------------------
                                   1039 ;SlaveAddress  Allocated with name '_i2csetAdd_SlaveAddress_10000_44'
                                   1040 ;------------------------------------------------------------
                                   1041 ;	src/i2c.c:278: void i2csetAdd(unsigned char SlaveAddress)
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function i2csetAdd
                                   1044 ;	-----------------------------------------
      002B25                       1045 _i2csetAdd:
      002B25 E5 82            [12] 1046 	mov	a,dpl
      002B27 90 00 78         [24] 1047 	mov	dptr,#_i2csetAdd_SlaveAddress_10000_44
      002B2A F0               [24] 1048 	movx	@dptr,a
                                   1049 ;	src/i2c.c:280: DevAddress = SlaveAddress;
      002B2B E0               [24] 1050 	movx	a,@dptr
      002B2C 90 00 E9         [24] 1051 	mov	dptr,#_DevAddress
      002B2F F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	src/i2c.c:281: }
      002B30 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'i2cDetect'
                                   1057 ;------------------------------------------------------------
                                   1058 ;_Address      Allocated with name '_i2cDetect__Address_10000_46'
                                   1059 ;------------------------------------------------------------
                                   1060 ;	src/i2c.c:295: unsigned char i2cDetect(unsigned char _Address)
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function i2cDetect
                                   1063 ;	-----------------------------------------
      002B31                       1064 _i2cDetect:
                                   1065 ;	src/i2c.c:298: }
      002B31 22               [24] 1066 	ret
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
      002B32                       1080 _i2cWriteBlock:
      002B32 E5 82            [12] 1081 	mov	a,dpl
      002B34 90 00 7D         [24] 1082 	mov	dptr,#_i2cWriteBlock_sAddress_10000_49
      002B37 F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	src/i2c.c:309: for(duMmy=sAddress;i<= eAddress;duMmy++)
      002B38 E0               [24] 1085 	movx	a,@dptr
      002B39 FF               [12] 1086 	mov	r7,a
      002B3A 90 00 7A         [24] 1087 	mov	dptr,#_i2cWriteBlock_PARM_3
      002B3D E0               [24] 1088 	movx	a,@dptr
      002B3E FC               [12] 1089 	mov	r4,a
      002B3F A3               [24] 1090 	inc	dptr
      002B40 E0               [24] 1091 	movx	a,@dptr
      002B41 FD               [12] 1092 	mov	r5,a
      002B42 A3               [24] 1093 	inc	dptr
      002B43 E0               [24] 1094 	movx	a,@dptr
      002B44 FE               [12] 1095 	mov	r6,a
      002B45 90 00 79         [24] 1096 	mov	dptr,#_i2cWriteBlock_PARM_2
      002B48 E0               [24] 1097 	movx	a,@dptr
      002B49 FB               [12] 1098 	mov	r3,a
      002B4A 7A 00            [12] 1099 	mov	r2,#0x00
      002B4C                       1100 00103$:
      002B4C C3               [12] 1101 	clr	c
      002B4D EB               [12] 1102 	mov	a,r3
      002B4E 9A               [12] 1103 	subb	a,r2
      002B4F 40 3C            [24] 1104 	jc	00105$
                                   1105 ;	src/i2c.c:311: i2cWrite(dPtr[i],duMmy);
      002B51 C0 03            [24] 1106 	push	ar3
      002B53 EA               [12] 1107 	mov	a,r2
      002B54 2C               [12] 1108 	add	a, r4
      002B55 F8               [12] 1109 	mov	r0,a
      002B56 E4               [12] 1110 	clr	a
      002B57 3D               [12] 1111 	addc	a, r5
      002B58 F9               [12] 1112 	mov	r1,a
      002B59 8E 03            [24] 1113 	mov	ar3,r6
      002B5B 88 82            [24] 1114 	mov	dpl,r0
      002B5D 89 83            [24] 1115 	mov	dph,r1
      002B5F 8B F0            [24] 1116 	mov	b,r3
      002B61 12 3A 43         [24] 1117 	lcall	__gptrget
      002B64 F8               [12] 1118 	mov	r0,a
      002B65 90 00 6D         [24] 1119 	mov	dptr,#_i2cWrite_PARM_2
      002B68 EF               [12] 1120 	mov	a,r7
      002B69 F0               [24] 1121 	movx	@dptr,a
      002B6A 88 82            [24] 1122 	mov	dpl, r0
      002B6C C0 07            [24] 1123 	push	ar7
      002B6E C0 06            [24] 1124 	push	ar6
      002B70 C0 05            [24] 1125 	push	ar5
      002B72 C0 04            [24] 1126 	push	ar4
      002B74 C0 03            [24] 1127 	push	ar3
      002B76 C0 02            [24] 1128 	push	ar2
      002B78 12 29 E9         [24] 1129 	lcall	_i2cWrite
      002B7B D0 02            [24] 1130 	pop	ar2
      002B7D D0 03            [24] 1131 	pop	ar3
      002B7F D0 04            [24] 1132 	pop	ar4
      002B81 D0 05            [24] 1133 	pop	ar5
      002B83 D0 06            [24] 1134 	pop	ar6
      002B85 D0 07            [24] 1135 	pop	ar7
                                   1136 ;	src/i2c.c:312: i++;
      002B87 0A               [12] 1137 	inc	r2
                                   1138 ;	src/i2c.c:309: for(duMmy=sAddress;i<= eAddress;duMmy++)
      002B88 0F               [12] 1139 	inc	r7
      002B89 D0 03            [24] 1140 	pop	ar3
      002B8B 80 BF            [24] 1141 	sjmp	00103$
      002B8D                       1142 00105$:
                                   1143 ;	src/i2c.c:314: }
      002B8D 22               [24] 1144 	ret
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
      002B8E                       1159 _i2cReadBlock:
      002B8E E5 82            [12] 1160 	mov	a,dpl
      002B90 90 00 82         [24] 1161 	mov	dptr,#_i2cReadBlock_sAddress_10000_53
      002B93 F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	src/i2c.c:325: for(duMmy=sAddress;i<= eAddress;duMmy++)
      002B94 E0               [24] 1164 	movx	a,@dptr
      002B95 FF               [12] 1165 	mov	r7,a
      002B96 90 00 7F         [24] 1166 	mov	dptr,#_i2cReadBlock_PARM_3
      002B99 E0               [24] 1167 	movx	a,@dptr
      002B9A FC               [12] 1168 	mov	r4,a
      002B9B A3               [24] 1169 	inc	dptr
      002B9C E0               [24] 1170 	movx	a,@dptr
      002B9D FD               [12] 1171 	mov	r5,a
      002B9E A3               [24] 1172 	inc	dptr
      002B9F E0               [24] 1173 	movx	a,@dptr
      002BA0 FE               [12] 1174 	mov	r6,a
      002BA1 90 00 7E         [24] 1175 	mov	dptr,#_i2cReadBlock_PARM_2
      002BA4 E0               [24] 1176 	movx	a,@dptr
      002BA5 FB               [12] 1177 	mov	r3,a
      002BA6 7A 00            [12] 1178 	mov	r2,#0x00
      002BA8                       1179 00103$:
      002BA8 C3               [12] 1180 	clr	c
      002BA9 EB               [12] 1181 	mov	a,r3
      002BAA 9A               [12] 1182 	subb	a,r2
      002BAB 40 3A            [24] 1183 	jc	00105$
                                   1184 ;	src/i2c.c:327: dPtr[i] = i2cRead(duMmy);
      002BAD C0 03            [24] 1185 	push	ar3
      002BAF EA               [12] 1186 	mov	a,r2
      002BB0 2C               [12] 1187 	add	a, r4
      002BB1 F5 08            [12] 1188 	mov	_i2cReadBlock_sloc0_1_0,a
      002BB3 E4               [12] 1189 	clr	a
      002BB4 3D               [12] 1190 	addc	a, r5
      002BB5 F5 09            [12] 1191 	mov	(_i2cReadBlock_sloc0_1_0 + 1),a
      002BB7 8E 0A            [24] 1192 	mov	(_i2cReadBlock_sloc0_1_0 + 2),r6
      002BB9 8F 82            [24] 1193 	mov	dpl, r7
      002BBB C0 07            [24] 1194 	push	ar7
      002BBD C0 06            [24] 1195 	push	ar6
      002BBF C0 05            [24] 1196 	push	ar5
      002BC1 C0 04            [24] 1197 	push	ar4
      002BC3 C0 02            [24] 1198 	push	ar2
      002BC5 12 2A 25         [24] 1199 	lcall	_i2cRead
      002BC8 AB 82            [24] 1200 	mov	r3, dpl
      002BCA D0 02            [24] 1201 	pop	ar2
      002BCC D0 04            [24] 1202 	pop	ar4
      002BCE D0 05            [24] 1203 	pop	ar5
      002BD0 D0 06            [24] 1204 	pop	ar6
      002BD2 D0 07            [24] 1205 	pop	ar7
      002BD4 85 08 82         [24] 1206 	mov	dpl,_i2cReadBlock_sloc0_1_0
      002BD7 85 09 83         [24] 1207 	mov	dph,(_i2cReadBlock_sloc0_1_0 + 1)
      002BDA 85 0A F0         [24] 1208 	mov	b,(_i2cReadBlock_sloc0_1_0 + 2)
      002BDD EB               [12] 1209 	mov	a,r3
      002BDE 12 2E 89         [24] 1210 	lcall	__gptrput
                                   1211 ;	src/i2c.c:328: i++;
      002BE1 0A               [12] 1212 	inc	r2
                                   1213 ;	src/i2c.c:325: for(duMmy=sAddress;i<= eAddress;duMmy++)
      002BE2 0F               [12] 1214 	inc	r7
      002BE3 D0 03            [24] 1215 	pop	ar3
      002BE5 80 C1            [24] 1216 	sjmp	00103$
      002BE7                       1217 00105$:
                                   1218 ;	src/i2c.c:330: }
      002BE7 22               [24] 1219 	ret
                                   1220 	.area CSEG    (CODE)
                                   1221 	.area CONST   (CODE)
                                   1222 	.area XINIT   (CODE)
      003B71                       1223 __xinit__SlaveACK:
      003B71 00                    1224 	.db #0x00	; 0
      003B72                       1225 __xinit__DevAddress:
      003B72 00                    1226 	.db #0x00	; 0
      003B73                       1227 __xinit__ClockVar:
      003B73 00                    1228 	.db #0x00	; 0
                                   1229 	.area CABS    (ABS,CODE)
