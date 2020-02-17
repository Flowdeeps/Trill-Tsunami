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
	.file	"/root/Bela/projects/Trill_Tsunami/build/SampleStream.bc"
	.globl	_ZN12SampleStreamC2EPKcii
	.p2align	2
	.type	_ZN12SampleStreamC2EPKcii,%function
_ZN12SampleStreamC2EPKcii:              @ @_ZN12SampleStreamC2EPKcii
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	vmov.i32	d16, #0x0
	mov	r4, r0
	mov	r0, #0
	str	r0, [r4, #64]
	mov	r0, r4
	vstr	d16, [r4]
	bl	_ZN12SampleStream8openFileEPKcii
	mov	r0, r4
	pop	{r4, r10, r11, pc}
.Lfunc_end0:
	.size	_ZN12SampleStreamC2EPKcii, .Lfunc_end0-_ZN12SampleStreamC2EPKcii
	.fnend

	.globl	_ZN12SampleStream8openFileEPKcii
	.p2align	2
	.type	_ZN12SampleStream8openFileEPKcii,%function
_ZN12SampleStream8openFileEPKcii:       @ @_ZN12SampleStream8openFileEPKcii
.Lfunc_begin0:
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#44
	sub	sp, sp, #44
	mov	r4, r0
	mov	r0, #1
	str	r0, [r4, #60]
	mov	r8, r3
	ldr	r0, [r4, #64]
	mov	r9, r2
	mov	r7, r1
	bl	sf_close
	mov	r0, #0
	cmp	r7, #0
	str	r0, [r4, #88]
	add	r0, sp, #16
	add	r6, r0, #8
	str	r6, [sp, #16]
	beq	.LBB1_69
@ BB#1:                                 @ %.thread.i
	mov	r0, r7
	bl	strlen
	mov	r5, r0
	cmp	r5, #15
	str	r5, [r11, #-32]
	bls	.LBB1_4
@ BB#2:                                 @ %.noexc8.i
.Ltmp0:
	add	r0, sp, #16
	sub	r1, r11, #32
	mov	r2, #0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj
.Ltmp1:
@ BB#3:                                 @ %.noexc53
	ldr	r1, [r11, #-32]
	str	r0, [sp, #16]
	str	r1, [sp, #24]
	b	.LBB1_5
.LBB1_4:                                @ %._crit_edge.i.i.i.i
	mov	r0, r6
.LBB1_5:
	cmp	r5, #0
	beq	.LBB1_9
@ BB#6:
	cmp	r5, #1
	bne	.LBB1_8
@ BB#7:
	ldrb	r1, [r7]
	strb	r1, [r0]
	b	.LBB1_9
.LBB1_8:
	mov	r1, r7
	mov	r2, r5
	bl	memcpy
.LBB1_9:
	ldr	r0, [r11, #-32]
	mov	r2, #0
	str	r0, [sp, #20]
	ldr	r1, [sp, #16]
	strb	r2, [r1, r0]
	ldr	r0, [sp, #16]
.Ltmp2:
	add	r2, r4, #72
	mov	r1, #16
	bl	sf_open
	mov	r5, r0
.Ltmp3:
@ BB#10:
	str	r5, [r4, #64]
	ldr	r0, [sp, #16]
	cmp	r0, r6
	beq	.LBB1_12
@ BB#11:
	bl	_ZdlPv
.LBB1_12:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	cmp	r5, #0
	beq	.LBB1_18
@ BB#13:
	str	r7, [r4, #36]
	cmp	r9, #0
	strd	r8, r9, [r4, #24]
	ldr	r0, [r4]
	str	r7, [sp, #12]           @ 4-byte Spill
	ble	.LBB1_20
@ BB#14:                                @ %.split.us.preheader
	cmp	r0, #0
	beq	.LBB1_36
@ BB#15:
	movw	r5, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str.2
	movt	r5, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.2
	mov	r0, r5
	mov	r2, #15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r5]
	ldr	r0, [r0, #-12]
	add	r0, r5, r0
	ldr	r5, [r0, #124]
	cmp	r5, #0
	beq	.LBB1_71
@ BB#16:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit62.us
	ldrb	r0, [r5, #28]
	cmp	r0, #0
	beq	.LBB1_30
@ BB#17:
	ldrb	r1, [r5, #39]
	b	.LBB1_31
.LBB1_18:                               @ %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movw	r5, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str
	movt	r5, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str
	mov	r0, r5
	mov	r2, #19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r7
	bl	strlen
	mov	r2, r0
	mov	r0, r5
	mov	r1, r7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movw	r1, :lower16:.L.str.1
	mov	r0, r5
	movt	r1, :upper16:.L.str.1
	mov	r2, #2
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r4, #64]
	bl	sf_strerror
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB1_24
@ BB#19:
	mov	r0, r4
	bl	strlen
	mov	r2, r0
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	mov	r1, r4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	b	.LBB1_25
.LBB1_20:                               @ %.split.preheader
	cmp	r0, #0
	beq	.LBB1_47
@ BB#21:
	movw	r5, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str.2
	movt	r5, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.2
	mov	r0, r5
	mov	r2, #15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r5]
	ldr	r0, [r0, #-12]
	add	r0, r5, r0
	ldr	r5, [r0, #124]
	cmp	r5, #0
	beq	.LBB1_71
@ BB#22:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit62
	ldrb	r0, [r5, #28]
	cmp	r0, #0
	beq	.LBB1_45
@ BB#23:
	ldrb	r1, [r5, #39]
	b	.LBB1_46
.LBB1_24:
	ldr	r0, [r5]
	ldr	r0, [r0, #-12]
	add	r0, r5, r0
	ldr	r1, [r0, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LBB1_25:                               @ %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
	ldr	r0, [r5]
	ldr	r0, [r0, #-12]
	add	r0, r5, r0
	ldr	r4, [r0, #124]
	cmp	r4, #0
	beq	.LBB1_72
@ BB#26:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	beq	.LBB1_28
@ BB#27:
	ldrb	r1, [r4, #39]
	b	.LBB1_29
.LBB1_28:
	mov	r0, r4
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r4]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r4
	blx	r2
	mov	r1, r0
.LBB1_29:                               @ %_ZNKSt5ctypeIcE5widenEc.exit
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	mov	r6, #1
	b	.LBB1_68
.LBB1_30:
	mov	r0, r5
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r5]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r5
	blx	r2
	mov	r1, r0
.LBB1_31:                               @ %_ZNKSt5ctypeIcE5widenEc.exit60.us
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	mov	r5, #0
.LBB1_32:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	ldr	r0, [r0, r5, lsl #3]
	cmp	r0, #0
	beq	.LBB1_34
@ BB#33:                                @   in Loop: Header=BB1_32 Depth=1
	bl	_ZdaPv
.LBB1_34:                               @   in Loop: Header=BB1_32 Depth=1
	add	r5, r5, #1
	cmp	r9, r5
	bne	.LBB1_32
@ BB#35:                                @ %._crit_edge.us
	ldr	r0, [r4]
	bl	free
.LBB1_36:                               @ %.split.us.173
	mov	r10, r4
	ldr	r0, [r10, #4]!
	cmp	r0, #0
	beq	.LBB1_54
@ BB#37:
	movw	r5, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str.2
	movt	r5, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.2
	mov	r0, r5
	mov	r2, #15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r5]
	ldr	r0, [r0, #-12]
	add	r0, r5, r0
	ldr	r5, [r0, #124]
	cmp	r5, #0
	beq	.LBB1_71
@ BB#38:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit62.us.1
	ldrb	r0, [r5, #28]
	cmp	r0, #0
	beq	.LBB1_40
@ BB#39:
	ldrb	r1, [r5, #39]
	b	.LBB1_41
.LBB1_40:
	mov	r0, r5
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r5]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r5
	blx	r2
	mov	r1, r0
.LBB1_41:                               @ %_ZNKSt5ctypeIcE5widenEc.exit60.us.1
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	mov	r5, #0
.LBB1_42:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r10]
	ldr	r0, [r0, r5, lsl #3]
	cmp	r0, #0
	beq	.LBB1_44
@ BB#43:                                @   in Loop: Header=BB1_42 Depth=1
	bl	_ZdaPv
.LBB1_44:                               @   in Loop: Header=BB1_42 Depth=1
	add	r5, r5, #1
	cmp	r9, r5
	bne	.LBB1_42
	b	.LBB1_53
.LBB1_45:
	mov	r0, r5
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r5]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r5
	blx	r2
	mov	r1, r0
.LBB1_46:                               @ %_ZNKSt5ctypeIcE5widenEc.exit60
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	ldr	r0, [r4]
	bl	free
.LBB1_47:                               @ %.split.175
	mov	r10, r4
	ldr	r0, [r10, #4]!
	cmp	r0, #0
	beq	.LBB1_54
@ BB#48:
	movw	r5, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str.2
	movt	r5, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.2
	mov	r0, r5
	mov	r2, #15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r5]
	ldr	r0, [r0, #-12]
	add	r0, r5, r0
	ldr	r5, [r0, #124]
	cmp	r5, #0
	beq	.LBB1_71
@ BB#49:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit62.1
	ldrb	r0, [r5, #28]
	cmp	r0, #0
	beq	.LBB1_51
@ BB#50:
	ldrb	r1, [r5, #39]
	b	.LBB1_52
.LBB1_51:
	mov	r0, r5
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r5]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r5
	blx	r2
	mov	r1, r0
.LBB1_52:                               @ %_ZNKSt5ctypeIcE5widenEc.exit60.1
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
.LBB1_53:                               @ %._crit_edge.us.1
	ldr	r0, [r10]
	bl	free
.LBB1_54:                               @ %.us-lcssa70.us
	mul	r6, r8, r9
	mov	r1, #8
	mov	r0, r6
	bl	calloc
	mov	r5, r0
	mov	r0, r6
	mov	r1, #8
	str	r5, [r4]
	bl	calloc
	movw	r1, #52429
	str	r0, [r10]
	mov	r0, #0
	mov	r6, #1
	movt	r1, #15820
	mvn	r2, #0
	add	r3, r4, #48
	str	r8, [r4, #8]
	str	r0, [r4, #12]
	str	r0, [r4, #16]
	str	r6, [r4, #20]
	str	r0, [r4, #40]
	str	r0, [r4, #44]
	stm	r3, {r0, r1, r2}
	ldr	r0, [r4, #72]
	str	r0, [r4, #32]
	ldr	r9, [r4, #24]
	cmp	r0, r9
	ble	.LBB1_64
@ BB#55:                                @ %.preheader65
	ldr	r0, [r4, #28]
	cmp	r0, #1
	blt	.LBB1_61
@ BB#56:                                @ %.preheader.preheader
	mov	r6, #0
	mov	r8, #4
	mov	r7, #0
	b	.LBB1_58
.LBB1_57:                               @ %..preheader_crit_edge
                                        @   in Loop: Header=BB1_58 Depth=1
	ldr	r5, [r4]
	ldr	r9, [r4, #24]
.LBB1_58:                               @ %.preheader
                                        @ =>This Inner Loop Header: Depth=1
	umull	r0, r1, r9, r8
	add	r2, r5, r7, lsl #3
	str	r9, [r2, #4]
	cmp	r1, #0
	movwne	r1, #1
	cmp	r1, #0
	mvnne	r0, #0
	bl	_Znaj
	str	r0, [r5, r7, lsl #3]
	mov	r3, r7
	ldr	r0, [r4]
	ldr	r1, [r4, #36]
	ldr	r2, [r0, r7, lsl #3]
	mov	r0, r4
	stm	sp, {r6, r9}
	bl	_ZN12SampleStream10getSamplesEPKcPfiii
	cmp	r0, #0
	bne	.LBB1_65
@ BB#59:                                @   in Loop: Header=BB1_58 Depth=1
	ldr	r5, [r4, #24]
	ldr	r6, [r10]
	umull	r0, r1, r5, r8
	add	r2, r6, r7, lsl #3
	str	r5, [r2, #4]
	cmp	r1, #0
	movwne	r1, #1
	cmp	r1, #0
	mvnne	r0, #0
	bl	_Znaj
	str	r0, [r6, r7, lsl #3]
	mov	r6, #0
	mov	r3, r7
	ldr	r0, [r10]
	ldr	r1, [r4, #36]
	ldr	r2, [r0, r7, lsl #3]
	mov	r0, r4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	_ZN12SampleStream10getSamplesEPKcPfiii
	cmp	r0, #0
	bne	.LBB1_65
@ BB#60:                                @   in Loop: Header=BB1_58 Depth=1
	add	r7, r7, #1
	ldr	r0, [r4, #28]
	cmp	r7, r0
	blt	.LBB1_57
.LBB1_61:                               @ %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
	movw	r5, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str.5
	movt	r5, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.5
	mov	r0, r5
	mov	r2, #7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r6, [sp, #12]           @ 4-byte Reload
	mov	r0, r6
	bl	strlen
	mov	r2, r0
	mov	r0, r5
	mov	r1, r6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r5]
	ldr	r0, [r0, #-12]
	add	r0, r5, r0
	ldr	r5, [r0, #124]
	cmp	r5, #0
	beq	.LBB1_72
@ BB#62:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit61
	ldrb	r0, [r5, #28]
	cmp	r0, #0
	beq	.LBB1_66
@ BB#63:
	ldrb	r1, [r5, #39]
	b	.LBB1_67
.LBB1_64:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	b	.LBB1_68
.LBB1_65:
	movw	r0, :lower16:.Lstr
	movt	r0, :upper16:.Lstr
	bl	puts
	mov	r6, #1
	b	.LBB1_68
.LBB1_66:
	mov	r0, r5
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r5]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r5
	blx	r2
	mov	r1, r0
.LBB1_67:                               @ %_ZNKSt5ctypeIcE5widenEc.exit58
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	mov	r6, #0
	str	r6, [r4, #60]
.LBB1_68:
	mov	r0, r6
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB1_69:                               @ %.noexc.i
.Ltmp5:
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	mov	lr, pc
	b	_ZSt19__throw_logic_errorPKc
.Ltmp6:
@ BB#70:                                @ %.noexc
.LBB1_71:                               @ %.us-lcssa.us
	mov	lr, pc
	b	_ZSt16__throw_bad_castv
.LBB1_72:
	mov	lr, pc
	b	_ZSt16__throw_bad_castv
.LBB1_73:
.Ltmp7:
	mov	lr, pc
	b	_Unwind_Resume
.LBB1_74:
.Ltmp4:
	mov	r4, r0
	ldr	r0, [sp, #16]
	cmp	r0, r6
	beq	.LBB1_76
@ BB#75:
	bl	_ZdlPv
.LBB1_76:                               @ %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
	mov	r0, r4
	mov	lr, pc
	b	_Unwind_Resume
.Lfunc_end1:
	.size	_ZN12SampleStream8openFileEPKcii, .Lfunc_end1-_ZN12SampleStream8openFileEPKcii
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	0                       @ @TType Encoding = absptr
	.byte	93                      @ @TType base offset
	.byte	3                       @ Call site Encoding = udata4
	.byte	91                      @ Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 @ >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    @   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    @ >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           @   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp7-.Lfunc_begin0    @     jumps to .Ltmp7
	.byte	0                       @   On action: cleanup
	.long	.Ltmp1-.Lfunc_begin0    @ >> Call Site 3 <<
	.long	.Ltmp2-.Ltmp1           @   Call between .Ltmp1 and .Ltmp2
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp2-.Lfunc_begin0    @ >> Call Site 4 <<
	.long	.Ltmp3-.Ltmp2           @   Call between .Ltmp2 and .Ltmp3
	.long	.Ltmp4-.Lfunc_begin0    @     jumps to .Ltmp4
	.byte	0                       @   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    @ >> Call Site 5 <<
	.long	.Ltmp5-.Ltmp3           @   Call between .Ltmp3 and .Ltmp5
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp5-.Lfunc_begin0    @ >> Call Site 6 <<
	.long	.Ltmp6-.Ltmp5           @   Call between .Ltmp5 and .Ltmp6
	.long	.Ltmp7-.Lfunc_begin0    @     jumps to .Ltmp7
	.byte	0                       @   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    @ >> Call Site 7 <<
	.long	.Lfunc_end1-.Ltmp6      @   Call between .Ltmp6 and .Lfunc_end1
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.p2align	2
	.fnend

	.globl	_ZN12SampleStreamD2Ev
	.p2align	2
	.type	_ZN12SampleStreamD2Ev,%function
_ZN12SampleStreamD2Ev:                  @ @_ZN12SampleStreamD2Ev
.Lfunc_begin1:
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r0
	ldr	r0, [r4, #64]
.Ltmp8:
	bl	sf_close
.Ltmp9:
@ BB#1:                                 @ %.preheader13
	ldr	r0, [r4, #28]
	add	r5, r4, #4
	cmp	r0, #1
	blt	.LBB2_8
@ BB#2:                                 @ %.preheader.preheader
	mov	r6, #0
.LBB2_3:                                @ %.preheader
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	ldr	r0, [r0, r6, lsl #3]
	cmp	r0, #0
	beq	.LBB2_5
@ BB#4:                                 @   in Loop: Header=BB2_3 Depth=1
	bl	_ZdaPv
.LBB2_5:                                @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [r5]
	ldr	r0, [r0, r6, lsl #3]
	cmp	r0, #0
	beq	.LBB2_7
@ BB#6:                                 @   in Loop: Header=BB2_3 Depth=1
	bl	_ZdaPv
.LBB2_7:                                @   in Loop: Header=BB2_3 Depth=1
	add	r6, r6, #1
	ldr	r0, [r4, #28]
	cmp	r6, r0
	blt	.LBB2_3
.LBB2_8:                                @ %._crit_edge
	ldr	r0, [r4]
	bl	free
	ldr	r0, [r5]
	bl	free
	mov	r0, r4
	pop	{r4, r5, r6, r10, r11, pc}
.LBB2_9:
.Ltmp10:
	mov	lr, pc
	b	__clang_call_terminate
.Lfunc_end2:
	.size	_ZN12SampleStreamD2Ev, .Lfunc_end2-_ZN12SampleStreamD2Ev
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table2:
.Lexception1:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	0                       @ @TType Encoding = absptr
	.byte	21                      @ @TType base offset
	.byte	3                       @ Call site Encoding = udata4
	.byte	13                      @ Call site table length
	.long	.Ltmp8-.Lfunc_begin1    @ >> Call Site 1 <<
	.long	.Ltmp9-.Ltmp8           @   Call between .Ltmp8 and .Ltmp9
	.long	.Ltmp10-.Lfunc_begin1   @     jumps to .Ltmp10
	.byte	1                       @   On action: 1
	.byte	1                       @ >> Action Record 1 <<
                                        @   Catch TypeInfo 1
	.byte	0                       @   No further actions
                                        @ >> Catch TypeInfos <<
	.long	0                       @ TypeInfo 1
	.p2align	2
	.fnend

	.section	.text.__clang_call_terminate,"axG",%progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	2
	.type	__clang_call_terminate,%function
__clang_call_terminate:                 @ @__clang_call_terminate
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	bl	__cxa_begin_catch
	mov	lr, pc
	b	_ZSt9terminatev
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
	.cantunwind
	.fnend

	.text
	.globl	_ZN12SampleStream12getNumFramesEPKc
	.p2align	2
	.type	_ZN12SampleStream12getNumFramesEPKc,%function
_ZN12SampleStream12getNumFramesEPKc:    @ @_ZN12SampleStream12getNumFramesEPKc
	.fnstart
@ BB#0:
	ldr	r0, [r0, #72]
	bx	lr
.Lfunc_end4:
	.size	_ZN12SampleStream12getNumFramesEPKc, .Lfunc_end4-_ZN12SampleStream12getNumFramesEPKc
	.fnend

	.globl	_ZN12SampleStream10getSamplesEPKcPfiii
	.p2align	3
	.type	_ZN12SampleStream10getSamplesEPKcPfiii,%function
_ZN12SampleStream10getSamplesEPKcPfiii: @ @_ZN12SampleStream10getSamplesEPKcPfiii
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#20
	sub	sp, sp, #20
	mov	r6, r0
	mov	r10, r3
	ldr	r8, [r6, #84]
	mov	r4, r2
	mov	r7, r1
	cmp	r8, r10
	ble	.LBB5_6
@ BB#1:
	ldr	r3, [r11, #12]
	cmp	r3, #1
	blt	.LBB5_4
@ BB#2:
	ldr	r2, [r11, #8]
	cmp	r2, #0
	subge	r5, r3, r2
	cmpge	r5, #1
	blt	.LBB5_4
@ BB#3:
	ldrd	r0, r1, [r6, #72]
	subs	r0, r0, r3
	sbcs	r0, r1, r3, asr #31
	bge	.LBB5_12
.LBB5_4:
	movw	r4, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str.6
	movt	r4, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.6
	mov	r0, r4
	mov	r2, #7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmp	r7, #0
	beq	.LBB5_18
@ BB#5:
	mov	r0, r7
	bl	strlen
	mov	r2, r0
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	mov	r1, r7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	b	.LBB5_19
.LBB5_6:
	movw	r4, :lower16:_ZSt4cout
	movw	r1, :lower16:.L.str.6
	movt	r4, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.6
	mov	r0, r4
	mov	r2, #7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmp	r7, #0
	beq	.LBB5_8
@ BB#7:
	mov	r0, r7
	bl	strlen
	mov	r2, r0
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	mov	r1, r7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	b	.LBB5_9
.LBB5_8:
	ldr	r0, [r4]
	ldr	r0, [r0, #-12]
	add	r0, r4, r0
	ldr	r1, [r0, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LBB5_9:                                @ %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movw	r1, :lower16:.L.str.7
	mov	r0, r4
	movt	r1, :upper16:.L.str.7
	mov	r2, #34
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r4]
	ldr	r0, [r0, #-12]
	add	r0, r4, r0
	ldr	r4, [r0, #124]
	cmp	r4, #0
	beq	.LBB5_37
@ BB#10:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	beq	.LBB5_22
@ BB#11:
	ldrb	r1, [r4, #39]
	b	.LBB5_23
.LBB5_12:
	ldr	r0, [r6, #64]
	mov	r1, #0
	asr	r3, r2, #31
	str	r1, [sp]
	bl	sf_seek
	mul	r7, r8, r5
	mov	r0, #4
	umull	r0, r1, r7, r0
	cmp	r1, #0
	movwne	r1, #1
	cmp	r1, #0
	mvnne	r0, #0
	bl	_Znaj
	mov	r1, r0
	ldr	r0, [r6, #64]
	asr	r3, r7, #31
	mov	r2, r7
	ldr	r9, [r6, #88]
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	sf_read_float
	movw	r1, #65534
	and	r9, r9, r1
	cmp	r0, r7
	bge	.LBB5_14
@ BB#13:                                @ %.lr.ph77.preheader
	ldr	r1, [sp, #4]            @ 4-byte Reload
	lsl	r2, r7, #2
	sub	r2, r2, r0, lsl #2
	add	r1, r1, r0, lsl #2
	mov	r0, r1
	mov	r1, #0
	bl	memset
.LBB5_14:                               @ %._crit_edge78
	orr	r0, r9, #1
	ldr	r9, [sp, #4]            @ 4-byte Reload
	cmp	r0, #7
	bne	.LBB5_33
@ BB#15:
	ldr	r0, [r6, #64]
	add	r2, sp, #8
	mov	r1, #4160
	mov	r3, #8
	bl	sf_command
	vldr	d17, [sp, #8]
	movw	r6, :lower16:_ZSt4cout
	vldr	d19, .LCPI5_1
	movw	r1, :lower16:.L.str.9
	vmov.f64	d18, #1.000000e+00
	movt	r6, :upper16:_ZSt4cout
	movt	r1, :upper16:.L.str.9
	mov	r0, r6
	mov	r2, #21
	vcmpe.f64	d17, d19
	vmrs	APSR_nzcv, fpscr
	vldr	d16, .LCPI5_0
	vdiv.f64	d16, d16, d17
	vmovlt.f64	d16, d18
	vstr	d16, [sp, #8]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr	d0, [sp, #8]
	mov	r0, r6
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r6, r0
	ldr	r0, [r6]
	ldr	r0, [r0, #-12]
	add	r0, r6, r0
	ldr	r7, [r0, #124]
	cmp	r7, #0
	beq	.LBB5_37
@ BB#16:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit70
	ldrb	r0, [r7, #28]
	cmp	r0, #0
	beq	.LBB5_24
@ BB#17:
	ldrb	r1, [r7, #39]
	b	.LBB5_25
.LBB5_18:
	ldr	r0, [r4]
	ldr	r0, [r0, #-12]
	add	r0, r4, r0
	ldr	r1, [r0, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LBB5_19:                               @ %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
	movw	r1, :lower16:.L.str.8
	mov	r0, r4
	movt	r1, :upper16:.L.str.8
	mov	r2, #30
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r0, [r4]
	ldr	r0, [r0, #-12]
	add	r0, r4, r0
	ldr	r4, [r0, #124]
	cmp	r4, #0
	beq	.LBB5_37
@ BB#20:                                @ %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit69
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	beq	.LBB5_22
@ BB#21:
	ldrb	r1, [r4, #39]
	b	.LBB5_23
.LBB5_22:
	mov	r0, r4
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r4]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r4
	blx	r2
	mov	r1, r0
.LBB5_23:                               @ %_ZNKSt5ctypeIcE5widenEc.exit
	movw	r0, :lower16:_ZSt4cout
	movt	r0, :upper16:_ZSt4cout
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	mov	r0, #1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB5_24:
	mov	r0, r7
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r0, [r7]
	mov	r1, #10
	ldr	r2, [r0, #24]
	mov	r0, r7
	blx	r2
	mov	r1, r0
.LBB5_25:                               @ %_ZNKSt5ctypeIcE5widenEc.exit68
	mov	r0, r6
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	cmp	r5, #1
	blt	.LBB5_33
@ BB#26:                                @ %.lr.ph73
	vldr	d16, [sp, #8]
	mov	r1, #0
	cmp	r5, #4
	blo	.LBB5_31
@ BB#27:                                @ %min.iters.checked
	mov	r0, r5
	bfc	r0, #0, #2
	cmp	r0, #0
	beq	.LBB5_31
@ BB#28:                                @ %vector.ph
	vorr	d17, d16, d16
	mov	r1, r0
	mov	r2, r9
.LBB5_29:                               @ %vector.body
                                        @ =>This Inner Loop Header: Depth=1
	vld1.32	{d0, d1}, [r2]
	subs	r1, r1, #4
	vcvt.f64.f32	d18, s3
	vmul.f64	d18, d18, d17
	vcvt.f64.f32	d19, s2
	vmul.f64	d19, d19, d16
	vcvt.f64.f32	d20, s1
	vcvt.f64.f32	d21, s0
	vcvt.f32.f64	s3, d18
	vmul.f64	d20, d20, d17
	vcvt.f32.f64	s2, d19
	vmul.f64	d21, d21, d16
	vcvt.f32.f64	s1, d20
	vcvt.f32.f64	s0, d21
	vst1.32	{d0, d1}, [r2]!
	bne	.LBB5_29
@ BB#30:                                @ %middle.block
	mov	r1, r0
	cmp	r5, r0
	beq	.LBB5_33
.LBB5_31:                               @ %scalar.ph.preheader
	ldr	r2, [r11, #12]
	add	r0, r9, r1, lsl #2
	sub	r1, r2, r1
	ldr	r2, [r11, #8]
	sub	r1, r1, r2
.LBB5_32:                               @ %scalar.ph
                                        @ =>This Inner Loop Header: Depth=1
	vldr	s0, [r0]
	subs	r1, r1, #1
	vcvt.f64.f32	d18, s0
	vmul.f64	d18, d18, d16
	vcvt.f32.f64	s0, d18
	vstr	s0, [r0]
	add	r0, r0, #4
	bne	.LBB5_32
.LBB5_33:                               @ %.preheader
	cmp	r5, #1
	blt	.LBB5_36
@ BB#34:                                @ %.lr.ph.preheader
	add	r0, r9, r10, lsl #2
	lsl	r1, r8, #2
.LBB5_35:                               @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0], r1
	subs	r5, r5, #1
	str	r2, [r4], #4
	bne	.LBB5_35
.LBB5_36:                               @ %._crit_edge
	mov	r0, r9
	bl	_ZdaPv
	mov	r0, #0
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB5_37:
	mov	lr, pc
	b	_ZSt16__throw_bad_castv
	.p2align	3
@ BB#38:
.LCPI5_0:
	.long	0                       @ double 32700
	.long	1088417536
.LCPI5_1:
	.long	3654794683              @ double 1.0E-10
	.long	1037794527
.Lfunc_end5:
	.size	_ZN12SampleStream10getSamplesEPKcPfiii, .Lfunc_end5-_ZN12SampleStream10getSamplesEPKcPfiii
	.fnend

	.globl	_ZN12SampleStream12processFrameEv
	.p2align	3
	.type	_ZN12SampleStream12processFrameEv,%function
_ZN12SampleStream12processFrameEv:      @ @_ZN12SampleStream12processFrameEv
	.fnstart
@ BB#0:
	vmov.f32	d1, #1.000000e+00
	vldr	s0, [r0, #48]
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bge	.LBB6_3
@ BB#1:
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB6_3
@ BB#2:
	vldr	s2, [r0, #52]
	vldr	d17, .LCPI6_0
	vcvt.f64.f32	d16, s2
	vdiv.f64	d16, d17, d16
	vldr	s4, [r0, #56]
	vcvt.f64.s32	d17, s4
	vmul.f64	d16, d16, d17
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0, #48]
	b	.LBB6_4
.LBB6_3:
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	movlt	r1, #0
	strlt	r1, [r0, #44]
.LBB6_4:
	ldr	r1, [r0, #44]
	cmp	r1, #0
	beq	.LBB6_6
@ BB#5:
	ldr	r1, [r0, #8]
	add	r1, r1, #1
	str	r1, [r0, #8]
	ldr	r2, [r0, #24]
	cmp	r1, r2
	bxlt	lr
	mov	r1, #0
	str	r1, [r0, #20]
	str	r1, [r0, #8]
	ldr	r2, [r0, #16]
	cmp	r2, #0
	movweq	r1, #1
	str	r1, [r0, #16]
	mov	r1, #1
	str	r1, [r0, #40]
.LBB6_6:
	bx	lr
	.p2align	3
@ BB#7:
.LCPI6_0:
	.long	3344036215              @ double 2.2675736961451248E-5
	.long	1056425720
.Lfunc_end6:
	.size	_ZN12SampleStream12processFrameEv, .Lfunc_end6-_ZN12SampleStream12processFrameEv
	.fnend

	.globl	_ZN12SampleStream9getSampleEi
	.p2align	2
	.type	_ZN12SampleStream9getSampleEi,%function
_ZN12SampleStream9getSampleEi:          @ @_ZN12SampleStream9getSampleEi
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.LBB7_2
@ BB#1:
	ldr	r2, [r4, #28]
	mov	r0, r1
	mov	r1, r2
	bl	__aeabi_idivmod
	ldr	r0, [r4, #16]
	ldr	r2, [r4, #8]
	vldr	s0, [r4, #48]
	ldr	r0, [r4, r0, lsl #2]
	vmul.f32	d16, d0, d0
	ldr	r0, [r0, r1, lsl #3]
	add	r0, r0, r2, lsl #2
	vldr	s0, [r0]
	vmul.f32	d0, d16, d0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	pop	{r4, r10, r11, pc}
.LBB7_2:
	vmov.i32	d0, #0x0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	pop	{r4, r10, r11, pc}
.Lfunc_end7:
	.size	_ZN12SampleStream9getSampleEi, .Lfunc_end7-_ZN12SampleStream9getSampleEi
	.fnend

	.globl	_ZN12SampleStream10fillBufferEv
	.p2align	2
	.type	_ZN12SampleStream10fillBufferEv,%function
_ZN12SampleStream10fillBufferEv:        @ @_ZN12SampleStream10fillBufferEv
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	ldr	r0, [r4, #60]
	cmp	r0, #0
	bne	.LBB8_12
@ BB#1:
	ldr	r0, [r4, #12]
	mov	r8, #0
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #32]
	add	r0, r0, r1
	cmp	r0, r2
	sub	r2, r2, #1
	movge	r0, r8
	add	r1, r0, r1
	str	r0, [r4, #12]
	cmp	r1, r2
	mov	r7, r2
	ldr	r3, [r4, #28]
	movlt	r7, r1
	cmp	r3, #1
	blt	.LBB8_11
@ BB#2:                                 @ %.lr.ph27
	cmp	r1, r2
	bge	.LBB8_6
@ BB#3:                                 @ %.lr.ph27.split.us.preheader
	ldr	r2, [r4, #16]
	mov	r3, #0
	ldr	r1, [r4, #36]
	cmp	r2, #0
	mov	r2, #0
	movweq	r2, #1
	ldr	r2, [r4, r2, lsl #2]
	ldr	r2, [r2]
	stm	sp, {r0, r7}
	mov	r0, r4
	bl	_ZN12SampleStream10getSamplesEPKcPfiii
	ldr	r0, [r4, #28]
	cmp	r0, #2
	blt	.LBB8_11
@ BB#4:                                 @ %.lr.ph27.split.us..lr.ph27.split.us_crit_edge.preheader
	mov	r5, #1
.LBB8_5:                                @ %.lr.ph27.split.us..lr.ph27.split.us_crit_edge
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, #16]
	ldr	r3, [r4, #12]
	cmp	r0, #0
	mov	r0, #0
	movweq	r0, #1
	ldr	r1, [r4, #36]
	ldr	r0, [r4, r0, lsl #2]
	ldr	r2, [r0, r5, lsl #3]
	mov	r0, r4
	stm	sp, {r3, r7}
	mov	r3, r5
	bl	_ZN12SampleStream10getSamplesEPKcPfiii
	add	r5, r5, #1
	ldr	r0, [r4, #28]
	cmp	r5, r0
	blt	.LBB8_5
	b	.LBB8_11
.LBB8_6:                                @ %.lr.ph27.split.preheader
	movgt	r1, r2
	mov	r5, #0
	mvn	r6, r1
	b	.LBB8_8
.LBB8_7:                                @ %.loopexit..lr.ph27.split_crit_edge
                                        @   in Loop: Header=BB8_8 Depth=1
	ldr	r0, [r4, #12]
.LBB8_8:                                @ %.lr.ph27.split
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r4, #16]
	mov	r3, r5
	ldr	r1, [r4, #36]
	cmp	r2, #0
	mov	r2, #0
	movweq	r2, #1
	ldr	r2, [r4, r2, lsl #2]
	ldr	r2, [r2, r5, lsl #3]
	stm	sp, {r0, r7}
	mov	r0, r4
	bl	_ZN12SampleStream10getSamplesEPKcPfiii
	ldr	r0, [r4, #12]
	ldr	r1, [r4, #24]
	sub	r2, r0, r7
	add	r1, r2, r1
	cmp	r1, #1
	blt	.LBB8_10
@ BB#9:                                 @ %.lr.ph
                                        @   in Loop: Header=BB8_8 Depth=1
	ldr	r2, [r4, #16]
	add	r0, r0, r6
	cmp	r2, #0
	mov	r2, #0
	movweq	r2, #1
	ldr	r2, [r4, r2, lsl #2]
	ldr	r2, [r2, r5, lsl #3]
	sub	r0, r2, r0, lsl #2
	lsl	r2, r1, #2
	sub	r0, r0, #4
	mov	r1, #0
	bl	memset
.LBB8_10:                               @ %.loopexit
                                        @   in Loop: Header=BB8_8 Depth=1
	add	r5, r5, #1
	ldr	r0, [r4, #28]
	cmp	r5, r0
	blt	.LBB8_7
.LBB8_11:                               @ %._crit_edge
	mov	r0, #1
	str	r0, [r4, #20]
	str	r8, [r4, #40]
.LBB8_12:
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.Lfunc_end8:
	.size	_ZN12SampleStream10fillBufferEv, .Lfunc_end8-_ZN12SampleStream10fillBufferEv
	.fnend

	.globl	_ZN12SampleStream17bufferNeedsFilledEv
	.p2align	2
	.type	_ZN12SampleStream17bufferNeedsFilledEv,%function
_ZN12SampleStream17bufferNeedsFilledEv: @ @_ZN12SampleStream17bufferNeedsFilledEv
	.fnstart
@ BB#0:
	ldr	r0, [r0, #40]
	bx	lr
.Lfunc_end9:
	.size	_ZN12SampleStream17bufferNeedsFilledEv, .Lfunc_end9-_ZN12SampleStream17bufferNeedsFilledEv
	.fnend

	.globl	_ZN12SampleStream14togglePlaybackEv
	.p2align	2
	.type	_ZN12SampleStream14togglePlaybackEv,%function
_ZN12SampleStream14togglePlaybackEv:    @ @_ZN12SampleStream14togglePlaybackEv
	.fnstart
@ BB#0:
	ldr	r1, [r0, #44]
	vmov.f32	d0, #1.000000e+00
	vmov.i32	d1, #0x0
	cmp	r1, #0
	mov	r1, #0
	vmoveq.f32	s2, s0
	movweq	r1, #1
	str	r1, [r0, #44]
	vstr	s2, [r0, #48]
	bx	lr
.Lfunc_end10:
	.size	_ZN12SampleStream14togglePlaybackEv, .Lfunc_end10-_ZN12SampleStream14togglePlaybackEv
	.fnend

	.globl	_ZN12SampleStream22togglePlaybackWithFadeEif
	.p2align	3
	.type	_ZN12SampleStream22togglePlaybackWithFadeEif,%function
_ZN12SampleStream22togglePlaybackWithFadeEif: @ @_ZN12SampleStream22togglePlaybackWithFadeEif
	.fnstart
@ BB#0:
	vcmpe.f32	s0, #0
	vldr	s2, .LCPI11_0
	vmrs	APSR_nzcv, fpscr
	vldr	d17, .LCPI11_1
	vmovgt.f32	s2, s0
	cmp	r1, #0
	vmov	s0, r1
	vcvt.f64.f32	d16, s2
	vdiv.f64	d16, d17, d16
	vcvt.f64.s32	d17, s0
	str	r1, [r0, #56]
	movne	r1, #1
	vmul.f64	d16, d16, d17
	vstr	s2, [r0, #52]
	vldr	s0, [r0, #48]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0, #48]
	strne	r1, [r0, #44]
	bx	lr
	.p2align	3
@ BB#1:
.LCPI11_1:
	.long	3344036215              @ double 2.2675736961451248E-5
	.long	1056425720
.LCPI11_0:
	.long	925353388               @ float 9.99999974E-6
.Lfunc_end11:
	.size	_ZN12SampleStream22togglePlaybackWithFadeEif, .Lfunc_end11-_ZN12SampleStream22togglePlaybackWithFadeEif
	.fnend

	.globl	_ZN12SampleStream14togglePlaybackEi
	.p2align	2
	.type	_ZN12SampleStream14togglePlaybackEi,%function
_ZN12SampleStream14togglePlaybackEi:    @ @_ZN12SampleStream14togglePlaybackEi
	.fnstart
@ BB#0:
	vmov	s0, r1
	str	r1, [r0, #44]
	vcvt.f32.s32	d0, d0
	vstr	s0, [r0, #48]
	bx	lr
.Lfunc_end12:
	.size	_ZN12SampleStream14togglePlaybackEi, .Lfunc_end12-_ZN12SampleStream14togglePlaybackEi
	.fnend

	.globl	_ZN12SampleStream22togglePlaybackWithFadeEf
	.p2align	3
	.type	_ZN12SampleStream22togglePlaybackWithFadeEf,%function
_ZN12SampleStream22togglePlaybackWithFadeEf: @ @_ZN12SampleStream22togglePlaybackWithFadeEf
	.fnstart
@ BB#0:
	vcmpe.f32	s0, #0
	vldr	s2, .LCPI13_0
	vmrs	APSR_nzcv, fpscr
	ldr	r1, [r0, #56]
	vldr	d17, .LCPI13_1
	rsb	r2, r1, #0
	vmovgt.f32	s2, s0
	cmp	r1, #0
	vmov	s0, r2
	movne	r1, #1
	vcvt.f64.f32	d16, s2
	vdiv.f64	d16, d17, d16
	vcvt.f64.s32	d17, s0
	str	r2, [r0, #56]
	vmul.f64	d16, d17, d16
	vstr	s2, [r0, #52]
	vldr	s0, [r0, #48]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0, #48]
	strne	r1, [r0, #44]
	bx	lr
	.p2align	3
@ BB#1:
.LCPI13_1:
	.long	3344036215              @ double 2.2675736961451248E-5
	.long	1056425720
.LCPI13_0:
	.long	925353388               @ float 9.99999974E-6
.Lfunc_end13:
	.size	_ZN12SampleStream22togglePlaybackWithFadeEf, .Lfunc_end13-_ZN12SampleStream22togglePlaybackWithFadeEf
	.fnend

	.globl	_ZN12SampleStream9isPlayingEv
	.p2align	2
	.type	_ZN12SampleStream9isPlayingEv,%function
_ZN12SampleStream9isPlayingEv:          @ @_ZN12SampleStream9isPlayingEv
	.fnstart
@ BB#0:
	ldr	r0, [r0, #44]
	bx	lr
.Lfunc_end14:
	.size	_ZN12SampleStream9isPlayingEv, .Lfunc_end14-_ZN12SampleStream9isPlayingEv
	.fnend

	.globl	_ZN12SampleStream14getNumChannelsEPKc
	.p2align	2
	.type	_ZN12SampleStream14getNumChannelsEPKc,%function
_ZN12SampleStream14getNumChannelsEPKc:  @ @_ZN12SampleStream14getNumChannelsEPKc
	.fnstart
@ BB#0:
	ldr	r0, [r0, #84]
	bx	lr
.Lfunc_end15:
	.size	_ZN12SampleStream14getNumChannelsEPKc, .Lfunc_end15-_ZN12SampleStream14getNumChannelsEPKc
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	_GLOBAL__sub_I_SampleStream.ii,%function
_GLOBAL__sub_I_SampleStream.ii:         @ @_GLOBAL__sub_I_SampleStream.ii
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	movw	r4, :lower16:_ZStL8__ioinit
	movt	r4, :upper16:_ZStL8__ioinit
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	movw	r0, :lower16:_ZNSt8ios_base4InitD1Ev
	movw	r2, :lower16:__dso_handle
	movt	r0, :upper16:_ZNSt8ios_base4InitD1Ev
	movt	r2, :upper16:__dso_handle
	mov	r1, r4
	pop	{r4, r10, r11, lr}
	b	__cxa_atexit
.Lfunc_end16:
	.size	_GLOBAL__sub_I_SampleStream.ii, .Lfunc_end16-_GLOBAL__sub_I_SampleStream.ii
	.fnend

	.type	_ZStL8__ioinit,%object  @ @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Couldn't open file "
	.size	.L.str, 20

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	": "
	.size	.L.str.1, 3

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"I AM NOT A NULL"
	.size	.L.str.2, 16

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"Sample needs to be longer than buffer size. This example is intended to work with long samples."
	.size	.L.str.3, 96

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"Loaded "
	.size	.L.str.5, 8

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"Error: "
	.size	.L.str.6, 8

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	" doesn't contain requested channel"
	.size	.L.str.7, 35

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	" invalid frame range requested"
	.size	.L.str.8, 31

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"File samples scale = "
	.size	.L.str.9, 22

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"basic_string::_M_construct null not valid"
	.size	.L.str.10, 42

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_SampleStream.ii(target1)
	.type	.Lstr,%object           @ @str
	.section	.rodata.str1.16,"aMS",%progbits,1
	.p2align	4
.Lstr:
	.asciz	"error getting samples"
	.size	.Lstr, 22


	.globl	_ZN12SampleStreamC1EPKcii
	.type	_ZN12SampleStreamC1EPKcii,%function
_ZN12SampleStreamC1EPKcii = _ZN12SampleStreamC2EPKcii
	.globl	_ZN12SampleStreamD1Ev
	.type	_ZN12SampleStreamD1Ev,%function
_ZN12SampleStreamD1Ev = _ZN12SampleStreamD2Ev
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
