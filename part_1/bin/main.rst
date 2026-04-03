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
                                     12 	.globl _putchar
                                     13 	.globl _getchar
                                     14 	.globl _printf
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
                                     90 	.globl _P5_7
                                     91 	.globl _P5_6
                                     92 	.globl _P5_5
                                     93 	.globl _P5_4
                                     94 	.globl _P5_3
                                     95 	.globl _P5_2
                                     96 	.globl _P5_1
                                     97 	.globl _P5_0
                                     98 	.globl _P4_7
                                     99 	.globl _P4_6
                                    100 	.globl _P4_5
                                    101 	.globl _P4_4
                                    102 	.globl _P4_3
                                    103 	.globl _P4_2
                                    104 	.globl _P4_1
                                    105 	.globl _P4_0
                                    106 	.globl _PX0L
                                    107 	.globl _PT0L
                                    108 	.globl _PX1L
                                    109 	.globl _PT1L
                                    110 	.globl _PSL
                                    111 	.globl _PT2L
                                    112 	.globl _PPCL
                                    113 	.globl _EC
                                    114 	.globl _CCF0
                                    115 	.globl _CCF1
                                    116 	.globl _CCF2
                                    117 	.globl _CCF3
                                    118 	.globl _CCF4
                                    119 	.globl _CR
                                    120 	.globl _CF
                                    121 	.globl _TF2
                                    122 	.globl _EXF2
                                    123 	.globl _RCLK
                                    124 	.globl _TCLK
                                    125 	.globl _EXEN2
                                    126 	.globl _TR2
                                    127 	.globl _C_T2
                                    128 	.globl _CP_RL2
                                    129 	.globl _T2CON_7
                                    130 	.globl _T2CON_6
                                    131 	.globl _T2CON_5
                                    132 	.globl _T2CON_4
                                    133 	.globl _T2CON_3
                                    134 	.globl _T2CON_2
                                    135 	.globl _T2CON_1
                                    136 	.globl _T2CON_0
                                    137 	.globl _PT2
                                    138 	.globl _ET2
                                    139 	.globl _B
                                    140 	.globl _ACC
                                    141 	.globl _PSW
                                    142 	.globl _IP
                                    143 	.globl _P3
                                    144 	.globl _IE
                                    145 	.globl _P2
                                    146 	.globl _SBUF
                                    147 	.globl _SCON
                                    148 	.globl _P1
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TL1
                                    152 	.globl _TL0
                                    153 	.globl _TMOD
                                    154 	.globl _TCON
                                    155 	.globl _PCON
                                    156 	.globl _DPH
                                    157 	.globl _DPL
                                    158 	.globl _SP
                                    159 	.globl _P0
                                    160 	.globl _EECON
                                    161 	.globl _KBF
                                    162 	.globl _KBE
                                    163 	.globl _KBLS
                                    164 	.globl _BRL
                                    165 	.globl _BDRCON
                                    166 	.globl _T2MOD
                                    167 	.globl _SPDAT
                                    168 	.globl _SPSTA
                                    169 	.globl _SPCON
                                    170 	.globl _SADEN
                                    171 	.globl _SADDR
                                    172 	.globl _WDTPRG
                                    173 	.globl _WDTRST
                                    174 	.globl _P5
                                    175 	.globl _P4
                                    176 	.globl _IPH1
                                    177 	.globl _IPL1
                                    178 	.globl _IPH0
                                    179 	.globl _IPL0
                                    180 	.globl _IEN1
                                    181 	.globl _IEN0
                                    182 	.globl _CMOD
                                    183 	.globl _CL
                                    184 	.globl _CH
                                    185 	.globl _CCON
                                    186 	.globl _CCAPM4
                                    187 	.globl _CCAPM3
                                    188 	.globl _CCAPM2
                                    189 	.globl _CCAPM1
                                    190 	.globl _CCAPM0
                                    191 	.globl _CCAP4L
                                    192 	.globl _CCAP3L
                                    193 	.globl _CCAP2L
                                    194 	.globl _CCAP1L
                                    195 	.globl _CCAP0L
                                    196 	.globl _CCAP4H
                                    197 	.globl _CCAP3H
                                    198 	.globl _CCAP2H
                                    199 	.globl _CCAP1H
                                    200 	.globl _CCAP0H
                                    201 	.globl _CKCON1
                                    202 	.globl _CKCON0
                                    203 	.globl _CKRL
                                    204 	.globl _AUXR1
                                    205 	.globl _AUXR
                                    206 	.globl _TH2
                                    207 	.globl _TL2
                                    208 	.globl _RCAP2H
                                    209 	.globl _RCAP2L
                                    210 	.globl _T2CON
                                    211 	.globl _Program
                                    212 ;--------------------------------------------------------
                                    213 ; special function registers
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           0000C8   217 _T2CON	=	0x00c8
                           0000CA   218 _RCAP2L	=	0x00ca
                           0000CB   219 _RCAP2H	=	0x00cb
                           0000CC   220 _TL2	=	0x00cc
                           0000CD   221 _TH2	=	0x00cd
                           00008E   222 _AUXR	=	0x008e
                           0000A2   223 _AUXR1	=	0x00a2
                           000097   224 _CKRL	=	0x0097
                           00008F   225 _CKCON0	=	0x008f
                           0000AF   226 _CKCON1	=	0x00af
                           0000FA   227 _CCAP0H	=	0x00fa
                           0000FB   228 _CCAP1H	=	0x00fb
                           0000FC   229 _CCAP2H	=	0x00fc
                           0000FD   230 _CCAP3H	=	0x00fd
                           0000FE   231 _CCAP4H	=	0x00fe
                           0000EA   232 _CCAP0L	=	0x00ea
                           0000EB   233 _CCAP1L	=	0x00eb
                           0000EC   234 _CCAP2L	=	0x00ec
                           0000ED   235 _CCAP3L	=	0x00ed
                           0000EE   236 _CCAP4L	=	0x00ee
                           0000DA   237 _CCAPM0	=	0x00da
                           0000DB   238 _CCAPM1	=	0x00db
                           0000DC   239 _CCAPM2	=	0x00dc
                           0000DD   240 _CCAPM3	=	0x00dd
                           0000DE   241 _CCAPM4	=	0x00de
                           0000D8   242 _CCON	=	0x00d8
                           0000F9   243 _CH	=	0x00f9
                           0000E9   244 _CL	=	0x00e9
                           0000D9   245 _CMOD	=	0x00d9
                           0000A8   246 _IEN0	=	0x00a8
                           0000B1   247 _IEN1	=	0x00b1
                           0000B8   248 _IPL0	=	0x00b8
                           0000B7   249 _IPH0	=	0x00b7
                           0000B2   250 _IPL1	=	0x00b2
                           0000B3   251 _IPH1	=	0x00b3
                           0000C0   252 _P4	=	0x00c0
                           0000E8   253 _P5	=	0x00e8
                           0000A6   254 _WDTRST	=	0x00a6
                           0000A7   255 _WDTPRG	=	0x00a7
                           0000A9   256 _SADDR	=	0x00a9
                           0000B9   257 _SADEN	=	0x00b9
                           0000C3   258 _SPCON	=	0x00c3
                           0000C4   259 _SPSTA	=	0x00c4
                           0000C5   260 _SPDAT	=	0x00c5
                           0000C9   261 _T2MOD	=	0x00c9
                           00009B   262 _BDRCON	=	0x009b
                           00009A   263 _BRL	=	0x009a
                           00009C   264 _KBLS	=	0x009c
                           00009D   265 _KBE	=	0x009d
                           00009E   266 _KBF	=	0x009e
                           0000D2   267 _EECON	=	0x00d2
                           000080   268 _P0	=	0x0080
                           000081   269 _SP	=	0x0081
                           000082   270 _DPL	=	0x0082
                           000083   271 _DPH	=	0x0083
                           000087   272 _PCON	=	0x0087
                           000088   273 _TCON	=	0x0088
                           000089   274 _TMOD	=	0x0089
                           00008A   275 _TL0	=	0x008a
                           00008B   276 _TL1	=	0x008b
                           00008C   277 _TH0	=	0x008c
                           00008D   278 _TH1	=	0x008d
                           000090   279 _P1	=	0x0090
                           000098   280 _SCON	=	0x0098
                           000099   281 _SBUF	=	0x0099
                           0000A0   282 _P2	=	0x00a0
                           0000A8   283 _IE	=	0x00a8
                           0000B0   284 _P3	=	0x00b0
                           0000B8   285 _IP	=	0x00b8
                           0000D0   286 _PSW	=	0x00d0
                           0000E0   287 _ACC	=	0x00e0
                           0000F0   288 _B	=	0x00f0
                                    289 ;--------------------------------------------------------
                                    290 ; special function bits
                                    291 ;--------------------------------------------------------
                                    292 	.area RSEG    (ABS,DATA)
      000000                        293 	.org 0x0000
                           0000AD   294 _ET2	=	0x00ad
                           0000BD   295 _PT2	=	0x00bd
                           0000C8   296 _T2CON_0	=	0x00c8
                           0000C9   297 _T2CON_1	=	0x00c9
                           0000CA   298 _T2CON_2	=	0x00ca
                           0000CB   299 _T2CON_3	=	0x00cb
                           0000CC   300 _T2CON_4	=	0x00cc
                           0000CD   301 _T2CON_5	=	0x00cd
                           0000CE   302 _T2CON_6	=	0x00ce
                           0000CF   303 _T2CON_7	=	0x00cf
                           0000C8   304 _CP_RL2	=	0x00c8
                           0000C9   305 _C_T2	=	0x00c9
                           0000CA   306 _TR2	=	0x00ca
                           0000CB   307 _EXEN2	=	0x00cb
                           0000CC   308 _TCLK	=	0x00cc
                           0000CD   309 _RCLK	=	0x00cd
                           0000CE   310 _EXF2	=	0x00ce
                           0000CF   311 _TF2	=	0x00cf
                           0000DF   312 _CF	=	0x00df
                           0000DE   313 _CR	=	0x00de
                           0000DC   314 _CCF4	=	0x00dc
                           0000DB   315 _CCF3	=	0x00db
                           0000DA   316 _CCF2	=	0x00da
                           0000D9   317 _CCF1	=	0x00d9
                           0000D8   318 _CCF0	=	0x00d8
                           0000AE   319 _EC	=	0x00ae
                           0000BE   320 _PPCL	=	0x00be
                           0000BD   321 _PT2L	=	0x00bd
                           0000BC   322 _PSL	=	0x00bc
                           0000BB   323 _PT1L	=	0x00bb
                           0000BA   324 _PX1L	=	0x00ba
                           0000B9   325 _PT0L	=	0x00b9
                           0000B8   326 _PX0L	=	0x00b8
                           0000C0   327 _P4_0	=	0x00c0
                           0000C1   328 _P4_1	=	0x00c1
                           0000C2   329 _P4_2	=	0x00c2
                           0000C3   330 _P4_3	=	0x00c3
                           0000C4   331 _P4_4	=	0x00c4
                           0000C5   332 _P4_5	=	0x00c5
                           0000C6   333 _P4_6	=	0x00c6
                           0000C7   334 _P4_7	=	0x00c7
                           0000E8   335 _P5_0	=	0x00e8
                           0000E9   336 _P5_1	=	0x00e9
                           0000EA   337 _P5_2	=	0x00ea
                           0000EB   338 _P5_3	=	0x00eb
                           0000EC   339 _P5_4	=	0x00ec
                           0000ED   340 _P5_5	=	0x00ed
                           0000EE   341 _P5_6	=	0x00ee
                           0000EF   342 _P5_7	=	0x00ef
                           000080   343 _P0_0	=	0x0080
                           000081   344 _P0_1	=	0x0081
                           000082   345 _P0_2	=	0x0082
                           000083   346 _P0_3	=	0x0083
                           000084   347 _P0_4	=	0x0084
                           000085   348 _P0_5	=	0x0085
                           000086   349 _P0_6	=	0x0086
                           000087   350 _P0_7	=	0x0087
                           000088   351 _IT0	=	0x0088
                           000089   352 _IE0	=	0x0089
                           00008A   353 _IT1	=	0x008a
                           00008B   354 _IE1	=	0x008b
                           00008C   355 _TR0	=	0x008c
                           00008D   356 _TF0	=	0x008d
                           00008E   357 _TR1	=	0x008e
                           00008F   358 _TF1	=	0x008f
                           000090   359 _P1_0	=	0x0090
                           000091   360 _P1_1	=	0x0091
                           000092   361 _P1_2	=	0x0092
                           000093   362 _P1_3	=	0x0093
                           000094   363 _P1_4	=	0x0094
                           000095   364 _P1_5	=	0x0095
                           000096   365 _P1_6	=	0x0096
                           000097   366 _P1_7	=	0x0097
                           000098   367 _RI	=	0x0098
                           000099   368 _TI	=	0x0099
                           00009A   369 _RB8	=	0x009a
                           00009B   370 _TB8	=	0x009b
                           00009C   371 _REN	=	0x009c
                           00009D   372 _SM2	=	0x009d
                           00009E   373 _SM1	=	0x009e
                           00009F   374 _SM0	=	0x009f
                           0000A0   375 _P2_0	=	0x00a0
                           0000A1   376 _P2_1	=	0x00a1
                           0000A2   377 _P2_2	=	0x00a2
                           0000A3   378 _P2_3	=	0x00a3
                           0000A4   379 _P2_4	=	0x00a4
                           0000A5   380 _P2_5	=	0x00a5
                           0000A6   381 _P2_6	=	0x00a6
                           0000A7   382 _P2_7	=	0x00a7
                           0000A8   383 _EX0	=	0x00a8
                           0000A9   384 _ET0	=	0x00a9
                           0000AA   385 _EX1	=	0x00aa
                           0000AB   386 _ET1	=	0x00ab
                           0000AC   387 _ES	=	0x00ac
                           0000AF   388 _EA	=	0x00af
                           0000B0   389 _P3_0	=	0x00b0
                           0000B1   390 _P3_1	=	0x00b1
                           0000B2   391 _P3_2	=	0x00b2
                           0000B3   392 _P3_3	=	0x00b3
                           0000B4   393 _P3_4	=	0x00b4
                           0000B5   394 _P3_5	=	0x00b5
                           0000B6   395 _P3_6	=	0x00b6
                           0000B7   396 _P3_7	=	0x00b7
                           0000B0   397 _RXD	=	0x00b0
                           0000B1   398 _TXD	=	0x00b1
                           0000B2   399 _INT0	=	0x00b2
                           0000B3   400 _INT1	=	0x00b3
                           0000B4   401 _T0	=	0x00b4
                           0000B5   402 _T1	=	0x00b5
                           0000B6   403 _WR	=	0x00b6
                           0000B7   404 _RD	=	0x00b7
                           0000B8   405 _PX0	=	0x00b8
                           0000B9   406 _PT0	=	0x00b9
                           0000BA   407 _PX1	=	0x00ba
                           0000BB   408 _PT1	=	0x00bb
                           0000BC   409 _PS	=	0x00bc
                           0000D0   410 _P	=	0x00d0
                           0000D1   411 _F1	=	0x00d1
                           0000D2   412 _OV	=	0x00d2
                           0000D3   413 _RS0	=	0x00d3
                           0000D4   414 _RS1	=	0x00d4
                           0000D5   415 _F0	=	0x00d5
                           0000D6   416 _AC	=	0x00d6
                           0000D7   417 _CY	=	0x00d7
                                    418 ;--------------------------------------------------------
                                    419 ; overlayable register banks
                                    420 ;--------------------------------------------------------
                                    421 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        422 	.ds 8
                                    423 ;--------------------------------------------------------
                                    424 ; internal ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area DSEG    (DATA)
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable items in internal ram
                                    429 ;--------------------------------------------------------
                                    430 ;--------------------------------------------------------
                                    431 ; Stack segment in internal ram
                                    432 ;--------------------------------------------------------
                                    433 	.area SSEG
      000021                        434 __start__stack:
      000021                        435 	.ds	1
                                    436 
                                    437 ;--------------------------------------------------------
                                    438 ; indirectly addressable internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area ISEG    (DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; absolute internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area IABS    (ABS,DATA)
                                    445 	.area IABS    (ABS,DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; bit data
                                    448 ;--------------------------------------------------------
                                    449 	.area BSEG    (BIT)
                                    450 ;--------------------------------------------------------
                                    451 ; paged external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area PSEG    (PAG,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; uninitialized external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XSEG    (XDATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XABS    (ABS,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; initialized external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XISEG   (XDATA)
                                    466 	.area HOME    (CODE)
                                    467 	.area GSINIT0 (CODE)
                                    468 	.area GSINIT1 (CODE)
                                    469 	.area GSINIT2 (CODE)
                                    470 	.area GSINIT3 (CODE)
                                    471 	.area GSINIT4 (CODE)
                                    472 	.area GSINIT5 (CODE)
                                    473 	.area GSINIT  (CODE)
                                    474 	.area GSFINAL (CODE)
                                    475 	.area CSEG    (CODE)
                                    476 ;--------------------------------------------------------
                                    477 ; interrupt vector
                                    478 ;--------------------------------------------------------
                                    479 	.area HOME    (CODE)
      002000                        480 __interrupt_vect:
      002000 02 20 4C         [24]  481 	ljmp	__sdcc_gsinit_startup
                                    482 ; restartable atomic support routines
      002003                        483 	.ds	5
      002008                        484 sdcc_atomic_exchange_rollback_start::
      002008 00               [12]  485 	nop
      002009 00               [12]  486 	nop
      00200A                        487 sdcc_atomic_exchange_pdata_impl:
      00200A E2               [24]  488 	movx	a, @r0
      00200B FB               [12]  489 	mov	r3, a
      00200C EA               [12]  490 	mov	a, r2
      00200D F2               [24]  491 	movx	@r0, a
      00200E 80 2C            [24]  492 	sjmp	sdcc_atomic_exchange_exit
      002010 00               [12]  493 	nop
      002011 00               [12]  494 	nop
      002012                        495 sdcc_atomic_exchange_xdata_impl:
      002012 E0               [24]  496 	movx	a, @dptr
      002013 FB               [12]  497 	mov	r3, a
      002014 EA               [12]  498 	mov	a, r2
      002015 F0               [24]  499 	movx	@dptr, a
      002016 80 24            [24]  500 	sjmp	sdcc_atomic_exchange_exit
      002018                        501 sdcc_atomic_compare_exchange_idata_impl:
      002018 E6               [12]  502 	mov	a, @r0
      002019 B5 02 02         [24]  503 	cjne	a, ar2, .+#5
      00201C EB               [12]  504 	mov	a, r3
      00201D F6               [12]  505 	mov	@r0, a
      00201E 22               [24]  506 	ret
      00201F 00               [12]  507 	nop
      002020                        508 sdcc_atomic_compare_exchange_pdata_impl:
      002020 E2               [24]  509 	movx	a, @r0
      002021 B5 02 02         [24]  510 	cjne	a, ar2, .+#5
      002024 EB               [12]  511 	mov	a, r3
      002025 F2               [24]  512 	movx	@r0, a
      002026 22               [24]  513 	ret
      002027 00               [12]  514 	nop
      002028                        515 sdcc_atomic_compare_exchange_xdata_impl:
      002028 E0               [24]  516 	movx	a, @dptr
      002029 B5 02 02         [24]  517 	cjne	a, ar2, .+#5
      00202C EB               [12]  518 	mov	a, r3
      00202D F0               [24]  519 	movx	@dptr, a
      00202E 22               [24]  520 	ret
      00202F                        521 sdcc_atomic_exchange_rollback_end::
                                    522 
      00202F                        523 sdcc_atomic_exchange_gptr_impl::
      00202F 30 F6 E0         [24]  524 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      002032 A8 82            [24]  525 	mov	r0, dpl
      002034 20 F5 D3         [24]  526 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      002037                        527 sdcc_atomic_exchange_idata_impl:
      002037 EA               [12]  528 	mov	a, r2
      002038 C6               [12]  529 	xch	a, @r0
      002039 F5 82            [12]  530 	mov	dpl, a
      00203B 22               [24]  531 	ret
      00203C                        532 sdcc_atomic_exchange_exit:
      00203C 8B 82            [24]  533 	mov	dpl, r3
      00203E 22               [24]  534 	ret
      00203F                        535 sdcc_atomic_compare_exchange_gptr_impl::
      00203F 30 F6 E6         [24]  536 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      002042 A8 82            [24]  537 	mov	r0, dpl
      002044 20 F5 D9         [24]  538 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      002047 80 CF            [24]  539 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    540 ;--------------------------------------------------------
                                    541 ; global & static initialisations
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.area GSFINAL (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.globl __sdcc_gsinit_startup
                                    548 	.globl __sdcc_program_startup
                                    549 	.globl __start__stack
                                    550 	.globl __mcs51_genXINIT
                                    551 	.globl __mcs51_genXRAMCLEAR
                                    552 	.globl __mcs51_genRAMCLEAR
                                    553 	.area GSFINAL (CODE)
      0020A5 02 20 49         [24]  554 	ljmp	__sdcc_program_startup
                                    555 ;--------------------------------------------------------
                                    556 ; Home
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area HOME    (CODE)
      002049                        560 __sdcc_program_startup:
      002049 02 20 A8         [24]  561 	ljmp	_main
                                    562 ;	return from main will return to caller
                                    563 ;--------------------------------------------------------
                                    564 ; code
                                    565 ;--------------------------------------------------------
                                    566 	.area CSEG    (CODE)
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'main'
                                    569 ;------------------------------------------------------------
                                    570 ;	src/main.c:42: void main(){
                                    571 ;	-----------------------------------------
                                    572 ;	 function main
                                    573 ;	-----------------------------------------
      0020A8                        574 _main:
                           000007   575 	ar7 = 0x07
                           000006   576 	ar6 = 0x06
                           000005   577 	ar5 = 0x05
                           000004   578 	ar4 = 0x04
                           000003   579 	ar3 = 0x03
                           000002   580 	ar2 = 0x02
                           000001   581 	ar1 = 0x01
                           000000   582 	ar0 = 0x00
                                    583 ;	src/main.c:45: printf("\n\r Lab4 Part 1 EEPROM Program\n\r");
      0020A8 74 FF            [12]  584 	mov	a,#___str_0
      0020AA C0 E0            [24]  585 	push	acc
      0020AC 74 31            [12]  586 	mov	a,#(___str_0 >> 8)
      0020AE C0 E0            [24]  587 	push	acc
      0020B0 74 80            [12]  588 	mov	a,#0x80
      0020B2 C0 E0            [24]  589 	push	acc
      0020B4 12 27 AB         [24]  590 	lcall	_printf
      0020B7 15 81            [12]  591 	dec	sp
      0020B9 15 81            [12]  592 	dec	sp
      0020BB 15 81            [12]  593 	dec	sp
                                    594 ;	src/main.c:47: while(1){
      0020BD                        595 00102$:
                                    596 ;	src/main.c:50: Program();
      0020BD 12 20 C2         [24]  597 	lcall	_Program
                                    598 ;	src/main.c:53: }
      0020C0 80 FB            [24]  599 	sjmp	00102$
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'Program'
                                    602 ;------------------------------------------------------------
                                    603 ;c             Allocated with name '_Program_c_10000_65'
                                    604 ;------------------------------------------------------------
                                    605 ;	src/main.c:56: void Program()
                                    606 ;	-----------------------------------------
                                    607 ;	 function Program
                                    608 ;	-----------------------------------------
      0020C2                        609 _Program:
                                    610 ;	src/main.c:60: while(1)
      0020C2                        611 00110$:
                                    612 ;	src/main.c:62: printf("\n\r ------ Commands ------\n\r");
      0020C2 74 1F            [12]  613 	mov	a,#___str_1
      0020C4 C0 E0            [24]  614 	push	acc
      0020C6 74 32            [12]  615 	mov	a,#(___str_1 >> 8)
      0020C8 C0 E0            [24]  616 	push	acc
      0020CA 74 80            [12]  617 	mov	a,#0x80
      0020CC C0 E0            [24]  618 	push	acc
      0020CE 12 27 AB         [24]  619 	lcall	_printf
      0020D1 15 81            [12]  620 	dec	sp
      0020D3 15 81            [12]  621 	dec	sp
      0020D5 15 81            [12]  622 	dec	sp
                                    623 ;	src/main.c:63: printf("\n\r W : Write Byte\n\r");
      0020D7 74 3B            [12]  624 	mov	a,#___str_2
      0020D9 C0 E0            [24]  625 	push	acc
      0020DB 74 32            [12]  626 	mov	a,#(___str_2 >> 8)
      0020DD C0 E0            [24]  627 	push	acc
      0020DF 74 80            [12]  628 	mov	a,#0x80
      0020E1 C0 E0            [24]  629 	push	acc
      0020E3 12 27 AB         [24]  630 	lcall	_printf
      0020E6 15 81            [12]  631 	dec	sp
      0020E8 15 81            [12]  632 	dec	sp
      0020EA 15 81            [12]  633 	dec	sp
                                    634 ;	src/main.c:64: printf("\n\r R : Read Byte\n\r");
      0020EC 74 4F            [12]  635 	mov	a,#___str_3
      0020EE C0 E0            [24]  636 	push	acc
      0020F0 74 32            [12]  637 	mov	a,#(___str_3 >> 8)
      0020F2 C0 E0            [24]  638 	push	acc
      0020F4 74 80            [12]  639 	mov	a,#0x80
      0020F6 C0 E0            [24]  640 	push	acc
      0020F8 12 27 AB         [24]  641 	lcall	_printf
      0020FB 15 81            [12]  642 	dec	sp
      0020FD 15 81            [12]  643 	dec	sp
      0020FF 15 81            [12]  644 	dec	sp
                                    645 ;	src/main.c:65: printf("\n\r H : Hex Dump\n\r");
      002101 74 62            [12]  646 	mov	a,#___str_4
      002103 C0 E0            [24]  647 	push	acc
      002105 74 32            [12]  648 	mov	a,#(___str_4 >> 8)
      002107 C0 E0            [24]  649 	push	acc
      002109 74 80            [12]  650 	mov	a,#0x80
      00210B C0 E0            [24]  651 	push	acc
      00210D 12 27 AB         [24]  652 	lcall	_printf
      002110 15 81            [12]  653 	dec	sp
      002112 15 81            [12]  654 	dec	sp
      002114 15 81            [12]  655 	dec	sp
                                    656 ;	src/main.c:66: printf("\n\r e : Reset EEPROM\n\r");
      002116 74 74            [12]  657 	mov	a,#___str_5
      002118 C0 E0            [24]  658 	push	acc
      00211A 74 32            [12]  659 	mov	a,#(___str_5 >> 8)
      00211C C0 E0            [24]  660 	push	acc
      00211E 74 80            [12]  661 	mov	a,#0x80
      002120 C0 E0            [24]  662 	push	acc
      002122 12 27 AB         [24]  663 	lcall	_printf
      002125 15 81            [12]  664 	dec	sp
      002127 15 81            [12]  665 	dec	sp
      002129 15 81            [12]  666 	dec	sp
                                    667 ;	src/main.c:67: c = getchar();
      00212B 12 21 D2         [24]  668 	lcall	_getchar
      00212E AE 82            [24]  669 	mov	r6, dpl
                                    670 ;	src/main.c:68: putchar(c);
      002130 8E 05            [24]  671 	mov	ar5,r6
      002132 7F 00            [12]  672 	mov	r7,#0x00
      002134 8D 82            [24]  673 	mov	dpl, r5
      002136 8F 83            [24]  674 	mov	dph, r7
      002138 C0 06            [24]  675 	push	ar6
      00213A 12 21 B3         [24]  676 	lcall	_putchar
      00213D D0 06            [24]  677 	pop	ar6
                                    678 ;	src/main.c:69: if(c == 'w')
      00213F BE 77 19         [24]  679 	cjne	r6,#0x77,00102$
                                    680 ;	src/main.c:71: printf("\n\r Writing a Byte\n\r");
      002142 C0 06            [24]  681 	push	ar6
      002144 74 8A            [12]  682 	mov	a,#___str_6
      002146 C0 E0            [24]  683 	push	acc
      002148 74 32            [12]  684 	mov	a,#(___str_6 >> 8)
      00214A C0 E0            [24]  685 	push	acc
      00214C 74 80            [12]  686 	mov	a,#0x80
      00214E C0 E0            [24]  687 	push	acc
      002150 12 27 AB         [24]  688 	lcall	_printf
      002153 15 81            [12]  689 	dec	sp
      002155 15 81            [12]  690 	dec	sp
      002157 15 81            [12]  691 	dec	sp
      002159 D0 06            [24]  692 	pop	ar6
      00215B                        693 00102$:
                                    694 ;	src/main.c:75: if(c == 'r'){
      00215B BE 72 19         [24]  695 	cjne	r6,#0x72,00104$
                                    696 ;	src/main.c:76: printf("\n\r Reading a Byte\n\r");
      00215E C0 06            [24]  697 	push	ar6
      002160 74 9E            [12]  698 	mov	a,#___str_7
      002162 C0 E0            [24]  699 	push	acc
      002164 74 32            [12]  700 	mov	a,#(___str_7 >> 8)
      002166 C0 E0            [24]  701 	push	acc
      002168 74 80            [12]  702 	mov	a,#0x80
      00216A C0 E0            [24]  703 	push	acc
      00216C 12 27 AB         [24]  704 	lcall	_printf
      00216F 15 81            [12]  705 	dec	sp
      002171 15 81            [12]  706 	dec	sp
      002173 15 81            [12]  707 	dec	sp
      002175 D0 06            [24]  708 	pop	ar6
      002177                        709 00104$:
                                    710 ;	src/main.c:80: if(c == 'd'){
      002177 BE 64 19         [24]  711 	cjne	r6,#0x64,00106$
                                    712 ;	src/main.c:81: printf("\n\r Hex Dump\n\r");
      00217A C0 06            [24]  713 	push	ar6
      00217C 74 B2            [12]  714 	mov	a,#___str_8
      00217E C0 E0            [24]  715 	push	acc
      002180 74 32            [12]  716 	mov	a,#(___str_8 >> 8)
      002182 C0 E0            [24]  717 	push	acc
      002184 74 80            [12]  718 	mov	a,#0x80
      002186 C0 E0            [24]  719 	push	acc
      002188 12 27 AB         [24]  720 	lcall	_printf
      00218B 15 81            [12]  721 	dec	sp
      00218D 15 81            [12]  722 	dec	sp
      00218F 15 81            [12]  723 	dec	sp
      002191 D0 06            [24]  724 	pop	ar6
      002193                        725 00106$:
                                    726 ;	src/main.c:85: if(c == 'e'){
      002193 BE 65 02         [24]  727 	cjne	r6,#0x65,00150$
      002196 80 03            [24]  728 	sjmp	00151$
      002198                        729 00150$:
      002198 02 20 C2         [24]  730 	ljmp	00110$
      00219B                        731 00151$:
                                    732 ;	src/main.c:86: printf("\n\r Reseting EEPROM\n\r");
      00219B 74 C0            [12]  733 	mov	a,#___str_9
      00219D C0 E0            [24]  734 	push	acc
      00219F 74 32            [12]  735 	mov	a,#(___str_9 >> 8)
      0021A1 C0 E0            [24]  736 	push	acc
      0021A3 74 80            [12]  737 	mov	a,#0x80
      0021A5 C0 E0            [24]  738 	push	acc
      0021A7 12 27 AB         [24]  739 	lcall	_printf
      0021AA 15 81            [12]  740 	dec	sp
      0021AC 15 81            [12]  741 	dec	sp
      0021AE 15 81            [12]  742 	dec	sp
                                    743 ;	src/main.c:91: }
      0021B0 02 20 C2         [24]  744 	ljmp	00110$
                                    745 	.area CSEG    (CODE)
                                    746 	.area CONST   (CODE)
                                    747 	.area CONST   (CODE)
      0031FF                        748 ___str_0:
      0031FF 0A                     749 	.db 0x0a
      003200 0D                     750 	.db 0x0d
      003201 20 4C 61 62 34 20 50   751 	.ascii " Lab4 Part 1 EEPROM Program"
             61 72 74 20 31 20 45
             45 50 52 4F 4D 20 50
             72 6F 67 72 61 6D
      00321C 0A                     752 	.db 0x0a
      00321D 0D                     753 	.db 0x0d
      00321E 00                     754 	.db 0x00
                                    755 	.area CSEG    (CODE)
                                    756 	.area CONST   (CODE)
      00321F                        757 ___str_1:
      00321F 0A                     758 	.db 0x0a
      003220 0D                     759 	.db 0x0d
      003221 20 2D 2D 2D 2D 2D 2D   760 	.ascii " ------ Commands ------"
             20 43 6F 6D 6D 61 6E
             64 73 20 2D 2D 2D 2D
             2D 2D
      003238 0A                     761 	.db 0x0a
      003239 0D                     762 	.db 0x0d
      00323A 00                     763 	.db 0x00
                                    764 	.area CSEG    (CODE)
                                    765 	.area CONST   (CODE)
      00323B                        766 ___str_2:
      00323B 0A                     767 	.db 0x0a
      00323C 0D                     768 	.db 0x0d
      00323D 20 57 20 3A 20 57 72   769 	.ascii " W : Write Byte"
             69 74 65 20 42 79 74
             65
      00324C 0A                     770 	.db 0x0a
      00324D 0D                     771 	.db 0x0d
      00324E 00                     772 	.db 0x00
                                    773 	.area CSEG    (CODE)
                                    774 	.area CONST   (CODE)
      00324F                        775 ___str_3:
      00324F 0A                     776 	.db 0x0a
      003250 0D                     777 	.db 0x0d
      003251 20 52 20 3A 20 52 65   778 	.ascii " R : Read Byte"
             61 64 20 42 79 74 65
      00325F 0A                     779 	.db 0x0a
      003260 0D                     780 	.db 0x0d
      003261 00                     781 	.db 0x00
                                    782 	.area CSEG    (CODE)
                                    783 	.area CONST   (CODE)
      003262                        784 ___str_4:
      003262 0A                     785 	.db 0x0a
      003263 0D                     786 	.db 0x0d
      003264 20 48 20 3A 20 48 65   787 	.ascii " H : Hex Dump"
             78 20 44 75 6D 70
      003271 0A                     788 	.db 0x0a
      003272 0D                     789 	.db 0x0d
      003273 00                     790 	.db 0x00
                                    791 	.area CSEG    (CODE)
                                    792 	.area CONST   (CODE)
      003274                        793 ___str_5:
      003274 0A                     794 	.db 0x0a
      003275 0D                     795 	.db 0x0d
      003276 20 65 20 3A 20 52 65   796 	.ascii " e : Reset EEPROM"
             73 65 74 20 45 45 50
             52 4F 4D
      003287 0A                     797 	.db 0x0a
      003288 0D                     798 	.db 0x0d
      003289 00                     799 	.db 0x00
                                    800 	.area CSEG    (CODE)
                                    801 	.area CONST   (CODE)
      00328A                        802 ___str_6:
      00328A 0A                     803 	.db 0x0a
      00328B 0D                     804 	.db 0x0d
      00328C 20 57 72 69 74 69 6E   805 	.ascii " Writing a Byte"
             67 20 61 20 42 79 74
             65
      00329B 0A                     806 	.db 0x0a
      00329C 0D                     807 	.db 0x0d
      00329D 00                     808 	.db 0x00
                                    809 	.area CSEG    (CODE)
                                    810 	.area CONST   (CODE)
      00329E                        811 ___str_7:
      00329E 0A                     812 	.db 0x0a
      00329F 0D                     813 	.db 0x0d
      0032A0 20 52 65 61 64 69 6E   814 	.ascii " Reading a Byte"
             67 20 61 20 42 79 74
             65
      0032AF 0A                     815 	.db 0x0a
      0032B0 0D                     816 	.db 0x0d
      0032B1 00                     817 	.db 0x00
                                    818 	.area CSEG    (CODE)
                                    819 	.area CONST   (CODE)
      0032B2                        820 ___str_8:
      0032B2 0A                     821 	.db 0x0a
      0032B3 0D                     822 	.db 0x0d
      0032B4 20 48 65 78 20 44 75   823 	.ascii " Hex Dump"
             6D 70
      0032BD 0A                     824 	.db 0x0a
      0032BE 0D                     825 	.db 0x0d
      0032BF 00                     826 	.db 0x00
                                    827 	.area CSEG    (CODE)
                                    828 	.area CONST   (CODE)
      0032C0                        829 ___str_9:
      0032C0 0A                     830 	.db 0x0a
      0032C1 0D                     831 	.db 0x0d
      0032C2 20 52 65 73 65 74 69   832 	.ascii " Reseting EEPROM"
             6E 67 20 45 45 50 52
             4F 4D
      0032D2 0A                     833 	.db 0x0a
      0032D3 0D                     834 	.db 0x0d
      0032D4 00                     835 	.db 0x00
                                    836 	.area CSEG    (CODE)
                                    837 	.area XINIT   (CODE)
                                    838 	.area CABS    (ABS,CODE)
