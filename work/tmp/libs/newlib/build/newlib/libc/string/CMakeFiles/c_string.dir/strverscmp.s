	.text
	.file	"strverscmp.c"
	.globl	strverscmp              //  -- Begin function strverscmp
	.type	strverscmp,@function
strverscmp:                             //  @strverscmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x13 ,  0 ( x11 )
	lbu x29 ,  0 ( x10 )
	bne x29, x13, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	slti x6 ,  x0 ,  1
	add x15 ,  x0 ,  x0
	addi x16 ,  x0 ,  48
	lui x17 ,  (_ctype_>>12)&1048575
	add x14 ,  x0 ,  x29
	add x12 ,  x0 ,  x6
	add x7 ,  x0 ,  x6
	add x29 ,  x0 ,  x15
	andi x5 ,  x14 ,  255
	bltu x0, x5, .LBB0_4
	jal x0, .LBB0_24
.LBB0_8:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	add x14 ,  x7 ,  x10
	add x13 ,  x7 ,  x11
	addi x7 ,  x7 ,  1
	add x29 ,  x0 ,  x5
	lbu x13 ,  0 ( x13 )
	lbu x14 ,  0 ( x14 )
	bne x14, x13, .LBB0_9
.LBB0_3:                                //  %for.body
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x5 ,  x14 ,  255
	beq x0, x5, .LBB0_24
.LBB0_4:                                //  %if.end
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x0 ,  x12
	beq x5, x16, .LBB0_6
.LBB0_5:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	add x13 ,  x0 ,  x15
.LBB0_6:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _ctype_&4095
	add x5 ,  x0 ,  x7
	srli x30 ,  x30 ,  12&31
	or x12 ,  x17 ,  x30
	add x14 ,  x14 ,  x12
	add x12 ,  x0 ,  x6
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  4
	beq x14, x15, .LBB0_8
.LBB0_7:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	add x5 ,  x0 ,  x29
	add x12 ,  x0 ,  x13
	jal x0, .LBB0_8
.LBB0_1:
	add x15 ,  x0 ,  x0
	slti x12 ,  x0 ,  1
	add x14 ,  x0 ,  x29
	add x5 ,  x0 ,  x15
	xori x6 ,  x29 ,  48
	beq x0, x6, .LBB0_18
.LBB0_11:                               //  %land.lhs.true
	add x6 ,  x5 ,  x11
	lbu x6 ,  0 ( x6 )
	xori x6 ,  x6 ,  48
	beq x0, x6, .LBB0_18
.LBB0_12:                               //  %for.cond24.preheader
	lui x30 ,  _ctype_&4095
	lui x12 ,  (_ctype_>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x5 ,  x12 ,  x30
	addi x5 ,  x5 ,  1
	add x6 ,  x14 ,  x5
	add x5 ,  x13 ,  x5
	lbu x5 ,  0 ( x5 )
	lbu x6 ,  0 ( x6 )
	andi x5 ,  x5 ,  4
	srli x5 ,  x5 ,  2&31
	andi x6 ,  x6 ,  4
	beq x0, x6, .LBB0_16
.LBB0_13:                               //  %for.body31.preheader
	addi x15 ,  x15 ,  1
	add x11 ,  x15 ,  x11
	add x10 ,  x15 ,  x10
	slti x15 ,  x0 ,  1
.LBB0_15:                               //  %for.body31
                                        //  =>This Inner Loop Header: Depth=1
	andi x5 ,  x5 ,  1
	beq x0, x5, .LBB0_24
.LBB0_14:                               //  %for.cond24
                                        //    in Loop: Header=BB0_15 Depth=1
	lui x30 ,  _ctype_&4095
	lbu x6 ,  0 ( x10 )
	addi x10 ,  x10 ,  1
	lbu x7 ,  0 ( x11 )
	srli x30 ,  x30 ,  12&31
	addi x11 ,  x11 ,  1
	or x5 ,  x12 ,  x30
	addi x5 ,  x5 ,  1
	add x6 ,  x6 ,  x5
	add x5 ,  x7 ,  x5
	lbu x6 ,  0 ( x6 )
	lbu x5 ,  0 ( x5 )
	andi x6 ,  x6 ,  4
	andi x5 ,  x5 ,  4
	srli x5 ,  x5 ,  2&31
	bltu x0, x6, .LBB0_15
.LBB0_16:                               //  %for.end42
	beq x0, x5, .LBB0_23
.LBB0_17:
	addi x15 ,  x0 ,  -1
	add x10 ,  x0 ,  x15
	ret
.LBB0_9:                                //  %for.end.loopexit
	add x6 ,  x5 ,  x10
	addi x15 ,  x7 ,  -1
	lbu x29 ,  0 ( x6 )
	xori x6 ,  x29 ,  48
	bltu x0, x6, .LBB0_11
.LBB0_18:                               //  %if.else51
	bgeu x5, x15, .LBB0_23
.LBB0_19:                               //  %if.else51
	beq x0, x12, .LBB0_23
.LBB0_20:                               //  %land.lhs.true56
	lui x30 ,  _ctype_&4095
	lui x15 ,  (_ctype_>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	add x12 ,  x14 ,  x12
	lbu x12 ,  1 ( x12 )
	andi x12 ,  x12 ,  4
	bltu x0, x12, .LBB0_22
.LBB0_21:                               //  %lor.lhs.false
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x13 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  4
	bltu x0, x15, .LBB0_22
.LBB0_23:                               //  %if.end81
	sub x15 ,  x14 ,  x13
.LBB0_24:                               //  %cleanup87
	add x10 ,  x0 ,  x15
	ret
.LBB0_22:                               //  %if.then69
	addi x15 ,  x13 ,  -48
	addi x14 ,  x14 ,  -48
	andi x15 ,  x15 ,  255
	andi x14 ,  x14 ,  255
	sub x15 ,  x14 ,  x15
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	strverscmp, .Lfunc_end0-strverscmp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
