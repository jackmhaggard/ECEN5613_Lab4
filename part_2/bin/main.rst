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
                                     11 	.globl _timer0_ISR
                                     12 	.globl _main
                                     13 	.globl _strlen
                                     14 	.globl _atoi
                                     15 	.globl _putchar
                                     16 	.globl _getchar
                                     17 	.globl _printf
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _P5_7
                                     94 	.globl _P5_6
                                     95 	.globl _P5_5
                                     96 	.globl _P5_4
                                     97 	.globl _P5_3
                                     98 	.globl _P5_2
                                     99 	.globl _P5_1
                                    100 	.globl _P5_0
                                    101 	.globl _P4_7
                                    102 	.globl _P4_6
                                    103 	.globl _P4_5
                                    104 	.globl _P4_4
                                    105 	.globl _P4_3
                                    106 	.globl _P4_2
                                    107 	.globl _P4_1
                                    108 	.globl _P4_0
                                    109 	.globl _PX0L
                                    110 	.globl _PT0L
                                    111 	.globl _PX1L
                                    112 	.globl _PT1L
                                    113 	.globl _PSL
                                    114 	.globl _PT2L
                                    115 	.globl _PPCL
                                    116 	.globl _EC
                                    117 	.globl _CCF0
                                    118 	.globl _CCF1
                                    119 	.globl _CCF2
                                    120 	.globl _CCF3
                                    121 	.globl _CCF4
                                    122 	.globl _CR
                                    123 	.globl _CF
                                    124 	.globl _TF2
                                    125 	.globl _EXF2
                                    126 	.globl _RCLK
                                    127 	.globl _TCLK
                                    128 	.globl _EXEN2
                                    129 	.globl _TR2
                                    130 	.globl _C_T2
                                    131 	.globl _CP_RL2
                                    132 	.globl _T2CON_7
                                    133 	.globl _T2CON_6
                                    134 	.globl _T2CON_5
                                    135 	.globl _T2CON_4
                                    136 	.globl _T2CON_3
                                    137 	.globl _T2CON_2
                                    138 	.globl _T2CON_1
                                    139 	.globl _T2CON_0
                                    140 	.globl _PT2
                                    141 	.globl _ET2
                                    142 	.globl _B
                                    143 	.globl _ACC
                                    144 	.globl _PSW
                                    145 	.globl _IP
                                    146 	.globl _P3
                                    147 	.globl _IE
                                    148 	.globl _P2
                                    149 	.globl _SBUF
                                    150 	.globl _SCON
                                    151 	.globl _P1
                                    152 	.globl _TH1
                                    153 	.globl _TH0
                                    154 	.globl _TL1
                                    155 	.globl _TL0
                                    156 	.globl _TMOD
                                    157 	.globl _TCON
                                    158 	.globl _PCON
                                    159 	.globl _DPH
                                    160 	.globl _DPL
                                    161 	.globl _SP
                                    162 	.globl _P0
                                    163 	.globl _EECON
                                    164 	.globl _KBF
                                    165 	.globl _KBE
                                    166 	.globl _KBLS
                                    167 	.globl _BRL
                                    168 	.globl _BDRCON
                                    169 	.globl _T2MOD
                                    170 	.globl _SPDAT
                                    171 	.globl _SPSTA
                                    172 	.globl _SPCON
                                    173 	.globl _SADEN
                                    174 	.globl _SADDR
                                    175 	.globl _WDTPRG
                                    176 	.globl _WDTRST
                                    177 	.globl _P5
                                    178 	.globl _P4
                                    179 	.globl _IPH1
                                    180 	.globl _IPL1
                                    181 	.globl _IPH0
                                    182 	.globl _IPL0
                                    183 	.globl _IEN1
                                    184 	.globl _IEN0
                                    185 	.globl _CMOD
                                    186 	.globl _CL
                                    187 	.globl _CH
                                    188 	.globl _CCON
                                    189 	.globl _CCAPM4
                                    190 	.globl _CCAPM3
                                    191 	.globl _CCAPM2
                                    192 	.globl _CCAPM1
                                    193 	.globl _CCAPM0
                                    194 	.globl _CCAP4L
                                    195 	.globl _CCAP3L
                                    196 	.globl _CCAP2L
                                    197 	.globl _CCAP1L
                                    198 	.globl _CCAP0L
                                    199 	.globl _CCAP4H
                                    200 	.globl _CCAP3H
                                    201 	.globl _CCAP2H
                                    202 	.globl _CCAP1H
                                    203 	.globl _CCAP0H
                                    204 	.globl _CKCON1
                                    205 	.globl _CKCON0
                                    206 	.globl _CKRL
                                    207 	.globl _AUXR1
                                    208 	.globl _AUXR
                                    209 	.globl _TH2
                                    210 	.globl _TL2
                                    211 	.globl _RCAP2H
                                    212 	.globl _RCAP2L
                                    213 	.globl _T2CON
                                    214 	.globl _state
                                    215 	.globl _row3
                                    216 	.globl _row2
                                    217 	.globl _row1
                                    218 	.globl _row0
                                    219 	.globl _lcdgotoxy_PARM_2
                                    220 	.globl _time
                                    221 	.globl _reload_counter
                                    222 	.globl _current_overflow_count
                                    223 	.globl _rowcol
                                    224 	.globl _Input
                                    225 	.globl _Program
                                    226 	.globl _lcdinit
                                    227 	.globl _lcdbusywait
                                    228 	.globl _lcdgotoaddr
                                    229 	.globl _lcdgotoxy
                                    230 	.globl _lcdputch
                                    231 	.globl _lcdputstr
                                    232 	.globl _lcdclear
                                    233 	.globl _delay
                                    234 	.globl _init_timer_registers
                                    235 	.globl _lcdtimer
                                    236 ;--------------------------------------------------------
                                    237 ; special function registers
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           0000C8   241 _T2CON	=	0x00c8
                           0000CA   242 _RCAP2L	=	0x00ca
                           0000CB   243 _RCAP2H	=	0x00cb
                           0000CC   244 _TL2	=	0x00cc
                           0000CD   245 _TH2	=	0x00cd
                           00008E   246 _AUXR	=	0x008e
                           0000A2   247 _AUXR1	=	0x00a2
                           000097   248 _CKRL	=	0x0097
                           00008F   249 _CKCON0	=	0x008f
                           0000AF   250 _CKCON1	=	0x00af
                           0000FA   251 _CCAP0H	=	0x00fa
                           0000FB   252 _CCAP1H	=	0x00fb
                           0000FC   253 _CCAP2H	=	0x00fc
                           0000FD   254 _CCAP3H	=	0x00fd
                           0000FE   255 _CCAP4H	=	0x00fe
                           0000EA   256 _CCAP0L	=	0x00ea
                           0000EB   257 _CCAP1L	=	0x00eb
                           0000EC   258 _CCAP2L	=	0x00ec
                           0000ED   259 _CCAP3L	=	0x00ed
                           0000EE   260 _CCAP4L	=	0x00ee
                           0000DA   261 _CCAPM0	=	0x00da
                           0000DB   262 _CCAPM1	=	0x00db
                           0000DC   263 _CCAPM2	=	0x00dc
                           0000DD   264 _CCAPM3	=	0x00dd
                           0000DE   265 _CCAPM4	=	0x00de
                           0000D8   266 _CCON	=	0x00d8
                           0000F9   267 _CH	=	0x00f9
                           0000E9   268 _CL	=	0x00e9
                           0000D9   269 _CMOD	=	0x00d9
                           0000A8   270 _IEN0	=	0x00a8
                           0000B1   271 _IEN1	=	0x00b1
                           0000B8   272 _IPL0	=	0x00b8
                           0000B7   273 _IPH0	=	0x00b7
                           0000B2   274 _IPL1	=	0x00b2
                           0000B3   275 _IPH1	=	0x00b3
                           0000C0   276 _P4	=	0x00c0
                           0000E8   277 _P5	=	0x00e8
                           0000A6   278 _WDTRST	=	0x00a6
                           0000A7   279 _WDTPRG	=	0x00a7
                           0000A9   280 _SADDR	=	0x00a9
                           0000B9   281 _SADEN	=	0x00b9
                           0000C3   282 _SPCON	=	0x00c3
                           0000C4   283 _SPSTA	=	0x00c4
                           0000C5   284 _SPDAT	=	0x00c5
                           0000C9   285 _T2MOD	=	0x00c9
                           00009B   286 _BDRCON	=	0x009b
                           00009A   287 _BRL	=	0x009a
                           00009C   288 _KBLS	=	0x009c
                           00009D   289 _KBE	=	0x009d
                           00009E   290 _KBF	=	0x009e
                           0000D2   291 _EECON	=	0x00d2
                           000080   292 _P0	=	0x0080
                           000081   293 _SP	=	0x0081
                           000082   294 _DPL	=	0x0082
                           000083   295 _DPH	=	0x0083
                           000087   296 _PCON	=	0x0087
                           000088   297 _TCON	=	0x0088
                           000089   298 _TMOD	=	0x0089
                           00008A   299 _TL0	=	0x008a
                           00008B   300 _TL1	=	0x008b
                           00008C   301 _TH0	=	0x008c
                           00008D   302 _TH1	=	0x008d
                           000090   303 _P1	=	0x0090
                           000098   304 _SCON	=	0x0098
                           000099   305 _SBUF	=	0x0099
                           0000A0   306 _P2	=	0x00a0
                           0000A8   307 _IE	=	0x00a8
                           0000B0   308 _P3	=	0x00b0
                           0000B8   309 _IP	=	0x00b8
                           0000D0   310 _PSW	=	0x00d0
                           0000E0   311 _ACC	=	0x00e0
                           0000F0   312 _B	=	0x00f0
                                    313 ;--------------------------------------------------------
                                    314 ; special function bits
                                    315 ;--------------------------------------------------------
                                    316 	.area RSEG    (ABS,DATA)
      000000                        317 	.org 0x0000
                           0000AD   318 _ET2	=	0x00ad
                           0000BD   319 _PT2	=	0x00bd
                           0000C8   320 _T2CON_0	=	0x00c8
                           0000C9   321 _T2CON_1	=	0x00c9
                           0000CA   322 _T2CON_2	=	0x00ca
                           0000CB   323 _T2CON_3	=	0x00cb
                           0000CC   324 _T2CON_4	=	0x00cc
                           0000CD   325 _T2CON_5	=	0x00cd
                           0000CE   326 _T2CON_6	=	0x00ce
                           0000CF   327 _T2CON_7	=	0x00cf
                           0000C8   328 _CP_RL2	=	0x00c8
                           0000C9   329 _C_T2	=	0x00c9
                           0000CA   330 _TR2	=	0x00ca
                           0000CB   331 _EXEN2	=	0x00cb
                           0000CC   332 _TCLK	=	0x00cc
                           0000CD   333 _RCLK	=	0x00cd
                           0000CE   334 _EXF2	=	0x00ce
                           0000CF   335 _TF2	=	0x00cf
                           0000DF   336 _CF	=	0x00df
                           0000DE   337 _CR	=	0x00de
                           0000DC   338 _CCF4	=	0x00dc
                           0000DB   339 _CCF3	=	0x00db
                           0000DA   340 _CCF2	=	0x00da
                           0000D9   341 _CCF1	=	0x00d9
                           0000D8   342 _CCF0	=	0x00d8
                           0000AE   343 _EC	=	0x00ae
                           0000BE   344 _PPCL	=	0x00be
                           0000BD   345 _PT2L	=	0x00bd
                           0000BC   346 _PSL	=	0x00bc
                           0000BB   347 _PT1L	=	0x00bb
                           0000BA   348 _PX1L	=	0x00ba
                           0000B9   349 _PT0L	=	0x00b9
                           0000B8   350 _PX0L	=	0x00b8
                           0000C0   351 _P4_0	=	0x00c0
                           0000C1   352 _P4_1	=	0x00c1
                           0000C2   353 _P4_2	=	0x00c2
                           0000C3   354 _P4_3	=	0x00c3
                           0000C4   355 _P4_4	=	0x00c4
                           0000C5   356 _P4_5	=	0x00c5
                           0000C6   357 _P4_6	=	0x00c6
                           0000C7   358 _P4_7	=	0x00c7
                           0000E8   359 _P5_0	=	0x00e8
                           0000E9   360 _P5_1	=	0x00e9
                           0000EA   361 _P5_2	=	0x00ea
                           0000EB   362 _P5_3	=	0x00eb
                           0000EC   363 _P5_4	=	0x00ec
                           0000ED   364 _P5_5	=	0x00ed
                           0000EE   365 _P5_6	=	0x00ee
                           0000EF   366 _P5_7	=	0x00ef
                           000080   367 _P0_0	=	0x0080
                           000081   368 _P0_1	=	0x0081
                           000082   369 _P0_2	=	0x0082
                           000083   370 _P0_3	=	0x0083
                           000084   371 _P0_4	=	0x0084
                           000085   372 _P0_5	=	0x0085
                           000086   373 _P0_6	=	0x0086
                           000087   374 _P0_7	=	0x0087
                           000088   375 _IT0	=	0x0088
                           000089   376 _IE0	=	0x0089
                           00008A   377 _IT1	=	0x008a
                           00008B   378 _IE1	=	0x008b
                           00008C   379 _TR0	=	0x008c
                           00008D   380 _TF0	=	0x008d
                           00008E   381 _TR1	=	0x008e
                           00008F   382 _TF1	=	0x008f
                           000090   383 _P1_0	=	0x0090
                           000091   384 _P1_1	=	0x0091
                           000092   385 _P1_2	=	0x0092
                           000093   386 _P1_3	=	0x0093
                           000094   387 _P1_4	=	0x0094
                           000095   388 _P1_5	=	0x0095
                           000096   389 _P1_6	=	0x0096
                           000097   390 _P1_7	=	0x0097
                           000098   391 _RI	=	0x0098
                           000099   392 _TI	=	0x0099
                           00009A   393 _RB8	=	0x009a
                           00009B   394 _TB8	=	0x009b
                           00009C   395 _REN	=	0x009c
                           00009D   396 _SM2	=	0x009d
                           00009E   397 _SM1	=	0x009e
                           00009F   398 _SM0	=	0x009f
                           0000A0   399 _P2_0	=	0x00a0
                           0000A1   400 _P2_1	=	0x00a1
                           0000A2   401 _P2_2	=	0x00a2
                           0000A3   402 _P2_3	=	0x00a3
                           0000A4   403 _P2_4	=	0x00a4
                           0000A5   404 _P2_5	=	0x00a5
                           0000A6   405 _P2_6	=	0x00a6
                           0000A7   406 _P2_7	=	0x00a7
                           0000A8   407 _EX0	=	0x00a8
                           0000A9   408 _ET0	=	0x00a9
                           0000AA   409 _EX1	=	0x00aa
                           0000AB   410 _ET1	=	0x00ab
                           0000AC   411 _ES	=	0x00ac
                           0000AF   412 _EA	=	0x00af
                           0000B0   413 _P3_0	=	0x00b0
                           0000B1   414 _P3_1	=	0x00b1
                           0000B2   415 _P3_2	=	0x00b2
                           0000B3   416 _P3_3	=	0x00b3
                           0000B4   417 _P3_4	=	0x00b4
                           0000B5   418 _P3_5	=	0x00b5
                           0000B6   419 _P3_6	=	0x00b6
                           0000B7   420 _P3_7	=	0x00b7
                           0000B0   421 _RXD	=	0x00b0
                           0000B1   422 _TXD	=	0x00b1
                           0000B2   423 _INT0	=	0x00b2
                           0000B3   424 _INT1	=	0x00b3
                           0000B4   425 _T0	=	0x00b4
                           0000B5   426 _T1	=	0x00b5
                           0000B6   427 _WR	=	0x00b6
                           0000B7   428 _RD	=	0x00b7
                           0000B8   429 _PX0	=	0x00b8
                           0000B9   430 _PT0	=	0x00b9
                           0000BA   431 _PX1	=	0x00ba
                           0000BB   432 _PT1	=	0x00bb
                           0000BC   433 _PS	=	0x00bc
                           0000D0   434 _P	=	0x00d0
                           0000D1   435 _F1	=	0x00d1
                           0000D2   436 _OV	=	0x00d2
                           0000D3   437 _RS0	=	0x00d3
                           0000D4   438 _RS1	=	0x00d4
                           0000D5   439 _F0	=	0x00d5
                           0000D6   440 _AC	=	0x00d6
                           0000D7   441 _CY	=	0x00d7
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable register banks
                                    444 ;--------------------------------------------------------
                                    445 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        446 	.ds 8
                                    447 ;--------------------------------------------------------
                                    448 ; internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area DSEG    (DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable items in internal ram
                                    453 ;--------------------------------------------------------
                                    454 ;--------------------------------------------------------
                                    455 ; Stack segment in internal ram
                                    456 ;--------------------------------------------------------
                                    457 	.area SSEG
      000021                        458 __start__stack:
      000021                        459 	.ds	1
                                    460 
                                    461 ;--------------------------------------------------------
                                    462 ; indirectly addressable internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area ISEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area IABS    (ABS,DATA)
                                    469 	.area IABS    (ABS,DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; bit data
                                    472 ;--------------------------------------------------------
                                    473 	.area BSEG    (BIT)
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; uninitialized external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
      000001                        482 _rowcol::
      000001                        483 	.ds 4
      000005                        484 _current_overflow_count::
      000005                        485 	.ds 2
      000007                        486 _reload_counter::
      000007                        487 	.ds 2
      000009                        488 _time::
      000009                        489 	.ds 2
      00000B                        490 _Input_temp_10000_102:
      00000B                        491 	.ds 2
      00000D                        492 _Program_temp_30001_114:
      00000D                        493 	.ds 64
      00004D                        494 _lcdgotoaddr_addr_10000_127:
      00004D                        495 	.ds 1
      00004E                        496 _lcdgotoxy_PARM_2:
      00004E                        497 	.ds 1
      00004F                        498 _lcdgotoxy_row_10000_129:
      00004F                        499 	.ds 1
      000050                        500 _lcdputch_cc_10000_135:
      000050                        501 	.ds 1
      000051                        502 _lcdputstr_ss_10000_143:
      000051                        503 	.ds 3
      000054                        504 _delay_time_10000_148:
      000054                        505 	.ds 2
      000056                        506 _lcdtimer_temprowcol_10000_151:
      000056                        507 	.ds 4
      00005A                        508 _lcdtimer_Minutes_10001_152:
      00005A                        509 	.ds 3
      00005D                        510 _lcdtimer_Seconds_10001_152:
      00005D                        511 	.ds 3
      000060                        512 _lcdtimer_Miliseconds_10001_152:
      000060                        513 	.ds 3
                                    514 ;--------------------------------------------------------
                                    515 ; absolute external ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XABS    (ABS,XDATA)
                                    518 ;--------------------------------------------------------
                                    519 ; initialized external ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XISEG   (XDATA)
      0000DF                        522 _row0::
      0000DF                        523 	.ds 2
      0000E1                        524 _row1::
      0000E1                        525 	.ds 2
      0000E3                        526 _row2::
      0000E3                        527 	.ds 2
      0000E5                        528 _row3::
      0000E5                        529 	.ds 2
      0000E7                        530 _state::
      0000E7                        531 	.ds 1
                                    532 	.area HOME    (CODE)
                                    533 	.area GSINIT0 (CODE)
                                    534 	.area GSINIT1 (CODE)
                                    535 	.area GSINIT2 (CODE)
                                    536 	.area GSINIT3 (CODE)
                                    537 	.area GSINIT4 (CODE)
                                    538 	.area GSINIT5 (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area CSEG    (CODE)
                                    542 ;--------------------------------------------------------
                                    543 ; interrupt vector
                                    544 ;--------------------------------------------------------
                                    545 	.area HOME    (CODE)
      002000                        546 __interrupt_vect:
      002000 02 20 54         [24]  547 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  548 	reti
      002004                        549 	.ds	7
      00200B 02 27 A1         [24]  550 	ljmp	_timer0_ISR
                                    551 ; restartable atomic support routines
      00200E                        552 	.ds	2
      002010                        553 sdcc_atomic_exchange_rollback_start::
      002010 00               [12]  554 	nop
      002011 00               [12]  555 	nop
      002012                        556 sdcc_atomic_exchange_pdata_impl:
      002012 E2               [24]  557 	movx	a, @r0
      002013 FB               [12]  558 	mov	r3, a
      002014 EA               [12]  559 	mov	a, r2
      002015 F2               [24]  560 	movx	@r0, a
      002016 80 2C            [24]  561 	sjmp	sdcc_atomic_exchange_exit
      002018 00               [12]  562 	nop
      002019 00               [12]  563 	nop
      00201A                        564 sdcc_atomic_exchange_xdata_impl:
      00201A E0               [24]  565 	movx	a, @dptr
      00201B FB               [12]  566 	mov	r3, a
      00201C EA               [12]  567 	mov	a, r2
      00201D F0               [24]  568 	movx	@dptr, a
      00201E 80 24            [24]  569 	sjmp	sdcc_atomic_exchange_exit
      002020                        570 sdcc_atomic_compare_exchange_idata_impl:
      002020 E6               [12]  571 	mov	a, @r0
      002021 B5 02 02         [24]  572 	cjne	a, ar2, .+#5
      002024 EB               [12]  573 	mov	a, r3
      002025 F6               [12]  574 	mov	@r0, a
      002026 22               [24]  575 	ret
      002027 00               [12]  576 	nop
      002028                        577 sdcc_atomic_compare_exchange_pdata_impl:
      002028 E2               [24]  578 	movx	a, @r0
      002029 B5 02 02         [24]  579 	cjne	a, ar2, .+#5
      00202C EB               [12]  580 	mov	a, r3
      00202D F2               [24]  581 	movx	@r0, a
      00202E 22               [24]  582 	ret
      00202F 00               [12]  583 	nop
      002030                        584 sdcc_atomic_compare_exchange_xdata_impl:
      002030 E0               [24]  585 	movx	a, @dptr
      002031 B5 02 02         [24]  586 	cjne	a, ar2, .+#5
      002034 EB               [12]  587 	mov	a, r3
      002035 F0               [24]  588 	movx	@dptr, a
      002036 22               [24]  589 	ret
      002037                        590 sdcc_atomic_exchange_rollback_end::
                                    591 
      002037                        592 sdcc_atomic_exchange_gptr_impl::
      002037 30 F6 E0         [24]  593 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00203A A8 82            [24]  594 	mov	r0, dpl
      00203C 20 F5 D3         [24]  595 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00203F                        596 sdcc_atomic_exchange_idata_impl:
      00203F EA               [12]  597 	mov	a, r2
      002040 C6               [12]  598 	xch	a, @r0
      002041 F5 82            [12]  599 	mov	dpl, a
      002043 22               [24]  600 	ret
      002044                        601 sdcc_atomic_exchange_exit:
      002044 8B 82            [24]  602 	mov	dpl, r3
      002046 22               [24]  603 	ret
      002047                        604 sdcc_atomic_compare_exchange_gptr_impl::
      002047 30 F6 E6         [24]  605 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00204A A8 82            [24]  606 	mov	r0, dpl
      00204C 20 F5 D9         [24]  607 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00204F 80 CF            [24]  608 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    609 ;--------------------------------------------------------
                                    610 ; global & static initialisations
                                    611 ;--------------------------------------------------------
                                    612 	.area HOME    (CODE)
                                    613 	.area GSINIT  (CODE)
                                    614 	.area GSFINAL (CODE)
                                    615 	.area GSINIT  (CODE)
                                    616 	.globl __sdcc_gsinit_startup
                                    617 	.globl __sdcc_program_startup
                                    618 	.globl __start__stack
                                    619 	.globl __mcs51_genXINIT
                                    620 	.globl __mcs51_genXRAMCLEAR
                                    621 	.globl __mcs51_genRAMCLEAR
                                    622 	.area GSFINAL (CODE)
      0020AD 02 20 51         [24]  623 	ljmp	__sdcc_program_startup
                                    624 ;--------------------------------------------------------
                                    625 ; Home
                                    626 ;--------------------------------------------------------
                                    627 	.area HOME    (CODE)
                                    628 	.area HOME    (CODE)
      002051                        629 __sdcc_program_startup:
      002051 02 20 B0         [24]  630 	ljmp	_main
                                    631 ;	return from main will return to caller
                                    632 ;--------------------------------------------------------
                                    633 ; code
                                    634 ;--------------------------------------------------------
                                    635 	.area CSEG    (CODE)
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'main'
                                    638 ;------------------------------------------------------------
                                    639 ;	src/main.c:72: void main(){
                                    640 ;	-----------------------------------------
                                    641 ;	 function main
                                    642 ;	-----------------------------------------
      0020B0                        643 _main:
                           000007   644 	ar7 = 0x07
                           000006   645 	ar6 = 0x06
                           000005   646 	ar5 = 0x05
                           000004   647 	ar4 = 0x04
                           000003   648 	ar3 = 0x03
                           000002   649 	ar2 = 0x02
                           000001   650 	ar1 = 0x01
                           000000   651 	ar0 = 0x00
                                    652 ;	src/main.c:73: lcdinit();
      0020B0 12 23 6D         [24]  653 	lcall	_lcdinit
                                    654 ;	src/main.c:74: init_timer_registers();
      0020B3 12 26 53         [24]  655 	lcall	_init_timer_registers
                                    656 ;	src/main.c:75: printf("\n\r Lab4 Part 2 LCD Program\n\r");
      0020B6 74 63            [12]  657 	mov	a,#___str_0
      0020B8 C0 E0            [24]  658 	push	acc
      0020BA 74 3A            [12]  659 	mov	a,#(___str_0 >> 8)
      0020BC C0 E0            [24]  660 	push	acc
      0020BE 74 80            [12]  661 	mov	a,#0x80
      0020C0 C0 E0            [24]  662 	push	acc
      0020C2 12 30 2F         [24]  663 	lcall	_printf
      0020C5 15 81            [12]  664 	dec	sp
      0020C7 15 81            [12]  665 	dec	sp
      0020C9 15 81            [12]  666 	dec	sp
                                    667 ;	src/main.c:77: while(1){
      0020CB                        668 00102$:
                                    669 ;	src/main.c:80: Program();
      0020CB 12 21 25         [24]  670 	lcall	_Program
                                    671 ;	src/main.c:83: }
      0020CE 80 FB            [24]  672 	sjmp	00102$
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'Input'
                                    675 ;------------------------------------------------------------
                                    676 ;temp          Allocated with name '_Input_temp_10000_102'
                                    677 ;c             Allocated with name '_Input_c_10000_102'
                                    678 ;i             Allocated with name '_Input_i_10000_102'
                                    679 ;------------------------------------------------------------
                                    680 ;	src/main.c:85: int Input(){
                                    681 ;	-----------------------------------------
                                    682 ;	 function Input
                                    683 ;	-----------------------------------------
      0020D0                        684 _Input:
                                    685 ;	src/main.c:89: while(1){
      0020D0 7F 00            [12]  686 	mov	r7,#0x00
      0020D2                        687 00106$:
                                    688 ;	src/main.c:90: c = getchar();
      0020D2 C0 07            [24]  689 	push	ar7
      0020D4 12 28 25         [24]  690 	lcall	_getchar
      0020D7 AD 82            [24]  691 	mov	r5, dpl
      0020D9 D0 07            [24]  692 	pop	ar7
                                    693 ;	src/main.c:91: if(c == '\r'){
      0020DB BD 0D 02         [24]  694 	cjne	r5,#0x0d,00129$
      0020DE 80 1B            [24]  695 	sjmp	00107$
      0020E0                        696 00129$:
                                    697 ;	src/main.c:94: if(i < sizeof(temp)-1){
      0020E0 BF 01 00         [24]  698 	cjne	r7,#0x01,00130$
      0020E3                        699 00130$:
      0020E3 50 07            [24]  700 	jnc	00104$
                                    701 ;	src/main.c:95: temp[i] = c;
      0020E5 90 00 0B         [24]  702 	mov	dptr,#_Input_temp_10000_102
      0020E8 ED               [12]  703 	mov	a,r5
      0020E9 F0               [24]  704 	movx	@dptr,a
                                    705 ;	src/main.c:96: i++;
      0020EA 7F 01            [12]  706 	mov	r7,#0x01
      0020EC                        707 00104$:
                                    708 ;	src/main.c:99: putchar(c);
      0020EC 7E 00            [12]  709 	mov	r6,#0x00
      0020EE 8D 82            [24]  710 	mov	dpl, r5
      0020F0 8E 83            [24]  711 	mov	dph, r6
      0020F2 C0 07            [24]  712 	push	ar7
      0020F4 12 28 06         [24]  713 	lcall	_putchar
      0020F7 D0 07            [24]  714 	pop	ar7
      0020F9 80 D7            [24]  715 	sjmp	00106$
      0020FB                        716 00107$:
                                    717 ;	src/main.c:101: temp[i] = '\0';
      0020FB EF               [12]  718 	mov	a,r7
      0020FC 24 0B            [12]  719 	add	a, #_Input_temp_10000_102
      0020FE F5 82            [12]  720 	mov	dpl,a
      002100 E4               [12]  721 	clr	a
      002101 34 00            [12]  722 	addc	a, #(_Input_temp_10000_102 >> 8)
      002103 F5 83            [12]  723 	mov	dph,a
      002105 E4               [12]  724 	clr	a
      002106 F0               [24]  725 	movx	@dptr,a
                                    726 ;	src/main.c:102: printf("\n\r");
      002107 74 80            [12]  727 	mov	a,#___str_1
      002109 C0 E0            [24]  728 	push	acc
      00210B 74 3A            [12]  729 	mov	a,#(___str_1 >> 8)
      00210D C0 E0            [24]  730 	push	acc
      00210F 74 80            [12]  731 	mov	a,#0x80
      002111 C0 E0            [24]  732 	push	acc
      002113 12 30 2F         [24]  733 	lcall	_printf
      002116 15 81            [12]  734 	dec	sp
      002118 15 81            [12]  735 	dec	sp
      00211A 15 81            [12]  736 	dec	sp
                                    737 ;	src/main.c:103: return atoi(temp);
      00211C 90 00 0B         [24]  738 	mov	dptr,#_Input_temp_10000_102
      00211F 75 F0 00         [24]  739 	mov	b, #0x00
                                    740 ;	src/main.c:104: }
      002122 02 2D 69         [24]  741 	ljmp	_atoi
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'Program'
                                    744 ;------------------------------------------------------------
                                    745 ;c             Allocated with name '_Program_c_10000_106'
                                    746 ;temp          Allocated with name '_Program_temp_30001_112'
                                    747 ;temp          Allocated with name '_Program_temp_30001_114'
                                    748 ;c             Allocated with name '_Program_c_30001_114'
                                    749 ;i             Allocated with name '_Program_i_30001_114'
                                    750 ;x             Allocated with name '_Program_x_30001_119'
                                    751 ;y             Allocated with name '_Program_y_30002_120'
                                    752 ;------------------------------------------------------------
                                    753 ;	src/main.c:105: void Program()
                                    754 ;	-----------------------------------------
                                    755 ;	 function Program
                                    756 ;	-----------------------------------------
      002125                        757 _Program:
                                    758 ;	src/main.c:108: printf("\n\r ------ Commands ------\n\r");
      002125 74 83            [12]  759 	mov	a,#___str_2
      002127 C0 E0            [24]  760 	push	acc
      002129 74 3A            [12]  761 	mov	a,#(___str_2 >> 8)
      00212B C0 E0            [24]  762 	push	acc
      00212D 74 80            [12]  763 	mov	a,#0x80
      00212F C0 E0            [24]  764 	push	acc
      002131 12 30 2F         [24]  765 	lcall	_printf
      002134 15 81            [12]  766 	dec	sp
      002136 15 81            [12]  767 	dec	sp
      002138 15 81            [12]  768 	dec	sp
                                    769 ;	src/main.c:109: printf("\n\r c : Clear Screen\n\r");
      00213A 74 9F            [12]  770 	mov	a,#___str_3
      00213C C0 E0            [24]  771 	push	acc
      00213E 74 3A            [12]  772 	mov	a,#(___str_3 >> 8)
      002140 C0 E0            [24]  773 	push	acc
      002142 74 80            [12]  774 	mov	a,#0x80
      002144 C0 E0            [24]  775 	push	acc
      002146 12 30 2F         [24]  776 	lcall	_printf
      002149 15 81            [12]  777 	dec	sp
      00214B 15 81            [12]  778 	dec	sp
      00214D 15 81            [12]  779 	dec	sp
                                    780 ;	src/main.c:110: printf("\n\r p : putChar \n\r");
      00214F 74 B5            [12]  781 	mov	a,#___str_4
      002151 C0 E0            [24]  782 	push	acc
      002153 74 3A            [12]  783 	mov	a,#(___str_4 >> 8)
      002155 C0 E0            [24]  784 	push	acc
      002157 74 80            [12]  785 	mov	a,#0x80
      002159 C0 E0            [24]  786 	push	acc
      00215B 12 30 2F         [24]  787 	lcall	_printf
      00215E 15 81            [12]  788 	dec	sp
      002160 15 81            [12]  789 	dec	sp
      002162 15 81            [12]  790 	dec	sp
                                    791 ;	src/main.c:111: printf("\n\r s : putStr\n\r");
      002164 74 C7            [12]  792 	mov	a,#___str_5
      002166 C0 E0            [24]  793 	push	acc
      002168 74 3A            [12]  794 	mov	a,#(___str_5 >> 8)
      00216A C0 E0            [24]  795 	push	acc
      00216C 74 80            [12]  796 	mov	a,#0x80
      00216E C0 E0            [24]  797 	push	acc
      002170 12 30 2F         [24]  798 	lcall	_printf
      002173 15 81            [12]  799 	dec	sp
      002175 15 81            [12]  800 	dec	sp
      002177 15 81            [12]  801 	dec	sp
                                    802 ;	src/main.c:112: printf("\n\r g : Go to x, y\n\r");
      002179 74 D7            [12]  803 	mov	a,#___str_6
      00217B C0 E0            [24]  804 	push	acc
      00217D 74 3A            [12]  805 	mov	a,#(___str_6 >> 8)
      00217F C0 E0            [24]  806 	push	acc
      002181 74 80            [12]  807 	mov	a,#0x80
      002183 C0 E0            [24]  808 	push	acc
      002185 12 30 2F         [24]  809 	lcall	_printf
      002188 15 81            [12]  810 	dec	sp
      00218A 15 81            [12]  811 	dec	sp
      00218C 15 81            [12]  812 	dec	sp
                                    813 ;	src/main.c:113: printf("\n\r h : Stop timer\n\r");
      00218E 74 EB            [12]  814 	mov	a,#___str_7
      002190 C0 E0            [24]  815 	push	acc
      002192 74 3A            [12]  816 	mov	a,#(___str_7 >> 8)
      002194 C0 E0            [24]  817 	push	acc
      002196 74 80            [12]  818 	mov	a,#0x80
      002198 C0 E0            [24]  819 	push	acc
      00219A 12 30 2F         [24]  820 	lcall	_printf
      00219D 15 81            [12]  821 	dec	sp
      00219F 15 81            [12]  822 	dec	sp
      0021A1 15 81            [12]  823 	dec	sp
                                    824 ;	src/main.c:114: printf("\n\r r : Restart Timer\n\r");
      0021A3 74 FF            [12]  825 	mov	a,#___str_8
      0021A5 C0 E0            [24]  826 	push	acc
      0021A7 74 3A            [12]  827 	mov	a,#(___str_8 >> 8)
      0021A9 C0 E0            [24]  828 	push	acc
      0021AB 74 80            [12]  829 	mov	a,#0x80
      0021AD C0 E0            [24]  830 	push	acc
      0021AF 12 30 2F         [24]  831 	lcall	_printf
      0021B2 15 81            [12]  832 	dec	sp
      0021B4 15 81            [12]  833 	dec	sp
      0021B6 15 81            [12]  834 	dec	sp
                                    835 ;	src/main.c:115: printf("\n\r z : Reset Timer\n\r");
      0021B8 74 16            [12]  836 	mov	a,#___str_9
      0021BA C0 E0            [24]  837 	push	acc
      0021BC 74 3B            [12]  838 	mov	a,#(___str_9 >> 8)
      0021BE C0 E0            [24]  839 	push	acc
      0021C0 74 80            [12]  840 	mov	a,#0x80
      0021C2 C0 E0            [24]  841 	push	acc
      0021C4 12 30 2F         [24]  842 	lcall	_printf
      0021C7 15 81            [12]  843 	dec	sp
      0021C9 15 81            [12]  844 	dec	sp
      0021CB 15 81            [12]  845 	dec	sp
                                    846 ;	src/main.c:117: while(1)
      0021CD                        847 00133$:
                                    848 ;	src/main.c:121: c = getcharmain();
      0021CD 12 28 33         [24]  849 	lcall	_getcharmain
      0021D0 AE 82            [24]  850 	mov	r6, dpl
      0021D2 AF 83            [24]  851 	mov	r7, dph
                                    852 ;	src/main.c:122: if(c == -1){
      0021D4 BE FF 05         [24]  853 	cjne	r6,#0xff,00216$
      0021D7 BF FF 02         [24]  854 	cjne	r7,#0xff,00216$
      0021DA 80 F1            [24]  855 	sjmp	00133$
      0021DC                        856 00216$:
                                    857 ;	src/main.c:125: if(reload_counter){
      0021DC 90 00 07         [24]  858 	mov	dptr,#_reload_counter
      0021DF E0               [24]  859 	movx	a,@dptr
      0021E0 FC               [12]  860 	mov	r4,a
      0021E1 A3               [24]  861 	inc	dptr
      0021E2 E0               [24]  862 	movx	a,@dptr
      0021E3 4C               [12]  863 	orl	a,r4
      0021E4 60 0B            [24]  864 	jz	00104$
                                    865 ;	src/main.c:126: lcdtimer();
      0021E6 C0 07            [24]  866 	push	ar7
      0021E8 C0 06            [24]  867 	push	ar6
      0021EA 12 26 63         [24]  868 	lcall	_lcdtimer
      0021ED D0 06            [24]  869 	pop	ar6
      0021EF D0 07            [24]  870 	pop	ar7
      0021F1                        871 00104$:
                                    872 ;	src/main.c:128: putchar(c);
      0021F1 8E 82            [24]  873 	mov	dpl, r6
      0021F3 8F 83            [24]  874 	mov	dph, r7
      0021F5 C0 07            [24]  875 	push	ar7
      0021F7 C0 06            [24]  876 	push	ar6
      0021F9 12 28 06         [24]  877 	lcall	_putchar
      0021FC D0 06            [24]  878 	pop	ar6
      0021FE D0 07            [24]  879 	pop	ar7
                                    880 ;	src/main.c:129: if(c == 'c'){
      002200 BE 63 08         [24]  881 	cjne	r6,#0x63,00130$
      002203 BF 00 05         [24]  882 	cjne	r7,#0x00,00130$
                                    883 ;	src/main.c:130: lcdclear();
      002206 12 26 12         [24]  884 	lcall	_lcdclear
      002209 80 C2            [24]  885 	sjmp	00133$
      00220B                        886 00130$:
                                    887 ;	src/main.c:132: else if(c == 'p'){
      00220B BE 70 20         [24]  888 	cjne	r6,#0x70,00127$
      00220E BF 00 1D         [24]  889 	cjne	r7,#0x00,00127$
                                    890 ;	src/main.c:133: printf("\n\r Input a char: ");
      002211 74 2B            [12]  891 	mov	a,#___str_10
      002213 C0 E0            [24]  892 	push	acc
      002215 74 3B            [12]  893 	mov	a,#(___str_10 >> 8)
      002217 C0 E0            [24]  894 	push	acc
      002219 74 80            [12]  895 	mov	a,#0x80
      00221B C0 E0            [24]  896 	push	acc
      00221D 12 30 2F         [24]  897 	lcall	_printf
      002220 15 81            [12]  898 	dec	sp
      002222 15 81            [12]  899 	dec	sp
      002224 15 81            [12]  900 	dec	sp
                                    901 ;	src/main.c:134: char temp = getchar();
      002226 12 28 25         [24]  902 	lcall	_getchar
                                    903 ;	src/main.c:135: lcdputch(temp);
      002229 12 24 E2         [24]  904 	lcall	_lcdputch
      00222C 80 9F            [24]  905 	sjmp	00133$
      00222E                        906 00127$:
                                    907 ;	src/main.c:138: else if(c == 's'){
      00222E BE 73 05         [24]  908 	cjne	r6,#0x73,00222$
      002231 BF 00 02         [24]  909 	cjne	r7,#0x00,00222$
      002234 80 02            [24]  910 	sjmp	00223$
      002236                        911 00222$:
      002236 80 77            [24]  912 	sjmp	00124$
      002238                        913 00223$:
                                    914 ;	src/main.c:139: printf("\n\r Input a string: ");
      002238 74 3D            [12]  915 	mov	a,#___str_11
      00223A C0 E0            [24]  916 	push	acc
      00223C 74 3B            [12]  917 	mov	a,#(___str_11 >> 8)
      00223E C0 E0            [24]  918 	push	acc
      002240 74 80            [12]  919 	mov	a,#0x80
      002242 C0 E0            [24]  920 	push	acc
      002244 12 30 2F         [24]  921 	lcall	_printf
      002247 15 81            [12]  922 	dec	sp
      002249 15 81            [12]  923 	dec	sp
      00224B 15 81            [12]  924 	dec	sp
                                    925 ;	src/main.c:144: while(1){
      00224D 7D 00            [12]  926 	mov	r5,#0x00
      00224F                        927 00110$:
                                    928 ;	src/main.c:145: c = getchar();
      00224F C0 05            [24]  929 	push	ar5
      002251 12 28 25         [24]  930 	lcall	_getchar
      002254 AB 82            [24]  931 	mov	r3, dpl
      002256 D0 05            [24]  932 	pop	ar5
                                    933 ;	src/main.c:146: if(c == '\r'){
      002258 BB 0D 02         [24]  934 	cjne	r3,#0x0d,00224$
      00225B 80 21            [24]  935 	sjmp	00111$
      00225D                        936 00224$:
                                    937 ;	src/main.c:149: if(i < sizeof(temp)-1){
      00225D BD 3F 00         [24]  938 	cjne	r5,#0x3f,00225$
      002260                        939 00225$:
      002260 50 0D            [24]  940 	jnc	00108$
                                    941 ;	src/main.c:150: temp[i] = c;
      002262 ED               [12]  942 	mov	a,r5
      002263 24 0D            [12]  943 	add	a, #_Program_temp_30001_114
      002265 F5 82            [12]  944 	mov	dpl,a
      002267 E4               [12]  945 	clr	a
      002268 34 00            [12]  946 	addc	a, #(_Program_temp_30001_114 >> 8)
      00226A F5 83            [12]  947 	mov	dph,a
      00226C EB               [12]  948 	mov	a,r3
      00226D F0               [24]  949 	movx	@dptr,a
                                    950 ;	src/main.c:151: i++;
      00226E 0D               [12]  951 	inc	r5
      00226F                        952 00108$:
                                    953 ;	src/main.c:154: putchar(c);
      00226F 7C 00            [12]  954 	mov	r4,#0x00
      002271 8B 82            [24]  955 	mov	dpl, r3
      002273 8C 83            [24]  956 	mov	dph, r4
      002275 C0 05            [24]  957 	push	ar5
      002277 12 28 06         [24]  958 	lcall	_putchar
      00227A D0 05            [24]  959 	pop	ar5
      00227C 80 D1            [24]  960 	sjmp	00110$
      00227E                        961 00111$:
                                    962 ;	src/main.c:157: lcdputstr(temp);
      00227E 90 00 0D         [24]  963 	mov	dptr,#_Program_temp_30001_114
      002281 75 F0 00         [24]  964 	mov	b, #0x00
      002284 C0 05            [24]  965 	push	ar5
      002286 12 25 82         [24]  966 	lcall	_lcdputstr
      002289 D0 05            [24]  967 	pop	ar5
                                    968 ;	src/main.c:158: temp[i] = '\0';
      00228B ED               [12]  969 	mov	a,r5
      00228C 24 0D            [12]  970 	add	a, #_Program_temp_30001_114
      00228E F5 82            [12]  971 	mov	dpl,a
      002290 E4               [12]  972 	clr	a
      002291 34 00            [12]  973 	addc	a, #(_Program_temp_30001_114 >> 8)
      002293 F5 83            [12]  974 	mov	dph,a
      002295 E4               [12]  975 	clr	a
      002296 F0               [24]  976 	movx	@dptr,a
                                    977 ;	src/main.c:159: printf("\n\r");
      002297 74 80            [12]  978 	mov	a,#___str_1
      002299 C0 E0            [24]  979 	push	acc
      00229B 74 3A            [12]  980 	mov	a,#(___str_1 >> 8)
      00229D C0 E0            [24]  981 	push	acc
      00229F 74 80            [12]  982 	mov	a,#0x80
      0022A1 C0 E0            [24]  983 	push	acc
      0022A3 12 30 2F         [24]  984 	lcall	_printf
      0022A6 15 81            [12]  985 	dec	sp
      0022A8 15 81            [12]  986 	dec	sp
      0022AA 15 81            [12]  987 	dec	sp
      0022AC 02 21 CD         [24]  988 	ljmp	00133$
      0022AF                        989 00124$:
                                    990 ;	src/main.c:162: else if(c == 'g'){
      0022AF BE 67 48         [24]  991 	cjne	r6,#0x67,00121$
      0022B2 BF 00 45         [24]  992 	cjne	r7,#0x00,00121$
                                    993 ;	src/main.c:163: printf("\n\r x:");
      0022B5 74 51            [12]  994 	mov	a,#___str_12
      0022B7 C0 E0            [24]  995 	push	acc
      0022B9 74 3B            [12]  996 	mov	a,#(___str_12 >> 8)
      0022BB C0 E0            [24]  997 	push	acc
      0022BD 74 80            [12]  998 	mov	a,#0x80
      0022BF C0 E0            [24]  999 	push	acc
      0022C1 12 30 2F         [24] 1000 	lcall	_printf
      0022C4 15 81            [12] 1001 	dec	sp
      0022C6 15 81            [12] 1002 	dec	sp
      0022C8 15 81            [12] 1003 	dec	sp
                                   1004 ;	src/main.c:164: unsigned char x = Input();
      0022CA 12 20 D0         [24] 1005 	lcall	_Input
      0022CD AC 82            [24] 1006 	mov	r4, dpl
                                   1007 ;	src/main.c:165: printf("\n\r y:");
      0022CF C0 04            [24] 1008 	push	ar4
      0022D1 74 57            [12] 1009 	mov	a,#___str_13
      0022D3 C0 E0            [24] 1010 	push	acc
      0022D5 74 3B            [12] 1011 	mov	a,#(___str_13 >> 8)
      0022D7 C0 E0            [24] 1012 	push	acc
      0022D9 74 80            [12] 1013 	mov	a,#0x80
      0022DB C0 E0            [24] 1014 	push	acc
      0022DD 12 30 2F         [24] 1015 	lcall	_printf
      0022E0 15 81            [12] 1016 	dec	sp
      0022E2 15 81            [12] 1017 	dec	sp
      0022E4 15 81            [12] 1018 	dec	sp
                                   1019 ;	src/main.c:166: unsigned char y = Input();
      0022E6 12 20 D0         [24] 1020 	lcall	_Input
      0022E9 AB 82            [24] 1021 	mov	r3, dpl
      0022EB D0 04            [24] 1022 	pop	ar4
                                   1023 ;	src/main.c:167: lcdgotoxy(y,x);
      0022ED 90 00 4E         [24] 1024 	mov	dptr,#_lcdgotoxy_PARM_2
      0022F0 EC               [12] 1025 	mov	a,r4
      0022F1 F0               [24] 1026 	movx	@dptr,a
      0022F2 8B 82            [24] 1027 	mov	dpl, r3
      0022F4 12 24 09         [24] 1028 	lcall	_lcdgotoxy
      0022F7 02 21 CD         [24] 1029 	ljmp	00133$
      0022FA                       1030 00121$:
                                   1031 ;	src/main.c:170: else if(c == 'h'){
      0022FA BE 68 21         [24] 1032 	cjne	r6,#0x68,00118$
      0022FD BF 00 1E         [24] 1033 	cjne	r7,#0x00,00118$
                                   1034 ;	src/main.c:171: state = true;
      002300 90 00 E7         [24] 1035 	mov	dptr,#_state
      002303 74 01            [12] 1036 	mov	a,#0x01
      002305 F0               [24] 1037 	movx	@dptr,a
                                   1038 ;	src/main.c:172: printf("\n\r");
      002306 74 80            [12] 1039 	mov	a,#___str_1
      002308 C0 E0            [24] 1040 	push	acc
      00230A 74 3A            [12] 1041 	mov	a,#(___str_1 >> 8)
      00230C C0 E0            [24] 1042 	push	acc
      00230E 74 80            [12] 1043 	mov	a,#0x80
      002310 C0 E0            [24] 1044 	push	acc
      002312 12 30 2F         [24] 1045 	lcall	_printf
      002315 15 81            [12] 1046 	dec	sp
      002317 15 81            [12] 1047 	dec	sp
      002319 15 81            [12] 1048 	dec	sp
      00231B 02 21 CD         [24] 1049 	ljmp	00133$
      00231E                       1050 00118$:
                                   1051 ;	src/main.c:174: else if(c == 'r'){
      00231E BE 72 22         [24] 1052 	cjne	r6,#0x72,00115$
      002321 BF 00 1F         [24] 1053 	cjne	r7,#0x00,00115$
                                   1054 ;	src/main.c:175: state = false;
      002324 90 00 E7         [24] 1055 	mov	dptr,#_state
      002327 E4               [12] 1056 	clr	a
      002328 F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	src/main.c:176: TR0 = 1;
                                   1059 ;	assignBit
      002329 D2 8C            [12] 1060 	setb	_TR0
                                   1061 ;	src/main.c:177: printf("\n\r");
      00232B 74 80            [12] 1062 	mov	a,#___str_1
      00232D C0 E0            [24] 1063 	push	acc
      00232F 74 3A            [12] 1064 	mov	a,#(___str_1 >> 8)
      002331 C0 E0            [24] 1065 	push	acc
      002333 74 80            [12] 1066 	mov	a,#0x80
      002335 C0 E0            [24] 1067 	push	acc
      002337 12 30 2F         [24] 1068 	lcall	_printf
      00233A 15 81            [12] 1069 	dec	sp
      00233C 15 81            [12] 1070 	dec	sp
      00233E 15 81            [12] 1071 	dec	sp
      002340 02 21 CD         [24] 1072 	ljmp	00133$
      002343                       1073 00115$:
                                   1074 ;	src/main.c:180: else if(c == 'z'){
      002343 BE 7A 05         [24] 1075 	cjne	r6,#0x7a,00233$
      002346 BF 00 02         [24] 1076 	cjne	r7,#0x00,00233$
      002349 80 03            [24] 1077 	sjmp	00234$
      00234B                       1078 00233$:
      00234B 02 21 CD         [24] 1079 	ljmp	00133$
      00234E                       1080 00234$:
                                   1081 ;	src/main.c:181: time = 0;
      00234E 90 00 09         [24] 1082 	mov	dptr,#_time
      002351 E4               [12] 1083 	clr	a
      002352 F0               [24] 1084 	movx	@dptr,a
      002353 A3               [24] 1085 	inc	dptr
      002354 F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	src/main.c:182: printf("\n\r");
      002355 74 80            [12] 1088 	mov	a,#___str_1
      002357 C0 E0            [24] 1089 	push	acc
      002359 74 3A            [12] 1090 	mov	a,#(___str_1 >> 8)
      00235B C0 E0            [24] 1091 	push	acc
      00235D 74 80            [12] 1092 	mov	a,#0x80
      00235F C0 E0            [24] 1093 	push	acc
      002361 12 30 2F         [24] 1094 	lcall	_printf
      002364 15 81            [12] 1095 	dec	sp
      002366 15 81            [12] 1096 	dec	sp
      002368 15 81            [12] 1097 	dec	sp
                                   1098 ;	src/main.c:185: }
      00236A 02 21 CD         [24] 1099 	ljmp	00133$
                                   1100 ;------------------------------------------------------------
                                   1101 ;Allocation info for local variables in function 'lcdinit'
                                   1102 ;------------------------------------------------------------
                                   1103 ;	src/main.c:187: void lcdinit(){
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function lcdinit
                                   1106 ;	-----------------------------------------
      00236D                       1107 _lcdinit:
                                   1108 ;	src/main.c:188: delay(50000);
      00236D 90 C3 50         [24] 1109 	mov	dptr,#0xc350
      002370 12 26 26         [24] 1110 	lcall	_delay
                                   1111 ;	src/main.c:189: RS_LOW;
                                   1112 ;	assignBit
      002373 C2 96            [12] 1113 	clr	_P1_6
                                   1114 ;	src/main.c:190: RW_LOW;
                                   1115 ;	assignBit
      002375 C2 95            [12] 1116 	clr	_P1_5
                                   1117 ;	src/main.c:191: *enable = 0x30;
      002377 90 80 00         [24] 1118 	mov	dptr,#0x8000
      00237A 74 30            [12] 1119 	mov	a,#0x30
      00237C F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	src/main.c:192: delay(6000);
      00237D 90 17 70         [24] 1122 	mov	dptr,#0x1770
      002380 12 26 26         [24] 1123 	lcall	_delay
                                   1124 ;	src/main.c:193: RS_LOW;
                                   1125 ;	assignBit
      002383 C2 96            [12] 1126 	clr	_P1_6
                                   1127 ;	src/main.c:194: RW_LOW;
                                   1128 ;	assignBit
      002385 C2 95            [12] 1129 	clr	_P1_5
                                   1130 ;	src/main.c:195: *enable = 0x30;
      002387 90 80 00         [24] 1131 	mov	dptr,#0x8000
      00238A 74 30            [12] 1132 	mov	a,#0x30
      00238C F0               [24] 1133 	movx	@dptr,a
                                   1134 ;	src/main.c:196: delay(1000);
      00238D 90 03 E8         [24] 1135 	mov	dptr,#0x03e8
      002390 12 26 26         [24] 1136 	lcall	_delay
                                   1137 ;	src/main.c:197: RS_LOW;
                                   1138 ;	assignBit
      002393 C2 96            [12] 1139 	clr	_P1_6
                                   1140 ;	src/main.c:198: RW_LOW;
                                   1141 ;	assignBit
      002395 C2 95            [12] 1142 	clr	_P1_5
                                   1143 ;	src/main.c:199: *enable = 0x30;
      002397 90 80 00         [24] 1144 	mov	dptr,#0x8000
      00239A 74 30            [12] 1145 	mov	a,#0x30
      00239C F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	src/main.c:200: lcdbusywait();
      00239D 12 23 DF         [24] 1148 	lcall	_lcdbusywait
                                   1149 ;	src/main.c:202: RS_LOW;
                                   1150 ;	assignBit
      0023A0 C2 96            [12] 1151 	clr	_P1_6
                                   1152 ;	src/main.c:203: RW_LOW;
                                   1153 ;	assignBit
      0023A2 C2 95            [12] 1154 	clr	_P1_5
                                   1155 ;	src/main.c:204: *enable = 0x38;
      0023A4 90 80 00         [24] 1156 	mov	dptr,#0x8000
      0023A7 74 38            [12] 1157 	mov	a,#0x38
      0023A9 F0               [24] 1158 	movx	@dptr,a
                                   1159 ;	src/main.c:205: lcdbusywait();
      0023AA 12 23 DF         [24] 1160 	lcall	_lcdbusywait
                                   1161 ;	src/main.c:207: RS_LOW;
                                   1162 ;	assignBit
      0023AD C2 96            [12] 1163 	clr	_P1_6
                                   1164 ;	src/main.c:208: RW_LOW;
                                   1165 ;	assignBit
      0023AF C2 95            [12] 1166 	clr	_P1_5
                                   1167 ;	src/main.c:209: *enable = 0x08;
      0023B1 90 80 00         [24] 1168 	mov	dptr,#0x8000
      0023B4 74 08            [12] 1169 	mov	a,#0x08
      0023B6 F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	src/main.c:210: lcdbusywait();
      0023B7 12 23 DF         [24] 1172 	lcall	_lcdbusywait
                                   1173 ;	src/main.c:212: RS_LOW;
                                   1174 ;	assignBit
      0023BA C2 96            [12] 1175 	clr	_P1_6
                                   1176 ;	src/main.c:213: RW_LOW;
                                   1177 ;	assignBit
      0023BC C2 95            [12] 1178 	clr	_P1_5
                                   1179 ;	src/main.c:214: *enable = 0x0C;
      0023BE 90 80 00         [24] 1180 	mov	dptr,#0x8000
      0023C1 74 0C            [12] 1181 	mov	a,#0x0c
      0023C3 F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	src/main.c:215: lcdbusywait();
      0023C4 12 23 DF         [24] 1184 	lcall	_lcdbusywait
                                   1185 ;	src/main.c:217: RS_LOW;
                                   1186 ;	assignBit
      0023C7 C2 96            [12] 1187 	clr	_P1_6
                                   1188 ;	src/main.c:218: RW_LOW;
                                   1189 ;	assignBit
      0023C9 C2 95            [12] 1190 	clr	_P1_5
                                   1191 ;	src/main.c:219: *enable = 0x06;
      0023CB 90 80 00         [24] 1192 	mov	dptr,#0x8000
      0023CE 74 06            [12] 1193 	mov	a,#0x06
      0023D0 F0               [24] 1194 	movx	@dptr,a
                                   1195 ;	src/main.c:220: lcdbusywait();
      0023D1 12 23 DF         [24] 1196 	lcall	_lcdbusywait
                                   1197 ;	src/main.c:222: RS_LOW;
                                   1198 ;	assignBit
      0023D4 C2 96            [12] 1199 	clr	_P1_6
                                   1200 ;	src/main.c:223: RW_LOW;
                                   1201 ;	assignBit
      0023D6 C2 95            [12] 1202 	clr	_P1_5
                                   1203 ;	src/main.c:224: *enable = 0x01;
      0023D8 90 80 00         [24] 1204 	mov	dptr,#0x8000
      0023DB 74 01            [12] 1205 	mov	a,#0x01
      0023DD F0               [24] 1206 	movx	@dptr,a
                                   1207 ;	src/main.c:227: }
      0023DE 22               [24] 1208 	ret
                                   1209 ;------------------------------------------------------------
                                   1210 ;Allocation info for local variables in function 'lcdbusywait'
                                   1211 ;------------------------------------------------------------
                                   1212 ;	src/main.c:231: void lcdbusywait(){
                                   1213 ;	-----------------------------------------
                                   1214 ;	 function lcdbusywait
                                   1215 ;	-----------------------------------------
      0023DF                       1216 _lcdbusywait:
                                   1217 ;	src/main.c:234: RS_LOW;
                                   1218 ;	assignBit
      0023DF C2 96            [12] 1219 	clr	_P1_6
                                   1220 ;	src/main.c:235: RW_HIGH;
                                   1221 ;	assignBit
      0023E1 D2 95            [12] 1222 	setb	_P1_5
                                   1223 ;	src/main.c:236: while(*enable & 0x80){
      0023E3                       1224 00101$:
      0023E3 90 80 00         [24] 1225 	mov	dptr,#0x8000
      0023E6 E0               [24] 1226 	movx	a,@dptr
      0023E7 20 E7 F9         [24] 1227 	jb	acc.7,00101$
                                   1228 ;	src/main.c:239: }
      0023EA 22               [24] 1229 	ret
                                   1230 ;------------------------------------------------------------
                                   1231 ;Allocation info for local variables in function 'lcdgotoaddr'
                                   1232 ;------------------------------------------------------------
                                   1233 ;addr          Allocated with name '_lcdgotoaddr_addr_10000_127'
                                   1234 ;------------------------------------------------------------
                                   1235 ;	src/main.c:243: void lcdgotoaddr(unsigned char addr){
                                   1236 ;	-----------------------------------------
                                   1237 ;	 function lcdgotoaddr
                                   1238 ;	-----------------------------------------
      0023EB                       1239 _lcdgotoaddr:
      0023EB E5 82            [12] 1240 	mov	a,dpl
      0023ED 90 00 4D         [24] 1241 	mov	dptr,#_lcdgotoaddr_addr_10000_127
      0023F0 F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	src/main.c:248: lcdbusywait();
      0023F1 12 23 DF         [24] 1244 	lcall	_lcdbusywait
                                   1245 ;	src/main.c:249: RS_LOW;
                                   1246 ;	assignBit
      0023F4 C2 96            [12] 1247 	clr	_P1_6
                                   1248 ;	src/main.c:250: RW_LOW;
                                   1249 ;	assignBit
      0023F6 C2 95            [12] 1250 	clr	_P1_5
                                   1251 ;	src/main.c:251: delay(1000);
      0023F8 90 03 E8         [24] 1252 	mov	dptr,#0x03e8
      0023FB 12 26 26         [24] 1253 	lcall	_delay
                                   1254 ;	src/main.c:252: *enable = 0x80 + addr;
      0023FE 90 00 4D         [24] 1255 	mov	dptr,#_lcdgotoaddr_addr_10000_127
      002401 E0               [24] 1256 	movx	a,@dptr
      002402 24 80            [12] 1257 	add	a,#0x80
      002404 90 80 00         [24] 1258 	mov	dptr,#0x8000
      002407 F0               [24] 1259 	movx	@dptr,a
                                   1260 ;	src/main.c:254: }
      002408 22               [24] 1261 	ret
                                   1262 ;------------------------------------------------------------
                                   1263 ;Allocation info for local variables in function 'lcdgotoxy'
                                   1264 ;------------------------------------------------------------
                                   1265 ;col           Allocated with name '_lcdgotoxy_PARM_2'
                                   1266 ;row           Allocated with name '_lcdgotoxy_row_10000_129'
                                   1267 ;address       Allocated with name '_lcdgotoxy_address_10000_130'
                                   1268 ;------------------------------------------------------------
                                   1269 ;	src/main.c:259: void lcdgotoxy(unsigned char row, unsigned char col){
                                   1270 ;	-----------------------------------------
                                   1271 ;	 function lcdgotoxy
                                   1272 ;	-----------------------------------------
      002409                       1273 _lcdgotoxy:
      002409 E5 82            [12] 1274 	mov	a,dpl
      00240B 90 00 4F         [24] 1275 	mov	dptr,#_lcdgotoxy_row_10000_129
      00240E F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	src/main.c:261: if(row == 0){
      00240F E0               [24] 1278 	movx	a,@dptr
      002410 FF               [12] 1279 	mov	r7,a
      002411 70 32            [24] 1280 	jnz	00110$
                                   1281 ;	src/main.c:262: address = row0 + col;
      002413 90 00 4E         [24] 1282 	mov	dptr,#_lcdgotoxy_PARM_2
      002416 E0               [24] 1283 	movx	a,@dptr
      002417 FE               [12] 1284 	mov	r6,a
      002418 FD               [12] 1285 	mov	r5,a
      002419 90 00 DF         [24] 1286 	mov	dptr,#_row0
      00241C E0               [24] 1287 	movx	a,@dptr
      00241D FB               [12] 1288 	mov	r3,a
      00241E A3               [24] 1289 	inc	dptr
      00241F E0               [24] 1290 	movx	a,@dptr
      002420 ED               [12] 1291 	mov	a,r5
      002421 2B               [12] 1292 	add	a, r3
                                   1293 ;	src/main.c:263: lcdgotoaddr(address);
      002422 F5 82            [12] 1294 	mov	dpl,a
      002424 C0 07            [24] 1295 	push	ar7
      002426 C0 06            [24] 1296 	push	ar6
      002428 12 23 EB         [24] 1297 	lcall	_lcdgotoaddr
      00242B D0 06            [24] 1298 	pop	ar6
      00242D D0 07            [24] 1299 	pop	ar7
                                   1300 ;	src/main.c:264: rowcol[0] = row;
      00242F 8F 04            [24] 1301 	mov	ar4,r7
      002431 7D 00            [12] 1302 	mov	r5,#0x00
      002433 90 00 01         [24] 1303 	mov	dptr,#_rowcol
      002436 EC               [12] 1304 	mov	a,r4
      002437 F0               [24] 1305 	movx	@dptr,a
      002438 ED               [12] 1306 	mov	a,r5
      002439 A3               [24] 1307 	inc	dptr
      00243A F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	src/main.c:265: rowcol[1] = col;
      00243B FD               [12] 1310 	mov	r5,a
      00243C 90 00 03         [24] 1311 	mov	dptr,#(_rowcol + 0x0002)
      00243F EE               [12] 1312 	mov	a,r6
      002440 F0               [24] 1313 	movx	@dptr,a
      002441 ED               [12] 1314 	mov	a,r5
      002442 A3               [24] 1315 	inc	dptr
      002443 F0               [24] 1316 	movx	@dptr,a
      002444 22               [24] 1317 	ret
      002445                       1318 00110$:
                                   1319 ;	src/main.c:267: else if(row == 1){
      002445 BF 01 32         [24] 1320 	cjne	r7,#0x01,00107$
                                   1321 ;	src/main.c:268: address = row1 + col;
      002448 90 00 4E         [24] 1322 	mov	dptr,#_lcdgotoxy_PARM_2
      00244B E0               [24] 1323 	movx	a,@dptr
      00244C FE               [12] 1324 	mov	r6,a
      00244D FD               [12] 1325 	mov	r5,a
      00244E 90 00 E1         [24] 1326 	mov	dptr,#_row1
      002451 E0               [24] 1327 	movx	a,@dptr
      002452 FB               [12] 1328 	mov	r3,a
      002453 A3               [24] 1329 	inc	dptr
      002454 E0               [24] 1330 	movx	a,@dptr
      002455 ED               [12] 1331 	mov	a,r5
      002456 2B               [12] 1332 	add	a, r3
                                   1333 ;	src/main.c:269: lcdgotoaddr(address);
      002457 F5 82            [12] 1334 	mov	dpl,a
      002459 C0 07            [24] 1335 	push	ar7
      00245B C0 06            [24] 1336 	push	ar6
      00245D 12 23 EB         [24] 1337 	lcall	_lcdgotoaddr
      002460 D0 06            [24] 1338 	pop	ar6
      002462 D0 07            [24] 1339 	pop	ar7
                                   1340 ;	src/main.c:270: rowcol[0] = row;
      002464 8F 04            [24] 1341 	mov	ar4,r7
      002466 7D 00            [12] 1342 	mov	r5,#0x00
      002468 90 00 01         [24] 1343 	mov	dptr,#_rowcol
      00246B EC               [12] 1344 	mov	a,r4
      00246C F0               [24] 1345 	movx	@dptr,a
      00246D ED               [12] 1346 	mov	a,r5
      00246E A3               [24] 1347 	inc	dptr
      00246F F0               [24] 1348 	movx	@dptr,a
                                   1349 ;	src/main.c:271: rowcol[1] = col;
      002470 FD               [12] 1350 	mov	r5,a
      002471 90 00 03         [24] 1351 	mov	dptr,#(_rowcol + 0x0002)
      002474 EE               [12] 1352 	mov	a,r6
      002475 F0               [24] 1353 	movx	@dptr,a
      002476 ED               [12] 1354 	mov	a,r5
      002477 A3               [24] 1355 	inc	dptr
      002478 F0               [24] 1356 	movx	@dptr,a
      002479 22               [24] 1357 	ret
      00247A                       1358 00107$:
                                   1359 ;	src/main.c:273: else if(row == 2){
      00247A BF 02 32         [24] 1360 	cjne	r7,#0x02,00104$
                                   1361 ;	src/main.c:274: address = row2 + col;
      00247D 90 00 4E         [24] 1362 	mov	dptr,#_lcdgotoxy_PARM_2
      002480 E0               [24] 1363 	movx	a,@dptr
      002481 FE               [12] 1364 	mov	r6,a
      002482 FD               [12] 1365 	mov	r5,a
      002483 90 00 E3         [24] 1366 	mov	dptr,#_row2
      002486 E0               [24] 1367 	movx	a,@dptr
      002487 FB               [12] 1368 	mov	r3,a
      002488 A3               [24] 1369 	inc	dptr
      002489 E0               [24] 1370 	movx	a,@dptr
      00248A ED               [12] 1371 	mov	a,r5
      00248B 2B               [12] 1372 	add	a, r3
                                   1373 ;	src/main.c:275: lcdgotoaddr(address);
      00248C F5 82            [12] 1374 	mov	dpl,a
      00248E C0 07            [24] 1375 	push	ar7
      002490 C0 06            [24] 1376 	push	ar6
      002492 12 23 EB         [24] 1377 	lcall	_lcdgotoaddr
      002495 D0 06            [24] 1378 	pop	ar6
      002497 D0 07            [24] 1379 	pop	ar7
                                   1380 ;	src/main.c:276: rowcol[0] = row;
      002499 8F 04            [24] 1381 	mov	ar4,r7
      00249B 7D 00            [12] 1382 	mov	r5,#0x00
      00249D 90 00 01         [24] 1383 	mov	dptr,#_rowcol
      0024A0 EC               [12] 1384 	mov	a,r4
      0024A1 F0               [24] 1385 	movx	@dptr,a
      0024A2 ED               [12] 1386 	mov	a,r5
      0024A3 A3               [24] 1387 	inc	dptr
      0024A4 F0               [24] 1388 	movx	@dptr,a
                                   1389 ;	src/main.c:277: rowcol[1] = col;
      0024A5 FD               [12] 1390 	mov	r5,a
      0024A6 90 00 03         [24] 1391 	mov	dptr,#(_rowcol + 0x0002)
      0024A9 EE               [12] 1392 	mov	a,r6
      0024AA F0               [24] 1393 	movx	@dptr,a
      0024AB ED               [12] 1394 	mov	a,r5
      0024AC A3               [24] 1395 	inc	dptr
      0024AD F0               [24] 1396 	movx	@dptr,a
      0024AE 22               [24] 1397 	ret
      0024AF                       1398 00104$:
                                   1399 ;	src/main.c:279: else if(row == 3){
      0024AF BF 03 2F         [24] 1400 	cjne	r7,#0x03,00112$
                                   1401 ;	src/main.c:280: address = row3 + col;
      0024B2 90 00 4E         [24] 1402 	mov	dptr,#_lcdgotoxy_PARM_2
      0024B5 E0               [24] 1403 	movx	a,@dptr
      0024B6 FE               [12] 1404 	mov	r6,a
      0024B7 FD               [12] 1405 	mov	r5,a
      0024B8 90 00 E5         [24] 1406 	mov	dptr,#_row3
      0024BB E0               [24] 1407 	movx	a,@dptr
      0024BC FB               [12] 1408 	mov	r3,a
      0024BD A3               [24] 1409 	inc	dptr
      0024BE E0               [24] 1410 	movx	a,@dptr
      0024BF ED               [12] 1411 	mov	a,r5
      0024C0 2B               [12] 1412 	add	a, r3
                                   1413 ;	src/main.c:281: lcdgotoaddr(address);
      0024C1 F5 82            [12] 1414 	mov	dpl,a
      0024C3 C0 07            [24] 1415 	push	ar7
      0024C5 C0 06            [24] 1416 	push	ar6
      0024C7 12 23 EB         [24] 1417 	lcall	_lcdgotoaddr
      0024CA D0 06            [24] 1418 	pop	ar6
      0024CC D0 07            [24] 1419 	pop	ar7
                                   1420 ;	src/main.c:282: rowcol[0] = row;
      0024CE 7D 00            [12] 1421 	mov	r5,#0x00
      0024D0 90 00 01         [24] 1422 	mov	dptr,#_rowcol
      0024D3 EF               [12] 1423 	mov	a,r7
      0024D4 F0               [24] 1424 	movx	@dptr,a
      0024D5 ED               [12] 1425 	mov	a,r5
      0024D6 A3               [24] 1426 	inc	dptr
      0024D7 F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	src/main.c:283: rowcol[1] = col;
      0024D8 FF               [12] 1429 	mov	r7,a
      0024D9 90 00 03         [24] 1430 	mov	dptr,#(_rowcol + 0x0002)
      0024DC EE               [12] 1431 	mov	a,r6
      0024DD F0               [24] 1432 	movx	@dptr,a
      0024DE EF               [12] 1433 	mov	a,r7
      0024DF A3               [24] 1434 	inc	dptr
      0024E0 F0               [24] 1435 	movx	@dptr,a
      0024E1                       1436 00112$:
                                   1437 ;	src/main.c:285: }
      0024E1 22               [24] 1438 	ret
                                   1439 ;------------------------------------------------------------
                                   1440 ;Allocation info for local variables in function 'lcdputch'
                                   1441 ;------------------------------------------------------------
                                   1442 ;cc            Allocated with name '_lcdputch_cc_10000_135'
                                   1443 ;------------------------------------------------------------
                                   1444 ;	src/main.c:290: void lcdputch(char cc){
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function lcdputch
                                   1447 ;	-----------------------------------------
      0024E2                       1448 _lcdputch:
      0024E2 E5 82            [12] 1449 	mov	a,dpl
      0024E4 90 00 50         [24] 1450 	mov	dptr,#_lcdputch_cc_10000_135
      0024E7 F0               [24] 1451 	movx	@dptr,a
                                   1452 ;	src/main.c:293: lcdbusywait();
      0024E8 12 23 DF         [24] 1453 	lcall	_lcdbusywait
                                   1454 ;	src/main.c:294: RS_HIGH;
                                   1455 ;	assignBit
      0024EB D2 96            [12] 1456 	setb	_P1_6
                                   1457 ;	src/main.c:295: RW_LOW;
                                   1458 ;	assignBit
      0024ED C2 95            [12] 1459 	clr	_P1_5
                                   1460 ;	src/main.c:298: *enable = cc;
      0024EF 90 00 50         [24] 1461 	mov	dptr,#_lcdputch_cc_10000_135
      0024F2 E0               [24] 1462 	movx	a,@dptr
      0024F3 90 80 00         [24] 1463 	mov	dptr,#0x8000
      0024F6 F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	src/main.c:299: if(rowcol[1] >= 15){
      0024F7 90 00 03         [24] 1466 	mov	dptr,#(_rowcol + 0x0002)
      0024FA E0               [24] 1467 	movx	a,@dptr
      0024FB FE               [12] 1468 	mov	r6,a
      0024FC A3               [24] 1469 	inc	dptr
      0024FD E0               [24] 1470 	movx	a,@dptr
      0024FE FF               [12] 1471 	mov	r7,a
      0024FF C3               [12] 1472 	clr	c
      002500 EE               [12] 1473 	mov	a,r6
      002501 94 0F            [12] 1474 	subb	a,#0x0f
      002503 EF               [12] 1475 	mov	a,r7
      002504 94 00            [12] 1476 	subb	a,#0x00
      002506 40 60            [24] 1477 	jc	00113$
                                   1478 ;	src/main.c:300: if(rowcol[0] == 0){
      002508 90 00 01         [24] 1479 	mov	dptr,#_rowcol
      00250B E0               [24] 1480 	movx	a,@dptr
      00250C FE               [12] 1481 	mov	r6,a
      00250D A3               [24] 1482 	inc	dptr
      00250E E0               [24] 1483 	movx	a,@dptr
      00250F 4E               [12] 1484 	orl	a,r6
      002510 70 0B            [24] 1485 	jnz	00110$
                                   1486 ;	src/main.c:301: lcdgotoxy(1,0);
      002512 90 00 4E         [24] 1487 	mov	dptr,#_lcdgotoxy_PARM_2
      002515 E4               [12] 1488 	clr	a
      002516 F0               [24] 1489 	movx	@dptr,a
      002517 75 82 01         [24] 1490 	mov	dpl, #0x01
      00251A 02 24 09         [24] 1491 	ljmp	_lcdgotoxy
      00251D                       1492 00110$:
                                   1493 ;	src/main.c:303: else if(rowcol[0] == 1){
      00251D 90 00 01         [24] 1494 	mov	dptr,#_rowcol
      002520 E0               [24] 1495 	movx	a,@dptr
      002521 FE               [12] 1496 	mov	r6,a
      002522 A3               [24] 1497 	inc	dptr
      002523 E0               [24] 1498 	movx	a,@dptr
      002524 FF               [12] 1499 	mov	r7,a
      002525 BE 01 0E         [24] 1500 	cjne	r6,#0x01,00107$
      002528 BF 00 0B         [24] 1501 	cjne	r7,#0x00,00107$
                                   1502 ;	src/main.c:304: lcdgotoxy(2,0);
      00252B 90 00 4E         [24] 1503 	mov	dptr,#_lcdgotoxy_PARM_2
      00252E E4               [12] 1504 	clr	a
      00252F F0               [24] 1505 	movx	@dptr,a
      002530 75 82 02         [24] 1506 	mov	dpl, #0x02
      002533 02 24 09         [24] 1507 	ljmp	_lcdgotoxy
      002536                       1508 00107$:
                                   1509 ;	src/main.c:306: else if(rowcol[0] == 2){
      002536 90 00 01         [24] 1510 	mov	dptr,#_rowcol
      002539 E0               [24] 1511 	movx	a,@dptr
      00253A FE               [12] 1512 	mov	r6,a
      00253B A3               [24] 1513 	inc	dptr
      00253C E0               [24] 1514 	movx	a,@dptr
      00253D FF               [12] 1515 	mov	r7,a
      00253E BE 02 0E         [24] 1516 	cjne	r6,#0x02,00104$
      002541 BF 00 0B         [24] 1517 	cjne	r7,#0x00,00104$
                                   1518 ;	src/main.c:307: lcdgotoxy(3,0);
      002544 90 00 4E         [24] 1519 	mov	dptr,#_lcdgotoxy_PARM_2
      002547 E4               [12] 1520 	clr	a
      002548 F0               [24] 1521 	movx	@dptr,a
      002549 75 82 03         [24] 1522 	mov	dpl, #0x03
      00254C 02 24 09         [24] 1523 	ljmp	_lcdgotoxy
      00254F                       1524 00104$:
                                   1525 ;	src/main.c:309: else if(rowcol[0] == 3){
      00254F 90 00 01         [24] 1526 	mov	dptr,#_rowcol
      002552 E0               [24] 1527 	movx	a,@dptr
      002553 FE               [12] 1528 	mov	r6,a
      002554 A3               [24] 1529 	inc	dptr
      002555 E0               [24] 1530 	movx	a,@dptr
      002556 FF               [12] 1531 	mov	r7,a
      002557 BE 03 27         [24] 1532 	cjne	r6,#0x03,00115$
      00255A BF 00 24         [24] 1533 	cjne	r7,#0x00,00115$
                                   1534 ;	src/main.c:310: lcdgotoxy(0,0);
      00255D 90 00 4E         [24] 1535 	mov	dptr,#_lcdgotoxy_PARM_2
      002560 E4               [12] 1536 	clr	a
      002561 F0               [24] 1537 	movx	@dptr,a
      002562 75 82 00         [24] 1538 	mov	dpl, #0x00
      002565 02 24 09         [24] 1539 	ljmp	_lcdgotoxy
      002568                       1540 00113$:
                                   1541 ;	src/main.c:314: lcdgotoxy(rowcol[0], rowcol[1]+1);
      002568 90 00 01         [24] 1542 	mov	dptr,#_rowcol
      00256B E0               [24] 1543 	movx	a,@dptr
      00256C FE               [12] 1544 	mov	r6,a
      00256D A3               [24] 1545 	inc	dptr
      00256E E0               [24] 1546 	movx	a,@dptr
      00256F 90 00 03         [24] 1547 	mov	dptr,#(_rowcol + 0x0002)
      002572 E0               [24] 1548 	movx	a,@dptr
      002573 FD               [12] 1549 	mov	r5,a
      002574 A3               [24] 1550 	inc	dptr
      002575 E0               [24] 1551 	movx	a,@dptr
      002576 90 00 4E         [24] 1552 	mov	dptr,#_lcdgotoxy_PARM_2
      002579 ED               [12] 1553 	mov	a,r5
      00257A 04               [12] 1554 	inc	a
      00257B F0               [24] 1555 	movx	@dptr,a
      00257C 8E 82            [24] 1556 	mov	dpl, r6
                                   1557 ;	src/main.c:316: }
      00257E 02 24 09         [24] 1558 	ljmp	_lcdgotoxy
      002581                       1559 00115$:
      002581 22               [24] 1560 	ret
                                   1561 ;------------------------------------------------------------
                                   1562 ;Allocation info for local variables in function 'lcdputstr'
                                   1563 ;------------------------------------------------------------
                                   1564 ;ss            Allocated with name '_lcdputstr_ss_10000_143'
                                   1565 ;size          Allocated with name '_lcdputstr_size_10000_144'
                                   1566 ;i             Allocated with name '_lcdputstr_i_20000_145'
                                   1567 ;------------------------------------------------------------
                                   1568 ;	src/main.c:322: void lcdputstr(char *ss){
                                   1569 ;	-----------------------------------------
                                   1570 ;	 function lcdputstr
                                   1571 ;	-----------------------------------------
      002582                       1572 _lcdputstr:
      002582 AF F0            [24] 1573 	mov	r7,b
      002584 AE 83            [24] 1574 	mov	r6,dph
      002586 E5 82            [12] 1575 	mov	a,dpl
      002588 90 00 51         [24] 1576 	mov	dptr,#_lcdputstr_ss_10000_143
      00258B F0               [24] 1577 	movx	@dptr,a
      00258C EE               [12] 1578 	mov	a,r6
      00258D A3               [24] 1579 	inc	dptr
      00258E F0               [24] 1580 	movx	@dptr,a
      00258F EF               [12] 1581 	mov	a,r7
      002590 A3               [24] 1582 	inc	dptr
      002591 F0               [24] 1583 	movx	@dptr,a
                                   1584 ;	src/main.c:323: unsigned int size = strlen(ss);
      002592 90 00 51         [24] 1585 	mov	dptr,#_lcdputstr_ss_10000_143
      002595 E0               [24] 1586 	movx	a,@dptr
      002596 FD               [12] 1587 	mov	r5,a
      002597 A3               [24] 1588 	inc	dptr
      002598 E0               [24] 1589 	movx	a,@dptr
      002599 FE               [12] 1590 	mov	r6,a
      00259A A3               [24] 1591 	inc	dptr
      00259B E0               [24] 1592 	movx	a,@dptr
      00259C FF               [12] 1593 	mov	r7,a
      00259D 8D 82            [24] 1594 	mov	dpl, r5
      00259F 8E 83            [24] 1595 	mov	dph, r6
      0025A1 8F F0            [24] 1596 	mov	b, r7
      0025A3 12 3A 2B         [24] 1597 	lcall	_strlen
      0025A6 AE 82            [24] 1598 	mov	r6, dpl
      0025A8 AF 83            [24] 1599 	mov	r7, dph
                                   1600 ;	src/main.c:324: for(int i = 0; i < size; i++){
      0025AA 90 00 51         [24] 1601 	mov	dptr,#_lcdputstr_ss_10000_143
      0025AD E0               [24] 1602 	movx	a,@dptr
      0025AE FB               [12] 1603 	mov	r3,a
      0025AF A3               [24] 1604 	inc	dptr
      0025B0 E0               [24] 1605 	movx	a,@dptr
      0025B1 FC               [12] 1606 	mov	r4,a
      0025B2 A3               [24] 1607 	inc	dptr
      0025B3 E0               [24] 1608 	movx	a,@dptr
      0025B4 FD               [12] 1609 	mov	r5,a
      0025B5 79 00            [12] 1610 	mov	r1,#0x00
      0025B7 7A 00            [12] 1611 	mov	r2,#0x00
      0025B9                       1612 00103$:
      0025B9 C0 03            [24] 1613 	push	ar3
      0025BB C0 04            [24] 1614 	push	ar4
      0025BD C0 05            [24] 1615 	push	ar5
      0025BF 89 00            [24] 1616 	mov	ar0,r1
      0025C1 8A 05            [24] 1617 	mov	ar5,r2
      0025C3 C3               [12] 1618 	clr	c
      0025C4 E8               [12] 1619 	mov	a,r0
      0025C5 9E               [12] 1620 	subb	a,r6
      0025C6 ED               [12] 1621 	mov	a,r5
      0025C7 9F               [12] 1622 	subb	a,r7
      0025C8 D0 05            [24] 1623 	pop	ar5
      0025CA D0 04            [24] 1624 	pop	ar4
      0025CC D0 03            [24] 1625 	pop	ar3
      0025CE 50 41            [24] 1626 	jnc	00105$
                                   1627 ;	src/main.c:325: lcdputch(*(ss + i));
      0025D0 C0 06            [24] 1628 	push	ar6
      0025D2 C0 07            [24] 1629 	push	ar7
      0025D4 E9               [12] 1630 	mov	a,r1
      0025D5 2B               [12] 1631 	add	a, r3
      0025D6 F8               [12] 1632 	mov	r0,a
      0025D7 EA               [12] 1633 	mov	a,r2
      0025D8 3C               [12] 1634 	addc	a, r4
      0025D9 FE               [12] 1635 	mov	r6,a
      0025DA 8D 07            [24] 1636 	mov	ar7,r5
      0025DC 88 82            [24] 1637 	mov	dpl,r0
      0025DE 8E 83            [24] 1638 	mov	dph,r6
      0025E0 8F F0            [24] 1639 	mov	b,r7
      0025E2 12 3A 43         [24] 1640 	lcall	__gptrget
      0025E5 F5 82            [12] 1641 	mov	dpl,a
      0025E7 C0 07            [24] 1642 	push	ar7
      0025E9 C0 06            [24] 1643 	push	ar6
      0025EB C0 05            [24] 1644 	push	ar5
      0025ED C0 04            [24] 1645 	push	ar4
      0025EF C0 03            [24] 1646 	push	ar3
      0025F1 C0 02            [24] 1647 	push	ar2
      0025F3 C0 01            [24] 1648 	push	ar1
      0025F5 12 24 E2         [24] 1649 	lcall	_lcdputch
      0025F8 D0 01            [24] 1650 	pop	ar1
      0025FA D0 02            [24] 1651 	pop	ar2
      0025FC D0 03            [24] 1652 	pop	ar3
      0025FE D0 04            [24] 1653 	pop	ar4
      002600 D0 05            [24] 1654 	pop	ar5
      002602 D0 06            [24] 1655 	pop	ar6
      002604 D0 07            [24] 1656 	pop	ar7
                                   1657 ;	src/main.c:324: for(int i = 0; i < size; i++){
      002606 09               [12] 1658 	inc	r1
      002607 B9 00 01         [24] 1659 	cjne	r1,#0x00,00121$
      00260A 0A               [12] 1660 	inc	r2
      00260B                       1661 00121$:
      00260B D0 07            [24] 1662 	pop	ar7
      00260D D0 06            [24] 1663 	pop	ar6
      00260F 80 A8            [24] 1664 	sjmp	00103$
      002611                       1665 00105$:
                                   1666 ;	src/main.c:327: }
      002611 22               [24] 1667 	ret
                                   1668 ;------------------------------------------------------------
                                   1669 ;Allocation info for local variables in function 'lcdclear'
                                   1670 ;------------------------------------------------------------
                                   1671 ;	src/main.c:330: void lcdclear(){
                                   1672 ;	-----------------------------------------
                                   1673 ;	 function lcdclear
                                   1674 ;	-----------------------------------------
      002612                       1675 _lcdclear:
                                   1676 ;	src/main.c:331: lcdbusywait();
      002612 12 23 DF         [24] 1677 	lcall	_lcdbusywait
                                   1678 ;	src/main.c:332: RS_LOW;
                                   1679 ;	assignBit
      002615 C2 96            [12] 1680 	clr	_P1_6
                                   1681 ;	src/main.c:333: RW_LOW;
                                   1682 ;	assignBit
      002617 C2 95            [12] 1683 	clr	_P1_5
                                   1684 ;	src/main.c:334: delay(1000);
      002619 90 03 E8         [24] 1685 	mov	dptr,#0x03e8
      00261C 12 26 26         [24] 1686 	lcall	_delay
                                   1687 ;	src/main.c:335: *enable = 0x01;
      00261F 90 80 00         [24] 1688 	mov	dptr,#0x8000
      002622 74 01            [12] 1689 	mov	a,#0x01
      002624 F0               [24] 1690 	movx	@dptr,a
                                   1691 ;	src/main.c:336: }
      002625 22               [24] 1692 	ret
                                   1693 ;------------------------------------------------------------
                                   1694 ;Allocation info for local variables in function 'delay'
                                   1695 ;------------------------------------------------------------
                                   1696 ;time          Allocated with name '_delay_time_10000_148'
                                   1697 ;------------------------------------------------------------
                                   1698 ;	src/main.c:339: void delay(unsigned int time){
                                   1699 ;	-----------------------------------------
                                   1700 ;	 function delay
                                   1701 ;	-----------------------------------------
      002626                       1702 _delay:
      002626 AF 83            [24] 1703 	mov	r7,dph
      002628 E5 82            [12] 1704 	mov	a,dpl
      00262A 90 00 54         [24] 1705 	mov	dptr,#_delay_time_10000_148
      00262D F0               [24] 1706 	movx	@dptr,a
      00262E EF               [12] 1707 	mov	a,r7
      00262F A3               [24] 1708 	inc	dptr
      002630 F0               [24] 1709 	movx	@dptr,a
                                   1710 ;	src/main.c:341: while(--time);
      002631 90 00 54         [24] 1711 	mov	dptr,#_delay_time_10000_148
      002634 E0               [24] 1712 	movx	a,@dptr
      002635 FE               [12] 1713 	mov	r6,a
      002636 A3               [24] 1714 	inc	dptr
      002637 E0               [24] 1715 	movx	a,@dptr
      002638 FF               [12] 1716 	mov	r7,a
      002639                       1717 00101$:
      002639 1E               [12] 1718 	dec	r6
      00263A BE FF 01         [24] 1719 	cjne	r6,#0xff,00118$
      00263D 1F               [12] 1720 	dec	r7
      00263E                       1721 00118$:
      00263E 90 00 54         [24] 1722 	mov	dptr,#_delay_time_10000_148
      002641 EE               [12] 1723 	mov	a,r6
      002642 F0               [24] 1724 	movx	@dptr,a
      002643 EF               [12] 1725 	mov	a,r7
      002644 A3               [24] 1726 	inc	dptr
      002645 F0               [24] 1727 	movx	@dptr,a
      002646 EE               [12] 1728 	mov	a,r6
      002647 4F               [12] 1729 	orl	a,r7
      002648 70 EF            [24] 1730 	jnz	00101$
      00264A 90 00 54         [24] 1731 	mov	dptr,#_delay_time_10000_148
      00264D EE               [12] 1732 	mov	a,r6
      00264E F0               [24] 1733 	movx	@dptr,a
      00264F EF               [12] 1734 	mov	a,r7
      002650 A3               [24] 1735 	inc	dptr
      002651 F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	src/main.c:342: }
      002652 22               [24] 1738 	ret
                                   1739 ;------------------------------------------------------------
                                   1740 ;Allocation info for local variables in function 'init_timer_registers'
                                   1741 ;------------------------------------------------------------
                                   1742 ;	src/main.c:344: void init_timer_registers()
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function init_timer_registers
                                   1745 ;	-----------------------------------------
      002653                       1746 _init_timer_registers:
                                   1747 ;	src/main.c:346: TMOD |= 1 << TMOD_MODE1_POS;
      002653 43 89 01         [24] 1748 	orl	_TMOD,#0x01
                                   1749 ;	src/main.c:348: TH0 = 0x4C;
      002656 75 8C 4C         [24] 1750 	mov	_TH0,#0x4c
                                   1751 ;	src/main.c:349: TL0 = 0x00;
      002659 75 8A 00         [24] 1752 	mov	_TL0,#0x00
                                   1753 ;	src/main.c:350: ET0 = 1; // enable timer0 interrupt
                                   1754 ;	assignBit
      00265C D2 A9            [12] 1755 	setb	_ET0
                                   1756 ;	src/main.c:351: EA = 1;  // enable global interrupt
                                   1757 ;	assignBit
      00265E D2 AF            [12] 1758 	setb	_EA
                                   1759 ;	src/main.c:352: TR0 = 1;
                                   1760 ;	assignBit
      002660 D2 8C            [12] 1761 	setb	_TR0
                                   1762 ;	src/main.c:353: }
      002662 22               [24] 1763 	ret
                                   1764 ;------------------------------------------------------------
                                   1765 ;Allocation info for local variables in function 'lcdtimer'
                                   1766 ;------------------------------------------------------------
                                   1767 ;temprowcol    Allocated with name '_lcdtimer_temprowcol_10000_151'
                                   1768 ;temp          Allocated with name '_lcdtimer_temp_10001_152'
                                   1769 ;miliseconds   Allocated with name '_lcdtimer_miliseconds_10001_152'
                                   1770 ;seconds       Allocated with name '_lcdtimer_seconds_10001_152'
                                   1771 ;minutes       Allocated with name '_lcdtimer_minutes_10001_152'
                                   1772 ;Minutes       Allocated with name '_lcdtimer_Minutes_10001_152'
                                   1773 ;Seconds       Allocated with name '_lcdtimer_Seconds_10001_152'
                                   1774 ;Miliseconds   Allocated with name '_lcdtimer_Miliseconds_10001_152'
                                   1775 ;------------------------------------------------------------
                                   1776 ;	src/main.c:355: void lcdtimer(){
                                   1777 ;	-----------------------------------------
                                   1778 ;	 function lcdtimer
                                   1779 ;	-----------------------------------------
      002663                       1780 _lcdtimer:
                                   1781 ;	src/main.c:357: temprowcol[0] = rowcol[0];
      002663 90 00 01         [24] 1782 	mov	dptr,#_rowcol
      002666 E0               [24] 1783 	movx	a,@dptr
      002667 FE               [12] 1784 	mov	r6,a
      002668 A3               [24] 1785 	inc	dptr
      002669 E0               [24] 1786 	movx	a,@dptr
      00266A FF               [12] 1787 	mov	r7,a
      00266B 90 00 56         [24] 1788 	mov	dptr,#_lcdtimer_temprowcol_10000_151
      00266E EE               [12] 1789 	mov	a,r6
      00266F F0               [24] 1790 	movx	@dptr,a
      002670 EF               [12] 1791 	mov	a,r7
      002671 A3               [24] 1792 	inc	dptr
      002672 F0               [24] 1793 	movx	@dptr,a
                                   1794 ;	src/main.c:358: temprowcol[1] = rowcol[1];
      002673 90 00 03         [24] 1795 	mov	dptr,#(_rowcol + 0x0002)
      002676 E0               [24] 1796 	movx	a,@dptr
      002677 FE               [12] 1797 	mov	r6,a
      002678 A3               [24] 1798 	inc	dptr
      002679 E0               [24] 1799 	movx	a,@dptr
      00267A FF               [12] 1800 	mov	r7,a
      00267B 90 00 58         [24] 1801 	mov	dptr,#(_lcdtimer_temprowcol_10000_151 + 0x0002)
      00267E EE               [12] 1802 	mov	a,r6
      00267F F0               [24] 1803 	movx	@dptr,a
      002680 EF               [12] 1804 	mov	a,r7
      002681 A3               [24] 1805 	inc	dptr
      002682 F0               [24] 1806 	movx	@dptr,a
                                   1807 ;	src/main.c:367: minutes = time / 600;
      002683 90 00 09         [24] 1808 	mov	dptr,#_time
      002686 E0               [24] 1809 	movx	a,@dptr
      002687 FE               [12] 1810 	mov	r6,a
      002688 A3               [24] 1811 	inc	dptr
      002689 E0               [24] 1812 	movx	a,@dptr
      00268A FF               [12] 1813 	mov	r7,a
      00268B 90 00 83         [24] 1814 	mov	dptr,#__divuint_PARM_2
      00268E 74 58            [12] 1815 	mov	a,#0x58
      002690 F0               [24] 1816 	movx	@dptr,a
      002691 74 02            [12] 1817 	mov	a,#0x02
      002693 A3               [24] 1818 	inc	dptr
      002694 F0               [24] 1819 	movx	@dptr,a
                                   1820 ;	src/main.c:368: temp = time % 600;
      002695 8E 82            [24] 1821 	mov	dpl, r6
      002697 8F 83            [24] 1822 	mov	dph, r7
      002699 12 2B E8         [24] 1823 	lcall	__divuint
      00269C AE 82            [24] 1824 	mov	r6, dpl
      00269E AF 83            [24] 1825 	mov	r7, dph
      0026A0 90 00 09         [24] 1826 	mov	dptr,#_time
      0026A3 E0               [24] 1827 	movx	a,@dptr
      0026A4 FC               [12] 1828 	mov	r4,a
      0026A5 A3               [24] 1829 	inc	dptr
      0026A6 E0               [24] 1830 	movx	a,@dptr
      0026A7 FD               [12] 1831 	mov	r5,a
      0026A8 90 00 9F         [24] 1832 	mov	dptr,#__moduint_PARM_2
      0026AB 74 58            [12] 1833 	mov	a,#0x58
      0026AD F0               [24] 1834 	movx	@dptr,a
      0026AE 74 02            [12] 1835 	mov	a,#0x02
      0026B0 A3               [24] 1836 	inc	dptr
      0026B1 F0               [24] 1837 	movx	@dptr,a
                                   1838 ;	src/main.c:369: seconds = temp / 10;
      0026B2 8C 82            [24] 1839 	mov	dpl, r4
      0026B4 8D 83            [24] 1840 	mov	dph, r5
      0026B6 C0 07            [24] 1841 	push	ar7
      0026B8 C0 06            [24] 1842 	push	ar6
      0026BA 12 2E C4         [24] 1843 	lcall	__moduint
      0026BD AC 82            [24] 1844 	mov	r4, dpl
      0026BF AD 83            [24] 1845 	mov	r5, dph
      0026C1 90 00 83         [24] 1846 	mov	dptr,#__divuint_PARM_2
      0026C4 74 0A            [12] 1847 	mov	a,#0x0a
      0026C6 F0               [24] 1848 	movx	@dptr,a
      0026C7 E4               [12] 1849 	clr	a
      0026C8 A3               [24] 1850 	inc	dptr
      0026C9 F0               [24] 1851 	movx	@dptr,a
                                   1852 ;	src/main.c:370: miliseconds = temp % 10;
      0026CA 8C 82            [24] 1853 	mov	dpl, r4
      0026CC 8D 83            [24] 1854 	mov	dph, r5
      0026CE C0 05            [24] 1855 	push	ar5
      0026D0 C0 04            [24] 1856 	push	ar4
      0026D2 12 2B E8         [24] 1857 	lcall	__divuint
      0026D5 AA 82            [24] 1858 	mov	r2, dpl
      0026D7 AB 83            [24] 1859 	mov	r3, dph
      0026D9 D0 04            [24] 1860 	pop	ar4
      0026DB D0 05            [24] 1861 	pop	ar5
      0026DD 90 00 9F         [24] 1862 	mov	dptr,#__moduint_PARM_2
      0026E0 74 0A            [12] 1863 	mov	a,#0x0a
      0026E2 F0               [24] 1864 	movx	@dptr,a
      0026E3 E4               [12] 1865 	clr	a
      0026E4 A3               [24] 1866 	inc	dptr
      0026E5 F0               [24] 1867 	movx	@dptr,a
                                   1868 ;	src/main.c:371: lcdgotoxy(3,9);
      0026E6 8C 82            [24] 1869 	mov	dpl, r4
      0026E8 8D 83            [24] 1870 	mov	dph, r5
      0026EA C0 03            [24] 1871 	push	ar3
      0026EC C0 02            [24] 1872 	push	ar2
      0026EE 12 2E C4         [24] 1873 	lcall	__moduint
      0026F1 AC 82            [24] 1874 	mov	r4, dpl
      0026F3 AD 83            [24] 1875 	mov	r5, dph
      0026F5 D0 02            [24] 1876 	pop	ar2
      0026F7 D0 03            [24] 1877 	pop	ar3
      0026F9 90 00 4E         [24] 1878 	mov	dptr,#_lcdgotoxy_PARM_2
      0026FC 74 09            [12] 1879 	mov	a,#0x09
      0026FE F0               [24] 1880 	movx	@dptr,a
      0026FF 75 82 03         [24] 1881 	mov	dpl, #0x03
      002702 C0 05            [24] 1882 	push	ar5
      002704 C0 04            [24] 1883 	push	ar4
      002706 C0 03            [24] 1884 	push	ar3
      002708 C0 02            [24] 1885 	push	ar2
      00270A 12 24 09         [24] 1886 	lcall	_lcdgotoxy
      00270D D0 02            [24] 1887 	pop	ar2
      00270F D0 03            [24] 1888 	pop	ar3
      002711 D0 04            [24] 1889 	pop	ar4
      002713 D0 05            [24] 1890 	pop	ar5
      002715 D0 06            [24] 1891 	pop	ar6
                                   1892 ;	src/main.c:382: lcdputch((minutes / 10) + '0');
      002717 8E 01            [24] 1893 	mov	ar1,r6
      002719 75 F0 0A         [24] 1894 	mov	b,#0x0a
      00271C E9               [12] 1895 	mov	a,r1
      00271D 84               [48] 1896 	div	ab
      00271E 24 30            [12] 1897 	add	a,#0x30
      002720 F5 82            [12] 1898 	mov	dpl,a
      002722 C0 06            [24] 1899 	push	ar6
      002724 C0 05            [24] 1900 	push	ar5
      002726 C0 04            [24] 1901 	push	ar4
      002728 C0 03            [24] 1902 	push	ar3
      00272A C0 02            [24] 1903 	push	ar2
      00272C 12 24 E2         [24] 1904 	lcall	_lcdputch
      00272F D0 02            [24] 1905 	pop	ar2
      002731 D0 03            [24] 1906 	pop	ar3
      002733 D0 04            [24] 1907 	pop	ar4
      002735 D0 05            [24] 1908 	pop	ar5
      002737 D0 06            [24] 1909 	pop	ar6
      002739 D0 07            [24] 1910 	pop	ar7
                                   1911 ;	src/main.c:383: lcdputch((minutes % 10) + '0');
      00273B 75 F0 0A         [24] 1912 	mov	b,#0x0a
      00273E EE               [12] 1913 	mov	a,r6
      00273F 84               [48] 1914 	div	ab
      002740 AE F0            [24] 1915 	mov	r6,b
      002742 74 30            [12] 1916 	mov	a,#0x30
      002744 2E               [12] 1917 	add	a, r6
      002745 F5 82            [12] 1918 	mov	dpl,a
      002747 C0 05            [24] 1919 	push	ar5
      002749 C0 04            [24] 1920 	push	ar4
      00274B C0 03            [24] 1921 	push	ar3
      00274D C0 02            [24] 1922 	push	ar2
      00274F 12 24 E2         [24] 1923 	lcall	_lcdputch
                                   1924 ;	src/main.c:385: lcdputch(':');
      002752 75 82 3A         [24] 1925 	mov	dpl, #0x3a
      002755 12 24 E2         [24] 1926 	lcall	_lcdputch
      002758 D0 02            [24] 1927 	pop	ar2
                                   1928 ;	src/main.c:388: lcdputch((seconds / 10) + '0');
      00275A 8A 07            [24] 1929 	mov	ar7,r2
      00275C 75 F0 0A         [24] 1930 	mov	b,#0x0a
      00275F EF               [12] 1931 	mov	a,r7
      002760 84               [48] 1932 	div	ab
      002761 24 30            [12] 1933 	add	a,#0x30
      002763 F5 82            [12] 1934 	mov	dpl,a
      002765 C0 02            [24] 1935 	push	ar2
      002767 12 24 E2         [24] 1936 	lcall	_lcdputch
      00276A D0 02            [24] 1937 	pop	ar2
      00276C D0 03            [24] 1938 	pop	ar3
                                   1939 ;	src/main.c:389: lcdputch((seconds % 10) + '0');
      00276E 75 F0 0A         [24] 1940 	mov	b,#0x0a
      002771 EA               [12] 1941 	mov	a,r2
      002772 84               [48] 1942 	div	ab
      002773 AA F0            [24] 1943 	mov	r2,b
      002775 74 30            [12] 1944 	mov	a,#0x30
      002777 2A               [12] 1945 	add	a, r2
      002778 F5 82            [12] 1946 	mov	dpl,a
      00277A 12 24 E2         [24] 1947 	lcall	_lcdputch
                                   1948 ;	src/main.c:391: lcdputch('.');
      00277D 75 82 2E         [24] 1949 	mov	dpl, #0x2e
      002780 12 24 E2         [24] 1950 	lcall	_lcdputch
      002783 D0 04            [24] 1951 	pop	ar4
      002785 D0 05            [24] 1952 	pop	ar5
                                   1953 ;	src/main.c:394: lcdputch(miliseconds + '0');
      002787 74 30            [12] 1954 	mov	a,#0x30
      002789 2C               [12] 1955 	add	a, r4
      00278A F5 82            [12] 1956 	mov	dpl,a
      00278C 12 24 E2         [24] 1957 	lcall	_lcdputch
                                   1958 ;	src/main.c:395: lcdgotoxy(temprowcol[1], temprowcol[0]);
      00278F 90 00 58         [24] 1959 	mov	dptr,#(_lcdtimer_temprowcol_10000_151 + 0x0002)
      002792 E0               [24] 1960 	movx	a,@dptr
      002793 FF               [12] 1961 	mov	r7,a
      002794 90 00 56         [24] 1962 	mov	dptr,#_lcdtimer_temprowcol_10000_151
      002797 E0               [24] 1963 	movx	a,@dptr
      002798 90 00 4E         [24] 1964 	mov	dptr,#_lcdgotoxy_PARM_2
      00279B F0               [24] 1965 	movx	@dptr,a
      00279C 8F 82            [24] 1966 	mov	dpl, r7
                                   1967 ;	src/main.c:398: }
      00279E 02 24 09         [24] 1968 	ljmp	_lcdgotoxy
                                   1969 ;------------------------------------------------------------
                                   1970 ;Allocation info for local variables in function 'timer0_ISR'
                                   1971 ;------------------------------------------------------------
                                   1972 ;	src/main.c:400: void timer0_ISR(void) __interrupt(TF0_VECTOR)
                                   1973 ;	-----------------------------------------
                                   1974 ;	 function timer0_ISR
                                   1975 ;	-----------------------------------------
      0027A1                       1976 _timer0_ISR:
      0027A1 C0 E0            [24] 1977 	push	acc
      0027A3 C0 82            [24] 1978 	push	dpl
      0027A5 C0 83            [24] 1979 	push	dph
      0027A7 C0 07            [24] 1980 	push	ar7
      0027A9 C0 06            [24] 1981 	push	ar6
      0027AB C0 D0            [24] 1982 	push	psw
      0027AD 75 D0 00         [24] 1983 	mov	psw,#0x00
                                   1984 ;	src/main.c:402: if(state){
      0027B0 90 00 E7         [24] 1985 	mov	dptr,#_state
      0027B3 E0               [24] 1986 	movx	a,@dptr
      0027B4 60 04            [24] 1987 	jz	00107$
                                   1988 ;	src/main.c:403: TR0 = 0;
                                   1989 ;	assignBit
      0027B6 C2 8C            [12] 1990 	clr	_TR0
      0027B8 80 3F            [24] 1991 	sjmp	00109$
      0027BA                       1992 00107$:
                                   1993 ;	src/main.c:404: }else if(!state){
      0027BA 90 00 E7         [24] 1994 	mov	dptr,#_state
      0027BD E0               [24] 1995 	movx	a,@dptr
      0027BE 70 39            [24] 1996 	jnz	00109$
                                   1997 ;	src/main.c:405: if(reload_counter){
      0027C0 90 00 07         [24] 1998 	mov	dptr,#_reload_counter
      0027C3 E0               [24] 1999 	movx	a,@dptr
      0027C4 FE               [12] 2000 	mov	r6,a
      0027C5 A3               [24] 2001 	inc	dptr
      0027C6 E0               [24] 2002 	movx	a,@dptr
      0027C7 4E               [12] 2003 	orl	a,r6
      0027C8 60 1C            [24] 2004 	jz	00102$
                                   2005 ;	src/main.c:406: reload_counter = false;
      0027CA 90 00 07         [24] 2006 	mov	dptr,#_reload_counter
      0027CD E4               [12] 2007 	clr	a
      0027CE F0               [24] 2008 	movx	@dptr,a
      0027CF A3               [24] 2009 	inc	dptr
      0027D0 F0               [24] 2010 	movx	@dptr,a
                                   2011 ;	src/main.c:407: time++;
      0027D1 90 00 09         [24] 2012 	mov	dptr,#_time
      0027D4 E0               [24] 2013 	movx	a,@dptr
      0027D5 FE               [12] 2014 	mov	r6,a
      0027D6 A3               [24] 2015 	inc	dptr
      0027D7 E0               [24] 2016 	movx	a,@dptr
      0027D8 FF               [12] 2017 	mov	r7,a
      0027D9 90 00 09         [24] 2018 	mov	dptr,#_time
      0027DC 74 01            [12] 2019 	mov	a,#0x01
      0027DE 2E               [12] 2020 	add	a, r6
      0027DF F0               [24] 2021 	movx	@dptr,a
      0027E0 E4               [12] 2022 	clr	a
      0027E1 3F               [12] 2023 	addc	a, r7
      0027E2 A3               [24] 2024 	inc	dptr
      0027E3 F0               [24] 2025 	movx	@dptr,a
      0027E4 80 09            [24] 2026 	sjmp	00103$
      0027E6                       2027 00102$:
                                   2028 ;	src/main.c:411: reload_counter = true;
      0027E6 90 00 07         [24] 2029 	mov	dptr,#_reload_counter
      0027E9 74 01            [12] 2030 	mov	a,#0x01
      0027EB F0               [24] 2031 	movx	@dptr,a
      0027EC E4               [12] 2032 	clr	a
      0027ED A3               [24] 2033 	inc	dptr
      0027EE F0               [24] 2034 	movx	@dptr,a
      0027EF                       2035 00103$:
                                   2036 ;	src/main.c:413: P1_1 = !P1_1;
      0027EF B2 91            [12] 2037 	cpl	_P1_1
                                   2038 ;	src/main.c:414: TH0 = 0x4C;
      0027F1 75 8C 4C         [24] 2039 	mov	_TH0,#0x4c
                                   2040 ;	src/main.c:415: TL0 = 0x00;
      0027F4 75 8A 00         [24] 2041 	mov	_TL0,#0x00
                                   2042 ;	src/main.c:416: TR0 = 1;  
                                   2043 ;	assignBit
      0027F7 D2 8C            [12] 2044 	setb	_TR0
      0027F9                       2045 00109$:
                                   2046 ;	src/main.c:420: }
      0027F9 D0 D0            [24] 2047 	pop	psw
      0027FB D0 06            [24] 2048 	pop	ar6
      0027FD D0 07            [24] 2049 	pop	ar7
      0027FF D0 83            [24] 2050 	pop	dph
      002801 D0 82            [24] 2051 	pop	dpl
      002803 D0 E0            [24] 2052 	pop	acc
      002805 32               [24] 2053 	reti
                                   2054 ;	eliminated unneeded push/pop b
                                   2055 	.area CSEG    (CODE)
                                   2056 	.area CONST   (CODE)
                                   2057 	.area CONST   (CODE)
      003A63                       2058 ___str_0:
      003A63 0A                    2059 	.db 0x0a
      003A64 0D                    2060 	.db 0x0d
      003A65 20 4C 61 62 34 20 50  2061 	.ascii " Lab4 Part 2 LCD Program"
             61 72 74 20 32 20 4C
             43 44 20 50 72 6F 67
             72 61 6D
      003A7D 0A                    2062 	.db 0x0a
      003A7E 0D                    2063 	.db 0x0d
      003A7F 00                    2064 	.db 0x00
                                   2065 	.area CSEG    (CODE)
                                   2066 	.area CONST   (CODE)
      003A80                       2067 ___str_1:
      003A80 0A                    2068 	.db 0x0a
      003A81 0D                    2069 	.db 0x0d
      003A82 00                    2070 	.db 0x00
                                   2071 	.area CSEG    (CODE)
                                   2072 	.area CONST   (CODE)
      003A83                       2073 ___str_2:
      003A83 0A                    2074 	.db 0x0a
      003A84 0D                    2075 	.db 0x0d
      003A85 20 2D 2D 2D 2D 2D 2D  2076 	.ascii " ------ Commands ------"
             20 43 6F 6D 6D 61 6E
             64 73 20 2D 2D 2D 2D
             2D 2D
      003A9C 0A                    2077 	.db 0x0a
      003A9D 0D                    2078 	.db 0x0d
      003A9E 00                    2079 	.db 0x00
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area CONST   (CODE)
      003A9F                       2082 ___str_3:
      003A9F 0A                    2083 	.db 0x0a
      003AA0 0D                    2084 	.db 0x0d
      003AA1 20 63 20 3A 20 43 6C  2085 	.ascii " c : Clear Screen"
             65 61 72 20 53 63 72
             65 65 6E
      003AB2 0A                    2086 	.db 0x0a
      003AB3 0D                    2087 	.db 0x0d
      003AB4 00                    2088 	.db 0x00
                                   2089 	.area CSEG    (CODE)
                                   2090 	.area CONST   (CODE)
      003AB5                       2091 ___str_4:
      003AB5 0A                    2092 	.db 0x0a
      003AB6 0D                    2093 	.db 0x0d
      003AB7 20 70 20 3A 20 70 75  2094 	.ascii " p : putChar "
             74 43 68 61 72 20
      003AC4 0A                    2095 	.db 0x0a
      003AC5 0D                    2096 	.db 0x0d
      003AC6 00                    2097 	.db 0x00
                                   2098 	.area CSEG    (CODE)
                                   2099 	.area CONST   (CODE)
      003AC7                       2100 ___str_5:
      003AC7 0A                    2101 	.db 0x0a
      003AC8 0D                    2102 	.db 0x0d
      003AC9 20 73 20 3A 20 70 75  2103 	.ascii " s : putStr"
             74 53 74 72
      003AD4 0A                    2104 	.db 0x0a
      003AD5 0D                    2105 	.db 0x0d
      003AD6 00                    2106 	.db 0x00
                                   2107 	.area CSEG    (CODE)
                                   2108 	.area CONST   (CODE)
      003AD7                       2109 ___str_6:
      003AD7 0A                    2110 	.db 0x0a
      003AD8 0D                    2111 	.db 0x0d
      003AD9 20 67 20 3A 20 47 6F  2112 	.ascii " g : Go to x, y"
             20 74 6F 20 78 2C 20
             79
      003AE8 0A                    2113 	.db 0x0a
      003AE9 0D                    2114 	.db 0x0d
      003AEA 00                    2115 	.db 0x00
                                   2116 	.area CSEG    (CODE)
                                   2117 	.area CONST   (CODE)
      003AEB                       2118 ___str_7:
      003AEB 0A                    2119 	.db 0x0a
      003AEC 0D                    2120 	.db 0x0d
      003AED 20 68 20 3A 20 53 74  2121 	.ascii " h : Stop timer"
             6F 70 20 74 69 6D 65
             72
      003AFC 0A                    2122 	.db 0x0a
      003AFD 0D                    2123 	.db 0x0d
      003AFE 00                    2124 	.db 0x00
                                   2125 	.area CSEG    (CODE)
                                   2126 	.area CONST   (CODE)
      003AFF                       2127 ___str_8:
      003AFF 0A                    2128 	.db 0x0a
      003B00 0D                    2129 	.db 0x0d
      003B01 20 72 20 3A 20 52 65  2130 	.ascii " r : Restart Timer"
             73 74 61 72 74 20 54
             69 6D 65 72
      003B13 0A                    2131 	.db 0x0a
      003B14 0D                    2132 	.db 0x0d
      003B15 00                    2133 	.db 0x00
                                   2134 	.area CSEG    (CODE)
                                   2135 	.area CONST   (CODE)
      003B16                       2136 ___str_9:
      003B16 0A                    2137 	.db 0x0a
      003B17 0D                    2138 	.db 0x0d
      003B18 20 7A 20 3A 20 52 65  2139 	.ascii " z : Reset Timer"
             73 65 74 20 54 69 6D
             65 72
      003B28 0A                    2140 	.db 0x0a
      003B29 0D                    2141 	.db 0x0d
      003B2A 00                    2142 	.db 0x00
                                   2143 	.area CSEG    (CODE)
                                   2144 	.area CONST   (CODE)
      003B2B                       2145 ___str_10:
      003B2B 0A                    2146 	.db 0x0a
      003B2C 0D                    2147 	.db 0x0d
      003B2D 20 49 6E 70 75 74 20  2148 	.ascii " Input a char: "
             61 20 63 68 61 72 3A
             20
      003B3C 00                    2149 	.db 0x00
                                   2150 	.area CSEG    (CODE)
                                   2151 	.area CONST   (CODE)
      003B3D                       2152 ___str_11:
      003B3D 0A                    2153 	.db 0x0a
      003B3E 0D                    2154 	.db 0x0d
      003B3F 20 49 6E 70 75 74 20  2155 	.ascii " Input a string: "
             61 20 73 74 72 69 6E
             67 3A 20
      003B50 00                    2156 	.db 0x00
                                   2157 	.area CSEG    (CODE)
                                   2158 	.area CONST   (CODE)
      003B51                       2159 ___str_12:
      003B51 0A                    2160 	.db 0x0a
      003B52 0D                    2161 	.db 0x0d
      003B53 20 78 3A              2162 	.ascii " x:"
      003B56 00                    2163 	.db 0x00
                                   2164 	.area CSEG    (CODE)
                                   2165 	.area CONST   (CODE)
      003B57                       2166 ___str_13:
      003B57 0A                    2167 	.db 0x0a
      003B58 0D                    2168 	.db 0x0d
      003B59 20 79 3A              2169 	.ascii " y:"
      003B5C 00                    2170 	.db 0x00
                                   2171 	.area CSEG    (CODE)
                                   2172 	.area XINIT   (CODE)
      003B68                       2173 __xinit__row0:
      003B68 00 00                 2174 	.byte #0x00, #0x00	; 0
      003B6A                       2175 __xinit__row1:
      003B6A 40 00                 2176 	.byte #0x40, #0x00	; 64
      003B6C                       2177 __xinit__row2:
      003B6C 10 00                 2178 	.byte #0x10, #0x00	; 16
      003B6E                       2179 __xinit__row3:
      003B6E 50 00                 2180 	.byte #0x50, #0x00	; 80
      003B70                       2181 __xinit__state:
      003B70 00                    2182 	.db #0x00	;  0
                                   2183 	.area CABS    (ABS,CODE)
