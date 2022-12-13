	.text
	.file	"ef_atan2.c"
	.globl	__ieee754_atan2f        //  -- Begin function __ieee754_atan2f
	.type	__ieee754_atan2f,@function
__ieee754_atan2f:                       //  @__ieee754_atan2f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  2147483647&4095
	lui x14 ,  (2147483647>>12)&1048575
	add x15 ,  x0 ,  x10
	lui x13 ,  (2139095040>>12)&1048575
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	and x14 ,  x12 ,  x15
	bltu x13, x14, .LBB0_35
.LBB0_1:                                //  %entry
	lui x30 ,  2139095041&4095
	lui x5 ,  (2139095041>>12)&1048575
	and x12 ,  x12 ,  x11
	srli x30 ,  x30 ,  12&31
	or x5 ,  x5 ,  x30
	bgeu x12, x5, .LBB0_35
.LBB0_2:                                //  %if.end
	lui x5 ,  (1065353216>>12)&1048575
	bne x11, x5, .LBB0_3
.LBB0_36:                               //  %if.then10
	call atanf
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:                                //  %if.end11
	srli x6 ,  x11 ,  30&31
	slt x5 ,  x15 ,  x0
	andi x6 ,  x6 ,  2
	or x8 ,  x5 ,  x6
	beq x0, x14, .LBB0_8
.LBB0_4:                                //  %if.end19
	beq x12, x13, .LBB0_11
.LBB0_5:                                //  %if.end19
	beq x0, x12, .LBB0_6
.LBB0_14:                               //  %if.end39
	bne x14, x13, .LBB0_21
.LBB0_6:                                //  %if.then21
	lui x30 ,  1070141403&4095
	lui x14 ,  (1070141403>>12)&1048575
	lui x13 ,  (-1077342245>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  -1077342245&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x13 ,  x30
	add x13 ,  x0 ,  x0
	blt x15, x13, .LBB0_20
.LBB0_7:                                //  %if.then21
	add x10 ,  x0 ,  x14
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %if.then16
	sltiu x15 ,  x8 ,  2
	bltu x0, x15, .LBB0_20
.LBB0_9:                                //  %if.then16
	xori x15 ,  x8 ,  3
	bltu x0, x15, .LBB0_10
	jal x0, .LBB0_18
.LBB0_11:                               //  %if.then25
	bne x14, x13, .LBB0_16
.LBB0_12:                               //  %if.then27
	lui x30 ,  1061752795&4095
	lui x15 ,  (1061752795>>12)&1048575
	lui x14 ,  (JTI0_1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  JTI0_1&4095
	slli x15 ,  x8 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_13:                               //  %sw.bb29
	lui x15 ,  (-1085730853>>12)&1048575
	lui x30 ,  -1085730853&4095
	jal x0, .LBB0_19
.LBB0_21:                               //  %if.end44
	lui x30 ,  1070141403&4095
	lui x15 ,  (1070141403>>12)&1048575
	lui x13 ,  (511705087>>12)&1048575
	sub x14 ,  x14 ,  x12
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  511705087&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	blt x13, x14, .LBB0_29
.LBB0_22:                               //  %if.else48
	bge x11, x0, .LBB0_28
.LBB0_23:                               //  %if.else48
	lui x30 ,  -503316480&4095
	lui x15 ,  (-503316480>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x14, x15, .LBB0_28
.LBB0_24:
	add x15 ,  x0 ,  x0
	bltu x0, x8, .LBB0_30
.LBB0_25:
	add x10 ,  x0 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_16:                               //  %if.else
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x8 ,  2&31
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_17:                               //  %sw.bb34
	lui x15 ,  (-2147483648>>12)&1048575
	lui x30 ,  -2147483648&4095
	jal x0, .LBB0_19
.LBB0_10:                               //  %sw.bb17
	lui x15 ,  (1078530011>>12)&1048575
	lui x30 ,  1078530011&4095
	jal x0, .LBB0_19
.LBB0_18:                               //  %sw.bb18
	lui x15 ,  (-1068953637>>12)&1048575
	lui x30 ,  -1068953637&4095
.LBB0_19:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
.LBB0_20:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_26:                               //  %sw.bb30
	lui x15 ,  (1075235812>>12)&1048575
	lui x30 ,  1075235812&4095
	jal x0, .LBB0_19
.LBB0_27:                               //  %sw.bb31
	lui x15 ,  (-1072247836>>12)&1048575
	lui x30 ,  -1072247836&4095
	jal x0, .LBB0_19
.LBB0_28:                               //  %if.else52
	call __divsf3
	call fabsf
	call atanf
	add x15 ,  x0 ,  x10
.LBB0_29:                               //  %if.end56
	beq x0, x8, .LBB0_25
.LBB0_30:                               //  %if.end56
	xori x14 ,  x8 ,  2
	beq x0, x14, .LBB0_33
.LBB0_31:                               //  %if.end56
	xori x14 ,  x8 ,  1
	bltu x0, x14, .LBB0_34
.LBB0_32:                               //  %sw.bb58
	lui x30 ,  -2147483648&4095
	lui x14 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	xor x10 ,  x14 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_33:                               //  %sw.bb70
	lui x30 ,  867941678&4095
	lui x14 ,  (867941678>>12)&1048575
	add x10 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	call __addsf3
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_34:                               //  %sw.default
	lui x30 ,  867941678&4095
	lui x14 ,  (867941678>>12)&1048575
	add x10 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	call __addsf3
	lui x30 ,  -1068953637&4095
	lui x15 ,  (-1068953637>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
.LBB0_35:                               //  %cleanup
	call __addsf3
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_atan2f, .Lfunc_end0-__ieee754_atan2f
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_20
	.long	.LBB0_17
	.long	.LBB0_10
	.long	.LBB0_18
JTI0_1:
	.long	.LBB0_20
	.long	.LBB0_13
	.long	.LBB0_26
	.long	.LBB0_27
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
