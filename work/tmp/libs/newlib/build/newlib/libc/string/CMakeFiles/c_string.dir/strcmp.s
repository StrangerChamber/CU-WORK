	.text
	.file	"strcmp.c"
	.globl	strcmp                  //  -- Begin function strcmp
	.type	strcmp,@function
strcmp:                                 //  @strcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_5
.LBB0_1:                                //  %if.then
	lw x12 ,  0 ( x10 )
	lw x15 ,  0 ( x11 )
	bne x12, x15, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	lui x14 ,  (-16843009>>12)&1048575
	lui x13 ,  (-2139062144>>12)&1048575
	add x15 ,  x0 ,  x0
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  -16843009&4095
	srli x30 ,  x30 ,  12&31
	or x5 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	add x5 ,  x5 ,  x12
	xori x12 ,  x12 ,  -1
	srli x30 ,  x30 ,  12&31
	and x12 ,  x5 ,  x12
	or x5 ,  x13 ,  x30
	and x12 ,  x5 ,  x12
	bltu x0, x12, .LBB0_11
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x12 ,  4 ( x10 )
	addi x10 ,  x10 ,  4
	lw x5 ,  4 ( x11 )
	addi x11 ,  x11 ,  4
	beq x12, x5, .LBB0_3
.LBB0_5:                                //  %if.end7
	lbu x14 ,  0 ( x10 )
	add x15 ,  x0 ,  x0
	beq x0, x14, .LBB0_10
.LBB0_6:                                //  %land.rhs.preheader
	addi x13 ,  x10 ,  1
.LBB0_7:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12 ,  0 ( x11 )
	andi x10 ,  x14 ,  255
	bne x10, x12, .LBB0_8
.LBB0_9:                                //  %while.body15
                                        //    in Loop: Header=BB0_7 Depth=1
	lbu x14 ,  0 ( x13 )
	addi x12 ,  x13 ,  1
	addi x11 ,  x11 ,  1
	add x13 ,  x0 ,  x12
	bltu x0, x14, .LBB0_7
	jal x0, .LBB0_10
.LBB0_8:
	add x15 ,  x0 ,  x14
.LBB0_10:                               //  %while.end18
	lbu x14 ,  0 ( x11 )
	andi x15 ,  x15 ,  255
	sub x15 ,  x15 ,  x14
.LBB0_11:                               //  %cleanup
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	strcmp, .Lfunc_end0-strcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
