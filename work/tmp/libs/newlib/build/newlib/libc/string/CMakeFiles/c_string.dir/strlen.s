	.text
	.file	"strlen.c"
	.globl	strlen                  //  -- Begin function strlen
	.type	strlen,@function
strlen:                                 //  @strlen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	andi x14 ,  x10 ,  3
	add x15 ,  x0 ,  x10
	beq x0, x14, .LBB0_6
.LBB0_1:                                //  %while.body.preheader
	lbu x15 ,  0 ( x10 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end.preheader
	addi x15 ,  x10 ,  1
.LBB0_5:                                //  %if.end
                                        //  =>This Inner Loop Header: Depth=1
	andi x14 ,  x15 ,  3
	beq x0, x14, .LBB0_6
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_5
.LBB0_10:                               //  %cleanup.loopexit
	addi x15 ,  x15 ,  -1
	sub x10 ,  x15 ,  x10
	ret
.LBB0_6:                                //  %while.end
	addi x15 ,  x15 ,  -4
	lui x14 ,  (-16843009>>12)&1048575
	lui x13 ,  (-2139062144>>12)&1048575
.LBB0_7:                                //  %while.cond2
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  4 ( x15 )
	lui x30 ,  -16843009&4095
	addi x15 ,  x15 ,  4
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x11 ,  x11 ,  x12
	xori x5 ,  x12 ,  -1
	and x11 ,  x11 ,  x5
	or x5 ,  x13 ,  x30
	and x11 ,  x5 ,  x11
	beq x0, x11, .LBB0_7
.LBB0_8:                                //  %while.end8
	andi x14 ,  x12 ,  255
	beq x0, x14, .LBB0_11
.LBB0_9:                                //  %while.cond9.while.cond9_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  1 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_9
.LBB0_11:                               //  %cleanup
	sub x10 ,  x15 ,  x10
	ret
.LBB0_2:
	add x15 ,  x0 ,  x10
	sub x10 ,  x15 ,  x10
	ret
.Lfunc_end0:
	.size	strlen, .Lfunc_end0-strlen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
