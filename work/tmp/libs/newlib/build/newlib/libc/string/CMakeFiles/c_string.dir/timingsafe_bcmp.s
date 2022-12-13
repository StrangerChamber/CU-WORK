	.text
	.file	"timingsafe_bcmp.c"
	.globl	timingsafe_bcmp         //  -- Begin function timingsafe_bcmp
	.type	timingsafe_bcmp,@function
timingsafe_bcmp:                        //  @timingsafe_bcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x0
.LBB0_3:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x10 )
	addi x10 ,  x10 ,  1
	addi x12 ,  x12 ,  -1
	lbu x13 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	xor x14 ,  x14 ,  x13
	or x15 ,  x14 ,  x15
	bltu x0, x12, .LBB0_3
.LBB0_4:                                //  %for.end.loopexit
	sltu x10 ,  x0 ,  x15
	ret
.LBB0_1:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	timingsafe_bcmp, .Lfunc_end0-timingsafe_bcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
