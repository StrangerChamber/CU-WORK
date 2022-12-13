	.text
	.file	"wcscat.c"
	.globl	wcscat                  //  -- Begin function wcscat
	.type	wcscat,@function
wcscat:                                 //  @wcscat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x0 ,  x15
	lw x14 ,  0 ( x13 )
	addi x15 ,  x13 ,  4
	bltu x0, x14, .LBB0_1
.LBB0_2:                                //  %while.cond1.preheader
	lw x14 ,  0 ( x11 )
	beq x0, x14, .LBB0_6
.LBB0_3:                                //  %while.body3.preheader
	addi x13 ,  x0 ,  -4
	addi x12 ,  x11 ,  4
.LBB0_4:                                //  %while.body3
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x13 ,  x15
	sw x14 ,  0 ( x11 )
	add x14 ,  x13 ,  x12
	addi x13 ,  x13 ,  4
	lw x14 ,  4 ( x14 )
	bltu x0, x14, .LBB0_4
.LBB0_5:                                //  %while.end6.loopexit
	add x13 ,  x13 ,  x15
.LBB0_6:                                //  %while.end6
	sw x0 ,  0 ( x13 )
	ret
.Lfunc_end0:
	.size	wcscat, .Lfunc_end0-wcscat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
