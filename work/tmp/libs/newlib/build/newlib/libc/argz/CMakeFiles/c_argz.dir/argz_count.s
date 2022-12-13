	.text
	.file	"argz_count.c"
	.globl	argz_count              //  -- Begin function argz_count
	.type	argz_count,@function
argz_count:                             //  @argz_count
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x11 ,  x11 ,  -1
	xori x14 ,  x14 ,  0
	sltiu x14 ,  x14 ,  1
	add x10 ,  x14 ,  x10
	bltu x0, x11, .LBB0_1
.LBB0_2:                                //  %for.end
	ret
.Lfunc_end0:
	.size	argz_count, .Lfunc_end0-argz_count
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
