;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-large
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0_ISR
	.globl _main
	.globl _strlen
	.globl _atoi
	.globl _putchar
	.globl _getchar
	.globl _printf
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
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
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
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _state
	.globl _row3
	.globl _row2
	.globl _row1
	.globl _row0
	.globl _lcdgotoxy_PARM_2
	.globl _time
	.globl _reload_counter
	.globl _current_overflow_count
	.globl _rowcol
	.globl _Input
	.globl _Program
	.globl _lcdinit
	.globl _lcdbusywait
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
	.globl _lcdclear
	.globl _delay
	.globl _init_timer_registers
	.globl _lcdtimer
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
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
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_rowcol::
	.ds 4
_current_overflow_count::
	.ds 2
_reload_counter::
	.ds 2
_time::
	.ds 2
_Input_temp_10000_102:
	.ds 2
_Program_temp_30001_114:
	.ds 64
_lcdgotoaddr_addr_10000_127:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 1
_lcdgotoxy_row_10000_129:
	.ds 1
_lcdputch_cc_10000_135:
	.ds 1
_lcdputstr_ss_10000_143:
	.ds 3
_delay_time_10000_148:
	.ds 2
_lcdtimer_temprowcol_10000_151:
	.ds 4
_lcdtimer_Minutes_10001_152:
	.ds 3
_lcdtimer_Seconds_10001_152:
	.ds 3
_lcdtimer_Miliseconds_10001_152:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_row0::
	.ds 2
_row1::
	.ds 2
_row2::
	.ds 2
_row3::
	.ds 2
_state::
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	src/main.c:72: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:73: lcdinit();
	lcall	_lcdinit
;	src/main.c:74: init_timer_registers();
	lcall	_init_timer_registers
