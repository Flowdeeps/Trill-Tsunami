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
	movw	r4, :lower16:.L_MergedGlobals.2
	movt	r4, :upper16:.L_MergedGlobals.2
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
	.globl	_Z11fillBuffersPv
	.p2align	2
	.type	_Z11fillBuffersPv,%function
_Z11fillBuffersPv:                      @ @_Z11fillBuffersPv
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	movw	r4, :lower16:.L_MergedGlobals
	movt	r4, :upper16:.L_MergedGlobals
	ldr	r0, [r4, #36]
	bl	_ZN12SampleStream17bufferNeedsFilledEv
	cmp	r0, #0
	beq	.LBB1_2
@ BB#1:
	ldr	r0, [r4, #36]
	bl	_ZN12SampleStream10fillBufferEv
.LBB1_2:
	ldr	r0, [r4, #40]
	bl	_ZN12SampleStream17bufferNeedsFilledEv
	cmp	r0, #0
	beq	.LBB1_4
@ BB#3:
	ldr	r0, [r4, #40]
	bl	_ZN12SampleStream10fillBufferEv
.LBB1_4:
	ldr	r0, [r4, #44]
	bl	_ZN12SampleStream17bufferNeedsFilledEv
	cmp	r0, #0
	beq	.LBB1_6
@ BB#5:
	ldr	r0, [r4, #44]
	bl	_ZN12SampleStream10fillBufferEv
.LBB1_6:
	ldr	r0, [r4, #48]
	bl	_ZN12SampleStream17bufferNeedsFilledEv
	cmp	r0, #0
	beq	.LBB1_8
@ BB#7:
	ldr	r0, [r4, #48]
	bl	_ZN12SampleStream10fillBufferEv
.LBB1_8:
	ldr	r0, [r4, #52]
	bl	_ZN12SampleStream17bufferNeedsFilledEv
	cmp	r0, #0
	popeq	{r4, r10, r11, pc}
	ldr	r0, [r4, #52]
	pop	{r4, r10, r11, lr}
	b	_ZN12SampleStream10fillBufferEv
.Lfunc_end1:
	.size	_Z11fillBuffersPv, .Lfunc_end1-_Z11fillBuffersPv
	.fnend

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
.LBB2_1:                                @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	bl	_ZN5Trill7readI2CEv
	ldr	r0, [r6]
	bl	usleep
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB2_1
@ BB#2:                                 @ %._crit_edge
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end2:
	.size	_Z4loopPv, .Lfunc_end2-_Z4loopPv
	.fnend

	.globl	setup
	.p2align	3
	.type	setup,%function
setup:                                  @ @setup
.Lfunc_begin0:
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
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
	movw	r6, :lower16:.L_MergedGlobals
	movt	r6, :upper16:.L_MergedGlobals
	str	r0, [r6]
	bl	Bela_scheduleAuxiliaryTask
	vldr	s0, [r4, #32]
	add	r4, r4, #92
	vldr	d17, .LCPI3_0
	add	r0, sp, #28
	vcvt.f64.f32	d16, s0
	add	r7, r0, #8
	mov	r0, r4
	vmul.f64	d16, d16, d17
	vldr	s0, [r6, #4]
	vcvt.f64.s32	d17, s0
	vmul.f64	d16, d16, d17
	vcvt.s32.f64	s0, d16
	str	r7, [sp, #28]
	vstr	s0, [r6, #8]
	bl	strlen
	mov	r5, r0
	cmp	r5, #15
	str	r5, [r11, #-20]
	bls	.LBB3_3
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
	b	.LBB3_4
.LBB3_3:                                @ %._crit_edge.i.i.i.i
	mov	r0, r7
.LBB3_4:
	cmp	r5, #0
	beq	.LBB3_8
@ BB#5:
	cmp	r5, #1
	bne	.LBB3_7
@ BB#6:
	ldrb	r1, [r4]
	strb	r1, [r0]
	b	.LBB3_8
.LBB3_7:
	mov	r1, r4
	mov	r2, r5
	bl	memcpy
.LBB3_8:                                @ %._crit_edge.i.i.i.i16
	ldr	r0, [r11, #-20]
	mov	r2, #0
	str	r0, [sp, #32]
	mov	r3, sp
	ldr	r1, [sp, #28]
	add	r4, r3, #8
	strb	r2, [r1, r0]
	mov	r0, #105
	str	r4, [sp]
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
	cmp	r0, r4
	beq	.LBB3_11
@ BB#10:
	bl	_ZdlPv
.LBB3_11:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	ldr	r0, [sp, #28]
	cmp	r0, r7
	beq	.LBB3_13
@ BB#12:
	bl	_ZdlPv
.LBB3_13:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.preheader.preheader
	mov	r0, #104
	bl	_Znwj
	movw	r5, :lower16:.L_MergedGlobals.2
	mov	r4, r0
	movt	r5, :upper16:.L_MergedGlobals.2
	ldr	r1, [r5]
.Ltmp6:
	mov	r2, #2
	movw	r3, #44100
	bl	_ZN12SampleStreamC1EPKcii
.Ltmp7:
@ BB#14:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
	mov	r0, #104
	str	r4, [r6, #36]
	bl	_Znwj
	ldr	r1, [r5, #24]
	mov	r4, r0
.Ltmp8:
	mov	r2, #2
	movw	r3, #44100
	bl	_ZN12SampleStreamC1EPKcii
.Ltmp9:
@ BB#15:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.1
	mov	r0, #104
	str	r4, [r6, #40]
	bl	_Znwj
	ldr	r1, [r5, #48]
	mov	r4, r0
.Ltmp10:
	mov	r2, #2
	movw	r3, #44100
	bl	_ZN12SampleStreamC1EPKcii
.Ltmp11:
@ BB#16:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.2
	mov	r0, #104
	str	r4, [r6, #44]
	bl	_Znwj
	ldr	r1, [r5, #72]
	mov	r4, r0
.Ltmp12:
	mov	r2, #2
	movw	r3, #44100
	bl	_ZN12SampleStreamC1EPKcii
.Ltmp13:
@ BB#17:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.3
	mov	r0, #104
	str	r4, [r6, #48]
	bl	_Znwj
	ldr	r1, [r5, #96]
	mov	r4, r0
.Ltmp14:
	mov	r2, #2
	movw	r3, #44100
	bl	_ZN12SampleStreamC1EPKcii
.Ltmp15:
@ BB#18:                                @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.4
	movw	r0, :lower16:_Z11fillBuffersPv
	movw	r2, :lower16:.L.str.10
	movt	r0, :upper16:_Z11fillBuffersPv
	movt	r2, :upper16:.L.str.10
	mov	r1, #90
	mov	r3, #0
	str	r4, [r6, #52]
	bl	Bela_createAuxiliaryTask
	cmp	r0, #0
	str	r0, [r6, #16]
	movwne	r0, #1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.LBB3_19:
.Ltmp2:
	mov	lr, pc
	b	_Unwind_Resume
.LBB3_20:
.Ltmp5:
	mov	r5, r0
	ldr	r0, [sp]
	cmp	r0, r4
	beq	.LBB3_22
@ BB#21:
	bl	_ZdlPv
.LBB3_22:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
	ldr	r0, [sp, #28]
	cmp	r0, r7
	bne	.LBB3_24
	b	.LBB3_25
.LBB3_23:
.Ltmp16:
	mov	r5, r0
	mov	r0, r4
.LBB3_24:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	bl	_ZdlPv
.LBB3_25:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	mov	r0, r5
	mov	lr, pc
	b	_Unwind_Resume
	.p2align	3
@ BB#26:
.LCPI3_0:
	.long	3539053052              @ double 0.001
	.long	1062232653
.Lfunc_end3:
	.size	setup, .Lfunc_end3-setup
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table3:
.Lexception0:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	0                       @ @TType Encoding = absptr
	.asciz	"\306\201\200"          @ @TType base offset
	.byte	3                       @ Call site Encoding = udata4
	.ascii	"\303\001"              @ Call site table length
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
	.long	.Ltmp6-.Ltmp4           @   Call between .Ltmp4 and .Ltmp6
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    @ >> Call Site 6 <<
	.long	.Ltmp7-.Ltmp6           @   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp16-.Lfunc_begin0   @     jumps to .Ltmp16
	.byte	0                       @   On action: cleanup
	.long	.Ltmp7-.Lfunc_begin0    @ >> Call Site 7 <<
	.long	.Ltmp8-.Ltmp7           @   Call between .Ltmp7 and .Ltmp8
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp8-.Lfunc_begin0    @ >> Call Site 8 <<
	.long	.Ltmp9-.Ltmp8           @   Call between .Ltmp8 and .Ltmp9
	.long	.Ltmp16-.Lfunc_begin0   @     jumps to .Ltmp16
	.byte	0                       @   On action: cleanup
	.long	.Ltmp9-.Lfunc_begin0    @ >> Call Site 9 <<
	.long	.Ltmp10-.Ltmp9          @   Call between .Ltmp9 and .Ltmp10
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp10-.Lfunc_begin0   @ >> Call Site 10 <<
	.long	.Ltmp11-.Ltmp10         @   Call between .Ltmp10 and .Ltmp11
	.long	.Ltmp16-.Lfunc_begin0   @     jumps to .Ltmp16
	.byte	0                       @   On action: cleanup
	.long	.Ltmp11-.Lfunc_begin0   @ >> Call Site 11 <<
	.long	.Ltmp12-.Ltmp11         @   Call between .Ltmp11 and .Ltmp12
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp12-.Lfunc_begin0   @ >> Call Site 12 <<
	.long	.Ltmp13-.Ltmp12         @   Call between .Ltmp12 and .Ltmp13
	.long	.Ltmp16-.Lfunc_begin0   @     jumps to .Ltmp16
	.byte	0                       @   On action: cleanup
	.long	.Ltmp13-.Lfunc_begin0   @ >> Call Site 13 <<
	.long	.Ltmp14-.Ltmp13         @   Call between .Ltmp13 and .Ltmp14
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp14-.Lfunc_begin0   @ >> Call Site 14 <<
	.long	.Ltmp15-.Ltmp14         @   Call between .Ltmp14 and .Ltmp15
	.long	.Ltmp16-.Lfunc_begin0   @     jumps to .Ltmp16
	.byte	0                       @   On action: cleanup
	.long	.Ltmp15-.Lfunc_begin0   @ >> Call Site 15 <<
	.long	.Lfunc_end3-.Ltmp15     @   Call between .Ltmp15 and .Lfunc_end3
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
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8, d9, d10, d11}
	vpush	{d8, d9, d10, d11}
	.pad	#8
	sub	sp, sp, #8
	movw	r6, :lower16:.L_MergedGlobals
	mov	r4, r0
	movt	r6, :upper16:.L_MergedGlobals
	ldr	r0, [r6, #16]
	bl	Bela_scheduleAuxiliaryTask
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.LBB4_25
@ BB#1:                                 @ %.lr.ph53
	movw	r8, :lower16:_ZZ6renderE5count
	movw	r10, :lower16:touchSensor
	mov	r5, #0
	movt	r8, :upper16:_ZZ6renderE5count
	movt	r10, :upper16:touchSensor
	mov	r9, #1
.LBB4_2:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_5 Depth 2
                                        @     Child Loop BB4_23 Depth 2
	ldr	r0, [r8]
	vldr	s0, [r4, #32]
	vldr	s2, [r6, #12]
	vmul.f32	d0, d0, d1
	vmov	s2, r0
	vcvt.f32.u32	d1, d1
	vcmpe.f32	s2, s0
	vmrs	APSR_nzcv, fpscr
	blt	.LBB4_11
@ BB#3:                                 @ %.preheader43
                                        @   in Loop: Header=BB4_2 Depth=1
	mov	r0, r10
	bl	_ZN5Trill10numSensorsEv
	cmp	r0, #0
	beq	.LBB4_8
@ BB#4:                                 @ %.lr.ph.preheader
                                        @   in Loop: Header=BB4_2 Depth=1
	mov	r7, #0
.LBB4_5:                                @ %.lr.ph
                                        @   Parent Loop BB4_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r0, r10, r7, lsl #2
	ldr	r1, [r6, #32]
	ldr	r0, [r0, #84]
	cmp	r0, r1
	ble	.LBB4_7
@ BB#6:                                 @   in Loop: Header=BB4_5 Depth=2
	cmp	r0, #1
	str	r0, [r6, #32]
	addge	r0, r6, r7
	strbge	r9, [r0, #20]
.LBB4_7:                                @   in Loop: Header=BB4_5 Depth=2
	mov	r0, r10
	add	r7, r7, #1
	bl	_ZN5Trill10numSensorsEv
	cmp	r7, r0
	blo	.LBB4_5
.LBB4_8:                                @ %._crit_edge
                                        @   in Loop: Header=BB4_2 Depth=1
	ldrb	r0, [r10, #16]
	cmp	r0, #0
	beq	.LBB4_10
@ BB#9:                                 @   in Loop: Header=BB4_2 Depth=1
	mov	r0, r10
	bl	_ZN5Trill10numSensorsEv
	movw	r1, :lower16:_ZTIi
	str	r0, [sp, #4]
	movt	r1, :upper16:_ZTIi
	movw	r9, :lower16:gui
	ldr	r8, [r1, #4]
	mov	r1, #4
	movt	r9, :upper16:gui
	add	r3, sp, #4
	mov	r2, #0
	mov	r7, r8
	ldrb	r0, [r7], #1
	str	r1, [sp]
	mov	r1, r8
	cmp	r0, #42
	mov	r0, r9
	moveq	r1, r7
	bl	_ZN3Gui12doSendBufferEPKcjPKvj
	ldrb	r0, [r8]
	mov	r1, #8
	str	r1, [sp]
	mov	r1, r8
	cmp	r0, #42
	add	r3, r6, #28
	moveq	r1, r7
	mov	r0, r9
	mov	r2, #1
	bl	_ZN3Gui12doSendBufferEPKcjPKvj
	ldrb	r0, [r8]
	mov	r1, #120
	add	r3, r10, #84
	str	r1, [sp]
	cmp	r0, #42
	mov	r0, r9
	movne	r7, r8
	movw	r8, :lower16:_ZZ6renderE5count
	mov	r1, r7
	mov	r2, #2
	movt	r8, :upper16:_ZZ6renderE5count
	mov	r9, #1
	bl	_ZN3Gui12doSendBufferEPKcjPKvj
.LBB4_10:                               @   in Loop: Header=BB4_2 Depth=1
	mov	r0, #0
	str	r0, [r8]
.LBB4_11:                               @   in Loop: Header=BB4_2 Depth=1
	add	r0, r0, #1
	str	r0, [r8]
	ldrb	r0, [r6, #20]
	cmp	r0, #0
	beq	.LBB4_13
@ BB#12:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [r6, #36]
	bl	_ZN12SampleStream12processFrameEv
.LBB4_13:                               @   in Loop: Header=BB4_2 Depth=1
	ldrb	r0, [r6, #21]
	cmp	r0, #0
	beq	.LBB4_15
@ BB#14:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [r6, #40]
	bl	_ZN12SampleStream12processFrameEv
.LBB4_15:                               @   in Loop: Header=BB4_2 Depth=1
	ldrb	r0, [r6, #22]
	cmp	r0, #0
	beq	.LBB4_17
@ BB#16:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [r6, #44]
	bl	_ZN12SampleStream12processFrameEv
.LBB4_17:                               @   in Loop: Header=BB4_2 Depth=1
	ldrb	r0, [r6, #23]
	cmp	r0, #0
	beq	.LBB4_19
@ BB#18:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [r6, #48]
	bl	_ZN12SampleStream12processFrameEv
.LBB4_19:                               @   in Loop: Header=BB4_2 Depth=1
	ldrb	r0, [r6, #24]
	cmp	r0, #0
	beq	.LBB4_21
@ BB#20:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [r6, #52]
	bl	_ZN12SampleStream12processFrameEv
.LBB4_21:                               @ %.preheader4255
                                        @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [r4, #28]
	cmp	r0, #0
	beq	.LBB4_24
@ BB#22:                                @ %.preheader.preheader
                                        @   in Loop: Header=BB4_2 Depth=1
	mov	r7, #0
.LBB4_23:                               @ %.preheader
                                        @   Parent Loop BB4_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6, #36]
	mov	r1, r7
	bl	_ZN12SampleStream9getSampleEi
	ldr	r0, [r6, #40]
	mov	r1, r7
	vorr	d8, d0, d0
	bl	_ZN12SampleStream9getSampleEi
	ldr	r0, [r6, #44]
	mov	r1, r7
	vorr	d9, d0, d0
	bl	_ZN12SampleStream9getSampleEi
	ldr	r0, [r6, #48]
	mov	r1, r7
	vorr	d10, d0, d0
	bl	_ZN12SampleStream9getSampleEi
	ldr	r0, [r6, #52]
	mov	r1, r7
	vorr	d11, d0, d0
	bl	_ZN12SampleStream9getSampleEi
	vadd.f32	d16, d9, d8
	ldr	r1, [r4, #28]
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	ldr	r0, [r4, #4]
	mla	r2, r5, r1, r7
	add	r7, r7, #1
	vadd.f32	d16, d10, d16
	cmp	r7, r1
	vadd.f32	d16, d11, d16
	add	r0, r0, r2, lsl #2
	vadd.f32	d0, d0, d16
	vstr	s0, [r0]
	blo	.LBB4_23
.LBB4_24:                               @ %._crit_edge49
                                        @   in Loop: Header=BB4_2 Depth=1
	add	r5, r5, #1
	ldr	r0, [r4, #20]
	cmp	r5, r0
	blo	.LBB4_2
.LBB4_25:                               @ %._crit_edge54
	sub	sp, r11, #64
	vpop	{d8, d9, d10, d11}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end4:
	.size	render, .Lfunc_end4-render
	.fnend

	.globl	cleanup
	.p2align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	movw	r5, :lower16:.L_MergedGlobals
	movt	r5, :upper16:.L_MergedGlobals
	ldr	r4, [r5, #36]
	cmp	r4, #0
	beq	.LBB5_2
@ BB#1:
	mov	r0, r4
	bl	_ZN12SampleStreamD1Ev
	mov	r0, r4
	bl	_ZdlPv
.LBB5_2:
	ldr	r4, [r5, #40]
	cmp	r4, #0
	beq	.LBB5_4
@ BB#3:
	mov	r0, r4
	bl	_ZN12SampleStreamD1Ev
	mov	r0, r4
	bl	_ZdlPv
.LBB5_4:
	ldr	r4, [r5, #44]
	cmp	r4, #0
	beq	.LBB5_6
@ BB#5:
	mov	r0, r4
	bl	_ZN12SampleStreamD1Ev
	mov	r0, r4
	bl	_ZdlPv
.LBB5_6:
	ldr	r4, [r5, #48]
	cmp	r4, #0
	beq	.LBB5_8
@ BB#7:
	mov	r0, r4
	bl	_ZN12SampleStreamD1Ev
	mov	r0, r4
	bl	_ZdlPv
.LBB5_8:
	ldr	r4, [r5, #52]
	cmp	r4, #0
	popeq	{r4, r5, r11, pc}
	mov	r0, r4
	bl	_ZN12SampleStreamD1Ev
	mov	r0, r4
	pop	{r4, r5, r11, lr}
	b	_ZdlPv
.Lfunc_end5:
	.size	cleanup, .Lfunc_end5-cleanup
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
	movw	r0, :lower16:.L_MergedGlobals.2
	movt	r0, :upper16:.L_MergedGlobals.2
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
.Lfunc_end6:
	.size	_GLOBAL__sub_I_render.ii, .Lfunc_end6-_GLOBAL__sub_I_render.ii
	.fnend

	.type	_ZStL8__ioinit,%object  @ @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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

	.type	gStopThreads,%object    @ @gStopThreads
	.globl	gStopThreads
	.p2align	2
gStopThreads:
	.long	0                       @ 0x0
	.size	gStopThreads, 4

	.type	gTaskStopped,%object    @ @gTaskStopped
	.globl	gTaskStopped
	.p2align	2
gTaskStopped:
	.long	0                       @ 0x0
	.size	gTaskStopped, 4

	.type	gCount,%object          @ @gCount
	.globl	gCount
	.p2align	2
gCount:
	.long	0                       @ 0x0
	.size	gCount, 4

	.type	.L.str.8,%object        @ @.str.8
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.8:
	.asciz	"I2C-read"
	.size	.L.str.8, 9

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"gui"
	.size	.L.str.9, 4

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"fill-buffer"
	.size	.L.str.10, 12

	.type	_ZZ6renderE5count,%object @ @_ZZ6renderE5count
	.local	_ZZ6renderE5count
	.comm	_ZZ6renderE5count,4,4
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
	.long	0
	.zero	5
	.zero	3
	.zero	8
	.zero	20
	.size	.L_MergedGlobals, 56

	.type	.L_MergedGlobals.2,%object @ @_MergedGlobals.2
	.local	.L_MergedGlobals.2
	.comm	.L_MergedGlobals.2,120,16

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
	.globl	gFillBuffersTask
gFillBuffersTask = .L_MergedGlobals+16
	.size	gFillBuffersTask, 4
	.globl	gPlayState
gPlayState = .L_MergedGlobals+20
	.size	gPlayState, 5
	.globl	gRawRange
gRawRange = .L_MergedGlobals+28
	.size	gRawRange, 8
	.globl	sampleStream
sampleStream = .L_MergedGlobals+36
	.size	sampleStream, 20
	.globl	_Z10gFilenamesB5cxx11
_Z10gFilenamesB5cxx11 = .L_MergedGlobals.2
	.size	_Z10gFilenamesB5cxx11, 120
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
