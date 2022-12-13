	.text
	.file	"wcscspn.c"
	.globl	wcscspn                 //  -- Begin function wcscspn
	.type	wcscspn,@function
wcscspn:                                //  @wcscspn
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x14 ,  0 ( x10 )
	add x15 ,  x0 ,  x10
	beq x0, x14, .LBB0_9
.LBB0_1:                                //  %while.cond1.preheader.lr.ph
	lw x13 ,  0 ( x11 )
	beq x0, x13, .LBB0_4
.LBB0_2:                                //  %while.cond1.preheader.preheader
	addi x12 ,  x11 ,  4
	add x15 ,  x0 ,  x10
.LBB0_3:                                //  %while.cond1.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_6 Depth 2
	add x11 ,  x0 ,  x12
	add x5 ,  x0 ,  x13
	beq x14, x5, .LBB0_9
.LBB0_6:                                //  %while.cond1
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x5 ,  0 ( x11 )
	addi x6 ,  x11 ,  4
	add x11 ,  x0 ,  x6
	beq x0, x5, .LBB0_8
.LBB0_7:                                //  %while.body3
                                        //    in Loop: Header=BB0_6 Depth=2
	bne x14, x5, .LBB0_6
	jal x0, .LBB0_9
.LBB0_8:                                //  %while.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x14 ,  4 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB0_3
	jal x0, .LBB0_9
.LBB0_4:                                //  %while.cond1.preheader.us.preheader
	add x15 ,  x0 ,  x10
.LBB0_5:                                //  %while.cond1.preheader.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  4 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB0_5
.LBB0_9:                                //  %done
	sub x15 ,  x15 ,  x10
	srai x10 ,  x15 ,  2&31
	ret
.Lfunc_end0:
	.size	wcscspn, .Lfunc_end0-wcscspn
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
