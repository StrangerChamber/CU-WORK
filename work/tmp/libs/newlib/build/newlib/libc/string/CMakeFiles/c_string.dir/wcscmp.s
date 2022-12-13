	.text
	.file	"wcscmp.c"
	.globl	wcscmp                  //  -- Begin function wcscmp
	.type	wcscmp,@function
wcscmp:                                 //  @wcscmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x11 )
	lw x14 ,  0 ( x15 )
	bne x14, x13, .LBB0_3
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x15 ,  x15 ,  4
	addi x11 ,  x11 ,  4
	bltu x0, x14, .LBB0_1
.LBB0_4:                                //  %return
	ret
.LBB0_3:                                //  %while.end
	sub x10 ,  x14 ,  x13
	ret
.Lfunc_end0:
	.size	wcscmp, .Lfunc_end0-wcscmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
