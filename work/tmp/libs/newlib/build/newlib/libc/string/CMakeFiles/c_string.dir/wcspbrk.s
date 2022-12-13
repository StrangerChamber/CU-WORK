	.text
	.file	"wcspbrk.c"
	.globl	wcspbrk                 //  -- Begin function wcspbrk
	.type	wcspbrk,@function
wcspbrk:                                //  @wcspbrk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	lw x14 ,  0 ( x15 )
	beq x0, x14, .LBB0_10
.LBB0_1:                                //  %while.cond1.preheader.lr.ph
	lw x13 ,  0 ( x11 )
	beq x0, x13, .LBB0_4
.LBB0_2:                                //  %while.cond1.preheader.preheader
	addi x12 ,  x11 ,  4
.LBB0_3:                                //  %while.cond1.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
	add x11 ,  x0 ,  x12
	add x5 ,  x0 ,  x13
.LBB0_7:                                //  %while.body3
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x14, x5, .LBB0_8
.LBB0_6:                                //  %while.cond1
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x5 ,  0 ( x11 )
	addi x6 ,  x11 ,  4
	add x11 ,  x0 ,  x6
	bltu x0, x5, .LBB0_7
.LBB0_9:                                //  %while.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x14 ,  4 ( x15 )
	addi x11 ,  x15 ,  4
	add x15 ,  x0 ,  x11
	bltu x0, x14, .LBB0_3
	jal x0, .LBB0_10
.LBB0_8:
	add x10 ,  x0 ,  x15
	ret
.LBB0_4:                                //  %while.cond1.preheader.us.preheader
	addi x15 ,  x15 ,  4
.LBB0_5:                                //  %while.cond1.preheader.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  4
	add x15 ,  x0 ,  x14
	bltu x0, x13, .LBB0_5
.LBB0_10:                               //  %cleanup
	ret
.Lfunc_end0:
	.size	wcspbrk, .Lfunc_end0-wcspbrk
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
