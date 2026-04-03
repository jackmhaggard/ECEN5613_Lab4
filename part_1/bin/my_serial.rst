                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module my_serial
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _EECON
                                    136 	.globl _KBF
                                    137 	.globl _KBE
                                    138 	.globl _KBLS
                                    139 	.globl _BRL
                                    140 	.globl _BDRCON
                                    141 	.globl _T2MOD
                                    142 	.globl _SPDAT
                                    143 	.globl _SPSTA
                                    144 	.globl _SPCON
                                    145 	.globl _SADEN
                                    146 	.globl _SADDR
                                    147 	.globl _WDTPRG
                                    148 	.globl _WDTRST
                                    149 	.globl _P5
                                    150 	.globl _P4
                                    151 	.globl _IPH1
                                    152 	.globl _IPL1
                                    153 	.globl _IPH0
                                    154 	.globl _IPL0
                                    155 	.globl _IEN1
                                    156 	.globl _IEN0
                                    157 	.globl _CMOD
                                    158 	.globl _CL
                                    159 	.globl _CH
                                    160 	.globl _CCON
                                    161 	.globl _CCAPM4
                                    162 	.globl _CCAPM3
                                    163 	.globl _CCAPM2
                                    164 	.globl _CCAPM1
                                    165 	.globl _CCAPM0
                                    166 	.globl _CCAP4L
                                    167 	.globl _CCAP3L
                                    168 	.globl _CCAP2L
                                    169 	.globl _CCAP1L
                                    170 	.globl _CCAP0L
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CKCON1
                                    177 	.globl _CKCON0
                                    178 	.globl _CKRL
                                    179 	.globl _AUXR1
                                    180 	.globl _AUXR
                                    181 	.globl _TH2
                                    182 	.globl _TL2
                                    183 	.globl _RCAP2H
                                    184 	.globl _RCAP2L
                                    185 	.globl _T2CON
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _PSW
                                    189 	.globl _IP
                                    190 	.globl _P3
                                    191 	.globl _IE
                                    192 	.globl _P2
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _P1
                                    196 	.globl _TH1
                                    197 	.globl _TH0
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TMOD
                                    201 	.globl _TCON
                                    202 	.globl _PCON
                                    203 	.globl _DPH
                                    204 	.globl _DPL
                                    205 	.globl _SP
                                    206 	.globl _P0
                                    207 	.globl _putchar
                                    208 	.globl _getchar
                                    209 ;--------------------------------------------------------
                                    210 ; special function registers
                                    211 ;--------------------------------------------------------
                                    212 	.area RSEG    (ABS,DATA)
      000000                        213 	.org 0x0000
                           000080   214 _P0	=	0x0080
                           000081   215 _SP	=	0x0081
                           000082   216 _DPL	=	0x0082
                           000083   217 _DPH	=	0x0083
                           000087   218 _PCON	=	0x0087
                           000088   219 _TCON	=	0x0088
                           000089   220 _TMOD	=	0x0089
                           00008A   221 _TL0	=	0x008a
                           00008B   222 _TL1	=	0x008b
                           00008C   223 _TH0	=	0x008c
                           00008D   224 _TH1	=	0x008d
                           000090   225 _P1	=	0x0090
                           000098   226 _SCON	=	0x0098
                           000099   227 _SBUF	=	0x0099
                           0000A0   228 _P2	=	0x00a0
                           0000A8   229 _IE	=	0x00a8
                           0000B0   230 _P3	=	0x00b0
                           0000B8   231 _IP	=	0x00b8
                           0000D0   232 _PSW	=	0x00d0
                           0000E0   233 _ACC	=	0x00e0
                           0000F0   234 _B	=	0x00f0
                           0000C8   235 _T2CON	=	0x00c8
                           0000CA   236 _RCAP2L	=	0x00ca
                           0000CB   237 _RCAP2H	=	0x00cb
                           0000CC   238 _TL2	=	0x00cc
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 _AUXR	=	0x008e
                           0000A2   241 _AUXR1	=	0x00a2
                           000097   242 _CKRL	=	0x0097
                           00008F   243 _CKCON0	=	0x008f
                           0000AF   244 _CKCON1	=	0x00af
                           0000FA   245 _CCAP0H	=	0x00fa
                           0000FB   246 _CCAP1H	=	0x00fb
                           0000FC   247 _CCAP2H	=	0x00fc
                           0000FD   248 _CCAP3H	=	0x00fd
                           0000FE   249 _CCAP4H	=	0x00fe
                           0000EA   250 _CCAP0L	=	0x00ea
                           0000EB   251 _CCAP1L	=	0x00eb
                           0000EC   252 _CCAP2L	=	0x00ec
                           0000ED   253 _CCAP3L	=	0x00ed
                           0000EE   254 _CCAP4L	=	0x00ee
                           0000DA   255 _CCAPM0	=	0x00da
                           0000DB   256 _CCAPM1	=	0x00db
                           0000DC   257 _CCAPM2	=	0x00dc
                           0000DD   258 _CCAPM3	=	0x00dd
                           0000DE   259 _CCAPM4	=	0x00de
                           0000D8   260 _CCON	=	0x00d8
                           0000F9   261 _CH	=	0x00f9
                           0000E9   262 _CL	=	0x00e9
                           0000D9   263 _CMOD	=	0x00d9
                           0000A8   264 _IEN0	=	0x00a8
                           0000B1   265 _IEN1	=	0x00b1
                           0000B8   266 _IPL0	=	0x00b8
                           0000B7   267 _IPH0	=	0x00b7
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000C0   270 _P4	=	0x00c0
                           0000E8   271 _P5	=	0x00e8
                           0000A6   272 _WDTRST	=	0x00a6
                           0000A7   273 _WDTPRG	=	0x00a7
                           0000A9   274 _SADDR	=	0x00a9
                           0000B9   275 _SADEN	=	0x00b9
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C9   279 _T2MOD	=	0x00c9
                           00009B   280 _BDRCON	=	0x009b
                           00009A   281 _BRL	=	0x009a
                           00009C   282 _KBLS	=	0x009c
                           00009D   283 _KBE	=	0x009d
                           00009E   284 _KBF	=	0x009e
                           0000D2   285 _EECON	=	0x00d2
                                    286 ;--------------------------------------------------------
                                    287 ; special function bits
                                    288 ;--------------------------------------------------------
                                    289 	.area RSEG    (ABS,DATA)
      000000                        290 	.org 0x0000
                           000080   291 _P0_0	=	0x0080
                           000081   292 _P0_1	=	0x0081
                           000082   293 _P0_2	=	0x0082
                           000083   294 _P0_3	=	0x0083
                           000084   295 _P0_4	=	0x0084
                           000085   296 _P0_5	=	0x0085
                           000086   297 _P0_6	=	0x0086
                           000087   298 _P0_7	=	0x0087
                           000088   299 _IT0	=	0x0088
                           000089   300 _IE0	=	0x0089
                           00008A   301 _IT1	=	0x008a
                           00008B   302 _IE1	=	0x008b
                           00008C   303 _TR0	=	0x008c
                           00008D   304 _TF0	=	0x008d
                           00008E   305 _TR1	=	0x008e
                           00008F   306 _TF1	=	0x008f
                           000090   307 _P1_0	=	0x0090
                           000091   308 _P1_1	=	0x0091
                           000092   309 _P1_2	=	0x0092
                           000093   310 _P1_3	=	0x0093
                           000094   311 _P1_4	=	0x0094
                           000095   312 _P1_5	=	0x0095
                           000096   313 _P1_6	=	0x0096
                           000097   314 _P1_7	=	0x0097
                           000098   315 _RI	=	0x0098
                           000099   316 _TI	=	0x0099
                           00009A   317 _RB8	=	0x009a
                           00009B   318 _TB8	=	0x009b
                           00009C   319 _REN	=	0x009c
                           00009D   320 _SM2	=	0x009d
                           00009E   321 _SM1	=	0x009e
                           00009F   322 _SM0	=	0x009f
                           0000A0   323 _P2_0	=	0x00a0
                           0000A1   324 _P2_1	=	0x00a1
                           0000A2   325 _P2_2	=	0x00a2
                           0000A3   326 _P2_3	=	0x00a3
                           0000A4   327 _P2_4	=	0x00a4
                           0000A5   328 _P2_5	=	0x00a5
                           0000A6   329 _P2_6	=	0x00a6
                           0000A7   330 _P2_7	=	0x00a7
                           0000A8   331 _EX0	=	0x00a8
                           0000A9   332 _ET0	=	0x00a9
                           0000AA   333 _EX1	=	0x00aa
                           0000AB   334 _ET1	=	0x00ab
                           0000AC   335 _ES	=	0x00ac
                           0000AF   336 _EA	=	0x00af
                           0000B0   337 _P3_0	=	0x00b0
                           0000B1   338 _P3_1	=	0x00b1
                           0000B2   339 _P3_2	=	0x00b2
                           0000B3   340 _P3_3	=	0x00b3
                           0000B4   341 _P3_4	=	0x00b4
                           0000B5   342 _P3_5	=	0x00b5
                           0000B6   343 _P3_6	=	0x00b6
                           0000B7   344 _P3_7	=	0x00b7
                           0000B0   345 _RXD	=	0x00b0
                           0000B1   346 _TXD	=	0x00b1
                           0000B2   347 _INT0	=	0x00b2
                           0000B3   348 _INT1	=	0x00b3
                           0000B4   349 _T0	=	0x00b4
                           0000B5   350 _T1	=	0x00b5
                           0000B6   351 _WR	=	0x00b6
                           0000B7   352 _RD	=	0x00b7
                           0000B8   353 _PX0	=	0x00b8
                           0000B9   354 _PT0	=	0x00b9
                           0000BA   355 _PX1	=	0x00ba
                           0000BB   356 _PT1	=	0x00bb
                           0000BC   357 _PS	=	0x00bc
                           0000D0   358 _P	=	0x00d0
                           0000D1   359 _F1	=	0x00d1
                           0000D2   360 _OV	=	0x00d2
                           0000D3   361 _RS0	=	0x00d3
                           0000D4   362 _RS1	=	0x00d4
                           0000D5   363 _F0	=	0x00d5
                           0000D6   364 _AC	=	0x00d6
                           0000D7   365 _CY	=	0x00d7
                           0000AD   366 _ET2	=	0x00ad
                           0000BD   367 _PT2	=	0x00bd
                           0000C8   368 _T2CON_0	=	0x00c8
                           0000C9   369 _T2CON_1	=	0x00c9
                           0000CA   370 _T2CON_2	=	0x00ca
                           0000CB   371 _T2CON_3	=	0x00cb
                           0000CC   372 _T2CON_4	=	0x00cc
                           0000CD   373 _T2CON_5	=	0x00cd
                           0000CE   374 _T2CON_6	=	0x00ce
                           0000CF   375 _T2CON_7	=	0x00cf
                           0000C8   376 _CP_RL2	=	0x00c8
                           0000C9   377 _C_T2	=	0x00c9
                           0000CA   378 _TR2	=	0x00ca
                           0000CB   379 _EXEN2	=	0x00cb
                           0000CC   380 _TCLK	=	0x00cc
                           0000CD   381 _RCLK	=	0x00cd
                           0000CE   382 _EXF2	=	0x00ce
                           0000CF   383 _TF2	=	0x00cf
                           0000DF   384 _CF	=	0x00df
                           0000DE   385 _CR	=	0x00de
                           0000DC   386 _CCF4	=	0x00dc
                           0000DB   387 _CCF3	=	0x00db
                           0000DA   388 _CCF2	=	0x00da
                           0000D9   389 _CCF1	=	0x00d9
                           0000D8   390 _CCF0	=	0x00d8
                           0000AE   391 _EC	=	0x00ae
                           0000BE   392 _PPCL	=	0x00be
                           0000BD   393 _PT2L	=	0x00bd
                           0000BC   394 _PSL	=	0x00bc
                           0000BB   395 _PT1L	=	0x00bb
                           0000BA   396 _PX1L	=	0x00ba
                           0000B9   397 _PT0L	=	0x00b9
                           0000B8   398 _PX0L	=	0x00b8
                           0000C0   399 _P4_0	=	0x00c0
                           0000C1   400 _P4_1	=	0x00c1
                           0000C2   401 _P4_2	=	0x00c2
                           0000C3   402 _P4_3	=	0x00c3
                           0000C4   403 _P4_4	=	0x00c4
                           0000C5   404 _P4_5	=	0x00c5
                           0000C6   405 _P4_6	=	0x00c6
                           0000C7   406 _P4_7	=	0x00c7
                           0000E8   407 _P5_0	=	0x00e8
                           0000E9   408 _P5_1	=	0x00e9
                           0000EA   409 _P5_2	=	0x00ea
                           0000EB   410 _P5_3	=	0x00eb
                           0000EC   411 _P5_4	=	0x00ec
                           0000ED   412 _P5_5	=	0x00ed
                           0000EE   413 _P5_6	=	0x00ee
                           0000EF   414 _P5_7	=	0x00ef
                                    415 ;--------------------------------------------------------
                                    416 ; overlayable register banks
                                    417 ;--------------------------------------------------------
                                    418 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        419 	.ds 8
                                    420 ;--------------------------------------------------------
                                    421 ; internal ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area DSEG    (DATA)
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable items in internal ram
                                    426 ;--------------------------------------------------------
                                    427 ;--------------------------------------------------------
                                    428 ; indirectly addressable internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area ISEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; absolute internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area IABS    (ABS,DATA)
                                    435 	.area IABS    (ABS,DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; bit data
                                    438 ;--------------------------------------------------------
                                    439 	.area BSEG    (BIT)
                                    440 ;--------------------------------------------------------
                                    441 ; paged external ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area PSEG    (PAG,XDATA)
                                    444 ;--------------------------------------------------------
                                    445 ; uninitialized external ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area XSEG    (XDATA)
      000001                        448 _putchar_c_10000_3:
      000001                        449 	.ds 2
                                    450 ;--------------------------------------------------------
                                    451 ; absolute external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area XABS    (ABS,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; initialized external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XISEG   (XDATA)
                                    458 	.area HOME    (CODE)
                                    459 	.area GSINIT0 (CODE)
                                    460 	.area GSINIT1 (CODE)
                                    461 	.area GSINIT2 (CODE)
                                    462 	.area GSINIT3 (CODE)
                                    463 	.area GSINIT4 (CODE)
                                    464 	.area GSINIT5 (CODE)
                                    465 	.area GSINIT  (CODE)
                                    466 	.area GSFINAL (CODE)
                                    467 	.area CSEG    (CODE)
                                    468 ;--------------------------------------------------------
                                    469 ; global & static initialisations
                                    470 ;--------------------------------------------------------
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area GSINIT  (CODE)
                                    475 ;--------------------------------------------------------
                                    476 ; Home
                                    477 ;--------------------------------------------------------
                                    478 	.area HOME    (CODE)
                                    479 	.area HOME    (CODE)
                                    480 ;--------------------------------------------------------
                                    481 ; code
                                    482 ;--------------------------------------------------------
                                    483 	.area CSEG    (CODE)
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'putchar'
                                    486 ;------------------------------------------------------------
                                    487 ;c             Allocated with name '_putchar_c_10000_3'
                                    488 ;------------------------------------------------------------
                                    489 ;	src/my_serial.c:12: int putchar(int c)
                                    490 ;	-----------------------------------------
                                    491 ;	 function putchar
                                    492 ;	-----------------------------------------
      0021B3                        493 _putchar:
                           000007   494 	ar7 = 0x07
                           000006   495 	ar6 = 0x06
                           000005   496 	ar5 = 0x05
                           000004   497 	ar4 = 0x04
                           000003   498 	ar3 = 0x03
                           000002   499 	ar2 = 0x02
                           000001   500 	ar1 = 0x01
                           000000   501 	ar0 = 0x00
      0021B3 AF 83            [24]  502 	mov	r7,dph
      0021B5 E5 82            [12]  503 	mov	a,dpl
      0021B7 90 00 01         [24]  504 	mov	dptr,#_putchar_c_10000_3
      0021BA F0               [24]  505 	movx	@dptr,a
      0021BB EF               [12]  506 	mov	a,r7
      0021BC A3               [24]  507 	inc	dptr
      0021BD F0               [24]  508 	movx	@dptr,a
                                    509 ;	src/my_serial.c:14: while (!TI)
      0021BE                        510 00101$:
                                    511 ;	src/my_serial.c:16: TI = 0;   // clear TI flag
                                    512 ;	assignBit
      0021BE 10 99 02         [24]  513 	jbc	_TI,00118$
      0021C1 80 FB            [24]  514 	sjmp	00101$
      0021C3                        515 00118$:
                                    516 ;	src/my_serial.c:17: SBUF = c; // load serial port with transmit value
      0021C3 90 00 01         [24]  517 	mov	dptr,#_putchar_c_10000_3
      0021C6 E0               [24]  518 	movx	a,@dptr
      0021C7 FE               [12]  519 	mov	r6,a
      0021C8 A3               [24]  520 	inc	dptr
      0021C9 E0               [24]  521 	movx	a,@dptr
      0021CA FF               [12]  522 	mov	r7,a
      0021CB 8E 99            [24]  523 	mov	_SBUF,r6
                                    524 ;	src/my_serial.c:18: return c;
      0021CD 8E 82            [24]  525 	mov	dpl, r6
      0021CF 8F 83            [24]  526 	mov	dph, r7
                                    527 ;	src/my_serial.c:19: }
      0021D1 22               [24]  528 	ret
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'getchar'
                                    531 ;------------------------------------------------------------
                                    532 ;	src/my_serial.c:21: int getchar(void)
                                    533 ;	-----------------------------------------
                                    534 ;	 function getchar
                                    535 ;	-----------------------------------------
      0021D2                        536 _getchar:
                                    537 ;	src/my_serial.c:24: while (!RI)
      0021D2                        538 00101$:
                                    539 ;	src/my_serial.c:26: RI = 0;      // clear RI flag
                                    540 ;	assignBit
      0021D2 10 98 02         [24]  541 	jbc	_RI,00118$
      0021D5 80 FB            [24]  542 	sjmp	00101$
      0021D7                        543 00118$:
                                    544 ;	src/my_serial.c:27: return SBUF; // return character from SBUF
      0021D7 AE 99            [24]  545 	mov	r6,_SBUF
      0021D9 7F 00            [12]  546 	mov	r7,#0x00
      0021DB 8E 82            [24]  547 	mov	dpl, r6
      0021DD 8F 83            [24]  548 	mov	dph, r7
                                    549 ;	src/my_serial.c:28: }
      0021DF 22               [24]  550 	ret
                                    551 	.area CSEG    (CODE)
                                    552 	.area CONST   (CODE)
                                    553 	.area XINIT   (CODE)
                                    554 	.area CABS    (ABS,CODE)
