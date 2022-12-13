	.text
	.file	"e_fmod.c"
	.globl	__ieee754_fmod          //  -- Begin function __ieee754_fmod
	.type	__ieee754_fmod,@function
__ieee754_fmod:                         //  @__ieee754_fmod
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	addi x6 ,  x0 ,  2046
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x5 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	and x7 ,  x5 ,  x11
	or x15 ,  x15 ,  x30
	srli x14 ,  x7 ,  20&31
	bltu x6, x14, .LBB0_3
.LBB0_1:                                //  %entry
	and x5 ,  x5 ,  x13
	or x6 ,  x12 ,  x5
	beq x0, x6, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false13
	sub x6 ,  x0 ,  x12
	lui x30 ,  2146435073&4095
	lui x16 ,  (2146435073>>12)&1048575
	or x6 ,  x6 ,  x12
	srli x30 ,  x30 ,  12&31
	slt x6 ,  x6 ,  x0
	or x16 ,  x16 ,  x30
	or x6 ,  x6 ,  x5
	bltu x6, x16, .LBB0_4
.LBB0_3:                                //  %if.then
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
.LBB0_57:                               //  %cleanup
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_4:                                //  %if.end
	bltu x5, x7, .LBB0_9
.LBB0_5:                                //  %if.then19
	bltu x10, x12, .LBB0_57
.LBB0_6:                                //  %if.then19
	bltu x7, x5, .LBB0_57
.LBB0_7:                                //  %if.end24
	beq x10, x12, .LBB0_8
.LBB0_9:                                //  %if.end29
	bltu x0, x14, .LBB0_16
.LBB0_10:                               //  %if.then31
	beq x0, x7, .LBB0_11
.LBB0_14:                               //  %if.else
	addi x6 ,  x0 ,  -1022
	slli x14 ,  x11 ,  11&31
	bge x0, x14, .LBB0_17
.LBB0_15:                               //  %for.body39
                                        //  =>This Inner Loop Header: Depth=1
	addi x6 ,  x6 ,  -1
	slli x14 ,  x14 ,  1&31
	blt x0, x14, .LBB0_15
	jal x0, .LBB0_17
.LBB0_16:                               //  %if.else45
	addi x6 ,  x14 ,  -1023
.LBB0_17:                               //  %if.end48
	srli x14 ,  x5 ,  20&31
	bltu x0, x14, .LBB0_24
.LBB0_18:                               //  %if.then50
	beq x0, x5, .LBB0_19
.LBB0_22:                               //  %if.else60
	addi x14 ,  x0 ,  -1022
	slli x16 ,  x13 ,  11&31
	bge x0, x16, .LBB0_25
.LBB0_23:                               //  %for.body64
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  -1
	slli x16 ,  x16 ,  1&31
	blt x0, x16, .LBB0_23
	jal x0, .LBB0_25
.LBB0_24:                               //  %if.else70
	addi x14 ,  x14 ,  -1023
.LBB0_25:                               //  %if.end73
	slti x16 ,  x6 ,  -1022
	bltu x0, x16, .LBB0_27
