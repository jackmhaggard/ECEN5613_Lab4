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
      000008                        434 _Program_sloc0_1_0:
      000008                        435 	.ds 2
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable items in internal ram
                                    438 ;--------------------------------------------------------
                                    439 ;--------------------------------------------------------
                                    440 ; Stack segment in internal ram
                                    441 ;--------------------------------------------------------
                                    442 	.area SSEG
      000021                        443 __start__stack:
      000021                        444 	.ds	1
                                    445 
                                    446 ;--------------------------------------------------------
                                    447 ; indirectly addressable internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area ISEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; absolute internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area IABS    (ABS,DATA)
                                    454 	.area IABS    (ABS,DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; bit data
                                    457 ;--------------------------------------------------------
                                    458 	.area BSEG    (BIT)
                                    459 ;--------------------------------------------------------
                                    460 ; paged external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area PSEG    (PAG,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; uninitialized external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XSEG    (XDATA)
      000001                        467 _Input_temp_10000_67:
      000001                        468 	.ds 6
                                    469 ;--------------------------------------------------------
                                    470 ; absolute external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XABS    (ABS,XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; initialized external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XISEG   (XDATA)
                                    477 	.area HOME    (CODE)
                                    478 	.area GSINIT0 (CODE)
                                    479 	.area GSINIT1 (CODE)
                                    480 	.area GSINIT2 (CODE)
                                    481 	.area GSINIT3 (CODE)
                                    482 	.area GSINIT4 (CODE)
                                    483 	.area GSINIT5 (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 	.area GSFINAL (CODE)
                                    486 	.area CSEG    (CODE)
                                    487 ;--------------------------------------------------------
                                    488 ; interrupt vector
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
      002000                        491 __interrupt_vect:
      002000 02 20 4C         [24]  492 	ljmp	__sdcc_gsinit_startup
                                    493 ; restartable atomic support routines
      002003                        494 	.ds	5
      002008                        495 sdcc_atomic_exchange_rollback_start::
      002008 00               [12]  496 	nop
      002009 00               [12]  497 	nop
      00200A                        498 sdcc_atomic_exchange_pdata_impl:
      00200A E2               [24]  499 	movx	a, @r0
      00200B FB               [12]  500 	mov	r3, a
      00200C EA               [12]  501 	mov	a, r2
      00200D F2               [24]  502 	movx	@r0, a
      00200E 80 2C            [24]  503 	sjmp	sdcc_atomic_exchange_exit
      002010 00               [12]  504 	nop
      002011 00               [12]  505 	nop
      002012                        506 sdcc_atomic_exchange_xdata_impl:
      002012 E0               [24]  507 	movx	a, @dptr
      002013 FB               [12]  508 	mov	r3, a
      002014 EA               [12]  509 	mov	a, r2
      002015 F0               [24]  510 	movx	@dptr, a
      002016 80 24            [24]  511 	sjmp	sdcc_atomic_exchange_exit
      002018                        512 sdcc_atomic_compare_exchange_idata_impl:
      002018 E6               [12]  513 	mov	a, @r0
      002019 B5 02 02         [24]  514 	cjne	a, ar2, .+#5
      00201C EB               [12]  515 	mov	a, r3
      00201D F6               [12]  516 	mov	@r0, a
      00201E 22               [24]  517 	ret
      00201F 00               [12]  518 	nop
      002020                        519 sdcc_atomic_compare_exchange_pdata_impl:
      002020 E2               [24]  520 	movx	a, @r0
      002021 B5 02 02         [24]  521 	cjne	a, ar2, .+#5
      002024 EB               [12]  522 	mov	a, r3
      002025 F2               [24]  523 	movx	@r0, a
      002026 22               [24]  524 	ret
      002027 00               [12]  525 	nop
      002028                        526 sdcc_atomic_compare_exchange_xdata_impl:
      002028 E0               [24]  527 	movx	a, @dptr
      002029 B5 02 02         [24]  528 	cjne	a, ar2, .+#5
      00202C EB               [12]  529 	mov	a, r3
      00202D F0               [24]  530 	movx	@dptr, a
      00202E 22               [24]  531 	ret
      00202F                        532 sdcc_atomic_exchange_rollback_end::
                                    533 
      00202F                        534 sdcc_atomic_exchange_gptr_impl::
      00202F 30 F6 E0         [24]  535 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      002032 A8 82            [24]  536 	mov	r0, dpl
      002034 20 F5 D3         [24]  537 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      002037                        538 sdcc_atomic_exchange_idata_impl:
      002037 EA               [12]  539 	mov	a, r2
      002038 C6               [12]  540 	xch	a, @r0
      002039 F5 82            [12]  541 	mov	dpl, a
      00203B 22               [24]  542 	ret
      00203C                        543 sdcc_atomic_exchange_exit:
      00203C 8B 82            [24]  544 	mov	dpl, r3
      00203E 22               [24]  545 	ret
      00203F                        546 sdcc_atomic_compare_exchange_gptr_impl::
      00203F 30 F6 E6         [24]  547 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      002042 A8 82            [24]  548 	mov	r0, dpl
      002044 20 F5 D9         [24]  549 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      002047 80 CF            [24]  550 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    551 ;--------------------------------------------------------
                                    552 ; global & static initialisations
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.globl __sdcc_gsinit_startup
                                    559 	.globl __sdcc_program_startup
                                    560 	.globl __start__stack
                                    561 	.globl __mcs51_genXINIT
                                    562 	.globl __mcs51_genXRAMCLEAR
                                    563 	.globl __mcs51_genRAMCLEAR
                                    564 	.area GSFINAL (CODE)
      0020A5 02 20 49         [24]  565 	ljmp	__sdcc_program_startup
                                    566 ;--------------------------------------------------------
                                    567 ; Home
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
                                    570 	.area HOME    (CODE)
      002049                        571 __sdcc_program_startup:
      002049 02 20 A8         [24]  572 	ljmp	_main
                                    573 ;	return from main will return to caller
                                    574 ;--------------------------------------------------------
                                    575 ; code
                                    576 ;--------------------------------------------------------
                                    577 	.area CSEG    (CODE)
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'main'
                                    580 ;------------------------------------------------------------
                                    581 ;	src/main.c:42: void main(){
                                    582 ;	-----------------------------------------
                                    583 ;	 function main
                                    584 ;	-----------------------------------------
      0020A8                        585 _main:
                           000007   586 	ar7 = 0x07
                           000006   587 	ar6 = 0x06
                           000005   588 	ar5 = 0x05
                           000004   589 	ar4 = 0x04
                           000003   590 	ar3 = 0x03
                           000002   591 	ar2 = 0x02
                           000001   592 	ar1 = 0x01
                           000000   593 	ar0 = 0x00
                                    594 ;	src/main.c:44: i2cSetPort();
      0020A8 12 25 39         [24]  595 	lcall	_i2cSetPort
                                    596 ;	src/main.c:46: i2cBegin(11059200, 1);
      0020AB 90 00 14         [24]  597 	mov	dptr,#_i2cBegin_PARM_2
      0020AE 74 01            [12]  598 	mov	a,#0x01
      0020B0 F0               [24]  599 	movx	@dptr,a
      0020B1 E4               [12]  600 	clr	a
      0020B2 A3               [24]  601 	inc	dptr
      0020B3 F0               [24]  602 	movx	@dptr,a
      0020B4 A3               [24]  603 	inc	dptr
      0020B5 F0               [24]  604 	movx	@dptr,a
      0020B6 A3               [24]  605 	inc	dptr
      0020B7 F0               [24]  606 	movx	@dptr,a
      0020B8 90 C0 00         [24]  607 	mov	dptr,#0xc000
      0020BB 75 F0 A8         [24]  608 	mov	b, #0xa8
      0020BE 12 27 5D         [24]  609 	lcall	_i2cBegin
                                    610 ;	src/main.c:48: i2csetAdd(0xA0);
      0020C1 75 82 A0         [24]  611 	mov	dpl, #0xa0
      0020C4 12 28 0D         [24]  612 	lcall	_i2csetAdd
                                    613 ;	src/main.c:49: printf("\n\r Lab4 Part 1 EEPROM Program\n\r");
      0020C7 74 B3            [12]  614 	mov	a,#___str_0
      0020C9 C0 E0            [24]  615 	push	acc
      0020CB 74 37            [12]  616 	mov	a,#(___str_0 >> 8)
      0020CD C0 E0            [24]  617 	push	acc
      0020CF 74 80            [12]  618 	mov	a,#0x80
      0020D1 C0 E0            [24]  619 	push	acc
      0020D3 12 2D 7F         [24]  620 	lcall	_printf
      0020D6 15 81            [12]  621 	dec	sp
      0020D8 15 81            [12]  622 	dec	sp
      0020DA 15 81            [12]  623 	dec	sp
                                    624 ;	src/main.c:51: while(1){
      0020DC                        625 00102$:
                                    626 ;	src/main.c:54: Program();
      0020DC 12 21 3C         [24]  627 	lcall	_Program
                                    628 ;	src/main.c:57: }
      0020DF 80 FB            [24]  629 	sjmp	00102$
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'Input'
                                    632 ;------------------------------------------------------------
                                    633 ;temp          Allocated with name '_Input_temp_10000_67'
                                    634 ;c             Allocated with name '_Input_c_10000_67'
                                    635 ;i             Allocated with name '_Input_i_10000_67'
                                    636 ;------------------------------------------------------------
                                    637 ;	src/main.c:59: int Input(){
                                    638 ;	-----------------------------------------
                                    639 ;	 function Input
                                    640 ;	-----------------------------------------
      0020E1                        641 _Input:
                                    642 ;	src/main.c:63: while(1){
      0020E1 7F 00            [12]  643 	mov	r7,#0x00
      0020E3                        644 00106$:
                                    645 ;	src/main.c:64: c = getchar();
      0020E3 C0 07            [24]  646 	push	ar7
      0020E5 12 25 1F         [24]  647 	lcall	_getchar
      0020E8 AD 82            [24]  648 	mov	r5, dpl
      0020EA D0 07            [24]  649 	pop	ar7
                                    650 ;	src/main.c:65: if(c == '\r'){
      0020EC BD 0D 02         [24]  651 	cjne	r5,#0x0d,00129$
      0020EF 80 21            [24]  652 	sjmp	00107$
      0020F1                        653 00129$:
                                    654 ;	src/main.c:68: if(i < sizeof(temp)-1){
      0020F1 BF 05 00         [24]  655 	cjne	r7,#0x05,00130$
      0020F4                        656 00130$:
      0020F4 50 0D            [24]  657 	jnc	00104$
                                    658 ;	src/main.c:69: temp[i] = c;
      0020F6 EF               [12]  659 	mov	a,r7
      0020F7 24 01            [12]  660 	add	a, #_Input_temp_10000_67
      0020F9 F5 82            [12]  661 	mov	dpl,a
      0020FB E4               [12]  662 	clr	a
      0020FC 34 00            [12]  663 	addc	a, #(_Input_temp_10000_67 >> 8)
      0020FE F5 83            [12]  664 	mov	dph,a
      002100 ED               [12]  665 	mov	a,r5
      002101 F0               [24]  666 	movx	@dptr,a
                                    667 ;	src/main.c:70: i++;
      002102 0F               [12]  668 	inc	r7
      002103                        669 00104$:
                                    670 ;	src/main.c:73: putchar(c);
      002103 7E 00            [12]  671 	mov	r6,#0x00
      002105 8D 82            [24]  672 	mov	dpl, r5
      002107 8E 83            [24]  673 	mov	dph, r6
      002109 C0 07            [24]  674 	push	ar7
      00210B 12 25 00         [24]  675 	lcall	_putchar
      00210E D0 07            [24]  676 	pop	ar7
      002110 80 D1            [24]  677 	sjmp	00106$
      002112                        678 00107$:
                                    679 ;	src/main.c:75: temp[i] = '\0';
      002112 EF               [12]  680 	mov	a,r7
      002113 24 01            [12]  681 	add	a, #_Input_temp_10000_67
      002115 F5 82            [12]  682 	mov	dpl,a
      002117 E4               [12]  683 	clr	a
      002118 34 00            [12]  684 	addc	a, #(_Input_temp_10000_67 >> 8)
      00211A F5 83            [12]  685 	mov	dph,a
      00211C E4               [12]  686 	clr	a
      00211D F0               [24]  687 	movx	@dptr,a
                                    688 ;	src/main.c:76: printf("\n\r");
      00211E 74 D3            [12]  689 	mov	a,#___str_1
      002120 C0 E0            [24]  690 	push	acc
      002122 74 37            [12]  691 	mov	a,#(___str_1 >> 8)
      002124 C0 E0            [24]  692 	push	acc
      002126 74 80            [12]  693 	mov	a,#0x80
      002128 C0 E0            [24]  694 	push	acc
      00212A 12 2D 7F         [24]  695 	lcall	_printf
      00212D 15 81            [12]  696 	dec	sp
      00212F 15 81            [12]  697 	dec	sp
      002131 15 81            [12]  698 	dec	sp
                                    699 ;	src/main.c:77: return atoi(temp);
      002133 90 00 01         [24]  700 	mov	dptr,#_Input_temp_10000_67
      002136 75 F0 00         [24]  701 	mov	b, #0x00
                                    702 ;	src/main.c:78: }
      002139 02 29 C4         [24]  703 	ljmp	_atoi
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'Program'
                                    706 ;------------------------------------------------------------
                                    707 ;sloc0         Allocated with name '_Program_sloc0_1_0'
                                    708 ;c             Allocated with name '_Program_c_10000_71'
                                    709 ;page          Allocated with name '_Program_page_30001_74'
                                    710 ;address       Allocated with name '_Program_address_30002_75'
                                    711 ;data          Allocated with name '_Program_data_30003_76'
                                    712 ;temp          Allocated with name '_Program_temp_30003_76'
                                    713 ;page          Allocated with name '_Program_page_30001_78'
                                    714 ;address       Allocated with name '_Program_address_30002_79'
                                    715 ;temp          Allocated with name '_Program_temp_30002_79'
                                    716 ;data          Allocated with name '_Program_data_30003_80'
                                    717 ;page          Allocated with name '_Program_page_30001_82'
                                    718 ;address1      Allocated with name '_Program_address1_30002_83'
                                    719 ;address2      Allocated with name '_Program_address2_30003_84'
                                    720 ;length        Allocated with name '_Program_length_30003_84'
                                    721 ;temp          Allocated with name '_Program_temp_30003_84'
                                    722 ;i             Allocated with name '_Program_i_40003_85'
                                    723 ;data          Allocated with name '_Program_data_50004_88'
                                    724 ;i             Allocated with name '_Program_i_40000_90'
                                    725 ;------------------------------------------------------------
                                    726 ;	src/main.c:79: void Program()
                                    727 ;	-----------------------------------------
                                    728 ;	 function Program
                                    729 ;	-----------------------------------------
      00213C                        730 _Program:
                                    731 ;	src/main.c:83: while(1)
      00213C                        732 00117$:
                                    733 ;	src/main.c:85: printf("\n\r ------ Commands ------\n\r");
      00213C 74 D6            [12]  734 	mov	a,#___str_2
      00213E C0 E0            [24]  735 	push	acc
      002140 74 37            [12]  736 	mov	a,#(___str_2 >> 8)
      002142 C0 E0            [24]  737 	push	acc
      002144 74 80            [12]  738 	mov	a,#0x80
      002146 C0 E0            [24]  739 	push	acc
      002148 12 2D 7F         [24]  740 	lcall	_printf
      00214B 15 81            [12]  741 	dec	sp
      00214D 15 81            [12]  742 	dec	sp
      00214F 15 81            [12]  743 	dec	sp
                                    744 ;	src/main.c:86: printf("\n\r w : Write Byte\n\r");
      002151 74 F2            [12]  745 	mov	a,#___str_3
      002153 C0 E0            [24]  746 	push	acc
      002155 74 37            [12]  747 	mov	a,#(___str_3 >> 8)
      002157 C0 E0            [24]  748 	push	acc
      002159 74 80            [12]  749 	mov	a,#0x80
      00215B C0 E0            [24]  750 	push	acc
      00215D 12 2D 7F         [24]  751 	lcall	_printf
      002160 15 81            [12]  752 	dec	sp
      002162 15 81            [12]  753 	dec	sp
      002164 15 81            [12]  754 	dec	sp
                                    755 ;	src/main.c:87: printf("\n\r r : Read Byte\n\r");
      002166 74 06            [12]  756 	mov	a,#___str_4
      002168 C0 E0            [24]  757 	push	acc
      00216A 74 38            [12]  758 	mov	a,#(___str_4 >> 8)
      00216C C0 E0            [24]  759 	push	acc
      00216E 74 80            [12]  760 	mov	a,#0x80
      002170 C0 E0            [24]  761 	push	acc
      002172 12 2D 7F         [24]  762 	lcall	_printf
      002175 15 81            [12]  763 	dec	sp
      002177 15 81            [12]  764 	dec	sp
      002179 15 81            [12]  765 	dec	sp
                                    766 ;	src/main.c:88: printf("\n\r h : Hex Dump\n\r");
      00217B 74 19            [12]  767 	mov	a,#___str_5
      00217D C0 E0            [24]  768 	push	acc
      00217F 74 38            [12]  769 	mov	a,#(___str_5 >> 8)
      002181 C0 E0            [24]  770 	push	acc
      002183 74 80            [12]  771 	mov	a,#0x80
      002185 C0 E0            [24]  772 	push	acc
      002187 12 2D 7F         [24]  773 	lcall	_printf
      00218A 15 81            [12]  774 	dec	sp
      00218C 15 81            [12]  775 	dec	sp
      00218E 15 81            [12]  776 	dec	sp
                                    777 ;	src/main.c:89: printf("\n\r e : Reset EEPROM\n\r");
      002190 74 2B            [12]  778 	mov	a,#___str_6
      002192 C0 E0            [24]  779 	push	acc
      002194 74 38            [12]  780 	mov	a,#(___str_6 >> 8)
      002196 C0 E0            [24]  781 	push	acc
      002198 74 80            [12]  782 	mov	a,#0x80
      00219A C0 E0            [24]  783 	push	acc
      00219C 12 2D 7F         [24]  784 	lcall	_printf
      00219F 15 81            [12]  785 	dec	sp
      0021A1 15 81            [12]  786 	dec	sp
      0021A3 15 81            [12]  787 	dec	sp
                                    788 ;	src/main.c:90: c = getchar();
      0021A5 12 25 1F         [24]  789 	lcall	_getchar
      0021A8 AE 82            [24]  790 	mov	r6, dpl
                                    791 ;	src/main.c:91: putchar(c);
      0021AA 8E 05            [24]  792 	mov	ar5,r6
      0021AC 7F 00            [12]  793 	mov	r7,#0x00
      0021AE 8D 82            [24]  794 	mov	dpl, r5
      0021B0 8F 83            [24]  795 	mov	dph, r7
      0021B2 C0 06            [24]  796 	push	ar6
      0021B4 12 25 00         [24]  797 	lcall	_putchar
      0021B7 D0 06            [24]  798 	pop	ar6
                                    799 ;	src/main.c:92: if(c == 'w')
      0021B9 BE 77 02         [24]  800 	cjne	r6,#0x77,00188$
      0021BC 80 03            [24]  801 	sjmp	00189$
      0021BE                        802 00188$:
      0021BE 02 22 64         [24]  803 	ljmp	00114$
      0021C1                        804 00189$:
                                    805 ;	src/main.c:94: printf("\n\r Writing a Byte\n\r");
      0021C1 74 41            [12]  806 	mov	a,#___str_7
      0021C3 C0 E0            [24]  807 	push	acc
      0021C5 74 38            [12]  808 	mov	a,#(___str_7 >> 8)
      0021C7 C0 E0            [24]  809 	push	acc
      0021C9 74 80            [12]  810 	mov	a,#0x80
      0021CB C0 E0            [24]  811 	push	acc
      0021CD 12 2D 7F         [24]  812 	lcall	_printf
      0021D0 15 81            [12]  813 	dec	sp
      0021D2 15 81            [12]  814 	dec	sp
      0021D4 15 81            [12]  815 	dec	sp
                                    816 ;	src/main.c:95: printf("\n\r Page: ");
      0021D6 74 55            [12]  817 	mov	a,#___str_8
      0021D8 C0 E0            [24]  818 	push	acc
      0021DA 74 38            [12]  819 	mov	a,#(___str_8 >> 8)
      0021DC C0 E0            [24]  820 	push	acc
      0021DE 74 80            [12]  821 	mov	a,#0x80
      0021E0 C0 E0            [24]  822 	push	acc
      0021E2 12 2D 7F         [24]  823 	lcall	_printf
      0021E5 15 81            [12]  824 	dec	sp
      0021E7 15 81            [12]  825 	dec	sp
      0021E9 15 81            [12]  826 	dec	sp
                                    827 ;	src/main.c:97: int page = Input();
      0021EB 12 20 E1         [24]  828 	lcall	_Input
      0021EE AD 82            [24]  829 	mov	r5, dpl
      0021F0 AF 83            [24]  830 	mov	r7, dph
                                    831 ;	src/main.c:98: printf("\n\r Address: ");
      0021F2 C0 07            [24]  832 	push	ar7
      0021F4 C0 05            [24]  833 	push	ar5
      0021F6 74 5F            [12]  834 	mov	a,#___str_9
      0021F8 C0 E0            [24]  835 	push	acc
      0021FA 74 38            [12]  836 	mov	a,#(___str_9 >> 8)
      0021FC C0 E0            [24]  837 	push	acc
      0021FE 74 80            [12]  838 	mov	a,#0x80
      002200 C0 E0            [24]  839 	push	acc
      002202 12 2D 7F         [24]  840 	lcall	_printf
      002205 15 81            [12]  841 	dec	sp
      002207 15 81            [12]  842 	dec	sp
      002209 15 81            [12]  843 	dec	sp
                                    844 ;	src/main.c:100: int address = Input();
      00220B 12 20 E1         [24]  845 	lcall	_Input
      00220E AB 82            [24]  846 	mov	r3, dpl
      002210 AC 83            [24]  847 	mov	r4, dph
                                    848 ;	src/main.c:102: printf("\n\r Data: ");
      002212 C0 04            [24]  849 	push	ar4
      002214 C0 03            [24]  850 	push	ar3
      002216 74 6C            [12]  851 	mov	a,#___str_10
      002218 C0 E0            [24]  852 	push	acc
      00221A 74 38            [12]  853 	mov	a,#(___str_10 >> 8)
      00221C C0 E0            [24]  854 	push	acc
      00221E 74 80            [12]  855 	mov	a,#0x80
      002220 C0 E0            [24]  856 	push	acc
      002222 12 2D 7F         [24]  857 	lcall	_printf
      002225 15 81            [12]  858 	dec	sp
      002227 15 81            [12]  859 	dec	sp
      002229 15 81            [12]  860 	dec	sp
                                    861 ;	src/main.c:104: int data = Input();
      00222B 12 20 E1         [24]  862 	lcall	_Input
      00222E A9 82            [24]  863 	mov	r1, dpl
      002230 AA 83            [24]  864 	mov	r2, dph
      002232 D0 03            [24]  865 	pop	ar3
      002234 D0 04            [24]  866 	pop	ar4
      002236 D0 05            [24]  867 	pop	ar5
      002238 D0 07            [24]  868 	pop	ar7
                                    869 ;	src/main.c:107: temp = temp | (page << 1);
      00223A ED               [12]  870 	mov	a,r5
      00223B 2D               [12]  871 	add	a,r5
      00223C FD               [12]  872 	mov	r5,a
      00223D 74 A0            [12]  873 	mov	a,#0xa0
      00223F 4D               [12]  874 	orl	a,r5
                                    875 ;	src/main.c:108: temp = temp & 0xFE;
      002240 54 FE            [12]  876 	anl	a,#0xfe
                                    877 ;	src/main.c:109: i2csetAdd(temp);
      002242 F5 82            [12]  878 	mov	dpl,a
      002244 C0 04            [24]  879 	push	ar4
      002246 C0 03            [24]  880 	push	ar3
      002248 C0 02            [24]  881 	push	ar2
      00224A C0 01            [24]  882 	push	ar1
      00224C 12 28 0D         [24]  883 	lcall	_i2csetAdd
      00224F D0 01            [24]  884 	pop	ar1
      002251 D0 02            [24]  885 	pop	ar2
      002253 D0 03            [24]  886 	pop	ar3
      002255 D0 04            [24]  887 	pop	ar4
                                    888 ;	src/main.c:110: i2cWrite(data, address);
      002257 90 00 11         [24]  889 	mov	dptr,#_i2cWrite_PARM_2
      00225A EB               [12]  890 	mov	a,r3
      00225B F0               [24]  891 	movx	@dptr,a
      00225C 89 82            [24]  892 	mov	dpl, r1
      00225E 12 26 D1         [24]  893 	lcall	_i2cWrite
      002261 02 21 3C         [24]  894 	ljmp	00117$
      002264                        895 00114$:
                                    896 ;	src/main.c:113: else if(c == 'r'){
      002264 BE 72 02         [24]  897 	cjne	r6,#0x72,00190$
      002267 80 03            [24]  898 	sjmp	00191$
      002269                        899 00190$:
      002269 02 22 FB         [24]  900 	ljmp	00111$
      00226C                        901 00191$:
                                    902 ;	src/main.c:114: printf("\n\r Reading a Byte\n\r");
      00226C 74 76            [12]  903 	mov	a,#___str_11
      00226E C0 E0            [24]  904 	push	acc
      002270 74 38            [12]  905 	mov	a,#(___str_11 >> 8)
      002272 C0 E0            [24]  906 	push	acc
      002274 74 80            [12]  907 	mov	a,#0x80
      002276 C0 E0            [24]  908 	push	acc
      002278 12 2D 7F         [24]  909 	lcall	_printf
      00227B 15 81            [12]  910 	dec	sp
      00227D 15 81            [12]  911 	dec	sp
      00227F 15 81            [12]  912 	dec	sp
                                    913 ;	src/main.c:115: printf("\n\r Page: ");
      002281 74 55            [12]  914 	mov	a,#___str_8
      002283 C0 E0            [24]  915 	push	acc
      002285 74 38            [12]  916 	mov	a,#(___str_8 >> 8)
      002287 C0 E0            [24]  917 	push	acc
      002289 74 80            [12]  918 	mov	a,#0x80
      00228B C0 E0            [24]  919 	push	acc
      00228D 12 2D 7F         [24]  920 	lcall	_printf
      002290 15 81            [12]  921 	dec	sp
      002292 15 81            [12]  922 	dec	sp
      002294 15 81            [12]  923 	dec	sp
                                    924 ;	src/main.c:117: int page = Input();
      002296 12 20 E1         [24]  925 	lcall	_Input
      002299 AD 82            [24]  926 	mov	r5, dpl
      00229B AF 83            [24]  927 	mov	r7, dph
                                    928 ;	src/main.c:118: printf("\n\r Address: ");
      00229D C0 07            [24]  929 	push	ar7
      00229F C0 05            [24]  930 	push	ar5
      0022A1 74 5F            [12]  931 	mov	a,#___str_9
      0022A3 C0 E0            [24]  932 	push	acc
      0022A5 74 38            [12]  933 	mov	a,#(___str_9 >> 8)
      0022A7 C0 E0            [24]  934 	push	acc
      0022A9 74 80            [12]  935 	mov	a,#0x80
      0022AB C0 E0            [24]  936 	push	acc
      0022AD 12 2D 7F         [24]  937 	lcall	_printf
      0022B0 15 81            [12]  938 	dec	sp
      0022B2 15 81            [12]  939 	dec	sp
      0022B4 15 81            [12]  940 	dec	sp
                                    941 ;	src/main.c:120: int address = Input();
      0022B6 12 20 E1         [24]  942 	lcall	_Input
      0022B9 AB 82            [24]  943 	mov	r3, dpl
      0022BB AC 83            [24]  944 	mov	r4, dph
      0022BD D0 05            [24]  945 	pop	ar5
      0022BF D0 07            [24]  946 	pop	ar7
                                    947 ;	src/main.c:123: temp = temp | (page << 1);
      0022C1 ED               [12]  948 	mov	a,r5
      0022C2 2D               [12]  949 	add	a,r5
      0022C3 FD               [12]  950 	mov	r5,a
      0022C4 74 A0            [12]  951 	mov	a,#0xa0
      0022C6 4D               [12]  952 	orl	a,r5
                                    953 ;	src/main.c:124: temp = temp & 0xFE;
      0022C7 54 FE            [12]  954 	anl	a,#0xfe
                                    955 ;	src/main.c:125: i2csetAdd(temp);
      0022C9 F5 82            [12]  956 	mov	dpl,a
      0022CB C0 04            [24]  957 	push	ar4
      0022CD C0 03            [24]  958 	push	ar3
      0022CF 12 28 0D         [24]  959 	lcall	_i2csetAdd
      0022D2 D0 03            [24]  960 	pop	ar3
      0022D4 D0 04            [24]  961 	pop	ar4
                                    962 ;	src/main.c:126: unsigned char data = i2cRead(address);
      0022D6 8B 82            [24]  963 	mov	dpl, r3
      0022D8 12 27 0D         [24]  964 	lcall	_i2cRead
      0022DB AF 82            [24]  965 	mov	r7, dpl
                                    966 ;	src/main.c:128: printf("\n\r Data is: %d\n\r", data);
      0022DD 7D 00            [12]  967 	mov	r5,#0x00
      0022DF C0 07            [24]  968 	push	ar7
      0022E1 C0 05            [24]  969 	push	ar5
      0022E3 74 8A            [12]  970 	mov	a,#___str_12
      0022E5 C0 E0            [24]  971 	push	acc
      0022E7 74 38            [12]  972 	mov	a,#(___str_12 >> 8)
      0022E9 C0 E0            [24]  973 	push	acc
      0022EB 74 80            [12]  974 	mov	a,#0x80
      0022ED C0 E0            [24]  975 	push	acc
      0022EF 12 2D 7F         [24]  976 	lcall	_printf
      0022F2 E5 81            [12]  977 	mov	a,sp
      0022F4 24 FB            [12]  978 	add	a,#0xfb
      0022F6 F5 81            [12]  979 	mov	sp,a
      0022F8 02 21 3C         [24]  980 	ljmp	00117$
      0022FB                        981 00111$:
                                    982 ;	src/main.c:131: else if(c == 'h'){
      0022FB BE 68 02         [24]  983 	cjne	r6,#0x68,00192$
      0022FE 80 03            [24]  984 	sjmp	00193$
      002300                        985 00192$:
      002300 02 24 BD         [24]  986 	ljmp	00108$
      002303                        987 00193$:
                                    988 ;	src/main.c:132: printf("\n\r Hex Dump\n\r");
      002303 74 9B            [12]  989 	mov	a,#___str_13
      002305 C0 E0            [24]  990 	push	acc
      002307 74 38            [12]  991 	mov	a,#(___str_13 >> 8)
      002309 C0 E0            [24]  992 	push	acc
      00230B 74 80            [12]  993 	mov	a,#0x80
      00230D C0 E0            [24]  994 	push	acc
      00230F 12 2D 7F         [24]  995 	lcall	_printf
      002312 15 81            [12]  996 	dec	sp
      002314 15 81            [12]  997 	dec	sp
      002316 15 81            [12]  998 	dec	sp
                                    999 ;	src/main.c:133: printf("\n\r Page: ");
      002318 74 55            [12] 1000 	mov	a,#___str_8
      00231A C0 E0            [24] 1001 	push	acc
      00231C 74 38            [12] 1002 	mov	a,#(___str_8 >> 8)
      00231E C0 E0            [24] 1003 	push	acc
      002320 74 80            [12] 1004 	mov	a,#0x80
      002322 C0 E0            [24] 1005 	push	acc
      002324 12 2D 7F         [24] 1006 	lcall	_printf
      002327 15 81            [12] 1007 	dec	sp
      002329 15 81            [12] 1008 	dec	sp
      00232B 15 81            [12] 1009 	dec	sp
                                   1010 ;	src/main.c:134: int page = Input();
      00232D 12 20 E1         [24] 1011 	lcall	_Input
      002330 AD 82            [24] 1012 	mov	r5, dpl
      002332 AF 83            [24] 1013 	mov	r7, dph
                                   1014 ;	src/main.c:135: printf("\n\r Address Start: ");
      002334 C0 07            [24] 1015 	push	ar7
      002336 C0 05            [24] 1016 	push	ar5
      002338 74 A9            [12] 1017 	mov	a,#___str_14
      00233A C0 E0            [24] 1018 	push	acc
      00233C 74 38            [12] 1019 	mov	a,#(___str_14 >> 8)
      00233E C0 E0            [24] 1020 	push	acc
      002340 74 80            [12] 1021 	mov	a,#0x80
      002342 C0 E0            [24] 1022 	push	acc
      002344 12 2D 7F         [24] 1023 	lcall	_printf
      002347 15 81            [12] 1024 	dec	sp
      002349 15 81            [12] 1025 	dec	sp
      00234B 15 81            [12] 1026 	dec	sp
                                   1027 ;	src/main.c:137: int address1 = Input();  
      00234D 12 20 E1         [24] 1028 	lcall	_Input
      002350 AB 82            [24] 1029 	mov	r3, dpl
      002352 AC 83            [24] 1030 	mov	r4, dph
                                   1031 ;	src/main.c:139: printf("\n\r Address End: ");
      002354 C0 04            [24] 1032 	push	ar4
      002356 C0 03            [24] 1033 	push	ar3
      002358 74 BC            [12] 1034 	mov	a,#___str_15
      00235A C0 E0            [24] 1035 	push	acc
      00235C 74 38            [12] 1036 	mov	a,#(___str_15 >> 8)
      00235E C0 E0            [24] 1037 	push	acc
      002360 74 80            [12] 1038 	mov	a,#0x80
      002362 C0 E0            [24] 1039 	push	acc
      002364 12 2D 7F         [24] 1040 	lcall	_printf
      002367 15 81            [12] 1041 	dec	sp
      002369 15 81            [12] 1042 	dec	sp
      00236B 15 81            [12] 1043 	dec	sp
                                   1044 ;	src/main.c:141: int address2 = Input();
      00236D 12 20 E1         [24] 1045 	lcall	_Input
      002370 E5 82            [12] 1046 	mov	a, dpl
      002372 85 83 F0         [24] 1047 	mov	b, dph
      002375 D0 03            [24] 1048 	pop	ar3
      002377 D0 04            [24] 1049 	pop	ar4
      002379 D0 05            [24] 1050 	pop	ar5
                                   1051 ;	src/main.c:142: int length = address2-address1;  
      00237B C3               [12] 1052 	clr	c
      00237C 9B               [12] 1053 	subb	a,r3
      00237D F9               [12] 1054 	mov	r1,a
      00237E E5 F0            [12] 1055 	mov	a,b
      002380 9C               [12] 1056 	subb	a,r4
      002381 FA               [12] 1057 	mov	r2,a
                                   1058 ;	src/main.c:144: temp = temp | (page << 1);
      002382 8D 00            [24] 1059 	mov	ar0,r5
      002384 E8               [12] 1060 	mov	a,r0
      002385 28               [12] 1061 	add	a,r0
      002386 F8               [12] 1062 	mov	r0,a
      002387 74 A0            [12] 1063 	mov	a,#0xa0
      002389 48               [12] 1064 	orl	a,r0
                                   1065 ;	src/main.c:145: temp = temp & 0xFE;
      00238A 54 FE            [12] 1066 	anl	a,#0xfe
                                   1067 ;	src/main.c:146: i2csetAdd(temp);      
      00238C F5 82            [12] 1068 	mov	dpl,a
      00238E C0 05            [24] 1069 	push	ar5
      002390 C0 04            [24] 1070 	push	ar4
      002392 C0 03            [24] 1071 	push	ar3
      002394 C0 02            [24] 1072 	push	ar2
      002396 C0 01            [24] 1073 	push	ar1
      002398 12 28 0D         [24] 1074 	lcall	_i2csetAdd
      00239B D0 01            [24] 1075 	pop	ar1
      00239D D0 02            [24] 1076 	pop	ar2
      00239F D0 03            [24] 1077 	pop	ar3
      0023A1 D0 04            [24] 1078 	pop	ar4
      0023A3 D0 05            [24] 1079 	pop	ar5
      0023A5 D0 07            [24] 1080 	pop	ar7
                                   1081 ;	src/main.c:147: for(int i = 0; i < length; i++){
      0023A7 E4               [12] 1082 	clr	a
      0023A8 F5 08            [12] 1083 	mov	_Program_sloc0_1_0,a
      0023AA F5 09            [12] 1084 	mov	(_Program_sloc0_1_0 + 1),a
      0023AC                       1085 00120$:
      0023AC C3               [12] 1086 	clr	c
      0023AD E5 08            [12] 1087 	mov	a,_Program_sloc0_1_0
      0023AF 99               [12] 1088 	subb	a,r1
      0023B0 E5 09            [12] 1089 	mov	a,(_Program_sloc0_1_0 + 1)
      0023B2 64 80            [12] 1090 	xrl	a,#0x80
      0023B4 8A F0            [24] 1091 	mov	b,r2
      0023B6 63 F0 80         [24] 1092 	xrl	b,#0x80
      0023B9 95 F0            [12] 1093 	subb	a,b
      0023BB 40 03            [24] 1094 	jc	00194$
      0023BD 02 21 3C         [24] 1095 	ljmp	00117$
      0023C0                       1096 00194$:
                                   1097 ;	src/main.c:148: if(i % 16 == 0){
      0023C0 90 00 3C         [24] 1098 	mov	dptr,#__modsint_PARM_2
      0023C3 74 10            [12] 1099 	mov	a,#0x10
      0023C5 F0               [24] 1100 	movx	@dptr,a
      0023C6 E4               [12] 1101 	clr	a
      0023C7 A3               [24] 1102 	inc	dptr
      0023C8 F0               [24] 1103 	movx	@dptr,a
      0023C9 85 08 82         [24] 1104 	mov	dpl, _Program_sloc0_1_0
      0023CC 85 09 83         [24] 1105 	mov	dph, (_Program_sloc0_1_0 + 1)
      0023CF C0 07            [24] 1106 	push	ar7
      0023D1 C0 05            [24] 1107 	push	ar5
      0023D3 C0 04            [24] 1108 	push	ar4
      0023D5 C0 03            [24] 1109 	push	ar3
      0023D7 C0 02            [24] 1110 	push	ar2
      0023D9 C0 01            [24] 1111 	push	ar1
      0023DB 12 2B 1F         [24] 1112 	lcall	__modsint
      0023DE E5 82            [12] 1113 	mov	a, dpl
      0023E0 85 83 F0         [24] 1114 	mov	b, dph
      0023E3 D0 01            [24] 1115 	pop	ar1
      0023E5 D0 02            [24] 1116 	pop	ar2
      0023E7 D0 03            [24] 1117 	pop	ar3
      0023E9 D0 04            [24] 1118 	pop	ar4
      0023EB D0 05            [24] 1119 	pop	ar5
      0023ED D0 07            [24] 1120 	pop	ar7
      0023EF 45 F0            [12] 1121 	orl	a,b
      0023F1 70 72            [24] 1122 	jnz	00102$
                                   1123 ;	src/main.c:149: printf("\n\r ");
      0023F3 C0 01            [24] 1124 	push	ar1
      0023F5 C0 02            [24] 1125 	push	ar2
      0023F7 C0 07            [24] 1126 	push	ar7
      0023F9 C0 05            [24] 1127 	push	ar5
      0023FB C0 04            [24] 1128 	push	ar4
      0023FD C0 03            [24] 1129 	push	ar3
      0023FF C0 02            [24] 1130 	push	ar2
      002401 C0 01            [24] 1131 	push	ar1
      002403 74 CD            [12] 1132 	mov	a,#___str_16
      002405 C0 E0            [24] 1133 	push	acc
      002407 74 38            [12] 1134 	mov	a,#(___str_16 >> 8)
      002409 C0 E0            [24] 1135 	push	acc
      00240B 74 80            [12] 1136 	mov	a,#0x80
      00240D C0 E0            [24] 1137 	push	acc
      00240F 12 2D 7F         [24] 1138 	lcall	_printf
      002412 15 81            [12] 1139 	dec	sp
      002414 15 81            [12] 1140 	dec	sp
      002416 15 81            [12] 1141 	dec	sp
      002418 D0 01            [24] 1142 	pop	ar1
      00241A D0 02            [24] 1143 	pop	ar2
      00241C D0 03            [24] 1144 	pop	ar3
      00241E D0 04            [24] 1145 	pop	ar4
      002420 D0 05            [24] 1146 	pop	ar5
      002422 D0 07            [24] 1147 	pop	ar7
                                   1148 ;	src/main.c:150: printf("%X%X ", page, address1+i);
      002424 E5 08            [12] 1149 	mov	a,_Program_sloc0_1_0
      002426 2B               [12] 1150 	add	a, r3
      002427 F8               [12] 1151 	mov	r0,a
      002428 E5 09            [12] 1152 	mov	a,(_Program_sloc0_1_0 + 1)
      00242A 3C               [12] 1153 	addc	a, r4
      00242B FA               [12] 1154 	mov	r2,a
      00242C C0 07            [24] 1155 	push	ar7
      00242E C0 05            [24] 1156 	push	ar5
      002430 C0 04            [24] 1157 	push	ar4
      002432 C0 03            [24] 1158 	push	ar3
      002434 C0 02            [24] 1159 	push	ar2
      002436 C0 01            [24] 1160 	push	ar1
      002438 C0 00            [24] 1161 	push	ar0
      00243A C0 02            [24] 1162 	push	ar2
      00243C C0 05            [24] 1163 	push	ar5
      00243E C0 07            [24] 1164 	push	ar7
      002440 74 D1            [12] 1165 	mov	a,#___str_17
      002442 C0 E0            [24] 1166 	push	acc
      002444 74 38            [12] 1167 	mov	a,#(___str_17 >> 8)
      002446 C0 E0            [24] 1168 	push	acc
      002448 74 80            [12] 1169 	mov	a,#0x80
      00244A C0 E0            [24] 1170 	push	acc
      00244C 12 2D 7F         [24] 1171 	lcall	_printf
      00244F E5 81            [12] 1172 	mov	a,sp
      002451 24 F9            [12] 1173 	add	a,#0xf9
      002453 F5 81            [12] 1174 	mov	sp,a
      002455 D0 01            [24] 1175 	pop	ar1
      002457 D0 02            [24] 1176 	pop	ar2
      002459 D0 03            [24] 1177 	pop	ar3
      00245B D0 04            [24] 1178 	pop	ar4
      00245D D0 05            [24] 1179 	pop	ar5
      00245F D0 07            [24] 1180 	pop	ar7
                                   1181 ;	src/main.c:166: for(int i = 0; i < 9; i++){
      002461 D0 02            [24] 1182 	pop	ar2
      002463 D0 01            [24] 1183 	pop	ar1
                                   1184 ;	src/main.c:150: printf("%X%X ", page, address1+i);
      002465                       1185 00102$:
                                   1186 ;	src/main.c:152: unsigned char data = i2cRead(address1+i);
      002465 C0 01            [24] 1187 	push	ar1
      002467 C0 02            [24] 1188 	push	ar2
      002469 8B 00            [24] 1189 	mov	ar0,r3
      00246B E5 08            [12] 1190 	mov	a,_Program_sloc0_1_0
      00246D 28               [12] 1191 	add	a, r0
      00246E F5 82            [12] 1192 	mov	dpl,a
      002470 C0 07            [24] 1193 	push	ar7
      002472 C0 05            [24] 1194 	push	ar5
      002474 C0 04            [24] 1195 	push	ar4
      002476 C0 03            [24] 1196 	push	ar3
      002478 C0 01            [24] 1197 	push	ar1
      00247A 12 27 0D         [24] 1198 	lcall	_i2cRead
      00247D AA 82            [24] 1199 	mov	r2, dpl
      00247F D0 01            [24] 1200 	pop	ar1
                                   1201 ;	src/main.c:153: printf("%X ", data);
      002481 8A 01            [24] 1202 	mov	ar1,r2
      002483 7A 00            [12] 1203 	mov	r2,#0x00
      002485 C0 02            [24] 1204 	push	ar2
      002487 C0 01            [24] 1205 	push	ar1
      002489 C0 01            [24] 1206 	push	ar1
      00248B C0 02            [24] 1207 	push	ar2
      00248D 74 D7            [12] 1208 	mov	a,#___str_18
      00248F C0 E0            [24] 1209 	push	acc
      002491 74 38            [12] 1210 	mov	a,#(___str_18 >> 8)
      002493 C0 E0            [24] 1211 	push	acc
      002495 74 80            [12] 1212 	mov	a,#0x80
      002497 C0 E0            [24] 1213 	push	acc
      002499 12 2D 7F         [24] 1214 	lcall	_printf
      00249C E5 81            [12] 1215 	mov	a,sp
      00249E 24 FB            [12] 1216 	add	a,#0xfb
      0024A0 F5 81            [12] 1217 	mov	sp,a
      0024A2 D0 01            [24] 1218 	pop	ar1
      0024A4 D0 02            [24] 1219 	pop	ar2
      0024A6 D0 03            [24] 1220 	pop	ar3
      0024A8 D0 04            [24] 1221 	pop	ar4
      0024AA D0 05            [24] 1222 	pop	ar5
      0024AC D0 07            [24] 1223 	pop	ar7
                                   1224 ;	src/main.c:147: for(int i = 0; i < length; i++){
      0024AE 05 08            [12] 1225 	inc	_Program_sloc0_1_0
      0024B0 E4               [12] 1226 	clr	a
      0024B1 B5 08 02         [24] 1227 	cjne	a,_Program_sloc0_1_0,00196$
      0024B4 05 09            [12] 1228 	inc	(_Program_sloc0_1_0 + 1)
      0024B6                       1229 00196$:
      0024B6 D0 02            [24] 1230 	pop	ar2
      0024B8 D0 01            [24] 1231 	pop	ar1
      0024BA 02 23 AC         [24] 1232 	ljmp	00120$
      0024BD                       1233 00108$:
                                   1234 ;	src/main.c:161: else if(c == 'e'){
      0024BD BE 65 02         [24] 1235 	cjne	r6,#0x65,00197$
      0024C0 80 03            [24] 1236 	sjmp	00198$
      0024C2                       1237 00197$:
      0024C2 02 21 3C         [24] 1238 	ljmp	00117$
      0024C5                       1239 00198$:
                                   1240 ;	src/main.c:162: printf("\n\r Reseting EEPROM\n\r");
      0024C5 74 DB            [12] 1241 	mov	a,#___str_19
      0024C7 C0 E0            [24] 1242 	push	acc
      0024C9 74 38            [12] 1243 	mov	a,#(___str_19 >> 8)
      0024CB C0 E0            [24] 1244 	push	acc
      0024CD 74 80            [12] 1245 	mov	a,#0x80
      0024CF C0 E0            [24] 1246 	push	acc
      0024D1 12 2D 7F         [24] 1247 	lcall	_printf
      0024D4 15 81            [12] 1248 	dec	sp
      0024D6 15 81            [12] 1249 	dec	sp
      0024D8 15 81            [12] 1250 	dec	sp
                                   1251 ;	src/main.c:164: i2cStartonce();
      0024DA 12 25 A1         [24] 1252 	lcall	_i2cStartonce
                                   1253 ;	src/main.c:166: for(int i = 0; i < 9; i++){
      0024DD 7F 00            [12] 1254 	mov	r7,#0x00
      0024DF                       1255 00123$:
      0024DF BF 09 00         [24] 1256 	cjne	r7,#0x09,00199$
      0024E2                       1257 00199$:
      0024E2 50 13            [24] 1258 	jnc	00104$
                                   1259 ;	src/main.c:167: SDA_HIGH;
                                   1260 ;	assignBit
      0024E4 D2 91            [12] 1261 	setb	_P1_1
                                   1262 ;	src/main.c:168: SCL_HIGH;
                                   1263 ;	assignBit
      0024E6 D2 90            [12] 1264 	setb	_P1_0
                                   1265 ;	src/main.c:169: i2cClock();
      0024E8 C0 07            [24] 1266 	push	ar7
      0024EA 12 25 44         [24] 1267 	lcall	_i2cDelay
                                   1268 ;	src/main.c:170: SCL_LOW;
                                   1269 ;	assignBit
      0024ED C2 90            [12] 1270 	clr	_P1_0
                                   1271 ;	src/main.c:171: i2cClock();
      0024EF 12 25 44         [24] 1272 	lcall	_i2cDelay
      0024F2 D0 07            [24] 1273 	pop	ar7
                                   1274 ;	src/main.c:166: for(int i = 0; i < 9; i++){
      0024F4 0F               [12] 1275 	inc	r7
      0024F5 80 E8            [24] 1276 	sjmp	00123$
      0024F7                       1277 00104$:
                                   1278 ;	src/main.c:174: i2cStartonce();
      0024F7 12 25 A1         [24] 1279 	lcall	_i2cStartonce
                                   1280 ;	src/main.c:176: i2cStop();
      0024FA 12 25 B8         [24] 1281 	lcall	_i2cStop
                                   1282 ;	src/main.c:181: }
      0024FD 02 21 3C         [24] 1283 	ljmp	00117$
                                   1284 	.area CSEG    (CODE)
                                   1285 	.area CONST   (CODE)
                                   1286 	.area CONST   (CODE)
      0037B3                       1287 ___str_0:
      0037B3 0A                    1288 	.db 0x0a
      0037B4 0D                    1289 	.db 0x0d
      0037B5 20 4C 61 62 34 20 50  1290 	.ascii " Lab4 Part 1 EEPROM Program"
             61 72 74 20 31 20 45
             45 50 52 4F 4D 20 50
             72 6F 67 72 61 6D
      0037D0 0A                    1291 	.db 0x0a
      0037D1 0D                    1292 	.db 0x0d
      0037D2 00                    1293 	.db 0x00
                                   1294 	.area CSEG    (CODE)
                                   1295 	.area CONST   (CODE)
      0037D3                       1296 ___str_1:
      0037D3 0A                    1297 	.db 0x0a
      0037D4 0D                    1298 	.db 0x0d
      0037D5 00                    1299 	.db 0x00
                                   1300 	.area CSEG    (CODE)
                                   1301 	.area CONST   (CODE)
      0037D6                       1302 ___str_2:
      0037D6 0A                    1303 	.db 0x0a
      0037D7 0D                    1304 	.db 0x0d
      0037D8 20 2D 2D 2D 2D 2D 2D  1305 	.ascii " ------ Commands ------"
             20 43 6F 6D 6D 61 6E
             64 73 20 2D 2D 2D 2D
             2D 2D
      0037EF 0A                    1306 	.db 0x0a
      0037F0 0D                    1307 	.db 0x0d
      0037F1 00                    1308 	.db 0x00
                                   1309 	.area CSEG    (CODE)
                                   1310 	.area CONST   (CODE)
      0037F2                       1311 ___str_3:
      0037F2 0A                    1312 	.db 0x0a
      0037F3 0D                    1313 	.db 0x0d
      0037F4 20 77 20 3A 20 57 72  1314 	.ascii " w : Write Byte"
             69 74 65 20 42 79 74
             65
      003803 0A                    1315 	.db 0x0a
      003804 0D                    1316 	.db 0x0d
      003805 00                    1317 	.db 0x00
                                   1318 	.area CSEG    (CODE)
                                   1319 	.area CONST   (CODE)
      003806                       1320 ___str_4:
      003806 0A                    1321 	.db 0x0a
      003807 0D                    1322 	.db 0x0d
      003808 20 72 20 3A 20 52 65  1323 	.ascii " r : Read Byte"
             61 64 20 42 79 74 65
      003816 0A                    1324 	.db 0x0a
      003817 0D                    1325 	.db 0x0d
      003818 00                    1326 	.db 0x00
                                   1327 	.area CSEG    (CODE)
                                   1328 	.area CONST   (CODE)
      003819                       1329 ___str_5:
      003819 0A                    1330 	.db 0x0a
      00381A 0D                    1331 	.db 0x0d
      00381B 20 68 20 3A 20 48 65  1332 	.ascii " h : Hex Dump"
             78 20 44 75 6D 70
      003828 0A                    1333 	.db 0x0a
      003829 0D                    1334 	.db 0x0d
      00382A 00                    1335 	.db 0x00
                                   1336 	.area CSEG    (CODE)
                                   1337 	.area CONST   (CODE)
      00382B                       1338 ___str_6:
      00382B 0A                    1339 	.db 0x0a
      00382C 0D                    1340 	.db 0x0d
      00382D 20 65 20 3A 20 52 65  1341 	.ascii " e : Reset EEPROM"
             73 65 74 20 45 45 50
             52 4F 4D
      00383E 0A                    1342 	.db 0x0a
      00383F 0D                    1343 	.db 0x0d
      003840 00                    1344 	.db 0x00
                                   1345 	.area CSEG    (CODE)
                                   1346 	.area CONST   (CODE)
      003841                       1347 ___str_7:
      003841 0A                    1348 	.db 0x0a
      003842 0D                    1349 	.db 0x0d
      003843 20 57 72 69 74 69 6E  1350 	.ascii " Writing a Byte"
             67 20 61 20 42 79 74
             65
      003852 0A                    1351 	.db 0x0a
      003853 0D                    1352 	.db 0x0d
      003854 00                    1353 	.db 0x00
                                   1354 	.area CSEG    (CODE)
                                   1355 	.area CONST   (CODE)
      003855                       1356 ___str_8:
      003855 0A                    1357 	.db 0x0a
      003856 0D                    1358 	.db 0x0d
      003857 20 50 61 67 65 3A 20  1359 	.ascii " Page: "
      00385E 00                    1360 	.db 0x00
                                   1361 	.area CSEG    (CODE)
                                   1362 	.area CONST   (CODE)
      00385F                       1363 ___str_9:
      00385F 0A                    1364 	.db 0x0a
      003860 0D                    1365 	.db 0x0d
      003861 20 41 64 64 72 65 73  1366 	.ascii " Address: "
             73 3A 20
      00386B 00                    1367 	.db 0x00
                                   1368 	.area CSEG    (CODE)
                                   1369 	.area CONST   (CODE)
      00386C                       1370 ___str_10:
      00386C 0A                    1371 	.db 0x0a
      00386D 0D                    1372 	.db 0x0d
      00386E 20 44 61 74 61 3A 20  1373 	.ascii " Data: "
      003875 00                    1374 	.db 0x00
                                   1375 	.area CSEG    (CODE)
                                   1376 	.area CONST   (CODE)
      003876                       1377 ___str_11:
      003876 0A                    1378 	.db 0x0a
      003877 0D                    1379 	.db 0x0d
      003878 20 52 65 61 64 69 6E  1380 	.ascii " Reading a Byte"
             67 20 61 20 42 79 74
             65
      003887 0A                    1381 	.db 0x0a
      003888 0D                    1382 	.db 0x0d
      003889 00                    1383 	.db 0x00
                                   1384 	.area CSEG    (CODE)
                                   1385 	.area CONST   (CODE)
      00388A                       1386 ___str_12:
      00388A 0A                    1387 	.db 0x0a
      00388B 0D                    1388 	.db 0x0d
      00388C 20 44 61 74 61 20 69  1389 	.ascii " Data is: %d"
             73 3A 20 25 64
      003898 0A                    1390 	.db 0x0a
      003899 0D                    1391 	.db 0x0d
      00389A 00                    1392 	.db 0x00
                                   1393 	.area CSEG    (CODE)
                                   1394 	.area CONST   (CODE)
      00389B                       1395 ___str_13:
      00389B 0A                    1396 	.db 0x0a
      00389C 0D                    1397 	.db 0x0d
      00389D 20 48 65 78 20 44 75  1398 	.ascii " Hex Dump"
             6D 70
      0038A6 0A                    1399 	.db 0x0a
      0038A7 0D                    1400 	.db 0x0d
      0038A8 00                    1401 	.db 0x00
                                   1402 	.area CSEG    (CODE)
                                   1403 	.area CONST   (CODE)
      0038A9                       1404 ___str_14:
      0038A9 0A                    1405 	.db 0x0a
      0038AA 0D                    1406 	.db 0x0d
      0038AB 20 41 64 64 72 65 73  1407 	.ascii " Address Start: "
             73 20 53 74 61 72 74
             3A 20
      0038BB 00                    1408 	.db 0x00
                                   1409 	.area CSEG    (CODE)
                                   1410 	.area CONST   (CODE)
      0038BC                       1411 ___str_15:
      0038BC 0A                    1412 	.db 0x0a
      0038BD 0D                    1413 	.db 0x0d
      0038BE 20 41 64 64 72 65 73  1414 	.ascii " Address End: "
             73 20 45 6E 64 3A 20
      0038CC 00                    1415 	.db 0x00
                                   1416 	.area CSEG    (CODE)
                                   1417 	.area CONST   (CODE)
      0038CD                       1418 ___str_16:
      0038CD 0A                    1419 	.db 0x0a
      0038CE 0D                    1420 	.db 0x0d
      0038CF 20                    1421 	.ascii " "
      0038D0 00                    1422 	.db 0x00
                                   1423 	.area CSEG    (CODE)
                                   1424 	.area CONST   (CODE)
      0038D1                       1425 ___str_17:
      0038D1 25 58 25 58 20        1426 	.ascii "%X%X "
      0038D6 00                    1427 	.db 0x00
                                   1428 	.area CSEG    (CODE)
                                   1429 	.area CONST   (CODE)
      0038D7                       1430 ___str_18:
      0038D7 25 58 20              1431 	.ascii "%X "
      0038DA 00                    1432 	.db 0x00
                                   1433 	.area CSEG    (CODE)
                                   1434 	.area CONST   (CODE)
      0038DB                       1435 ___str_19:
      0038DB 0A                    1436 	.db 0x0a
      0038DC 0D                    1437 	.db 0x0d
      0038DD 20 52 65 73 65 74 69  1438 	.ascii " Reseting EEPROM"
             6E 67 20 45 45 50 52
             4F 4D
      0038ED 0A                    1439 	.db 0x0a
      0038EE 0D                    1440 	.db 0x0d
      0038EF 00                    1441 	.db 0x00
                                   1442 	.area CSEG    (CODE)
                                   1443 	.area XINIT   (CODE)
                                   1444 	.area CABS    (ABS,CODE)
