	.text
	.file	"wmemset.c"
	.globl	wmemset                 //  -- Begin function wmemset
	.type	wmemset,@function
wmemset:                                //  @wmemset
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %for.body.preheader
	add x15 ,  x0 ,  x10
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x11 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -1
	bltu x0, x12, .LBB0_2
.LBB0_3:                                //  %for.end
	ret
.Lfunc_end0:
	.size	wmemset, .Lfunc_end0-wmemset
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