.LBB0_26:                               //  %if.then75
	lui x30 ,  1048575&4095
	lui x7 ,  (1048575>>12)&1048575
	lui x16 ,  (1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x7 ,  x7 ,  x30
	and x7 ,  x7 ,  x11
	or x7 ,  x16 ,  x7
	slti x16 ,  x14 ,  -1022
	bltu x0, x16, .LBB0_32
.LBB0_31:                               //  %if.then93
	lui x30 ,  1048575&4095
	lui x5 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x5 ,  x5 ,  x30
	and x13 ,  x5 ,  x13
	lui x5 ,  (1048576>>12)&1048575
	or x16 ,  x5 ,  x13
	jal x0, .LBB0_35
.LBB0_27:                               //  %if.else78
	slti x16 ,  x6 ,  -1053
	bltu x0, x16, .LBB0_29
.LBB0_28:                               //  %if.then81
	addi x16 ,  x0 ,  -1022
	addi x17 ,  x6 ,  1054
	sub x16 ,  x16 ,  x6
	srl x17 ,  x10 ,  x17
	sll x7 ,  x7 ,  x16
	sll x10 ,  x10 ,  x16
	or x7 ,  x17 ,  x7
	slti x16 ,  x14 ,  -1022
	beq x0, x16, .LBB0_31
	jal x0, .LBB0_32
.LBB0_29:                               //  %if.else87
	addi x7 ,  x0 ,  -1054
	sub x7 ,  x7 ,  x6
	sll x7 ,  x10 ,  x7
	add x10 ,  x0 ,  x0
	slti x16 ,  x14 ,  -1022
	beq x0, x16, .LBB0_31
.LBB0_32:                               //  %if.else96
	slti x13 ,  x14 ,  -1053
	bltu x0, x13, .LBB0_34
.LBB0_33:                               //  %if.then99
	addi x13 ,  x0 ,  -1022
	addi x16 ,  x14 ,  1054
	sub x13 ,  x13 ,  x14
	srl x16 ,  x12 ,  x16
	sll x5 ,  x5 ,  x13
	sll x12 ,  x12 ,  x13
	or x16 ,  x16 ,  x5
	jal x0, .LBB0_35
.LBB0_34:                               //  %if.else105
	addi x13 ,  x0 ,  -1054
	sub x13 ,  x13 ,  x14
	sll x16 ,  x12 ,  x13
	add x12 ,  x0 ,  x0
.LBB0_35:                               //  %if.end109
	sub x13 ,  x7 ,  x16
	sltu x5 ,  x10 ,  x12
	sub x17 ,  x6 ,  x14
	sub x5 ,  x13 ,  x5
	sub x13 ,  x10 ,  x12
	beq x0, x17, .LBB0_42
.LBB0_36:                               //  %while.body.preheader
	sub x17 ,  x14 ,  x6
	add x6 ,  x0 ,  x17
	bge x5, x0, .LBB0_39
.LBB0_38:                               //  %if.then118
	slt x5 ,  x10 ,  x0
	slli x7 ,  x7 ,  1&31
.LBB0_41:                               //  %if.end133
	or x7 ,  x7 ,  x5
	slli x10 ,  x10 ,  1&31
	addi x17 ,  x6 ,  1
	sub x13 ,  x7 ,  x16
	sltu x5 ,  x10 ,  x12
	sub x5 ,  x13 ,  x5
	sub x13 ,  x10 ,  x12
	bltu x17, x6, .LBB0_42
.LBB0_37:                               //  %while.body
	add x6 ,  x0 ,  x17
	blt x5, x0, .LBB0_38
.LBB0_39:                               //  %if.else122
	or x10 ,  x13 ,  x5
	beq x0, x10, .LBB0_8
.LBB0_40:                               //  %if.end128
	slt x7 ,  x13 ,  x0
	slli x5 ,  x5 ,  1&31
	add x10 ,  x0 ,  x13
	jal x0, .LBB0_41
.LBB0_42:                               //  %while.end
	addi x12 ,  x0 ,  -1
	blt x12, x5, .LBB0_44
.LBB0_43:                               //  %while.end
	add x5 ,  x0 ,  x7
	add x13 ,  x0 ,  x10
.LBB0_44:                               //  %while.end
	or x12 ,  x13 ,  x5
	beq x0, x12, .LBB0_8
.LBB0_45:                               //  %while.cond149.preheader
	lui x30 ,  1048575&4095
	lui x12 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	blt x12, x5, .LBB0_48
.LBB0_46:
	lui x12 ,  (1048576>>12)&1048575
.LBB0_47:                               //  %while.body151
                                        //  =>This Inner Loop Header: Depth=1
	slli x10 ,  x5 ,  1&31
	slt x5 ,  x13 ,  x0
	addi x14 ,  x14 ,  -1
	slli x13 ,  x13 ,  1&31
	or x5 ,  x10 ,  x5
	blt x5, x12, .LBB0_47
.LBB0_48:                               //  %while.end157
	and x15 ,  x15 ,  x11
	slti x12 ,  x14 ,  -1022
	bltu x0, x12, .LBB0_50
.LBB0_49:                               //  %if.then159
	lui x30 ,  -1048576&4095
	lui x12 ,  (-1048576>>12)&1048575
	slli x14 ,  x14 ,  20&31
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	add x14 ,  x11 ,  x14
	or x12 ,  x12 ,  x30
	or x15 ,  x15 ,  x14
	add x12 ,  x12 ,  x5
	or x11 ,  x12 ,  x15
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %if.then26
	lui x30 ,  Zero&4095
	srli x15 ,  x11 ,  28&31
	lui x14 ,  (Zero>>12)&1048575
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x15 ,  8
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x11 ,  4 ( x15 )
	lw x10 ,  0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_50:                               //  %if.else173
	addi x12 ,  x0 ,  -1022
	slti x11 ,  x14 ,  -1042
	sub x12 ,  x12 ,  x14
	bltu x0, x11, .LBB0_52
.LBB0_51:                               //  %if.then176
	addi x14 ,  x14 ,  1054
	srl x13 ,  x13 ,  x12
	sll x14 ,  x5 ,  x14
	or x10 ,  x14 ,  x13
	srl x14 ,  x5 ,  x12
	or x11 ,  x15 ,  x14
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_11:                               //  %for.cond.preheader
	addi x6 ,  x0 ,  -1043
	bge x0, x10, .LBB0_17
.LBB0_12:                               //  %for.body.preheader
	add x14 ,  x0 ,  x10
.LBB0_13:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x6 ,  x6 ,  -1
	slli x14 ,  x14 ,  1&31
	blt x0, x14, .LBB0_13
	jal x0, .LBB0_17
.LBB0_19:                               //  %for.cond53.preheader
	addi x14 ,  x0 ,  -1043
	bge x0, x12, .LBB0_25
.LBB0_20:                               //  %for.body55.preheader
	add x16 ,  x0 ,  x12
.LBB0_21:                               //  %for.body55
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  -1
	slli x16 ,  x16 ,  1&31
	blt x0, x16, .LBB0_21
	jal x0, .LBB0_25
.LBB0_52:                               //  %if.else182
	slti x11 ,  x14 ,  -1053
	bltu x0, x11, .LBB0_54
.LBB0_53:                               //  %if.then184
	addi x14 ,  x14 ,  1054
	srl x13 ,  x13 ,  x12
	sll x14 ,  x5 ,  x14
	or x10 ,  x14 ,  x13
	jal x0, .LBB0_55
.LBB0_54:                               //  %if.else189
	addi x13 ,  x0 ,  -1054
	sub x14 ,  x13 ,  x14
	srl x10 ,  x5 ,  x14
.LBB0_55:                               //  %do.body194
	add x14 ,  x0 ,  x15
	or x11 ,  x15 ,  x14
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_fmod, .Lfunc_end0-__ieee754_fmod
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	Zero,@object            //  @Zero
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
Zero:
	.quad	0                       //  double 0
	.quad	-9223372036854775808    //  double -0
	.size	Zero, 16


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