;	src/main.c:75: printf("\n\r Lab4 Part 2 LCD Program\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:77: while(1){
00102$:
;	src/main.c:80: Program();
	lcall	_Program
;	src/main.c:83: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'Input'
;------------------------------------------------------------
;temp          Allocated with name '_Input_temp_10000_102'
;c             Allocated with name '_Input_c_10000_102'
;i             Allocated with name '_Input_i_10000_102'
;------------------------------------------------------------
;	src/main.c:85: int Input(){
;	-----------------------------------------
;	 function Input
;	-----------------------------------------
_Input:
;	src/main.c:89: while(1){
	mov	r7,#0x00
00106$:
;	src/main.c:90: c = getchar();
	push	ar7
	lcall	_getchar
	mov	r5, dpl
	pop	ar7
;	src/main.c:91: if(c == '\r'){
	cjne	r5,#0x0d,00129$
	sjmp	00107$
00129$:
;	src/main.c:94: if(i < sizeof(temp)-1){
	cjne	r7,#0x01,00130$
00130$:
	jnc	00104$
;	src/main.c:95: temp[i] = c;
	mov	dptr,#_Input_temp_10000_102
	mov	a,r5
	movx	@dptr,a
;	src/main.c:96: i++;
	mov	r7,#0x01
00104$:
;	src/main.c:99: putchar(c);
	mov	r6,#0x00
	mov	dpl, r5
	mov	dph, r6
	push	ar7
	lcall	_putchar
	pop	ar7
	sjmp	00106$
00107$:
;	src/main.c:101: temp[i] = '\0';
	mov	a,r7
	add	a, #_Input_temp_10000_102
	mov	dpl,a
	clr	a
	addc	a, #(_Input_temp_10000_102 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/main.c:102: printf("\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:103: return atoi(temp);
	mov	dptr,#_Input_temp_10000_102
	mov	b, #0x00
;	src/main.c:104: }
	ljmp	_atoi
;------------------------------------------------------------
;Allocation info for local variables in function 'Program'
;------------------------------------------------------------
;c             Allocated with name '_Program_c_10000_106'
;temp          Allocated with name '_Program_temp_30001_112'
;temp          Allocated with name '_Program_temp_30001_114'
;c             Allocated with name '_Program_c_30001_114'
;i             Allocated with name '_Program_i_30001_114'
;x             Allocated with name '_Program_x_30001_119'
;y             Allocated with name '_Program_y_30002_120'
;------------------------------------------------------------
;	src/main.c:105: void Program()
;	-----------------------------------------
;	 function Program
;	-----------------------------------------
_Program:
;	src/main.c:108: printf("\n\r ------ Commands ------\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:109: printf("\n\r c : Clear Screen\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:110: printf("\n\r p : putChar \n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:111: printf("\n\r s : putStr\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:112: printf("\n\r g : Go to x, y\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:113: printf("\n\r h : Stop timer\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:114: printf("\n\r r : Restart Timer\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:115: printf("\n\r z : Reset Timer\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:117: while(1)
00133$:
;	src/main.c:121: c = getcharmain();
	lcall	_getcharmain
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:122: if(c == -1){
	cjne	r6,#0xff,00216$
	cjne	r7,#0xff,00216$
	sjmp	00133$
00216$:
;	src/main.c:125: if(reload_counter){
	mov	dptr,#_reload_counter
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	orl	a,r4
	jz	00104$
;	src/main.c:126: lcdtimer();
	push	ar7
	push	ar6
	lcall	_lcdtimer
	pop	ar6
	pop	ar7
00104$:
;	src/main.c:128: putchar(c);
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	src/main.c:129: if(c == 'c'){
	cjne	r6,#0x63,00130$
	cjne	r7,#0x00,00130$
;	src/main.c:130: lcdclear();
	lcall	_lcdclear
	sjmp	00133$
00130$:
;	src/main.c:132: else if(c == 'p'){
	cjne	r6,#0x70,00127$
	cjne	r7,#0x00,00127$
;	src/main.c:133: printf("\n\r Input a char: ");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:134: char temp = getchar();
	lcall	_getchar
;	src/main.c:135: lcdputch(temp);
	lcall	_lcdputch
	sjmp	00133$
00127$:
;	src/main.c:138: else if(c == 's'){
	cjne	r6,#0x73,00222$
	cjne	r7,#0x00,00222$
	sjmp	00223$
00222$:
	sjmp	00124$
00223$:
;	src/main.c:139: printf("\n\r Input a string: ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:144: while(1){
	mov	r5,#0x00
00110$:
;	src/main.c:145: c = getchar();
	push	ar5
	lcall	_getchar
	mov	r3, dpl
	pop	ar5
;	src/main.c:146: if(c == '\r'){
	cjne	r3,#0x0d,00224$
	sjmp	00111$
00224$:
;	src/main.c:149: if(i < sizeof(temp)-1){
	cjne	r5,#0x3f,00225$
00225$:
	jnc	00108$
;	src/main.c:150: temp[i] = c;
	mov	a,r5
	add	a, #_Program_temp_30001_114
	mov	dpl,a
	clr	a
	addc	a, #(_Program_temp_30001_114 >> 8)
	mov	dph,a
	mov	a,r3
	movx	@dptr,a
;	src/main.c:151: i++;
	inc	r5
00108$:
;	src/main.c:154: putchar(c);
	mov	r4,#0x00
	mov	dpl, r3
	mov	dph, r4
	push	ar5
	lcall	_putchar
	pop	ar5
	sjmp	00110$
00111$:
;	src/main.c:157: lcdputstr(temp);
	mov	dptr,#_Program_temp_30001_114
	mov	b, #0x00
	push	ar5
	lcall	_lcdputstr
	pop	ar5
;	src/main.c:158: temp[i] = '\0';
	mov	a,r5
	add	a, #_Program_temp_30001_114
	mov	dpl,a
	clr	a
	addc	a, #(_Program_temp_30001_114 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/main.c:159: printf("\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00133$
00124$:
;	src/main.c:162: else if(c == 'g'){
	cjne	r6,#0x67,00121$
	cjne	r7,#0x00,00121$
;	src/main.c:163: printf("\n\r x:");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:164: unsigned char x = Input();
	lcall	_Input
	mov	r4, dpl
;	src/main.c:165: printf("\n\r y:");
	push	ar4
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:166: unsigned char y = Input();
	lcall	_Input
	mov	r3, dpl
	pop	ar4
;	src/main.c:167: lcdgotoxy(y,x);
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dpl, r3
	lcall	_lcdgotoxy
	ljmp	00133$
00121$:
;	src/main.c:170: else if(c == 'h'){
	cjne	r6,#0x68,00118$
	cjne	r7,#0x00,00118$
;	src/main.c:171: state = true;
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:172: printf("\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00133$
00118$:
;	src/main.c:174: else if(c == 'r'){
	cjne	r6,#0x72,00115$
	cjne	r7,#0x00,00115$
;	src/main.c:175: state = false;
	mov	dptr,#_state
	clr	a
	movx	@dptr,a
;	src/main.c:176: TR0 = 1;
;	assignBit
	setb	_TR0
;	src/main.c:177: printf("\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00133$
00115$:
;	src/main.c:180: else if(c == 'z'){
	cjne	r6,#0x7a,00233$
	cjne	r7,#0x00,00233$
	sjmp	00234$
00233$:
	ljmp	00133$
00234$:
;	src/main.c:181: time = 0;
	mov	dptr,#_time
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:182: printf("\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/main.c:185: }
	ljmp	00133$
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;	src/main.c:187: void lcdinit(){
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	src/main.c:188: delay(50000);
	mov	dptr,#0xc350
	lcall	_delay
;	src/main.c:189: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:190: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:191: *enable = 0x30;
	mov	dptr,#0x8000
	mov	a,#0x30
	movx	@dptr,a
;	src/main.c:192: delay(6000);
	mov	dptr,#0x1770
	lcall	_delay
;	src/main.c:193: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:194: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:195: *enable = 0x30;
	mov	dptr,#0x8000
	mov	a,#0x30
	movx	@dptr,a
;	src/main.c:196: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	src/main.c:197: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:198: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:199: *enable = 0x30;
	mov	dptr,#0x8000
	mov	a,#0x30
	movx	@dptr,a
;	src/main.c:200: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:202: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:203: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:204: *enable = 0x38;
	mov	dptr,#0x8000
	mov	a,#0x38
	movx	@dptr,a
;	src/main.c:205: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:207: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:208: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:209: *enable = 0x08;
	mov	dptr,#0x8000
	mov	a,#0x08
	movx	@dptr,a
;	src/main.c:210: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:212: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:213: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:214: *enable = 0x0C;
	mov	dptr,#0x8000
	mov	a,#0x0c
	movx	@dptr,a
;	src/main.c:215: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:217: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:218: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:219: *enable = 0x06;
	mov	dptr,#0x8000
	mov	a,#0x06
	movx	@dptr,a
;	src/main.c:220: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:222: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:223: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:224: *enable = 0x01;
	mov	dptr,#0x8000
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:227: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	src/main.c:231: void lcdbusywait(){
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	src/main.c:234: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:235: RW_HIGH;
;	assignBit
	setb	_P1_5
;	src/main.c:236: while(*enable & 0x80){
00101$:
	mov	dptr,#0x8000
	movx	a,@dptr
	jb	acc.7,00101$
;	src/main.c:239: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr          Allocated with name '_lcdgotoaddr_addr_10000_127'
;------------------------------------------------------------
;	src/main.c:243: void lcdgotoaddr(unsigned char addr){
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	a,dpl
	mov	dptr,#_lcdgotoaddr_addr_10000_127
	movx	@dptr,a
;	src/main.c:248: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:249: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:250: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:251: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	src/main.c:252: *enable = 0x80 + addr;
	mov	dptr,#_lcdgotoaddr_addr_10000_127
	movx	a,@dptr
	add	a,#0x80
	mov	dptr,#0x8000
	movx	@dptr,a
;	src/main.c:254: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;col           Allocated with name '_lcdgotoxy_PARM_2'
;row           Allocated with name '_lcdgotoxy_row_10000_129'
;address       Allocated with name '_lcdgotoxy_address_10000_130'
;------------------------------------------------------------
;	src/main.c:259: void lcdgotoxy(unsigned char row, unsigned char col){
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_row_10000_129
	movx	@dptr,a
;	src/main.c:261: if(row == 0){
	movx	a,@dptr
	mov	r7,a
	jnz	00110$
;	src/main.c:262: address = row0 + col;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	dptr,#_row0
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	add	a, r3
;	src/main.c:263: lcdgotoaddr(address);
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_lcdgotoaddr
	pop	ar6
	pop	ar7
;	src/main.c:264: rowcol[0] = row;
	mov	ar4,r7
	mov	r5,#0x00
	mov	dptr,#_rowcol
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:265: rowcol[1] = col;
	mov	r5,a
	mov	dptr,#(_rowcol + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ret
00110$:
;	src/main.c:267: else if(row == 1){
	cjne	r7,#0x01,00107$
;	src/main.c:268: address = row1 + col;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	dptr,#_row1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	add	a, r3
;	src/main.c:269: lcdgotoaddr(address);
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_lcdgotoaddr
	pop	ar6
	pop	ar7
;	src/main.c:270: rowcol[0] = row;
	mov	ar4,r7
	mov	r5,#0x00
	mov	dptr,#_rowcol
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:271: rowcol[1] = col;
	mov	r5,a
	mov	dptr,#(_rowcol + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ret
00107$:
;	src/main.c:273: else if(row == 2){
	cjne	r7,#0x02,00104$
;	src/main.c:274: address = row2 + col;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	dptr,#_row2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	add	a, r3
;	src/main.c:275: lcdgotoaddr(address);
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_lcdgotoaddr
	pop	ar6
	pop	ar7
;	src/main.c:276: rowcol[0] = row;
	mov	ar4,r7
	mov	r5,#0x00
	mov	dptr,#_rowcol
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:277: rowcol[1] = col;
	mov	r5,a
	mov	dptr,#(_rowcol + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ret
00104$:
;	src/main.c:279: else if(row == 3){
	cjne	r7,#0x03,00112$
;	src/main.c:280: address = row3 + col;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	dptr,#_row3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	add	a, r3
;	src/main.c:281: lcdgotoaddr(address);
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_lcdgotoaddr
	pop	ar6
	pop	ar7
;	src/main.c:282: rowcol[0] = row;
	mov	r5,#0x00
	mov	dptr,#_rowcol
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/main.c:283: rowcol[1] = col;
	mov	r7,a
	mov	dptr,#(_rowcol + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00112$:
;	src/main.c:285: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc            Allocated with name '_lcdputch_cc_10000_135'
;------------------------------------------------------------
;	src/main.c:290: void lcdputch(char cc){
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	a,dpl
	mov	dptr,#_lcdputch_cc_10000_135
	movx	@dptr,a
;	src/main.c:293: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:294: RS_HIGH;
;	assignBit
	setb	_P1_6
;	src/main.c:295: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:298: *enable = cc;
	mov	dptr,#_lcdputch_cc_10000_135
	movx	a,@dptr
	mov	dptr,#0x8000
	movx	@dptr,a
;	src/main.c:299: if(rowcol[1] >= 15){
	mov	dptr,#(_rowcol + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x0f
	mov	a,r7
	subb	a,#0x00
	jc	00113$
;	src/main.c:300: if(rowcol[0] == 0){
	mov	dptr,#_rowcol
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	jnz	00110$
;	src/main.c:301: lcdgotoxy(1,0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x01
	ljmp	_lcdgotoxy
00110$:
;	src/main.c:303: else if(rowcol[0] == 1){
	mov	dptr,#_rowcol
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00107$
	cjne	r7,#0x00,00107$
;	src/main.c:304: lcdgotoxy(2,0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x02
	ljmp	_lcdgotoxy
00107$:
;	src/main.c:306: else if(rowcol[0] == 2){
	mov	dptr,#_rowcol
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00104$
	cjne	r7,#0x00,00104$
;	src/main.c:307: lcdgotoxy(3,0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x03
	ljmp	_lcdgotoxy
00104$:
;	src/main.c:309: else if(rowcol[0] == 3){
	mov	dptr,#_rowcol
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x03,00115$
	cjne	r7,#0x00,00115$
;	src/main.c:310: lcdgotoxy(0,0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x00
	ljmp	_lcdgotoxy
00113$:
;	src/main.c:314: lcdgotoxy(rowcol[0], rowcol[1]+1);
	mov	dptr,#_rowcol
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_rowcol + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	dpl, r6
;	src/main.c:316: }
	ljmp	_lcdgotoxy
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss            Allocated with name '_lcdputstr_ss_10000_143'
;size          Allocated with name '_lcdputstr_size_10000_144'
;i             Allocated with name '_lcdputstr_i_20000_145'
;------------------------------------------------------------
;	src/main.c:322: void lcdputstr(char *ss){
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_ss_10000_143
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:323: unsigned int size = strlen(ss);
	mov	dptr,#_lcdputstr_ss_10000_143
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	lcall	_strlen
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:324: for(int i = 0; i < size; i++){
	mov	dptr,#_lcdputstr_ss_10000_143
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	push	ar3
	push	ar4
	push	ar5
	mov	ar0,r1
	mov	ar5,r2
	clr	c
	mov	a,r0
	subb	a,r6
	mov	a,r5
	subb	a,r7
	pop	ar5
	pop	ar4
	pop	ar3
	jnc	00105$
;	src/main.c:325: lcdputch(*(ss + i));
	push	ar6
	push	ar7
	mov	a,r1
	add	a, r3
	mov	r0,a
	mov	a,r2
	addc	a, r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_lcdputch
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:324: for(int i = 0; i < size; i++){
	inc	r1
	cjne	r1,#0x00,00121$
	inc	r2
00121$:
	pop	ar7
	pop	ar6
	sjmp	00103$
00105$:
;	src/main.c:327: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	src/main.c:330: void lcdclear(){
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	src/main.c:331: lcdbusywait();
	lcall	_lcdbusywait
;	src/main.c:332: RS_LOW;
;	assignBit
	clr	_P1_6
;	src/main.c:333: RW_LOW;
;	assignBit
	clr	_P1_5
;	src/main.c:334: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	src/main.c:335: *enable = 0x01;
	mov	dptr,#0x8000
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:336: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time          Allocated with name '_delay_time_10000_148'
;------------------------------------------------------------
;	src/main.c:339: void delay(unsigned int time){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_time_10000_148
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:341: while(--time);
	mov	dptr,#_delay_time_10000_148
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	dec	r6
	cjne	r6,#0xff,00118$
	dec	r7
00118$:
	mov	dptr,#_delay_time_10000_148
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,r7
	jnz	00101$
	mov	dptr,#_delay_time_10000_148
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:342: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer_registers'
;------------------------------------------------------------
;	src/main.c:344: void init_timer_registers()
;	-----------------------------------------
;	 function init_timer_registers
;	-----------------------------------------
_init_timer_registers:
;	src/main.c:346: TMOD |= 1 << TMOD_MODE1_POS;
	orl	_TMOD,#0x01
;	src/main.c:348: TH0 = 0x4C;
	mov	_TH0,#0x4c
;	src/main.c:349: TL0 = 0x00;
	mov	_TL0,#0x00
;	src/main.c:350: ET0 = 1; // enable timer0 interrupt
;	assignBit
	setb	_ET0
;	src/main.c:351: EA = 1;  // enable global interrupt
;	assignBit
	setb	_EA
;	src/main.c:352: TR0 = 1;
;	assignBit
	setb	_TR0
;	src/main.c:353: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdtimer'
;------------------------------------------------------------
;temprowcol    Allocated with name '_lcdtimer_temprowcol_10000_151'
;temp          Allocated with name '_lcdtimer_temp_10001_152'
;miliseconds   Allocated with name '_lcdtimer_miliseconds_10001_152'
;seconds       Allocated with name '_lcdtimer_seconds_10001_152'
;minutes       Allocated with name '_lcdtimer_minutes_10001_152'
;Minutes       Allocated with name '_lcdtimer_Minutes_10001_152'
;Seconds       Allocated with name '_lcdtimer_Seconds_10001_152'
;Miliseconds   Allocated with name '_lcdtimer_Miliseconds_10001_152'
;------------------------------------------------------------
;	src/main.c:355: void lcdtimer(){
;	-----------------------------------------
;	 function lcdtimer
;	-----------------------------------------
_lcdtimer:
;	src/main.c:357: temprowcol[0] = rowcol[0];
	mov	dptr,#_rowcol
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdtimer_temprowcol_10000_151
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:358: temprowcol[1] = rowcol[1];
	mov	dptr,#(_rowcol + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_lcdtimer_temprowcol_10000_151 + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:367: minutes = time / 600;
	mov	dptr,#_time
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x58
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
;	src/main.c:368: temp = time % 600;
	mov	dpl, r6
	mov	dph, r7
	lcall	__divuint
	mov	r6, dpl
	mov	r7, dph
	mov	dptr,#_time
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x58
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
;	src/main.c:369: seconds = temp / 10;
	mov	dpl, r4
	mov	dph, r5
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4, dpl
	mov	r5, dph
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:370: miliseconds = temp % 10;
	mov	dpl, r4
	mov	dph, r5
	push	ar5
	push	ar4
	lcall	__divuint
	mov	r2, dpl
	mov	r3, dph
	pop	ar4
	pop	ar5
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:371: lcdgotoxy(3,9);
	mov	dpl, r4
	mov	dph, r5
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r4, dpl
	mov	r5, dph
	pop	ar2
	pop	ar3
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_lcdgotoxy
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	src/main.c:382: lcdputch((minutes / 10) + '0');
	mov	ar1,r6
	mov	b,#0x0a
	mov	a,r1
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_lcdputch
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:383: lcdputch((minutes % 10) + '0');
	mov	b,#0x0a
	mov	a,r6
	div	ab
	mov	r6,b
	mov	a,#0x30
	add	a, r6
	mov	dpl,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_lcdputch
;	src/main.c:385: lcdputch(':');
	mov	dpl, #0x3a
	lcall	_lcdputch
	pop	ar2
;	src/main.c:388: lcdputch((seconds / 10) + '0');
	mov	ar7,r2
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar2
	lcall	_lcdputch
	pop	ar2
	pop	ar3
;	src/main.c:389: lcdputch((seconds % 10) + '0');
	mov	b,#0x0a
	mov	a,r2
	div	ab
	mov	r2,b
	mov	a,#0x30
	add	a, r2
	mov	dpl,a
	lcall	_lcdputch
;	src/main.c:391: lcdputch('.');
	mov	dpl, #0x2e
	lcall	_lcdputch
	pop	ar4
	pop	ar5
;	src/main.c:394: lcdputch(miliseconds + '0');
	mov	a,#0x30
	add	a, r4
	mov	dpl,a
	lcall	_lcdputch
;	src/main.c:395: lcdgotoxy(temprowcol[1], temprowcol[0]);
	mov	dptr,#(_lcdtimer_temprowcol_10000_151 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdtimer_temprowcol_10000_151
	movx	a,@dptr
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	@dptr,a
	mov	dpl, r7
;	src/main.c:398: }
	ljmp	_lcdgotoxy
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	src/main.c:400: void timer0_ISR(void) __interrupt(TF0_VECTOR)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	src/main.c:402: if(state){
	mov	dptr,#_state
	movx	a,@dptr
	jz	00107$
;	src/main.c:403: TR0 = 0;
;	assignBit
	clr	_TR0
	sjmp	00109$
00107$:
;	src/main.c:404: }else if(!state){
	mov	dptr,#_state
	movx	a,@dptr
	jnz	00109$
;	src/main.c:405: if(reload_counter){
	mov	dptr,#_reload_counter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	jz	00102$
;	src/main.c:406: reload_counter = false;
	mov	dptr,#_reload_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:407: time++;
	mov	dptr,#_time
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_time
	mov	a,#0x01
	add	a, r6
	movx	@dptr,a
	clr	a
	addc	a, r7
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	src/main.c:411: reload_counter = true;
	mov	dptr,#_reload_counter
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00103$:
;	src/main.c:413: P1_1 = !P1_1;
	cpl	_P1_1
;	src/main.c:414: TH0 = 0x4C;
	mov	_TH0,#0x4c
;	src/main.c:415: TL0 = 0x00;
	mov	_TL0,#0x00
;	src/main.c:416: TR0 = 1;  
;	assignBit
	setb	_TR0
00109$:
;	src/main.c:420: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii " Lab4 Part 2 LCD Program"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii " ------ Commands ------"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii " c : Clear Screen"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii " p : putChar "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii " s : putStr"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii " g : Go to x, y"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii " h : Stop timer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii " r : Restart Timer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii " z : Reset Timer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii " Input a char: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii " Input a string: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii " x:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii " y:"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__row0:
	.byte #0x00, #0x00	; 0
__xinit__row1:
	.byte #0x40, #0x00	; 64
__xinit__row2:
	.byte #0x10, #0x00	; 16
__xinit__row3:
	.byte #0x50, #0x00	; 80
__xinit__state:
	.db #0x00	;  0
	.area CABS    (ABS,CODE)
