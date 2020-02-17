	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/Trill_Tsunami/build/render.bc"
	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	__cxx_global_array_dtor,%function
__cxx_global_array_dtor:                @ @__cxx_global_array_dtor
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	movw	r4, :lower16:_Z10gFilenamesB5cxx11
	movt	r4, :upper16:_Z10gFilenamesB5cxx11
	add	r1, r4, #104
	ldr	r0, [r4, #96]
	cmp	r0, r1
	beq	.LBB0_2
@ BB#1:
	bl	_ZdlPv
.LBB0_2:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ldr	r0, [r4, #72]
	add	r1, r4, #80
	cmp	r0, r1
	beq	.LBB0_4
@ BB#3:
	bl	_ZdlPv
.LBB0_4:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
	ldr	r0, [r4, #48]
	add	r1, r4, #56
	cmp	r0, r1
	beq	.LBB0_6
@ BB#5:
	bl	_ZdlPv
.LBB0_6:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
	ldr	r0, [r4, #24]
	add	r1, r4, #32
	cmp	r0, r1
	beq	.LBB0_8
@ BB#7:
	bl	_ZdlPv
.LBB0_8:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
	ldr	r0, [r4], #8
	cmp	r0, r4
	popeq	{r4, r10, r11, pc}
	pop	{r4, r10, r11, lr}
	b	_ZdlPv
.Lfunc_end0:
	.size	__cxx_global_array_dtor, .Lfunc_end0-__cxx_global_array_dtor
	.fnend

	.text
	.globl	_Z4loopPv
	.p2align	2
	.type	_Z4loopPv,%function
_Z4loopPv:                              @ @_Z4loopPv
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	movw	r5, :lower16:gShouldStop
	movt	r5, :upper16:gShouldStop
	ldr	r0, [r5]
	cmp	r0, #0
	popne	{r4, r5, r6, r10, r11, pc}
	movw	r4, :lower16:touchSensor
	movw	r6, :lower16:gTaskSleepTime
	movt	r4, :upper16:touchSensor
	movt	r6, :upper16:gTaskSleepTime
.LBB1_1:                                @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	bl	_ZN5Trill7readI2CEv
	ldr	r0, [r6]
	bl	usleep
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_1
@ BB#2:                                 @ %._crit_edge
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end1:
	.size	_Z4loopPv, .Lfunc_end1-_Z4loopPv
	.fnend

	.globl	setup
	.p2align	3
	.type	setup,%function
setup:                                  @ @setup
.Lfunc_begin0:
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#56
	sub	sp, sp, #56
	mov	r4, r0
	movw	r0, :lower16:touchSensor
	movt	r0, :upper16:touchSensor
	mov	r1, #1
	mov	r2, #24
	mov	r3, #3
	bl	_ZN5Trill5setupEiii
	movw	r0, :lower16:_Z4loopPv
	movw	r2, :lower16:.L.str.8
	movt	r0, :upper16:_Z4loopPv
	movt	r2, :upper16:.L.str.8
	mov	r1, #50
	mov	r3, #0
	bl	Bela_createAuxiliaryTask
	movw	r5, :lower16:.L_MergedGlobals
	movt	r5, :upper16:.L_MergedGlobals
	str	r0, [r5]
	bl	Bela_scheduleAuxiliaryTask
	vldr	s0, [r4, #32]
	add	r4, r4, #92
	vldr	d17, .LCPI2_0
	add	r0, sp, #28
	vcvt.f64.f32	d16, s0
	add	r6, r0, #8
	mov	r0, r4
	vmul.f64	d16, d16, d17
	vldr	s0, [r5, #4]
	vcvt.f64.s32	d17, s0
	vmul.f64	d16, d16, d17
	vcvt.s32.f64	s0, d16
	str	r6, [sp, #28]
	vstr	s0, [r5, #8]
	bl	strlen
	mov	r5, r0
	cmp	r5, #15
	str	r5, [r11, #-20]
	bls	.LBB2_3
@ BB#1:                                 @ %.noexc8.i
.Ltmp0:
	add	r0, sp, #28
	sub	r1, r11, #20
	mov	r2, #0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj
.Ltmp1:
@ BB#2:                                 @ %.noexc
	ldr	r1, [r11, #-20]
	str	r0, [sp, #28]
	str	r1, [sp, #36]
	b	.LBB2_4
.LBB2_3:                                @ %._crit_edge.i.i.i.i
	mov	r0, r6
.LBB2_4:
	cmp	r5, #0
	beq	.LBB2_8
@ BB#5:
	cmp	r5, #1
	bne	.LBB2_7
@ BB#6:
	ldrb	r1, [r4]
	strb	r1, [r0]
	b	.LBB2_8
.LBB2_7:
	mov	r1, r4
	mov	r2, r5
	bl	memcpy
.LBB2_8:                                @ %._crit_edge.i.i.i.i6
	ldr	r0, [r11, #-20]
	mov	r2, #0
	str	r0, [sp, #32]
	mov	r3, sp
	ldr	r1, [sp, #28]
	add	r5, r3, #8
	strb	r2, [r1, r0]
	mov	r0, #105
	str	r5, [sp]
	strb	r0, [sp, #10]
	movw	r0, #30055
	strh	r0, [sp, #8]
	mov	r0, #3
	str	r0, [sp, #4]
	strb	r2, [sp, #11]
.Ltmp3:
	movw	r0, :lower16:gui
	add	r1, sp, #28
	movt	r0, :upper16:gui
	movw	r2, #5555
	bl	_ZN3Gui5setupENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS5_
.Ltmp4:
@ BB#9:
	ldr	r0, [sp]
	cmp	r0, r5
	beq	.LBB2_11
@ BB#10:
	bl	_ZdlPv
.LBB2_11:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
	ldr	r0, [sp, #28]
	cmp	r0, r6
	beq	.LBB2_13
@ BB#12:
	bl	_ZdlPv
.LBB2_13:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	mov	r0, #1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.LBB2_14:
.Ltmp2:
	mov	lr, pc
	b	_Unwind_Resume
.LBB2_15:
.Ltmp5:
	mov	r4, r0
	ldr	r0, [sp]
	cmp	r0, r5
	beq	.LBB2_17
@ BB#16:
	bl	_ZdlPv
.LBB2_17:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
	ldr	r0, [sp, #28]
	cmp	r0, r6
	beq	.LBB2_19
@ BB#18:
	bl	_ZdlPv
.LBB2_19:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	mov	r0, r4
	mov	lr, pc
	b	_Unwind_Resume
	.p2align	3
@ BB#20:
.LCPI2_0:
	.long	3539053052              @ double 0.001
	.long	1062232653
.Lfunc_end2:
	.size	setup, .Lfunc_end2-setup
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	0                       @ @TType Encoding = absptr
	.asciz	"\303\200"              @ @TType base offset
	.byte	3                       @ Call site Encoding = udata4
	.byte	65                      @ Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 @ >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    @   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    @ >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           @   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    @     jumps to .Ltmp2
	.byte	0                       @   On action: cleanup
	.long	.Ltmp1-.Lfunc_begin0    @ >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp1           @   Call between .Ltmp1 and .Ltmp3
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    @ >> Call Site 4 <<
	.long	.Ltmp4-.Ltmp3           @   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    @     jumps to .Ltmp5
	.byte	0                       @   On action: cleanup
	.long	.Ltmp4-.Lfunc_begin0    @ >> Call Site 5 <<
	.long	.Lfunc_end2-.Ltmp4      @   Call between .Ltmp4 and .Lfunc_end2
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.p2align	2
	.fnend

	.globl	render
	.p2align	2
	.type	render,%function
render:                                 @ @render
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r10, r0
	ldr	r0, [r10, #20]
	cmp	r0, #0
	beq	.LBB3_12
@ BB#1:                                 @ %.lr.ph25
	movw	r9, :lower16:_ZZ6renderE5count
	movw	r8, :lower16:.L_MergedGlobals
	movt	r9, :upper16:_ZZ6renderE5count
	movw	r5, :lower16:touchSensor
	ldr	r1, [r9]
	mov	r6, #0
	movt	r8, :upper16:.L_MergedGlobals
	movt	r5, :upper16:touchSensor
	mov	r4, #1
	str	r10, [sp, #4]           @ 4-byte Spill
.LBB3_2:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_5 Depth 2
	vldr	s0, [r10, #32]
	vmov	s2, r1
	vldr	s4, [r8, #12]
	vcvt.f32.u32	d1, d1
	vmul.f32	d0, d0, d2
	vcmpe.f32	s2, s0
	vmrs	APSR_nzcv, fpscr
	blt	.LBB3_11
@ BB#3:                                 @ %.preheader20
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r0, r5
	bl	_ZN5Trill10numSensorsEv
	cmp	r0, #0
	beq	.LBB3_8
@ BB#4:                                 @ %.lr.ph.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r7, #0
.LBB3_5:                                @ %.lr.ph
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r0, r5, r7, lsl #2
	ldr	r1, [r8, #28]
	ldr	r0, [r0, #84]
	cmp	r0, r1
	ble	.LBB3_7
@ BB#6:                                 @   in Loop: Header=BB3_5 Depth=2
	cmp	r0, #1
	str	r0, [r8, #28]
	addge	r0, r8, r7
	strbge	r4, [r0, #16]
.LBB3_7:                                @   in Loop: Header=BB3_5 Depth=2
	mov	r0, r5
	add	r7, r7, #1
	bl	_ZN5Trill10numSensorsEv
	cmp	r7, r0
	blo	.LBB3_5
.LBB3_8:                                @ %._crit_edge
                                        @   in Loop: Header=BB3_2 Depth=1
	ldrb	r0, [r5, #16]
	cmp	r0, #0
	beq	.LBB3_10
@ BB#9:                                 @   in Loop: Header=BB3_2 Depth=1
	mov	r0, r5
	bl	_ZN5Trill10numSensorsEv
	movw	r1, :lower16:_ZTIi
	str	r0, [sp, #8]
	movt	r1, :upper16:_ZTIi
	movw	r9, :lower16:gui
	ldr	r10, [r1, #4]
	mov	r1, #4
	movt	r9, :upper16:gui
	add	r3, sp, #8
	mov	r2, #0
	mov	r7, r10
	ldrb	r0, [r7], #1
	str	r1, [sp]
	mov	r1, r10
	cmp	r0, #42
	mov	r0, r9
	moveq	r1, r7
	mov	r4, r0
	bl	_ZN3Gui12doSendBufferEPKcjPKvj
	ldrb	r0, [r10]
	mov	r1, #8
	str	r1, [sp]
	mov	r1, r10
	cmp	r0, #42
	add	r3, r8, #24
	moveq	r1, r7
	mov	r0, r4
	mov	r2, #1
	bl	_ZN3Gui12doSendBufferEPKcjPKvj
	ldrb	r0, [r10]
	mov	r1, #120
	add	r3, r5, #84
	movw	r9, :lower16:_ZZ6renderE5count
	cmp	r0, #42
	movw	r0, :lower16:gui
	movne	r7, r10
	str	r1, [sp]
	movt	r0, :upper16:gui
	mov	r1, r7
	mov	r2, #2
	ldr	r10, [sp, #4]           @ 4-byte Reload
	movt	r9, :upper16:_ZZ6renderE5count
	mov	r4, #1
	bl	_ZN3Gui12doSendBufferEPKcjPKvj
.LBB3_10:                               @   in Loop: Header=BB3_2 Depth=1
	mov	r1, #0
	str	r1, [r9]
	ldr	r0, [r10, #20]
.LBB3_11:                               @   in Loop: Header=BB3_2 Depth=1
	add	r1, r1, #1
	add	r6, r6, #1
	str	r1, [r9]
	cmp	r6, r0
	blo	.LBB3_2
.LBB3_12:                               @ %.preheader.preheader
	movw	r5, :lower16:.L_MergedGlobals
	movt	r5, :upper16:.L_MergedGlobals
	ldrb	r0, [r5, #16]
	cmp	r0, #0
	beq	.LBB3_14
@ BB#13:
	movw	r4, :lower16:.L.str.10
	movw	r1, :lower16:.L.str.11
	movt	r4, :upper16:.L.str.10
	movt	r1, :upper16:.L.str.11
	mov	r0, r4
	bl	rt_printf
	movw	r0, :lower16:.L.str.12
	mov	r1, #0
	movt	r0, :upper16:.L.str.12
	bl	rt_printf
	movw	r1, :lower16:.L.str.13
	mov	r0, r4
	movt	r1, :upper16:.L.str.13
	bl	rt_printf
.LBB3_14:                               @ %.preheader.126
	ldrb	r0, [r5, #17]
	cmp	r0, #0
	beq	.LBB3_16
@ BB#15:
	movw	r4, :lower16:.L.str.10
	movw	r1, :lower16:.L.str.11
	movt	r4, :upper16:.L.str.10
	movt	r1, :upper16:.L.str.11
	mov	r0, r4
	bl	rt_printf
	movw	r0, :lower16:.L.str.12
	mov	r1, #1
	movt	r0, :upper16:.L.str.12
	bl	rt_printf
	movw	r1, :lower16:.L.str.13
	mov	r0, r4
	movt	r1, :upper16:.L.str.13
	bl	rt_printf
.LBB3_16:                               @ %.preheader.227
	ldrb	r0, [r5, #18]
	cmp	r0, #0
	beq	.LBB3_18
@ BB#17:
	movw	r4, :lower16:.L.str.10
	movw	r1, :lower16:.L.str.11
	movt	r4, :upper16:.L.str.10
	movt	r1, :upper16:.L.str.11
	mov	r0, r4
	bl	rt_printf
	movw	r0, :lower16:.L.str.12
	mov	r1, #2
	movt	r0, :upper16:.L.str.12
	bl	rt_printf
	movw	r1, :lower16:.L.str.13
	mov	r0, r4
	movt	r1, :upper16:.L.str.13
	bl	rt_printf
.LBB3_18:                               @ %.preheader.328
	ldrb	r0, [r5, #19]
	cmp	r0, #0
	beq	.LBB3_20
@ BB#19:
	movw	r4, :lower16:.L.str.10
	movw	r1, :lower16:.L.str.11
	movt	r4, :upper16:.L.str.10
	movt	r1, :upper16:.L.str.11
	mov	r0, r4
	bl	rt_printf
	movw	r0, :lower16:.L.str.12
	mov	r1, #3
	movt	r0, :upper16:.L.str.12
	bl	rt_printf
	movw	r1, :lower16:.L.str.13
	mov	r0, r4
	movt	r1, :upper16:.L.str.13
	bl	rt_printf
.LBB3_20:                               @ %.preheader.429
	ldrb	r0, [r5, #20]
	cmp	r0, #0
	beq	.LBB3_22
@ BB#21:
	movw	r4, :lower16:.L.str.10
	movw	r1, :lower16:.L.str.11
	movt	r4, :upper16:.L.str.10
	movt	r1, :upper16:.L.str.11
	mov	r0, r4
	bl	rt_printf
	movw	r0, :lower16:.L.str.12
	mov	r1, #4
	movt	r0, :upper16:.L.str.12
	bl	rt_printf
	movw	r1, :lower16:.L.str.13
	mov	r0, r4
	movt	r1, :upper16:.L.str.13
	bl	rt_printf
.LBB3_22:
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end3:
	.size	render, .Lfunc_end3-render
	.fnend

	.globl	cleanup
	.p2align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end4:
	.size	cleanup, .Lfunc_end4-cleanup
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	_GLOBAL__sub_I_render.ii,%function
_GLOBAL__sub_I_render.ii:               @ @_GLOBAL__sub_I_render.ii
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	movw	r5, :lower16:_ZStL8__ioinit
	movt	r5, :upper16:_ZStL8__ioinit
	mov	r0, r5
	bl	_ZNSt8ios_base4InitC1Ev
	movw	r4, :lower16:__dso_handle
	movw	r0, :lower16:_ZNSt8ios_base4InitD1Ev
	movt	r4, :upper16:__dso_handle
	movt	r0, :upper16:_ZNSt8ios_base4InitD1Ev
	mov	r1, r5
	mov	r2, r4
	bl	__cxa_atexit
	movw	r0, :lower16:_Z10gFilenamesB5cxx11
	movt	r0, :upper16:_Z10gFilenamesB5cxx11
	add	r1, r0, #8
	str	r1, [r0]
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	add	r2, r1, #6
	vldr	d17, [r1]
	add	r1, r0, #14
	vld1.16	{d16}, [r2]
	mov	r2, #14
	add	r3, r0, #32
	vst1.16	{d16}, [r1]
	mov	r1, #0
	vstr	d17, [r0, #8]
	str	r2, [r0, #4]
	strb	r1, [r0, #22]
	str	r3, [r0, #24]
	movw	r3, :lower16:.L.str.2
	movt	r3, :upper16:.L.str.2
	add	r5, r3, #6
	vldr	d17, [r3]
	add	r3, r0, #38
	vld1.16	{d16}, [r5]
	vst1.16	{d16}, [r3]
	vstr	d17, [r0, #32]
	str	r2, [r0, #28]
	add	r2, r0, #56
	strb	r1, [r0, #46]
	str	r2, [r0, #48]
	movw	r2, :lower16:.L.str.3
	movt	r2, :upper16:.L.str.3
	add	r3, r2, #7
	vldr	d17, [r2]
	add	r2, r0, #63
	vld1.8	{d16}, [r3]
	vst1.8	{d16}, [r2]
	mov	r2, #15
	vstr	d17, [r0, #56]
	str	r2, [r0, #52]
	add	r2, r0, #80
	strb	r1, [r0, #71]
	str	r2, [r0, #72]
	movw	r2, :lower16:.L.str.4
	movt	r2, :upper16:.L.str.4
	add	r3, r2, #5
	vldr	d17, [r2]
	add	r2, r0, #85
	vld1.8	{d16}, [r3]
	vst1.8	{d16}, [r2]
	mov	r2, #13
	vstr	d17, [r0, #80]
	str	r2, [r0, #76]
	add	r2, r0, #104
	strb	r1, [r0, #93]
	str	r2, [r0, #96]
	movw	r2, :lower16:.L.str.5
	movt	r2, :upper16:.L.str.5
	vldr	d16, [r2]
	mov	r2, #118
	strb	r2, [r0, #112]
	mov	r2, #9
	vstr	d16, [r0, #104]
	str	r2, [r0, #100]
	mov	r2, r4
	strb	r1, [r0, #113]
	movw	r0, :lower16:__cxx_global_array_dtor
	movt	r0, :upper16:__cxx_global_array_dtor
	mov	r1, #0
	bl	__cxa_atexit
	movw	r5, :lower16:touchSensor
	movt	r5, :upper16:touchSensor
	mov	r0, r5
	bl	_ZN5TrillC1Ev
	movw	r0, :lower16:_ZN5TrillD1Ev
	mov	r1, r5
	movt	r0, :upper16:_ZN5TrillD1Ev
	mov	r2, r4
	bl	__cxa_atexit
	movw	r5, :lower16:gui
	movt	r5, :upper16:gui
	mov	r0, r5
	bl	_ZN3GuiC1Ev
	movw	r0, :lower16:_ZN3GuiD1Ev
	mov	r1, r5
	movt	r0, :upper16:_ZN3GuiD1Ev
	mov	r2, r4
	pop	{r4, r5, r11, lr}
	b	__cxa_atexit
.Lfunc_end5:
	.size	_GLOBAL__sub_I_render.ii, .Lfunc_end5-_GLOBAL__sub_I_render.ii
	.fnend

	.type	_ZStL8__ioinit,%object  @ @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_Z10gFilenamesB5cxx11,%object @ @_Z10gFilenamesB5cxx11
	.bss
	.globl	_Z10gFilenamesB5cxx11
	.p2align	2
_Z10gFilenamesB5cxx11:
	.zero	120
	.size	_Z10gFilenamesB5cxx11, 120

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.8,"aMS",%progbits,1
	.p2align	3
.L.str:
	.asciz	"piano_loop.wav"
	.size	.L.str, 15

	.type	.L.str.2,%object        @ @.str.2
	.p2align	3
.L.str.2:
	.asciz	"bassphrase.wav"
	.size	.L.str.2, 15

	.type	.L.str.3,%object        @ @.str.3
	.p2align	3
.L.str.3:
	.asciz	"bassphrase2.wav"
	.size	.L.str.3, 16

	.type	.L.str.4,%object        @ @.str.4
	.p2align	3
.L.str.4:
	.asciz	"basspiano.wav"
	.size	.L.str.4, 14

	.type	.L.str.5,%object        @ @.str.5
	.p2align	3
.L.str.5:
	.asciz	"stab1.wav"
	.size	.L.str.5, 10

	.type	gFileLengths,%object    @ @gFileLengths
	.data
	.globl	gFileLengths
	.p2align	2
gFileLengths:
	.long	206403                  @ 0x32643
	.long	76239                   @ 0x129cf
	.long	117677                  @ 0x1cbad
	.long	247920                  @ 0x3c870
	.long	57192                   @ 0xdf68
	.size	gFileLengths, 20

	.type	gFilePointers,%object   @ @gFilePointers
	.bss
	.globl	gFilePointers
	.p2align	2
gFilePointers:
	.zero	20
	.size	gFilePointers, 20

	.type	gSampleData,%object     @ @gSampleData
	.globl	gSampleData
	.p2align	2
gSampleData:
	.zero	20
	.size	gSampleData, 20

	.type	touchSensor,%object     @ @touchSensor
	.globl	touchSensor
	.p2align	2
touchSensor:
	.zero	204
	.size	touchSensor, 204

	.type	gui,%object             @ @gui
	.globl	gui
	.p2align	2
gui:
	.zero	136
	.size	gui, 136

	.type	gTaskSleepTime,%object  @ @gTaskSleepTime
	.data
	.globl	gTaskSleepTime
	.p2align	2
gTaskSleepTime:
	.long	5000                    @ 0x1388
	.size	gTaskSleepTime, 4

	.type	isPlaying,%object       @ @isPlaying
	.bss
	.globl	isPlaying
isPlaying:
	.byte	0                       @ 0x0
	.size	isPlaying, 1

	.type	.L.str.8,%object        @ @.str.8
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.8:
	.asciz	"I2C-read"
	.size	.L.str.8, 9

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"gui"
	.size	.L.str.9, 4

	.type	_ZZ6renderE5count,%object @ @_ZZ6renderE5count
	.local	_ZZ6renderE5count
	.comm	_ZZ6renderE5count,4,4
	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"%s"
	.size	.L.str.10, 3

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	"playing "
	.size	.L.str.11, 9

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"%i"
	.size	.L.str.12, 3

	.type	.L.str.13,%object       @ @.str.13
.L.str.13:
	.asciz	"\n"
	.size	.L.str.13, 2

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_render.ii(target1)
	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.data
	.p2align	4
.L_MergedGlobals:
	.long	0
	.long	500                     @ 0x1f4
	.long	0                       @ 0x0
	.long	1014350479              @ float 0.0149999997
	.zero	5
	.zero	3
	.zero	8
	.size	.L_MergedGlobals, 32


	.globl	readI2cTask
readI2cTask = .L_MergedGlobals
	.size	readI2cTask, 4
	.globl	readInterval
readInterval = .L_MergedGlobals+4
	.size	readInterval, 4
	.globl	readIntervalSamples
readIntervalSamples = .L_MergedGlobals+8
	.size	readIntervalSamples, 4
	.globl	gTimePeriod
gTimePeriod = .L_MergedGlobals+12
	.size	gTimePeriod, 4
	.globl	gPlayState
gPlayState = .L_MergedGlobals+16
	.size	gPlayState, 5
	.globl	gRawRange
gRawRange = .L_MergedGlobals+24
	.size	gRawRange, 8
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
