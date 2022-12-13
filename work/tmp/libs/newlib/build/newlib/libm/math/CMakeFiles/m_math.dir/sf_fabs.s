	.text
	.file	"sf_fabs.c"
	.globl	fabsf                   //  -- Begin function fabsf
	.type	fabsf,@function
fabsf:                                  //  @fabsf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x10 ,  x15 ,  x10
	ret
.Lfunc_end0:
	.size	fabsf, .Lfunc_end0-fabsf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
