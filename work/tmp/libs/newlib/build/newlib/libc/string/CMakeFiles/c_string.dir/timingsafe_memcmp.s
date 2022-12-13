	.text
	.file	"timingsafe_memcmp.c"
	.globl	timingsafe_memcmp       //  -- Begin function timingsafe_memcmp
	.type	timingsafe_memcmp,@function
timingsafe_memcmp:                      //  @timingsafe_memcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %for.body.preheader
	add x14 ,  x0 ,  x10
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -1
	lbu x5 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	sub x6 ,  x5 ,  x13
	sub x13 ,  x13 ,  x5
	srai x13 ,  x13 ,  8&31
	srai x5 ,  x6 ,  8&31
	sub x6 ,  x5 ,  x13
	or x13 ,  x14 ,  x13
	xori x14 ,  x14 ,  -1
	and x14 ,  x14 ,  x6
	or x13 ,  x5 ,  x13
	or x10 ,  x10 ,  x14
	add x14 ,  x0 ,  x13
	bltu x0, x12, .LBB0_2
.LBB0_3:                                //  %for.end
	ret
.Lfunc_end0:
	.size	timingsafe_memcmp, .Lfunc_end0-timingsafe_memcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
