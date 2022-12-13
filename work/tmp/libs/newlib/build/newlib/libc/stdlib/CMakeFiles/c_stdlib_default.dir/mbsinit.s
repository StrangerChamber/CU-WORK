	.text
	.file	"mbsinit.c"
	.globl	mbsinit                 //  -- Begin function mbsinit
	.type	mbsinit,@function
mbsinit:                                //  @mbsinit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %lor.lhs.false
	.cfi_def_cfa 2, 0
	lw x15 ,  0 ( x10 )
	xori x15 ,  x15 ,  0
	sltiu x10 ,  x15 ,  1
	ret
.LBB0_2:                                //  %return
	slti x10 ,  x0 ,  1
	ret
.Lfunc_end0:
	.size	mbsinit, .Lfunc_end0-mbsinit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
