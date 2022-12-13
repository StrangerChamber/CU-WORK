	.text
	.file	"s_remquo.c"
	.globl	remquo                  //  -- Begin function remquo
	.type	remquo,@function
remquo:                                 //  @remquo
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lui x30 ,  2147483647&4095
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	lui x24 ,  (2147483647>>12)&1048575
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lui x15 ,  (-2147483648>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x14
	addi x6 ,  x0 ,  2046
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	srli x30 ,  x30 ,  12&31
	or x5 ,  x24 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	and x18 ,  x5 ,  x11
	or x14 ,  x15 ,  x30
	srli x15 ,  x18 ,  20&31
	bltu x6, x15, .LBB0_3
.LBB0_1:                                //  %entry
	and x5 ,  x5 ,  x13
	or x6 ,  x12 ,  x5
	beq x0, x6, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false15
	sub x6 ,  x0 ,  x12
	lui x30 ,  2146435073&4095
	lui x7 ,  (2146435073>>12)&1048575
	or x6 ,  x6 ,  x12
	srli x30 ,  x30 ,  12&31
	slt x6 ,  x6 ,  x0
	or x7 ,  x7 ,  x30
	or x6 ,  x6 ,  x5
	bltu x6, x7, .LBB0_5
.LBB0_3:                                //  %if.then
	sw x0 ,  0 ( x8 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
	add x9 ,  x0 ,  x10
.LBB0_4:                                //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x27 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.LBB0_5:                                //  %if.end
	xor x6 ,  x11 ,  x13
	and x25 ,  x14 ,  x11
	and x26 ,  x14 ,  x6
	bgeu x5, x18, .LBB0_10
.LBB0_6:                                //  %if.end31
	bltu x0, x15, .LBB0_15
.LBB0_7:                                //  %if.then33
	beq x0, x18, .LBB0_52
.LBB0_8:                                //  %if.else
	addi x7 ,  x0 ,  -1022
	slli x15 ,  x11 ,  11&31
	bge x0, x15, .LBB0_16
.LBB0_9:                                //  %for.body41
                                        //  =>This Inner Loop Header: Depth=1
	addi x7 ,  x7 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_9
	jal x0, .LBB0_16
.LBB0_10:                               //  %if.then21
	add x27 ,  x0 ,  x0
	bltu x10, x12, .LBB0_51
.LBB0_11:                               //  %if.then21
	bltu x18, x5, .LBB0_51
.LBB0_12:                               //  %if.end26
	bne x10, x12, .LBB0_6
.LBB0_13:                               //  %if.then28
	add x15 ,  x0 ,  x0
	beq x26, x15, .LBB0_60
.LBB0_14:                               //  %if.then28
	addi x15 ,  x0 ,  -1
	jal x0, .LBB0_61
.LBB0_15:                               //  %if.else47
	addi x7 ,  x15 ,  -1023
.LBB0_16:                               //  %if.end50
	addi x15 ,  x0 ,  -1022
	srli x14 ,  x5 ,  20&31
	bltu x0, x14, .LBB0_21
.LBB0_17:                               //  %if.then52
	beq x0, x5, .LBB0_55
.LBB0_18:                               //  %if.else62
	slli x6 ,  x13 ,  11&31
	add x14 ,  x0 ,  x15
	bge x0, x6, .LBB0_22
.LBB0_19:                               //  %for.body66.preheader
	addi x14 ,  x0 ,  -1022
.LBB0_20:                               //  %for.body66
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  -1
	slli x6 ,  x6 ,  1&31
	blt x0, x6, .LBB0_20
	jal x0, .LBB0_22
.LBB0_21:                               //  %if.else72
	addi x14 ,  x14 ,  -1023
.LBB0_22:                               //  %if.end75
	slti x16 ,  x7 ,  -1022
	lui x6 ,  (1048575>>12)&1048575
	bltu x0, x16, .LBB0_25
.LBB0_23:                               //  %if.then77
	lui x30 ,  1048575&4095
	lui x17 ,  (1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x16 ,  x6 ,  x30
	and x16 ,  x16 ,  x11
	or x16 ,  x17 ,  x16
	slti x17 ,  x14 ,  -1022
	bltu x0, x17, .LBB0_28
.LBB0_24:                               //  %if.then95
	lui x30 ,  1048575&4095
	lui x17 ,  (1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x5 ,  x6 ,  x30
	and x5 ,  x5 ,  x13
	or x5 ,  x17 ,  x5
	add x17 ,  x0 ,  x12
	jal x0, .LBB0_31
.LBB0_25:                               //  %if.else80
	slti x16 ,  x7 ,  -1053
	bltu x0, x16, .LBB0_27
.LBB0_26:                               //  %if.then83
	addi x16 ,  x7 ,  1054
	sub x17 ,  x15 ,  x7
	srl x16 ,  x10 ,  x16
	sll x29 ,  x18 ,  x17
	sll x10 ,  x10 ,  x17
	or x16 ,  x16 ,  x29
	slti x17 ,  x14 ,  -1022
	beq x0, x17, .LBB0_24
	jal x0, .LBB0_28
.LBB0_51:
	add x9 ,  x0 ,  x10
	jal x0, .LBB0_64
.LBB0_27:                               //  %if.else89
	addi x16 ,  x0 ,  -1054
	sub x16 ,  x16 ,  x7
	sll x16 ,  x10 ,  x16
	add x10 ,  x0 ,  x0
	slti x17 ,  x14 ,  -1022
	beq x0, x17, .LBB0_24
.LBB0_28:                               //  %if.else98
	slti x17 ,  x14 ,  -1053
	bltu x0, x17, .LBB0_30
.LBB0_29:                               //  %if.then101
	addi x29 ,  x14 ,  1054
	sub x17 ,  x15 ,  x14
	sll x5 ,  x5 ,  x17
	srl x29 ,  x12 ,  x29
	sll x17 ,  x12 ,  x17
	or x5 ,  x29 ,  x5
	jal x0, .LBB0_31
.LBB0_30:                               //  %if.else107
	addi x5 ,  x0 ,  -1054
	add x17 ,  x0 ,  x0
	sub x5 ,  x5 ,  x14
	sll x5 ,  x12 ,  x5
.LBB0_31:                               //  %if.end111
	sub x29 ,  x16 ,  x5
	sltu x9 ,  x10 ,  x17
	sub x1 ,  x7 ,  x14
	sub x29 ,  x29 ,  x9
	sub x9 ,  x10 ,  x17
	beq x0, x1, .LBB0_37
.LBB0_32:                               //  %while.body.preheader
	sub x18 ,  x14 ,  x7
	add x7 ,  x0 ,  x0
	add x1 ,  x0 ,  x18
	blt x29, x0, .LBB0_36
.LBB0_33:                               //  %if.else125
	slt x10 ,  x9 ,  x0
	slli x16 ,  x29 ,  1&31
	ori x7 ,  x7 ,  1
	or x16 ,  x10 ,  x16
	add x10 ,  x0 ,  x9
.LBB0_34:                               //  %if.end130
	slli x10 ,  x10 ,  1&31
	sub x29 ,  x16 ,  x5
	slli x7 ,  x7 ,  1&31
	addi x18 ,  x1 ,  1
	sltu x9 ,  x10 ,  x17
	sub x29 ,  x29 ,  x9
	sub x9 ,  x10 ,  x17
	bltu x18, x1, .LBB0_38
.LBB0_35:                               //  %while.body
	add x1 ,  x0 ,  x18
	bge x29, x0, .LBB0_33
.LBB0_36:                               //  %if.then121
	slt x29 ,  x10 ,  x0
	slli x16 ,  x16 ,  1&31
	or x16 ,  x29 ,  x16
	jal x0, .LBB0_34
.LBB0_37:
	add x7 ,  x0 ,  x0
.LBB0_38:                               //  %while.end
	addi x17 ,  x0 ,  -1
	add x5 ,  x0 ,  x29
	blt x17, x29, .LBB0_40
.LBB0_39:                               //  %while.end
	add x5 ,  x0 ,  x16
	add x9 ,  x0 ,  x10
.LBB0_40:                               //  %while.end
	slt x10 ,  x29 ,  x0
	or x10 ,  x7 ,  x10
	xori x27 ,  x10 ,  1
	or x10 ,  x9 ,  x5
	beq x0, x10, .LBB0_46
.LBB0_41:                               //  %while.cond152.preheader
	lui x30 ,  1048575&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x6 ,  x30
	blt x11, x5, .LBB0_44
.LBB0_42:
	lui x11 ,  (1048576>>12)&1048575
.LBB0_43:                               //  %while.body154
                                        //  =>This Inner Loop Header: Depth=1
	slli x10 ,  x5 ,  1&31
	slt x5 ,  x9 ,  x0
	addi x14 ,  x14 ,  -1
	slli x9 ,  x9 ,  1&31
	or x5 ,  x5 ,  x10
	blt x5, x11, .LBB0_43
.LBB0_44:                               //  %while.end160
	slti x11 ,  x14 ,  -1022
	bltu x0, x11, .LBB0_48
.LBB0_45:                               //  %if.then162
	lui x30 ,  -1048576&4095
	slli x15 ,  x14 ,  20&31
	lui x14 ,  (1072693248>>12)&1048575
	add x15 ,  x14 ,  x15
	lui x14 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x14 ,  x14 ,  x5
	or x18 ,  x15 ,  x14
	jal x0, .LBB0_64
.LBB0_46:                               //  %if.then144
	lui x30 ,  2147483647&4095
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	and x15 ,  x15 ,  x27
	beq x26, x14, .LBB0_61
.LBB0_47:                               //  %if.then144
	sub x15 ,  x0 ,  x15
	jal x0, .LBB0_61
.LBB0_48:                               //  %if.else167
	sub x15 ,  x15 ,  x14
	slti x11 ,  x14 ,  -1042
	bltu x0, x11, .LBB0_58
.LBB0_49:                               //  %if.then170
	addi x14 ,  x14 ,  1054
	srl x11 ,  x9 ,  x15
	srl x18 ,  x5 ,  x15
	sll x14 ,  x5 ,  x14
	or x9 ,  x11 ,  x14
	jal x0, .LBB0_64
.LBB0_52:                               //  %for.cond.preheader
	addi x7 ,  x0 ,  -1043
	bge x0, x10, .LBB0_16
.LBB0_53:                               //  %for.body.preheader
	add x15 ,  x0 ,  x10
.LBB0_54:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x7 ,  x7 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_54
	jal x0, .LBB0_16
.LBB0_55:                               //  %for.cond55.preheader
	addi x14 ,  x0 ,  -1043
	bge x0, x12, .LBB0_22
.LBB0_56:                               //  %for.body57.preheader
	add x6 ,  x0 ,  x12
.LBB0_57:                               //  %for.body57
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  -1
	slli x6 ,  x6 ,  1&31
	blt x0, x6, .LBB0_57
	jal x0, .LBB0_22
.LBB0_58:                               //  %if.else176
	slti x11 ,  x14 ,  -1053
	bltu x0, x11, .LBB0_62
.LBB0_59:                               //  %if.then178
	addi x14 ,  x14 ,  1054
	srl x15 ,  x9 ,  x15
	sll x14 ,  x5 ,  x14
	or x9 ,  x15 ,  x14
	jal x0, .LBB0_63
.LBB0_60:
	slti x15 ,  x0 ,  1
.LBB0_61:                               //  %if.then28
	lui x30 ,  Zero&4095
	sw x15 ,  0 ( x8 )
	srli x15 ,  x11 ,  28&31
	lui x14 ,  (Zero>>12)&1048575
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x15 ,  8
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x11 ,  4 ( x15 )
	lw x9 ,  0 ( x15 )
	jal x0, .LBB0_4
.LBB0_62:                               //  %if.else183
	addi x15 ,  x0 ,  -1054
	sub x15 ,  x15 ,  x14
	srl x9 ,  x5 ,  x15
.LBB0_63:                               //  %do.body189
	add x18 ,  x0 ,  x25
.LBB0_64:                               //  %do.body189
	add x10 ,  x0 ,  x12
	add x11 ,  x0 ,  x13
	call fabs
	add x19 ,  x0 ,  x0
	lui x13 ,  (2097152>>12)&1048575
	add x21 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x12 ,  x0 ,  x19
	call __ltdf2
	bge x10, x0, .LBB0_68
.LBB0_65:                               //  %if.then198
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x20
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	call __gtdf2
	blt x0, x10, .LBB0_71
.LBB0_66:                               //  %lor.lhs.false201
	andi x15 ,  x27 ,  1
	beq x0, x15, .LBB0_72
.LBB0_67:                               //  %lor.lhs.false201
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x20
	call __nedf2
	beq x0, x10, .LBB0_71
	jal x0, .LBB0_72
.LBB0_68:                               //  %if.else210
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	call __ltdf2
	blt x10, x0, .LBB0_71
.LBB0_69:                               //  %lor.lhs.false213
	andi x15 ,  x27 ,  1
	beq x0, x15, .LBB0_72
.LBB0_70:                               //  %lor.lhs.false213
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __nedf2
	bltu x0, x10, .LBB0_72
.LBB0_71:                               //  %if.then219
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x20
	call __subdf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	addi x27 ,  x27 ,  1
.LBB0_72:                               //  %do.body224
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	and x15 ,  x15 ,  x27
	beq x26, x19, .LBB0_74
.LBB0_73:                               //  %do.body224
	sub x15 ,  x0 ,  x15
.LBB0_74:                               //  %do.body224
	xor x11 ,  x18 ,  x25
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	remquo, .Lfunc_end0-remquo
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
