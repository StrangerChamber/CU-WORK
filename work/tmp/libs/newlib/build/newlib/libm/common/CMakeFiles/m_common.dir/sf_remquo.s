	.text
	.file	"sf_remquo.c"
	.globl	remquof                 //  -- Begin function remquof
	.type	remquof,@function
remquof:                                //  @remquof
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	lui x21 ,  (2147483647>>12)&1048575
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lui x15 ,  (-2147483648>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x8 ,  x0 ,  x12
	addi x13 ,  x0 ,  254
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	srli x30 ,  x30 ,  12&31
	or x14 ,  x21 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	and x18 ,  x14 ,  x9
	or x22 ,  x15 ,  x30
	srli x15 ,  x18 ,  23&31
	bltu x13, x15, .LBB0_2
.LBB0_1:                                //  %entry
	and x5 ,  x14 ,  x11
	addi x14 ,  x5 ,  -1
	srli x14 ,  x14 ,  23&31
	sltiu x14 ,  x14 ,  255
	beq x0, x14, .LBB0_2
.LBB0_3:                                //  %if.end
	xor x14 ,  x9 ,  x11
	and x23 ,  x22 ,  x14
	bgeu x18, x5, .LBB0_5
.LBB0_4:
	add x24 ,  x0 ,  x0
.LBB0_40:                               //  %do.body93
	add x10 ,  x0 ,  x11
	call fabsf
	lui x11 ,  (16777216>>12)&1048575
	add x19 ,  x0 ,  x10
	call __ltsf2
	bge x10, x0, .LBB0_44
.LBB0_41:                               //  %if.then99
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __addsf3
	add x11 ,  x0 ,  x19
	add x20 ,  x0 ,  x10
	call __gtsf2
	blt x0, x10, .LBB0_48
.LBB0_42:                               //  %lor.lhs.false102
	andi x15 ,  x24 ,  1
	beq x0, x15, .LBB0_49
.LBB0_43:                               //  %lor.lhs.false102
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __nesf2
	beq x0, x10, .LBB0_48
	jal x0, .LBB0_49
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	sw x0 ,  0 ( x8 )
	call __mulsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	jal x0, .LBB0_52
.LBB0_5:                                //  %if.else
	bne x18, x5, .LBB0_7
.LBB0_6:                                //  %if.then17
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_38
.LBB0_44:                               //  %if.else111
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x18
	add x20 ,  x0 ,  x10
	call __ltsf2
	blt x10, x0, .LBB0_48
.LBB0_45:                               //  %lor.lhs.false114
	andi x15 ,  x24 ,  1
	beq x0, x15, .LBB0_49
.LBB0_46:                               //  %lor.lhs.false114
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call __nesf2
	bltu x0, x10, .LBB0_49
.LBB0_48:                               //  %if.then120
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __subsf3
	add x18 ,  x0 ,  x10
	addi x24 ,  x24 ,  1
.LBB0_49:                               //  %do.body125
	lui x30 ,  2147483647&4095
	and x15 ,  x22 ,  x9
	add x13 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x21 ,  x30
	and x14 ,  x14 ,  x24
	beq x23, x13, .LBB0_51
.LBB0_50:                               //  %do.body125
	sub x14 ,  x0 ,  x14
.LBB0_51:                               //  %do.body125
	xor x10 ,  x18 ,  x15
	sw x14 ,  0 ( x8 )
	jal x0, .LBB0_52
.LBB0_7:                                //  %if.end19
	bltu x0, x15, .LBB0_10
.LBB0_8:                                //  %if.then21
	addi x10 ,  x0 ,  -126
	slli x15 ,  x9 ,  8&31
	bge x0, x15, .LBB0_11
.LBB0_9:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_9
.LBB0_11:                               //  %if.end27
	addi x15 ,  x0 ,  -126
	srli x14 ,  x5 ,  23&31
	bltu x0, x14, .LBB0_15
.LBB0_12:                               //  %if.then29
	slli x13 ,  x11 ,  8&31
	add x14 ,  x0 ,  x15
	bge x0, x13, .LBB0_16
.LBB0_13:                               //  %for.body33.preheader
	addi x14 ,  x0 ,  -126
.LBB0_14:                               //  %for.body33
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  -1
	slli x13 ,  x13 ,  1&31
	blt x0, x13, .LBB0_14
	jal x0, .LBB0_16
.LBB0_10:                               //  %if.else24
	addi x10 ,  x15 ,  -127
	addi x15 ,  x0 ,  -126
	srli x14 ,  x5 ,  23&31
	beq x0, x14, .LBB0_12
.LBB0_15:                               //  %if.else38
	addi x14 ,  x14 ,  -127
.LBB0_16:                               //  %if.end41
	lui x30 ,  8388607&4095
	lui x12 ,  (8388607>>12)&1048575
	lui x13 ,  (8388608>>12)&1048575
	addi x16 ,  x0 ,  -127
	srli x30 ,  x30 ,  12&31
	or x7 ,  x12 ,  x30
	blt x16, x14, .LBB0_17
.LBB0_18:                               //  %if.end41
	sub x6 ,  x15 ,  x14
	sll x6 ,  x5 ,  x6
	bge x16, x10, .LBB0_21
.LBB0_20:
	and x5 ,  x7 ,  x9
	or x5 ,  x13 ,  x5
	sub x16 ,  x10 ,  x14
	sub x7 ,  x5 ,  x6
	beq x0, x16, .LBB0_23
.LBB0_24:                               //  %while.body.preheader
	sub x29 ,  x14 ,  x10
	add x10 ,  x0 ,  x0
	add x16 ,  x0 ,  x10
	add x17 ,  x0 ,  x29
	bge x7, x10, .LBB0_26
.LBB0_27:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	xori x7 ,  x7 ,  -1
	slli x5 ,  x5 ,  1&31
	addi x29 ,  x17 ,  1
	slt x7 ,  x7 ,  x0
	or x16 ,  x7 ,  x16
	sub x7 ,  x5 ,  x6
	slli x16 ,  x16 ,  1&31
	bltu x29, x17, .LBB0_28
.LBB0_25:                               //  %while.body
                                        //    in Loop: Header=BB0_27 Depth=1
	add x17 ,  x0 ,  x29
	blt x7, x10, .LBB0_27
.LBB0_26:                               //  %while.body
	add x5 ,  x0 ,  x7
	jal x0, .LBB0_27
.LBB0_17:
	and x5 ,  x7 ,  x11
	or x6 ,  x13 ,  x5
	blt x16, x10, .LBB0_20
.LBB0_21:                               //  %if.end41
	sub x5 ,  x15 ,  x10
	sll x5 ,  x18 ,  x5
	sub x16 ,  x10 ,  x14
	sub x7 ,  x5 ,  x6
	bltu x0, x16, .LBB0_24
.LBB0_23:
	add x16 ,  x0 ,  x0
.LBB0_28:                               //  %while.end
	addi x6 ,  x0 ,  -1
	add x10 ,  x0 ,  x7
	blt x6, x7, .LBB0_30
.LBB0_29:                               //  %while.end
	add x10 ,  x0 ,  x5
.LBB0_30:                               //  %while.end
	slt x5 ,  x7 ,  x0
	or x5 ,  x16 ,  x5
	xori x24 ,  x5 ,  1
	beq x0, x10, .LBB0_35
.LBB0_31:                               //  %while.cond78.preheader
	lui x30 ,  8388607&4095
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	blt x12, x10, .LBB0_33
.LBB0_32:                               //  %while.body80
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  -1
	slli x10 ,  x10 ,  1&31
	blt x10, x13, .LBB0_32
.LBB0_33:                               //  %while.end83
	slti x13 ,  x14 ,  -126
	bltu x0, x13, .LBB0_39
.LBB0_34:                               //  %if.then85
	lui x30 ,  -8388608&4095
	slli x15 ,  x14 ,  23&31
	lui x14 ,  (1065353216>>12)&1048575
	add x15 ,  x14 ,  x15
	lui x14 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x14 ,  x14 ,  x10
	or x18 ,  x15 ,  x14
	jal x0, .LBB0_40
.LBB0_35:                               //  %if.then72
	add x15 ,  x0 ,  x0
	beq x23, x15, .LBB0_37
.LBB0_36:                               //  %if.then72
	sub x24 ,  x0 ,  x24
.LBB0_37:                               //  %if.then72
	sw x24 ,  0 ( x8 )
.LBB0_38:                               //  %cleanup
	lui x30 ,  Zero&4095
	srli x15 ,  x9 ,  29&31
	lui x14 ,  (Zero>>12)&1048575
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x15 ,  4
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  0 ( x15 )
.LBB0_52:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.LBB0_39:                               //  %if.else89
	sub x15 ,  x15 ,  x14
	srl x18 ,  x10 ,  x15
	jal x0, .LBB0_40
.Lfunc_end0:
	.size	remquof, .Lfunc_end0-remquof
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
