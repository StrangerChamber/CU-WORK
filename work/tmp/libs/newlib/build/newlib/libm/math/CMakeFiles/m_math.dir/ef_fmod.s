	.text
	.file	"ef_fmod.c"
	.globl	__ieee754_fmodf         //  -- Begin function __ieee754_fmodf
	.type	__ieee754_fmodf,@function
__ieee754_fmodf:                        //  @__ieee754_fmodf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	addi x5 ,  x0 ,  254
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	and x12 ,  x13 ,  x10
	or x15 ,  x15 ,  x30
	srli x14 ,  x12 ,  23&31
	bltu x5, x14, .LBB0_2
.LBB0_1:                                //  %entry
	and x7 ,  x13 ,  x11
	addi x13 ,  x7 ,  -1
	srli x13 ,  x13 ,  23&31
	sltiu x13 ,  x13 ,  255
	beq x0, x13, .LBB0_2
.LBB0_3:                                //  %if.end
	bltu x12, x7, .LBB0_36
.LBB0_4:                                //  %if.end14
	beq x12, x7, .LBB0_5
.LBB0_6:                                //  %if.end17
	bltu x0, x14, .LBB0_9
.LBB0_7:                                //  %if.then19
	addi x5 ,  x0 ,  -126
	slli x14 ,  x10 ,  8&31
	bge x0, x14, .LBB0_10
.LBB0_8:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x5 ,  x5 ,  -1
	slli x14 ,  x14 ,  1&31
	blt x0, x14, .LBB0_8
.LBB0_10:                               //  %if.end24
	addi x14 ,  x0 ,  -126
	srli x13 ,  x7 ,  23&31
	bltu x0, x13, .LBB0_14
.LBB0_11:                               //  %if.then26
	slli x6 ,  x11 ,  8&31
	add x13 ,  x0 ,  x14
	blt x6, x0, .LBB0_15
.LBB0_12:                               //  %for.body30.preheader
	addi x13 ,  x0 ,  -126
.LBB0_13:                               //  %for.body30
                                        //  =>This Inner Loop Header: Depth=1
	addi x13 ,  x13 ,  -1
	slli x6 ,  x6 ,  1&31
	bge x6, x0, .LBB0_13
	jal x0, .LBB0_15
.LBB0_2:                                //  %if.then
	call __mulsf3
	add x11 ,  x0 ,  x10
	call __divsf3
.LBB0_36:                               //  %cleanup
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_9:                                //  %if.else
	addi x5 ,  x14 ,  -127
	addi x14 ,  x0 ,  -126
	srli x13 ,  x7 ,  23&31
	beq x0, x13, .LBB0_11
.LBB0_14:                               //  %if.else35
	addi x13 ,  x13 ,  -127
.LBB0_15:                               //  %if.end38
	lui x30 ,  8388607&4095
	lui x6 ,  (8388607>>12)&1048575
	lui x17 ,  (8388608>>12)&1048575
	addi x29 ,  x0 ,  -127
	srli x30 ,  x30 ,  12&31
	or x16 ,  x6 ,  x30
	blt x29, x13, .LBB0_16
.LBB0_17:                               //  %if.end38
	sub x11 ,  x14 ,  x13
	sll x11 ,  x7 ,  x11
	bge x29, x5, .LBB0_20
.LBB0_19:
	and x12 ,  x16 ,  x10
	or x7 ,  x17 ,  x12
	sub x16 ,  x5 ,  x13
	sub x12 ,  x7 ,  x11
	beq x0, x16, .LBB0_26
.LBB0_22:                               //  %while.body.preheader
	sub x16 ,  x13 ,  x5
	add x5 ,  x0 ,  x16
	bge x12, x0, .LBB0_24
.LBB0_25:                               //  %if.end65
                                        //  =>This Inner Loop Header: Depth=1
	slli x7 ,  x7 ,  1&31
	addi x16 ,  x5 ,  1
	sub x12 ,  x7 ,  x11
	bltu x16, x5, .LBB0_26
.LBB0_23:                               //  %while.body
                                        //    in Loop: Header=BB0_25 Depth=1
	add x5 ,  x0 ,  x16
	blt x12, x0, .LBB0_25
.LBB0_24:                               //  %if.else58
	add x7 ,  x0 ,  x12
	bltu x0, x12, .LBB0_25
	jal x0, .LBB0_5
.LBB0_16:
	and x11 ,  x16 ,  x11
	or x11 ,  x17 ,  x11
	blt x29, x5, .LBB0_19
.LBB0_20:                               //  %if.end38
	sub x7 ,  x14 ,  x5
	sll x7 ,  x12 ,  x7
	sub x16 ,  x5 ,  x13
	sub x12 ,  x7 ,  x11
	bltu x0, x16, .LBB0_22
.LBB0_26:                               //  %while.end
	addi x11 ,  x0 ,  -1
	blt x11, x12, .LBB0_28
.LBB0_27:                               //  %while.end
	add x12 ,  x0 ,  x7
.LBB0_28:                               //  %while.end
	beq x0, x12, .LBB0_5
.LBB0_29:                               //  %while.cond75.preheader
	lui x30 ,  8388607&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x6 ,  x30
	blt x11, x12, .LBB0_32
.LBB0_30:
	lui x11 ,  (4194304>>12)&1048575
.LBB0_31:                               //  %while.body77
                                        //  =>This Inner Loop Header: Depth=1
	add x5 ,  x0 ,  x12
	addi x13 ,  x13 ,  -1
	slli x12 ,  x5 ,  1&31
	blt x5, x11, .LBB0_31
.LBB0_32:                               //  %while.end80
	and x15 ,  x15 ,  x10
	slti x11 ,  x13 ,  -126
	bltu x0, x11, .LBB0_34
.LBB0_33:                               //  %if.then82
	lui x30 ,  -8388608&4095
	slli x14 ,  x13 ,  23&31
	lui x13 ,  (1065353216>>12)&1048575
	add x14 ,  x13 ,  x14
	lui x13 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x13 ,  x13 ,  x12
	or x14 ,  x14 ,  x13
	or x10 ,  x15 ,  x14
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_5:                                //  %if.then16
	lui x30 ,  Zero&4095
	srli x15 ,  x10 ,  29&31
	lui x14 ,  (Zero>>12)&1048575
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x15 ,  4
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_34:                               //  %if.else93
	sub x14 ,  x14 ,  x13
	srl x14 ,  x12 ,  x14
	or x10 ,  x15 ,  x14
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_fmodf, .Lfunc_end0-__ieee754_fmodf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	Zero,@object            //  @Zero
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
Zero:
	.long	0                       //  float 0
	.long	2147483648              //  float -0
	.size	Zero, 8


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
