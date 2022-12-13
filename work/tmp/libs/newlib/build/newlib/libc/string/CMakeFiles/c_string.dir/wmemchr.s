	.text
	.file	"wmemchr.c"
	.globl	wmemchr                 //  -- Begin function wmemchr
	.type	wmemchr,@function
wmemchr:                                //  @wmemchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x12, .LBB0_4
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x15 )
	beq x14, x11, .LBB0_2
.LBB0_3:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -1
	bltu x0, x12, .LBB0_1
.LBB0_4:                                //  %cleanup
	ret
.LBB0_2:
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	wmemchr, .Lfunc_end0-wmemchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
