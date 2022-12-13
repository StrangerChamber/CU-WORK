	.text
	.file	"strncmp.c"
	.globl	strncmp                 //  -- Begin function strncmp
	.type	strncmp,@function
strncmp:                                //  @strncmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x12, .LBB0_14
.LBB0_1:                                //  %if.end
	or x14 ,  x15 ,  x11
	andi x14 ,  x14 ,  3
	bltu x0, x14, .LBB0_8
.LBB0_2:                                //  %if.then2
	sltiu x14 ,  x12 ,  4
	bltu x0, x14, .LBB0_8
.LBB0_3:                                //  %land.rhs.preheader
	lui x14 ,  (-16843009>>12)&1048575
	lui x13 ,  (-2139062144>>12)&1048575
	addi x5 ,  x0 ,  3
.LBB0_4:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x6 ,  0 ( x15 )
	lw x7 ,  0 ( x11 )
	bne x6, x7, .LBB0_8
.LBB0_5:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x7 ,  x12 ,  4
	beq x0, x7, .LBB0_14
.LBB0_6:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  -16843009&4095
	srli x30 ,  x30 ,  12&31
	or x7 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	add x7 ,  x7 ,  x6
	xori x6 ,  x6 ,  -1
	srli x30 ,  x30 ,  12&31
	and x6 ,  x7 ,  x6
	or x7 ,  x13 ,  x30
	and x6 ,  x7 ,  x6
	bltu x0, x6, .LBB0_14
.LBB0_7:                                //  %if.end11
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x12 ,  x12 ,  -4
	addi x11 ,  x11 ,  4
	addi x15 ,  x15 ,  4
	bltu x5, x12, .LBB0_4
.LBB0_8:                                //  %if.end13
	lbu x5 ,  0 ( x11 )
	lbu x14 ,  0 ( x15 )
	bne x14, x5, .LBB0_13
.LBB0_9:                                //  %while.body21.preheader
	addi x15 ,  x15 ,  1
	addi x11 ,  x11 ,  1
	addi x13 ,  x12 ,  -1
.LBB0_10:                               //  %while.body21
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x13, .LBB0_14
.LBB0_11:                               //  %while.body21
                                        //    in Loop: Header=BB0_10 Depth=1
	andi x14 ,  x14 ,  255
	beq x0, x14, .LBB0_14
.LBB0_12:                               //  %if.end29
                                        //    in Loop: Header=BB0_10 Depth=1
	lbu x5 ,  0 ( x11 )
	addi x12 ,  x15 ,  1
	addi x6 ,  x11 ,  1
	addi x13 ,  x13 ,  -1
	lbu x14 ,  0 ( x15 )
	add x15 ,  x0 ,  x12
	add x11 ,  x0 ,  x6
	beq x14, x5, .LBB0_10
.LBB0_13:                               //  %while.end32
	sub x10 ,  x14 ,  x5
.LBB0_14:                               //  %cleanup
	ret
.Lfunc_end0:
	.size	strncmp, .Lfunc_end0-strncmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
