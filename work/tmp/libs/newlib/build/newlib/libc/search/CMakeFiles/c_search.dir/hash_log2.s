	.text
	.file	"hash_log2.c"
	.globl	__log2                  //  -- Begin function __log2
	.type	__log2,@function
__log2:                                 //  @__log2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	sltiu x14 ,  x15 ,  2
	bltu x0, x14, .LBB0_3
.LBB0_1:                                //  %for.inc.preheader
	slti x14 ,  x0 ,  1
.LBB0_2:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  1
	slli x14 ,  x14 ,  1&31
	bltu x14, x15, .LBB0_2
.LBB0_3:                                //  %for.end
	ret
.Lfunc_end0:
	.size	__log2, .Lfunc_end0-__log2
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
