	.text
	.file	"wcsrchr.c"
	.globl	wcsrchr                 //  -- Begin function wcsrchr
	.type	wcsrchr,@function
wcsrchr:                                //  @wcsrchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	addi x14 ,  x15 ,  -4
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  4 ( x14 )
	addi x14 ,  x14 ,  4
	bltu x0, x13, .LBB0_1
.LBB0_2:                                //  %while.cond1.preheader
	add x10 ,  x0 ,  x0
	bltu x14, x15, .LBB0_9
.LBB0_3:                                //  %while.body2.preheader
	beq x0, x11, .LBB0_4
.LBB0_5:                                //  %if.end.preheader
	addi x14 ,  x14 ,  -4
.LBB0_6:                                //  %if.end
                                        //  =>This Inner Loop Header: Depth=1
	bltu x14, x15, .LBB0_9
.LBB0_7:                                //  %if.end.while.body2_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x13 ,  0 ( x14 )
	addi x14 ,  x14 ,  -4
	bne x13, x11, .LBB0_6
.LBB0_8:                                //  %if.end.while.body2_crit_edge.cleanup.loopexit_crit_edge
	addi x10 ,  x14 ,  4
.LBB0_9:                                //  %cleanup
	ret
.LBB0_4:
	add x10 ,  x0 ,  x14
	ret
.Lfunc_end0:
	.size	wcsrchr, .Lfunc_end0-wcsrchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
