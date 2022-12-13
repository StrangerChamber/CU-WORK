	.text
	.file	"iswxdigit_l.c"
	.globl	iswxdigit_l             //  -- Begin function iswxdigit_l
	.type	iswxdigit_l,@function
iswxdigit_l:                            //  @iswxdigit_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	slti x10 ,  x0 ,  1
	addi x14 ,  x15 ,  -48
	sltiu x14 ,  x14 ,  10
	bltu x0, x14, .LBB0_3
.LBB0_1:                                //  %entry
	addi x14 ,  x15 ,  -97
	sltiu x14 ,  x14 ,  6
	bltu x0, x14, .LBB0_3
.LBB0_2:                                //  %lor.rhs
	addi x15 ,  x15 ,  -65
	sltiu x10 ,  x15 ,  6
.LBB0_3:                                //  %lor.end
	ret
.Lfunc_end0:
	.size	iswxdigit_l, .Lfunc_end0-iswxdigit_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
