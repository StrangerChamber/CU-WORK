	.text
	.file	"wcschr.c"
	.globl	wcschr                  //  -- Begin function wcschr
	.type	wcschr,@function
wcschr:                                 //  @wcschr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x0
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x10 )
	beq x14, x11, .LBB0_4
.LBB0_2:                                //  %do.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10 ,  x10 ,  4
	bltu x0, x14, .LBB0_1
.LBB0_3:
	add x10 ,  x0 ,  x15
.LBB0_4:                                //  %cleanup
	ret
.Lfunc_end0:
	.size	wcschr, .Lfunc_end0-wcschr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
