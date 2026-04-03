                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _atoi
                                     13 	.globl _putchar
                                     14 	.globl _getchar
                                     15 	.globl _printf
                                     16 	.globl _i2csetAdd
                                     17 	.globl _i2cRead
                                     18 	.globl _i2cWrite
                                     19 	.globl _i2cStop
                                     20 	.globl _i2cBegin
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _B
                                    146 	.globl _ACC
                                    147 	.globl _PSW
                                    148 	.globl _IP
                                    149 	.globl _P3
                                    150 	.globl _IE
                                    151 	.globl _P2
                                    152 	.globl _SBUF
                                    153 	.globl _SCON
                                    154 	.globl _P1
                                    155 	.globl _TH1
                                    156 	.globl _TH0
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TMOD
                                    160 	.globl _TCON
                                    161 	.globl _PCON
                                    162 	.globl _DPH
                                    163 	.globl _DPL
                                    164 	.globl _SP
                                    165 	.globl _P0
                                    166 	.globl _EECON
                                    167 	.globl _KBF
                                    168 	.globl _KBE
                                    169 	.globl _KBLS
                                    170 	.globl _BRL
                                    171 	.globl _BDRCON
                                    172 	.globl _T2MOD
                                    173 	.globl _SPDAT
                                    174 	.globl _SPSTA
                                    175 	.globl _SPCON
                                    176 	.globl _SADEN
                                    177 	.globl _SADDR
                                    178 	.globl _WDTPRG
                                    179 	.globl _WDTRST
                                    180 	.globl _P5
                                    181 	.globl _P4
                                    182 	.globl _IPH1
                                    183 	.globl _IPL1
                                    184 	.globl _IPH0
                                    185 	.globl _IPL0
                                    186 	.globl _IEN1
                                    187 	.globl _IEN0
                                    188 	.globl _CMOD
                                    189 	.globl _CL
                                    190 	.globl _CH
                                    191 	.globl _CCON
                                    192 	.globl _CCAPM4
                                    193 	.globl _CCAPM3
                                    194 	.globl _CCAPM2
                                    195 	.globl _CCAPM1
                                    196 	.globl _CCAPM0
                                    197 	.globl _CCAP4L
                                    198 	.globl _CCAP3L
                                    199 	.globl _CCAP2L
                                    200 	.globl _CCAP1L
                                    201 	.globl _CCAP0L
                                    202 	.globl _CCAP4H
                                    203 	.globl _CCAP3H
                                    204 	.globl _CCAP2H
                                    205 	.globl _CCAP1H
                                    206 	.globl _CCAP0H
                                    207 	.globl _CKCON1
                                    208 	.globl _CKCON0
                                    209 	.globl _CKRL
                                    210 	.globl _AUXR1
                                    211 	.globl _AUXR
                                    212 	.globl _TH2
                                    213 	.globl _TL2
                                    214 	.globl _RCAP2H
                                    215 	.globl _RCAP2L
                                    216 	.globl _T2CON
                                    217 	.globl _Input
                                    218 	.globl _Program
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           0000C8   224 _T2CON	=	0x00c8
                           0000CA   225 _RCAP2L	=	0x00ca
                           0000CB   226 _RCAP2H	=	0x00cb
                           0000CC   227 _TL2	=	0x00cc
                           0000CD   228 _TH2	=	0x00cd
                           00008E   229 _AUXR	=	0x008e
                           0000A2   230 _AUXR1	=	0x00a2
                           000097   231 _CKRL	=	0x0097
                           00008F   232 _CKCON0	=	0x008f
                           0000AF   233 _CKCON1	=	0x00af
                           0000FA   234 _CCAP0H	=	0x00fa
                           0000FB   235 _CCAP1H	=	0x00fb
                           0000FC   236 _CCAP2H	=	0x00fc
                           0000FD   237 _CCAP3H	=	0x00fd
                           0000FE   238 _CCAP4H	=	0x00fe
                           0000EA   239 _CCAP0L	=	0x00ea
                           0000EB   240 _CCAP1L	=	0x00eb
                           0000EC   241 _CCAP2L	=	0x00ec
                           0000ED   242 _CCAP3L	=	0x00ed
                           0000EE   243 _CCAP4L	=	0x00ee
                           0000DA   244 _CCAPM0	=	0x00da
                           0000DB   245 _CCAPM1	=	0x00db
                           0000DC   246 _CCAPM2	=	0x00dc
                           0000DD   247 _CCAPM3	=	0x00dd
                           0000DE   248 _CCAPM4	=	0x00de
                           0000D8   249 _CCON	=	0x00d8
                           0000F9   250 _CH	=	0x00f9
                           0000E9   251 _CL	=	0x00e9
                           0000D9   252 _CMOD	=	0x00d9
                           0000A8   253 _IEN0	=	0x00a8
                           0000B1   254 _IEN1	=	0x00b1
                           0000B8   255 _IPL0	=	0x00b8
                           0000B7   256 _IPH0	=	0x00b7
                           0000B2   257 _IPL1	=	0x00b2
                           0000B3   258 _IPH1	=	0x00b3
                           0000C0   259 _P4	=	0x00c0
                           0000E8   260 _P5	=	0x00e8
                           0000A6   261 _WDTRST	=	0x00a6
                           0000A7   262 _WDTPRG	=	0x00a7
                           0000A9   263 _SADDR	=	0x00a9
                           0000B9   264 _SADEN	=	0x00b9
                           0000C3   265 _SPCON	=	0x00c3
                           0000C4   266 _SPSTA	=	0x00c4
                           0000C5   267 _SPDAT	=	0x00c5
                           0000C9   268 _T2MOD	=	0x00c9
                           00009B   269 _BDRCON	=	0x009b
                           00009A   270 _BRL	=	0x009a
                           00009C   271 _KBLS	=	0x009c
                           00009D   272 _KBE	=	0x009d
                           00009E   273 _KBF	=	0x009e
                           0000D2   274 _EECON	=	0x00d2
                           000080   275 _P0	=	0x0080
                           000081   276 _SP	=	0x0081
                           000082   277 _DPL	=	0x0082
                           000083   278 _DPH	=	0x0083
                           000087   279 _PCON	=	0x0087
                           000088   280 _TCON	=	0x0088
                           000089   281 _TMOD	=	0x0089
                           00008A   282 _TL0	=	0x008a
                           00008B   283 _TL1	=	0x008b
                           00008C   284 _TH0	=	0x008c
                           00008D   285 _TH1	=	0x008d
                           000090   286 _P1	=	0x0090
                           000098   287 _SCON	=	0x0098
                           000099   288 _SBUF	=	0x0099
                           0000A0   289 _P2	=	0x00a0
                           0000A8   290 _IE	=	0x00a8
                           0000B0   291 _P3	=	0x00b0
                           0000B8   292 _IP	=	0x00b8
                           0000D0   293 _PSW	=	0x00d0
                           0000E0   294 _ACC	=	0x00e0
                           0000F0   295 _B	=	0x00f0
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           0000AD   301 _ET2	=	0x00ad
                           0000BD   302 _PT2	=	0x00bd
                           0000C8   303 _T2CON_0	=	0x00c8
                           0000C9   304 _T2CON_1	=	0x00c9
                           0000CA   305 _T2CON_2	=	0x00ca
                           0000CB   306 _T2CON_3	=	0x00cb
                           0000CC   307 _T2CON_4	=	0x00cc
                           0000CD   308 _T2CON_5	=	0x00cd
                           0000CE   309 _T2CON_6	=	0x00ce
                           0000CF   310 _T2CON_7	=	0x00cf
                           0000C8   311 _CP_RL2	=	0x00c8
                           0000C9   312 _C_T2	=	0x00c9
                           0000CA   313 _TR2	=	0x00ca
                           0000CB   314 _EXEN2	=	0x00cb
                           0000CC   315 _TCLK	=	0x00cc
                           0000CD   316 _RCLK	=	0x00cd
                           0000CE   317 _EXF2	=	0x00ce
                           0000CF   318 _TF2	=	0x00cf
                           0000DF   319 _CF	=	0x00df
                           0000DE   320 _CR	=	0x00de
                           0000DC   321 _CCF4	=	0x00dc
                           0000DB   322 _CCF3	=	0x00db
                           0000DA   323 _CCF2	=	0x00da
                           0000D9   324 _CCF1	=	0x00d9
                           0000D8   325 _CCF0	=	0x00d8
                           0000AE   326 _EC	=	0x00ae
                           0000BE   327 _PPCL	=	0x00be
                           0000BD   328 _PT2L	=	0x00bd
                           0000BC   329 _PSL	=	0x00bc
                           0000BB   330 _PT1L	=	0x00bb
                           0000BA   331 _PX1L	=	0x00ba
                           0000B9   332 _PT0L	=	0x00b9
                           0000B8   333 _PX0L	=	0x00b8
                           0000C0   334 _P4_0	=	0x00c0
                           0000C1   335 _P4_1	=	0x00c1
                           0000C2   336 _P4_2	=	0x00c2
                           0000C3   337 _P4_3	=	0x00c3
                           0000C4   338 _P4_4	=	0x00c4
                           0000C5   339 _P4_5	=	0x00c5
                           0000C6   340 _P4_6	=	0x00c6
                           0000C7   341 _P4_7	=	0x00c7
                           0000E8   342 _P5_0	=	0x00e8
                           0000E9   343 _P5_1	=	0x00e9
                           0000EA   344 _P5_2	=	0x00ea
                           0000EB   345 _P5_3	=	0x00eb
                           0000EC   346 _P5_4	=	0x00ec
                           0000ED   347 _P5_5	=	0x00ed
                           0000EE   348 _P5_6	=	0x00ee
                           0000EF   349 _P5_7	=	0x00ef
                           000080   350 _P0_0	=	0x0080
                           000081   351 _P0_1	=	0x0081
                           000082   352 _P0_2	=	0x0082
                           000083   353 _P0_3	=	0x0083
                           000084   354 _P0_4	=	0x0084
                           000085   355 _P0_5	=	0x0085
                           000086   356 _P0_6	=	0x0086
                           000087   357 _P0_7	=	0x0087
                           000088   358 _IT0	=	0x0088
                           000089   359 _IE0	=	0x0089
                           00008A   360 _IT1	=	0x008a
                           00008B   361 _IE1	=	0x008b
                           00008C   362 _TR0	=	0x008c
                           00008D   363 _TF0	=	0x008d
                           00008E   364 _TR1	=	0x008e
                           00008F   365 _TF1	=	0x008f
                           000090   366 _P1_0	=	0x0090
                           000091   367 _P1_1	=	0x0091
                           000092   368 _P1_2	=	0x0092
                           000093   369 _P1_3	=	0x0093
                           000094   370 _P1_4	=	0x0094
                           000095   371 _P1_5	=	0x0095
                           000096   372 _P1_6	=	0x0096
                           000097   373 _P1_7	=	0x0097
                           000098   374 _RI	=	0x0098
                           000099   375 _TI	=	0x0099
                           00009A   376 _RB8	=	0x009a
                           00009B   377 _TB8	=	0x009b
                           00009C   378 _REN	=	0x009c
                           00009D   379 _SM2	=	0x009d
                           00009E   380 _SM1	=	0x009e
                           00009F   381 _SM0	=	0x009f
                           0000A0   382 _P2_0	=	0x00a0
                           0000A1   383 _P2_1	=	0x00a1
                           0000A2   384 _P2_2	=	0x00a2
                           0000A3   385 _P2_3	=	0x00a3
                           0000A4   386 _P2_4	=	0x00a4
                           0000A5   387 _P2_5	=	0x00a5
                           0000A6   388 _P2_6	=	0x00a6
                           0000A7   389 _P2_7	=	0x00a7
                           0000A8   390 _EX0	=	0x00a8
                           0000A9   391 _ET0	=	0x00a9
                           0000AA   392 _EX1	=	0x00aa
                           0000AB   393 _ET1	=	0x00ab
                           0000AC   394 _ES	=	0x00ac
                           0000AF   395 _EA	=	0x00af
                           0000B0   396 _P3_0	=	0x00b0
                           0000B1   397 _P3_1	=	0x00b1
                           0000B2   398 _P3_2	=	0x00b2
                           0000B3   399 _P3_3	=	0x00b3
                           0000B4   400 _P3_4	=	0x00b4
                           0000B5   401 _P3_5	=	0x00b5
                           0000B6   402 _P3_6	=	0x00b6
                           0000B7   403 _P3_7	=	0x00b7
                           0000B0   404 _RXD	=	0x00b0
                           0000B1   405 _TXD	=	0x00b1
                           0000B2   406 _INT0	=	0x00b2
                           0000B3   407 _INT1	=	0x00b3
                           0000B4   408 _T0	=	0x00b4
                           0000B5   409 _T1	=	0x00b5
                           0000B6   410 _WR	=	0x00b6
                           0000B7   411 _RD	=	0x00b7
                           0000B8   412 _PX0	=	0x00b8
                           0000B9   413 _PT0	=	0x00b9
                           0000BA   414 _PX1	=	0x00ba
                           0000BB   415 _PT1	=	0x00bb
                           0000BC   416 _PS	=	0x00bc
                           0000D0   417 _P	=	0x00d0
                           0000D1   418 _F1	=	0x00d1
                           0000D2   419 _OV	=	0x00d2
                           0000D3   420 _RS0	=	0x00d3
                           0000D4   421 _RS1	=	0x00d4
                           0000D5   422 _F0	=	0x00d5
                           0000D6   423 _AC	=	0x00d6
                           0000D7   424 _CY	=	0x00d7
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable register banks
                                    427 ;--------------------------------------------------------
                                    428 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        429 	.ds 8
                                    430 ;--------------------------------------------------------
                                    431 ; internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area DSEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable items in internal ram
                                    436 ;--------------------------------------------------------
                                    437 ;--------------------------------------------------------
                                    438 ; Stack segment in internal ram
                                    439 ;--------------------------------------------------------
                                    440 	.area SSEG
      000021                        441 __start__stack:
      000021                        442 	.ds	1
                                    443 
                                    444 ;--------------------------------------------------------
                                    445 ; indirectly addressable internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area ISEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; absolute internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area IABS    (ABS,DATA)
                                    452 	.area IABS    (ABS,DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; bit data
                                    455 ;--------------------------------------------------------
                                    456 	.area BSEG    (BIT)
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; uninitialized external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
      000001                        465 _Input_temp_10000_67:
      000001                        466 	.ds 6
                                    467 ;--------------------------------------------------------
                                    468 ; absolute external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XABS    (ABS,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; initialized external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XISEG   (XDATA)
                                    475 	.area HOME    (CODE)
                                    476 	.area GSINIT0 (CODE)
                                    477 	.area GSINIT1 (CODE)
                                    478 	.area GSINIT2 (CODE)
                                    479 	.area GSINIT3 (CODE)
                                    480 	.area GSINIT4 (CODE)
                                    481 	.area GSINIT5 (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 	.area GSFINAL (CODE)
                                    484 	.area CSEG    (CODE)
                                    485 ;--------------------------------------------------------
                                    486 ; interrupt vector
                                    487 ;--------------------------------------------------------
                                    488 	.area HOME    (CODE)
      002000                        489 __interrupt_vect:
      002000 02 20 4C         [24]  490 	ljmp	__sdcc_gsinit_startup
                                    491 ; restartable atomic support routines
      002003                        492 	.ds	5
      002008                        493 sdcc_atomic_exchange_rollback_start::
      002008 00               [12]  494 	nop
      002009 00               [12]  495 	nop
      00200A                        496 sdcc_atomic_exchange_pdata_impl:
      00200A E2               [24]  497 	movx	a, @r0
      00200B FB               [12]  498 	mov	r3, a
      00200C EA               [12]  499 	mov	a, r2
      00200D F2               [24]  500 	movx	@r0, a
      00200E 80 2C            [24]  501 	sjmp	sdcc_atomic_exchange_exit
      002010 00               [12]  502 	nop
      002011 00               [12]  503 	nop
      002012                        504 sdcc_atomic_exchange_xdata_impl:
      002012 E0               [24]  505 	movx	a, @dptr
      002013 FB               [12]  506 	mov	r3, a
      002014 EA               [12]  507 	mov	a, r2
      002015 F0               [24]  508 	movx	@dptr, a
      002016 80 24            [24]  509 	sjmp	sdcc_atomic_exchange_exit
      002018                        510 sdcc_atomic_compare_exchange_idata_impl:
      002018 E6               [12]  511 	mov	a, @r0
      002019 B5 02 02         [24]  512 	cjne	a, ar2, .+#5
      00201C EB               [12]  513 	mov	a, r3
      00201D F6               [12]  514 	mov	@r0, a
      00201E 22               [24]  515 	ret
      00201F 00               [12]  516 	nop
      002020                        517 sdcc_atomic_compare_exchange_pdata_impl:
      002020 E2               [24]  518 	movx	a, @r0
      002021 B5 02 02         [24]  519 	cjne	a, ar2, .+#5
      002024 EB               [12]  520 	mov	a, r3
      002025 F2               [24]  521 	movx	@r0, a
      002026 22               [24]  522 	ret
      002027 00               [12]  523 	nop
      002028                        524 sdcc_atomic_compare_exchange_xdata_impl:
      002028 E0               [24]  525 	movx	a, @dptr
      002029 B5 02 02         [24]  526 	cjne	a, ar2, .+#5
      00202C EB               [12]  527 	mov	a, r3
      00202D F0               [24]  528 	movx	@dptr, a
      00202E 22               [24]  529 	ret
      00202F                        530 sdcc_atomic_exchange_rollback_end::
                                    531 
      00202F                        532 sdcc_atomic_exchange_gptr_impl::
      00202F 30 F6 E0         [24]  533 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      002032 A8 82            [24]  534 	mov	r0, dpl
      002034 20 F5 D3         [24]  535 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      002037                        536 sdcc_atomic_exchange_idata_impl:
      002037 EA               [12]  537 	mov	a, r2
      002038 C6               [12]  538 	xch	a, @r0
      002039 F5 82            [12]  539 	mov	dpl, a
      00203B 22               [24]  540 	ret
      00203C                        541 sdcc_atomic_exchange_exit:
      00203C 8B 82            [24]  542 	mov	dpl, r3
      00203E 22               [24]  543 	ret
      00203F                        544 sdcc_atomic_compare_exchange_gptr_impl::
      00203F 30 F6 E6         [24]  545 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      002042 A8 82            [24]  546 	mov	r0, dpl
      002044 20 F5 D9         [24]  547 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      002047 80 CF            [24]  548 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    549 ;--------------------------------------------------------
                                    550 ; global & static initialisations
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 	.area GSFINAL (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.globl __sdcc_gsinit_startup
                                    557 	.globl __sdcc_program_startup
                                    558 	.globl __start__stack
                                    559 	.globl __mcs51_genXINIT
                                    560 	.globl __mcs51_genXRAMCLEAR
                                    561 	.globl __mcs51_genRAMCLEAR
                                    562 	.area GSFINAL (CODE)
      0020A5 02 20 49         [24]  563 	ljmp	__sdcc_program_startup
                                    564 ;--------------------------------------------------------
                                    565 ; Home
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area HOME    (CODE)
      002049                        569 __sdcc_program_startup:
      002049 02 20 A8         [24]  570 	ljmp	_main
                                    571 ;	return from main will return to caller
                                    572 ;--------------------------------------------------------
                                    573 ; code
                                    574 ;--------------------------------------------------------
                                    575 	.area CSEG    (CODE)
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'main'
                                    578 ;------------------------------------------------------------
                                    579 ;	src/main.c:42: void main(){
                                    580 ;	-----------------------------------------
                                    581 ;	 function main
                                    582 ;	-----------------------------------------
      0020A8                        583 _main:
                           000007   584 	ar7 = 0x07
                           000006   585 	ar6 = 0x06
                           000005   586 	ar5 = 0x05
                           000004   587 	ar4 = 0x04
                           000003   588 	ar3 = 0x03
                           000002   589 	ar2 = 0x02
                           000001   590 	ar1 = 0x01
                           000000   591 	ar0 = 0x00
                                    592 ;	src/main.c:44: i2cSetPort();
      0020A8 12 23 B9         [24]  593 	lcall	_i2cSetPort
                                    594 ;	src/main.c:46: i2cBegin(11059200, 1);
      0020AB 90 00 14         [24]  595 	mov	dptr,#_i2cBegin_PARM_2
      0020AE 74 01            [12]  596 	mov	a,#0x01
      0020B0 F0               [24]  597 	movx	@dptr,a
      0020B1 E4               [12]  598 	clr	a
      0020B2 A3               [24]  599 	inc	dptr
      0020B3 F0               [24]  600 	movx	@dptr,a
      0020B4 A3               [24]  601 	inc	dptr
      0020B5 F0               [24]  602 	movx	@dptr,a
      0020B6 A3               [24]  603 	inc	dptr
      0020B7 F0               [24]  604 	movx	@dptr,a
      0020B8 90 C0 00         [24]  605 	mov	dptr,#0xc000
      0020BB 75 F0 A8         [24]  606 	mov	b, #0xa8
      0020BE 12 25 DD         [24]  607 	lcall	_i2cBegin
                                    608 ;	src/main.c:48: i2csetAdd(0xA0);
      0020C1 75 82 A0         [24]  609 	mov	dpl, #0xa0
      0020C4 12 26 8D         [24]  610 	lcall	_i2csetAdd
                                    611 ;	src/main.c:49: printf("\n\r Lab4 Part 1 EEPROM Program\n\r");
      0020C7 74 20            [12]  612 	mov	a,#___str_0
      0020C9 C0 E0            [24]  613 	push	acc
      0020CB 74 35            [12]  614 	mov	a,#(___str_0 >> 8)
      0020CD C0 E0            [24]  615 	push	acc
      0020CF 74 80            [12]  616 	mov	a,#0x80
      0020D1 C0 E0            [24]  617 	push	acc
      0020D3 12 2A EC         [24]  618 	lcall	_printf
      0020D6 15 81            [12]  619 	dec	sp
      0020D8 15 81            [12]  620 	dec	sp
      0020DA 15 81            [12]  621 	dec	sp
                                    622 ;	src/main.c:51: while(1){
      0020DC                        623 00102$:
                                    624 ;	src/main.c:54: Program();
      0020DC 12 21 3C         [24]  625 	lcall	_Program
                                    626 ;	src/main.c:57: }
      0020DF 80 FB            [24]  627 	sjmp	00102$
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'Input'
                                    630 ;------------------------------------------------------------
                                    631 ;temp          Allocated with name '_Input_temp_10000_67'
                                    632 ;c             Allocated with name '_Input_c_10000_67'
                                    633 ;i             Allocated with name '_Input_i_10000_67'
                                    634 ;------------------------------------------------------------
                                    635 ;	src/main.c:59: int Input(){
                                    636 ;	-----------------------------------------
                                    637 ;	 function Input
                                    638 ;	-----------------------------------------
      0020E1                        639 _Input:
                                    640 ;	src/main.c:63: while(1){
      0020E1 7F 00            [12]  641 	mov	r7,#0x00
      0020E3                        642 00106$:
                                    643 ;	src/main.c:64: c = getchar();
      0020E3 C0 07            [24]  644 	push	ar7
      0020E5 12 23 9F         [24]  645 	lcall	_getchar
      0020E8 AD 82            [24]  646 	mov	r5, dpl
      0020EA D0 07            [24]  647 	pop	ar7
                                    648 ;	src/main.c:65: if(c == '\r'){
      0020EC BD 0D 02         [24]  649 	cjne	r5,#0x0d,00129$
      0020EF 80 21            [24]  650 	sjmp	00107$
      0020F1                        651 00129$:
                                    652 ;	src/main.c:68: if(i < sizeof(temp)-1){
      0020F1 BF 05 00         [24]  653 	cjne	r7,#0x05,00130$
      0020F4                        654 00130$:
      0020F4 50 0D            [24]  655 	jnc	00104$
                                    656 ;	src/main.c:69: temp[i] = c;
      0020F6 EF               [12]  657 	mov	a,r7
      0020F7 24 01            [12]  658 	add	a, #_Input_temp_10000_67
      0020F9 F5 82            [12]  659 	mov	dpl,a
      0020FB E4               [12]  660 	clr	a
      0020FC 34 00            [12]  661 	addc	a, #(_Input_temp_10000_67 >> 8)
      0020FE F5 83            [12]  662 	mov	dph,a
      002100 ED               [12]  663 	mov	a,r5
      002101 F0               [24]  664 	movx	@dptr,a
                                    665 ;	src/main.c:70: i++;
      002102 0F               [12]  666 	inc	r7
      002103                        667 00104$:
                                    668 ;	src/main.c:73: putchar(c);
      002103 7E 00            [12]  669 	mov	r6,#0x00
      002105 8D 82            [24]  670 	mov	dpl, r5
      002107 8E 83            [24]  671 	mov	dph, r6
      002109 C0 07            [24]  672 	push	ar7
      00210B 12 23 80         [24]  673 	lcall	_putchar
      00210E D0 07            [24]  674 	pop	ar7
      002110 80 D1            [24]  675 	sjmp	00106$
      002112                        676 00107$:
                                    677 ;	src/main.c:75: temp[i] = '\0';
      002112 EF               [12]  678 	mov	a,r7
      002113 24 01            [12]  679 	add	a, #_Input_temp_10000_67
      002115 F5 82            [12]  680 	mov	dpl,a
      002117 E4               [12]  681 	clr	a
      002118 34 00            [12]  682 	addc	a, #(_Input_temp_10000_67 >> 8)
      00211A F5 83            [12]  683 	mov	dph,a
      00211C E4               [12]  684 	clr	a
      00211D F0               [24]  685 	movx	@dptr,a
                                    686 ;	src/main.c:76: printf("\n\r");
      00211E 74 40            [12]  687 	mov	a,#___str_1
      002120 C0 E0            [24]  688 	push	acc
      002122 74 35            [12]  689 	mov	a,#(___str_1 >> 8)
      002124 C0 E0            [24]  690 	push	acc
      002126 74 80            [12]  691 	mov	a,#0x80
      002128 C0 E0            [24]  692 	push	acc
      00212A 12 2A EC         [24]  693 	lcall	_printf
      00212D 15 81            [12]  694 	dec	sp
      00212F 15 81            [12]  695 	dec	sp
      002131 15 81            [12]  696 	dec	sp
                                    697 ;	src/main.c:77: return atoi(temp);
      002133 90 00 01         [24]  698 	mov	dptr,#_Input_temp_10000_67
      002136 75 F0 00         [24]  699 	mov	b, #0x00
                                    700 ;	src/main.c:78: }
      002139 02 28 44         [24]  701 	ljmp	_atoi
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'Program'
                                    704 ;------------------------------------------------------------
                                    705 ;c             Allocated with name '_Program_c_10000_71'
                                    706 ;page          Allocated with name '_Program_page_30001_74'
                                    707 ;address       Allocated with name '_Program_address_30002_75'
                                    708 ;data          Allocated with name '_Program_data_30003_76'
                                    709 ;temp          Allocated with name '_Program_temp_30003_76'
                                    710 ;page          Allocated with name '_Program_page_30001_78'
                                    711 ;address       Allocated with name '_Program_address_30002_79'
                                    712 ;temp          Allocated with name '_Program_temp_30002_79'
                                    713 ;data          Allocated with name '_Program_data_30003_80'
                                    714 ;address1      Allocated with name '_Program_address1_30001_82'
                                    715 ;address2      Allocated with name '_Program_address2_30002_83'
                                    716 ;i             Allocated with name '_Program_i_40000_85'
                                    717 ;------------------------------------------------------------
                                    718 ;	src/main.c:79: void Program()
                                    719 ;	-----------------------------------------
                                    720 ;	 function Program
                                    721 ;	-----------------------------------------
      00213C                        722 _Program:
                                    723 ;	src/main.c:83: while(1)
      00213C                        724 00114$:
                                    725 ;	src/main.c:85: printf("\n\r ------ Commands ------\n\r");
      00213C 74 43            [12]  726 	mov	a,#___str_2
      00213E C0 E0            [24]  727 	push	acc
      002140 74 35            [12]  728 	mov	a,#(___str_2 >> 8)
      002142 C0 E0            [24]  729 	push	acc
      002144 74 80            [12]  730 	mov	a,#0x80
      002146 C0 E0            [24]  731 	push	acc
      002148 12 2A EC         [24]  732 	lcall	_printf
      00214B 15 81            [12]  733 	dec	sp
      00214D 15 81            [12]  734 	dec	sp
      00214F 15 81            [12]  735 	dec	sp
                                    736 ;	src/main.c:86: printf("\n\r W : Write Byte\n\r");
      002151 74 5F            [12]  737 	mov	a,#___str_3
      002153 C0 E0            [24]  738 	push	acc
      002155 74 35            [12]  739 	mov	a,#(___str_3 >> 8)
      002157 C0 E0            [24]  740 	push	acc
      002159 74 80            [12]  741 	mov	a,#0x80
      00215B C0 E0            [24]  742 	push	acc
      00215D 12 2A EC         [24]  743 	lcall	_printf
      002160 15 81            [12]  744 	dec	sp
      002162 15 81            [12]  745 	dec	sp
      002164 15 81            [12]  746 	dec	sp
                                    747 ;	src/main.c:87: printf("\n\r R : Read Byte\n\r");
      002166 74 73            [12]  748 	mov	a,#___str_4
      002168 C0 E0            [24]  749 	push	acc
      00216A 74 35            [12]  750 	mov	a,#(___str_4 >> 8)
      00216C C0 E0            [24]  751 	push	acc
      00216E 74 80            [12]  752 	mov	a,#0x80
      002170 C0 E0            [24]  753 	push	acc
      002172 12 2A EC         [24]  754 	lcall	_printf
      002175 15 81            [12]  755 	dec	sp
      002177 15 81            [12]  756 	dec	sp
      002179 15 81            [12]  757 	dec	sp
                                    758 ;	src/main.c:88: printf("\n\r H : Hex Dump\n\r");
      00217B 74 86            [12]  759 	mov	a,#___str_5
      00217D C0 E0            [24]  760 	push	acc
      00217F 74 35            [12]  761 	mov	a,#(___str_5 >> 8)
      002181 C0 E0            [24]  762 	push	acc
      002183 74 80            [12]  763 	mov	a,#0x80
      002185 C0 E0            [24]  764 	push	acc
      002187 12 2A EC         [24]  765 	lcall	_printf
      00218A 15 81            [12]  766 	dec	sp
      00218C 15 81            [12]  767 	dec	sp
      00218E 15 81            [12]  768 	dec	sp
                                    769 ;	src/main.c:89: printf("\n\r e : Reset EEPROM\n\r");
      002190 74 98            [12]  770 	mov	a,#___str_6
      002192 C0 E0            [24]  771 	push	acc
      002194 74 35            [12]  772 	mov	a,#(___str_6 >> 8)
      002196 C0 E0            [24]  773 	push	acc
      002198 74 80            [12]  774 	mov	a,#0x80
      00219A C0 E0            [24]  775 	push	acc
      00219C 12 2A EC         [24]  776 	lcall	_printf
      00219F 15 81            [12]  777 	dec	sp
      0021A1 15 81            [12]  778 	dec	sp
      0021A3 15 81            [12]  779 	dec	sp
                                    780 ;	src/main.c:90: c = getchar();
      0021A5 12 23 9F         [24]  781 	lcall	_getchar
      0021A8 AE 82            [24]  782 	mov	r6, dpl
                                    783 ;	src/main.c:91: putchar(c);
      0021AA 8E 05            [24]  784 	mov	ar5,r6
      0021AC 7F 00            [12]  785 	mov	r7,#0x00
      0021AE 8D 82            [24]  786 	mov	dpl, r5
      0021B0 8F 83            [24]  787 	mov	dph, r7
      0021B2 C0 06            [24]  788 	push	ar6
      0021B4 12 23 80         [24]  789 	lcall	_putchar
      0021B7 D0 06            [24]  790 	pop	ar6
                                    791 ;	src/main.c:92: if(c == 'w')
      0021B9 BE 77 02         [24]  792 	cjne	r6,#0x77,00164$
      0021BC 80 03            [24]  793 	sjmp	00165$
      0021BE                        794 00164$:
      0021BE 02 22 64         [24]  795 	ljmp	00111$
      0021C1                        796 00165$:
                                    797 ;	src/main.c:94: printf("\n\r Writing a Byte\n\r");
      0021C1 74 AE            [12]  798 	mov	a,#___str_7
      0021C3 C0 E0            [24]  799 	push	acc
      0021C5 74 35            [12]  800 	mov	a,#(___str_7 >> 8)
      0021C7 C0 E0            [24]  801 	push	acc
      0021C9 74 80            [12]  802 	mov	a,#0x80
      0021CB C0 E0            [24]  803 	push	acc
      0021CD 12 2A EC         [24]  804 	lcall	_printf
      0021D0 15 81            [12]  805 	dec	sp
      0021D2 15 81            [12]  806 	dec	sp
      0021D4 15 81            [12]  807 	dec	sp
                                    808 ;	src/main.c:95: printf("\n\r Page: ");
      0021D6 74 C2            [12]  809 	mov	a,#___str_8
      0021D8 C0 E0            [24]  810 	push	acc
      0021DA 74 35            [12]  811 	mov	a,#(___str_8 >> 8)
      0021DC C0 E0            [24]  812 	push	acc
      0021DE 74 80            [12]  813 	mov	a,#0x80
      0021E0 C0 E0            [24]  814 	push	acc
      0021E2 12 2A EC         [24]  815 	lcall	_printf
      0021E5 15 81            [12]  816 	dec	sp
      0021E7 15 81            [12]  817 	dec	sp
      0021E9 15 81            [12]  818 	dec	sp
                                    819 ;	src/main.c:97: int page = Input();
      0021EB 12 20 E1         [24]  820 	lcall	_Input
      0021EE AD 82            [24]  821 	mov	r5, dpl
      0021F0 AF 83            [24]  822 	mov	r7, dph
                                    823 ;	src/main.c:98: printf("\n\r Address: ");
      0021F2 C0 07            [24]  824 	push	ar7
      0021F4 C0 05            [24]  825 	push	ar5
      0021F6 74 CC            [12]  826 	mov	a,#___str_9
      0021F8 C0 E0            [24]  827 	push	acc
      0021FA 74 35            [12]  828 	mov	a,#(___str_9 >> 8)
      0021FC C0 E0            [24]  829 	push	acc
      0021FE 74 80            [12]  830 	mov	a,#0x80
      002200 C0 E0            [24]  831 	push	acc
      002202 12 2A EC         [24]  832 	lcall	_printf
      002205 15 81            [12]  833 	dec	sp
      002207 15 81            [12]  834 	dec	sp
      002209 15 81            [12]  835 	dec	sp
                                    836 ;	src/main.c:100: int address = Input();
      00220B 12 20 E1         [24]  837 	lcall	_Input
      00220E AB 82            [24]  838 	mov	r3, dpl
      002210 AC 83            [24]  839 	mov	r4, dph
                                    840 ;	src/main.c:102: printf("\n\r Data: ");
      002212 C0 04            [24]  841 	push	ar4
      002214 C0 03            [24]  842 	push	ar3
      002216 74 D9            [12]  843 	mov	a,#___str_10
      002218 C0 E0            [24]  844 	push	acc
      00221A 74 35            [12]  845 	mov	a,#(___str_10 >> 8)
      00221C C0 E0            [24]  846 	push	acc
      00221E 74 80            [12]  847 	mov	a,#0x80
      002220 C0 E0            [24]  848 	push	acc
      002222 12 2A EC         [24]  849 	lcall	_printf
      002225 15 81            [12]  850 	dec	sp
      002227 15 81            [12]  851 	dec	sp
      002229 15 81            [12]  852 	dec	sp
                                    853 ;	src/main.c:104: int data = Input();
      00222B 12 20 E1         [24]  854 	lcall	_Input
      00222E A9 82            [24]  855 	mov	r1, dpl
      002230 AA 83            [24]  856 	mov	r2, dph
      002232 D0 03            [24]  857 	pop	ar3
      002234 D0 04            [24]  858 	pop	ar4
      002236 D0 05            [24]  859 	pop	ar5
      002238 D0 07            [24]  860 	pop	ar7
                                    861 ;	src/main.c:107: temp = temp | (page << 1);
      00223A ED               [12]  862 	mov	a,r5
      00223B 2D               [12]  863 	add	a,r5
      00223C FD               [12]  864 	mov	r5,a
      00223D 74 A0            [12]  865 	mov	a,#0xa0
      00223F 4D               [12]  866 	orl	a,r5
                                    867 ;	src/main.c:108: temp = temp & 0xFE;
      002240 54 FE            [12]  868 	anl	a,#0xfe
                                    869 ;	src/main.c:109: i2csetAdd(temp);
      002242 F5 82            [12]  870 	mov	dpl,a
      002244 C0 04            [24]  871 	push	ar4
      002246 C0 03            [24]  872 	push	ar3
      002248 C0 02            [24]  873 	push	ar2
      00224A C0 01            [24]  874 	push	ar1
      00224C 12 26 8D         [24]  875 	lcall	_i2csetAdd
      00224F D0 01            [24]  876 	pop	ar1
      002251 D0 02            [24]  877 	pop	ar2
      002253 D0 03            [24]  878 	pop	ar3
      002255 D0 04            [24]  879 	pop	ar4
                                    880 ;	src/main.c:110: i2cWrite(data, address);
      002257 90 00 11         [24]  881 	mov	dptr,#_i2cWrite_PARM_2
      00225A EB               [12]  882 	mov	a,r3
      00225B F0               [24]  883 	movx	@dptr,a
      00225C 89 82            [24]  884 	mov	dpl, r1
      00225E 12 25 51         [24]  885 	lcall	_i2cWrite
      002261 02 21 3C         [24]  886 	ljmp	00114$
      002264                        887 00111$:
                                    888 ;	src/main.c:113: else if(c == 'r'){
      002264 BE 72 02         [24]  889 	cjne	r6,#0x72,00166$
      002267 80 03            [24]  890 	sjmp	00167$
      002269                        891 00166$:
      002269 02 22 FB         [24]  892 	ljmp	00108$
      00226C                        893 00167$:
                                    894 ;	src/main.c:114: printf("\n\r Reading a Byte\n\r");
      00226C 74 E3            [12]  895 	mov	a,#___str_11
      00226E C0 E0            [24]  896 	push	acc
      002270 74 35            [12]  897 	mov	a,#(___str_11 >> 8)
      002272 C0 E0            [24]  898 	push	acc
      002274 74 80            [12]  899 	mov	a,#0x80
      002276 C0 E0            [24]  900 	push	acc
      002278 12 2A EC         [24]  901 	lcall	_printf
      00227B 15 81            [12]  902 	dec	sp
      00227D 15 81            [12]  903 	dec	sp
      00227F 15 81            [12]  904 	dec	sp
                                    905 ;	src/main.c:115: printf("\n\r Page: ");
      002281 74 C2            [12]  906 	mov	a,#___str_8
      002283 C0 E0            [24]  907 	push	acc
      002285 74 35            [12]  908 	mov	a,#(___str_8 >> 8)
      002287 C0 E0            [24]  909 	push	acc
      002289 74 80            [12]  910 	mov	a,#0x80
      00228B C0 E0            [24]  911 	push	acc
      00228D 12 2A EC         [24]  912 	lcall	_printf
      002290 15 81            [12]  913 	dec	sp
      002292 15 81            [12]  914 	dec	sp
      002294 15 81            [12]  915 	dec	sp
                                    916 ;	src/main.c:117: int page = Input();
      002296 12 20 E1         [24]  917 	lcall	_Input
      002299 AD 82            [24]  918 	mov	r5, dpl
      00229B AF 83            [24]  919 	mov	r7, dph
                                    920 ;	src/main.c:118: printf("\n\r Address: ");
      00229D C0 07            [24]  921 	push	ar7
      00229F C0 05            [24]  922 	push	ar5
      0022A1 74 CC            [12]  923 	mov	a,#___str_9
      0022A3 C0 E0            [24]  924 	push	acc
      0022A5 74 35            [12]  925 	mov	a,#(___str_9 >> 8)
      0022A7 C0 E0            [24]  926 	push	acc
      0022A9 74 80            [12]  927 	mov	a,#0x80
      0022AB C0 E0            [24]  928 	push	acc
      0022AD 12 2A EC         [24]  929 	lcall	_printf
      0022B0 15 81            [12]  930 	dec	sp
      0022B2 15 81            [12]  931 	dec	sp
      0022B4 15 81            [12]  932 	dec	sp
                                    933 ;	src/main.c:120: int address = Input();
      0022B6 12 20 E1         [24]  934 	lcall	_Input
      0022B9 AB 82            [24]  935 	mov	r3, dpl
      0022BB AC 83            [24]  936 	mov	r4, dph
      0022BD D0 05            [24]  937 	pop	ar5
      0022BF D0 07            [24]  938 	pop	ar7
                                    939 ;	src/main.c:123: temp = temp | (page << 1);
      0022C1 ED               [12]  940 	mov	a,r5
      0022C2 2D               [12]  941 	add	a,r5
      0022C3 FD               [12]  942 	mov	r5,a
      0022C4 74 A0            [12]  943 	mov	a,#0xa0
      0022C6 4D               [12]  944 	orl	a,r5
                                    945 ;	src/main.c:124: temp = temp & 0xFE;
      0022C7 54 FE            [12]  946 	anl	a,#0xfe
                                    947 ;	src/main.c:125: i2csetAdd(temp);
      0022C9 F5 82            [12]  948 	mov	dpl,a
      0022CB C0 04            [24]  949 	push	ar4
      0022CD C0 03            [24]  950 	push	ar3
      0022CF 12 26 8D         [24]  951 	lcall	_i2csetAdd
      0022D2 D0 03            [24]  952 	pop	ar3
      0022D4 D0 04            [24]  953 	pop	ar4
                                    954 ;	src/main.c:126: unsigned char data = i2cRead(address);
      0022D6 8B 82            [24]  955 	mov	dpl, r3
      0022D8 12 25 8D         [24]  956 	lcall	_i2cRead
      0022DB AF 82            [24]  957 	mov	r7, dpl
                                    958 ;	src/main.c:128: printf("\n\r Data is: %d\n\r", data);
      0022DD 7D 00            [12]  959 	mov	r5,#0x00
      0022DF C0 07            [24]  960 	push	ar7
      0022E1 C0 05            [24]  961 	push	ar5
      0022E3 74 F7            [12]  962 	mov	a,#___str_12
      0022E5 C0 E0            [24]  963 	push	acc
      0022E7 74 35            [12]  964 	mov	a,#(___str_12 >> 8)
      0022E9 C0 E0            [24]  965 	push	acc
      0022EB 74 80            [12]  966 	mov	a,#0x80
      0022ED C0 E0            [24]  967 	push	acc
      0022EF 12 2A EC         [24]  968 	lcall	_printf
      0022F2 E5 81            [12]  969 	mov	a,sp
      0022F4 24 FB            [12]  970 	add	a,#0xfb
      0022F6 F5 81            [12]  971 	mov	sp,a
      0022F8 02 21 3C         [24]  972 	ljmp	00114$
      0022FB                        973 00108$:
                                    974 ;	src/main.c:131: else if(c == 'd'){
      0022FB BE 64 48         [24]  975 	cjne	r6,#0x64,00105$
                                    976 ;	src/main.c:132: printf("\n\r Hex Dump\n\r");
      0022FE 74 08            [12]  977 	mov	a,#___str_13
      002300 C0 E0            [24]  978 	push	acc
      002302 74 36            [12]  979 	mov	a,#(___str_13 >> 8)
      002304 C0 E0            [24]  980 	push	acc
      002306 74 80            [12]  981 	mov	a,#0x80
      002308 C0 E0            [24]  982 	push	acc
      00230A 12 2A EC         [24]  983 	lcall	_printf
      00230D 15 81            [12]  984 	dec	sp
      00230F 15 81            [12]  985 	dec	sp
      002311 15 81            [12]  986 	dec	sp
                                    987 ;	src/main.c:133: printf("\n\r Address Start: ");
      002313 74 16            [12]  988 	mov	a,#___str_14
      002315 C0 E0            [24]  989 	push	acc
      002317 74 36            [12]  990 	mov	a,#(___str_14 >> 8)
      002319 C0 E0            [24]  991 	push	acc
      00231B 74 80            [12]  992 	mov	a,#0x80
      00231D C0 E0            [24]  993 	push	acc
      00231F 12 2A EC         [24]  994 	lcall	_printf
      002322 15 81            [12]  995 	dec	sp
      002324 15 81            [12]  996 	dec	sp
      002326 15 81            [12]  997 	dec	sp
                                    998 ;	src/main.c:135: int address1 = Input();  
      002328 12 20 E1         [24]  999 	lcall	_Input
                                   1000 ;	src/main.c:137: printf("\n\r Address End: ");
      00232B 74 29            [12] 1001 	mov	a,#___str_15
      00232D C0 E0            [24] 1002 	push	acc
      00232F 74 36            [12] 1003 	mov	a,#(___str_15 >> 8)
      002331 C0 E0            [24] 1004 	push	acc
      002333 74 80            [12] 1005 	mov	a,#0x80
      002335 C0 E0            [24] 1006 	push	acc
      002337 12 2A EC         [24] 1007 	lcall	_printf
      00233A 15 81            [12] 1008 	dec	sp
      00233C 15 81            [12] 1009 	dec	sp
      00233E 15 81            [12] 1010 	dec	sp
                                   1011 ;	src/main.c:139: int address2 = Input();         
      002340 12 20 E1         [24] 1012 	lcall	_Input
      002343 02 21 3C         [24] 1013 	ljmp	00114$
      002346                       1014 00105$:
                                   1015 ;	src/main.c:145: else if(c == 'e'){
      002346 BE 65 02         [24] 1016 	cjne	r6,#0x65,00170$
      002349 80 03            [24] 1017 	sjmp	00171$
      00234B                       1018 00170$:
      00234B 02 21 3C         [24] 1019 	ljmp	00114$
      00234E                       1020 00171$:
                                   1021 ;	src/main.c:146: printf("\n\r Reseting EEPROM\n\r");
      00234E 74 3A            [12] 1022 	mov	a,#___str_16
      002350 C0 E0            [24] 1023 	push	acc
      002352 74 36            [12] 1024 	mov	a,#(___str_16 >> 8)
      002354 C0 E0            [24] 1025 	push	acc
      002356 74 80            [12] 1026 	mov	a,#0x80
      002358 C0 E0            [24] 1027 	push	acc
      00235A 12 2A EC         [24] 1028 	lcall	_printf
      00235D 15 81            [12] 1029 	dec	sp
      00235F 15 81            [12] 1030 	dec	sp
      002361 15 81            [12] 1031 	dec	sp
                                   1032 ;	src/main.c:148: i2cStartonce();
      002363 12 24 21         [24] 1033 	lcall	_i2cStartonce
                                   1034 ;	src/main.c:150: for(int i = 0; i < 9; i++){
      002366 7F 00            [12] 1035 	mov	r7,#0x00
      002368                       1036 00117$:
      002368 BF 09 00         [24] 1037 	cjne	r7,#0x09,00172$
      00236B                       1038 00172$:
      00236B 50 0A            [24] 1039 	jnc	00101$
                                   1040 ;	src/main.c:151: i2cClock();
      00236D C0 07            [24] 1041 	push	ar7
      00236F 12 23 C4         [24] 1042 	lcall	_i2cDelay
      002372 D0 07            [24] 1043 	pop	ar7
                                   1044 ;	src/main.c:150: for(int i = 0; i < 9; i++){
      002374 0F               [12] 1045 	inc	r7
      002375 80 F1            [24] 1046 	sjmp	00117$
      002377                       1047 00101$:
                                   1048 ;	src/main.c:154: i2cStartonce();
      002377 12 24 21         [24] 1049 	lcall	_i2cStartonce
                                   1050 ;	src/main.c:156: i2cStop();
      00237A 12 24 38         [24] 1051 	lcall	_i2cStop
                                   1052 ;	src/main.c:161: }
      00237D 02 21 3C         [24] 1053 	ljmp	00114$
                                   1054 	.area CSEG    (CODE)
                                   1055 	.area CONST   (CODE)
                                   1056 	.area CONST   (CODE)
      003520                       1057 ___str_0:
      003520 0A                    1058 	.db 0x0a
      003521 0D                    1059 	.db 0x0d
      003522 20 4C 61 62 34 20 50  1060 	.ascii " Lab4 Part 1 EEPROM Program"
             61 72 74 20 31 20 45
             45 50 52 4F 4D 20 50
             72 6F 67 72 61 6D
      00353D 0A                    1061 	.db 0x0a
      00353E 0D                    1062 	.db 0x0d
      00353F 00                    1063 	.db 0x00
                                   1064 	.area CSEG    (CODE)
                                   1065 	.area CONST   (CODE)
      003540                       1066 ___str_1:
      003540 0A                    1067 	.db 0x0a
      003541 0D                    1068 	.db 0x0d
      003542 00                    1069 	.db 0x00
                                   1070 	.area CSEG    (CODE)
                                   1071 	.area CONST   (CODE)
      003543                       1072 ___str_2:
      003543 0A                    1073 	.db 0x0a
      003544 0D                    1074 	.db 0x0d
      003545 20 2D 2D 2D 2D 2D 2D  1075 	.ascii " ------ Commands ------"
             20 43 6F 6D 6D 61 6E
             64 73 20 2D 2D 2D 2D
             2D 2D
      00355C 0A                    1076 	.db 0x0a
      00355D 0D                    1077 	.db 0x0d
      00355E 00                    1078 	.db 0x00
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
      00355F                       1081 ___str_3:
      00355F 0A                    1082 	.db 0x0a
      003560 0D                    1083 	.db 0x0d
      003561 20 57 20 3A 20 57 72  1084 	.ascii " W : Write Byte"
             69 74 65 20 42 79 74
             65
      003570 0A                    1085 	.db 0x0a
      003571 0D                    1086 	.db 0x0d
      003572 00                    1087 	.db 0x00
                                   1088 	.area CSEG    (CODE)
                                   1089 	.area CONST   (CODE)
      003573                       1090 ___str_4:
      003573 0A                    1091 	.db 0x0a
      003574 0D                    1092 	.db 0x0d
      003575 20 52 20 3A 20 52 65  1093 	.ascii " R : Read Byte"
             61 64 20 42 79 74 65
      003583 0A                    1094 	.db 0x0a
      003584 0D                    1095 	.db 0x0d
      003585 00                    1096 	.db 0x00
                                   1097 	.area CSEG    (CODE)
                                   1098 	.area CONST   (CODE)
      003586                       1099 ___str_5:
      003586 0A                    1100 	.db 0x0a
      003587 0D                    1101 	.db 0x0d
      003588 20 48 20 3A 20 48 65  1102 	.ascii " H : Hex Dump"
             78 20 44 75 6D 70
      003595 0A                    1103 	.db 0x0a
      003596 0D                    1104 	.db 0x0d
      003597 00                    1105 	.db 0x00
                                   1106 	.area CSEG    (CODE)
                                   1107 	.area CONST   (CODE)
      003598                       1108 ___str_6:
      003598 0A                    1109 	.db 0x0a
      003599 0D                    1110 	.db 0x0d
      00359A 20 65 20 3A 20 52 65  1111 	.ascii " e : Reset EEPROM"
             73 65 74 20 45 45 50
             52 4F 4D
      0035AB 0A                    1112 	.db 0x0a
      0035AC 0D                    1113 	.db 0x0d
      0035AD 00                    1114 	.db 0x00
                                   1115 	.area CSEG    (CODE)
                                   1116 	.area CONST   (CODE)
      0035AE                       1117 ___str_7:
      0035AE 0A                    1118 	.db 0x0a
      0035AF 0D                    1119 	.db 0x0d
      0035B0 20 57 72 69 74 69 6E  1120 	.ascii " Writing a Byte"
             67 20 61 20 42 79 74
             65
      0035BF 0A                    1121 	.db 0x0a
      0035C0 0D                    1122 	.db 0x0d
      0035C1 00                    1123 	.db 0x00
                                   1124 	.area CSEG    (CODE)
                                   1125 	.area CONST   (CODE)
      0035C2                       1126 ___str_8:
      0035C2 0A                    1127 	.db 0x0a
      0035C3 0D                    1128 	.db 0x0d
      0035C4 20 50 61 67 65 3A 20  1129 	.ascii " Page: "
      0035CB 00                    1130 	.db 0x00
                                   1131 	.area CSEG    (CODE)
                                   1132 	.area CONST   (CODE)
      0035CC                       1133 ___str_9:
      0035CC 0A                    1134 	.db 0x0a
      0035CD 0D                    1135 	.db 0x0d
      0035CE 20 41 64 64 72 65 73  1136 	.ascii " Address: "
             73 3A 20
      0035D8 00                    1137 	.db 0x00
                                   1138 	.area CSEG    (CODE)
                                   1139 	.area CONST   (CODE)
      0035D9                       1140 ___str_10:
      0035D9 0A                    1141 	.db 0x0a
      0035DA 0D                    1142 	.db 0x0d
      0035DB 20 44 61 74 61 3A 20  1143 	.ascii " Data: "
      0035E2 00                    1144 	.db 0x00
                                   1145 	.area CSEG    (CODE)
                                   1146 	.area CONST   (CODE)
      0035E3                       1147 ___str_11:
      0035E3 0A                    1148 	.db 0x0a
      0035E4 0D                    1149 	.db 0x0d
      0035E5 20 52 65 61 64 69 6E  1150 	.ascii " Reading a Byte"
             67 20 61 20 42 79 74
             65
      0035F4 0A                    1151 	.db 0x0a
      0035F5 0D                    1152 	.db 0x0d
      0035F6 00                    1153 	.db 0x00
                                   1154 	.area CSEG    (CODE)
                                   1155 	.area CONST   (CODE)
      0035F7                       1156 ___str_12:
      0035F7 0A                    1157 	.db 0x0a
      0035F8 0D                    1158 	.db 0x0d
      0035F9 20 44 61 74 61 20 69  1159 	.ascii " Data is: %d"
             73 3A 20 25 64
      003605 0A                    1160 	.db 0x0a
      003606 0D                    1161 	.db 0x0d
      003607 00                    1162 	.db 0x00
                                   1163 	.area CSEG    (CODE)
                                   1164 	.area CONST   (CODE)
      003608                       1165 ___str_13:
      003608 0A                    1166 	.db 0x0a
      003609 0D                    1167 	.db 0x0d
      00360A 20 48 65 78 20 44 75  1168 	.ascii " Hex Dump"
             6D 70
      003613 0A                    1169 	.db 0x0a
      003614 0D                    1170 	.db 0x0d
      003615 00                    1171 	.db 0x00
                                   1172 	.area CSEG    (CODE)
                                   1173 	.area CONST   (CODE)
      003616                       1174 ___str_14:
      003616 0A                    1175 	.db 0x0a
      003617 0D                    1176 	.db 0x0d
      003618 20 41 64 64 72 65 73  1177 	.ascii " Address Start: "
             73 20 53 74 61 72 74
             3A 20
      003628 00                    1178 	.db 0x00
                                   1179 	.area CSEG    (CODE)
                                   1180 	.area CONST   (CODE)
      003629                       1181 ___str_15:
      003629 0A                    1182 	.db 0x0a
      00362A 0D                    1183 	.db 0x0d
      00362B 20 41 64 64 72 65 73  1184 	.ascii " Address End: "
             73 20 45 6E 64 3A 20
      003639 00                    1185 	.db 0x00
                                   1186 	.area CSEG    (CODE)
                                   1187 	.area CONST   (CODE)
      00363A                       1188 ___str_16:
      00363A 0A                    1189 	.db 0x0a
      00363B 0D                    1190 	.db 0x0d
      00363C 20 52 65 73 65 74 69  1191 	.ascii " Reseting EEPROM"
             6E 67 20 45 45 50 52
             4F 4D
      00364C 0A                    1192 	.db 0x0a
      00364D 0D                    1193 	.db 0x0d
      00364E 00                    1194 	.db 0x00
                                   1195 	.area CSEG    (CODE)
                                   1196 	.area XINIT   (CODE)
                                   1197 	.area CABS    (ABS,CODE)
