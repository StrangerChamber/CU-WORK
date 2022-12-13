	.text
	.file	"sf_copysign.c"
	.globl	copysignf               //  -- Begin function copysignf
	.type	copysignf,@function
copysignf:                              //  @copysignf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	lui x14 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x10
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x11
	or x10 ,  x15 ,  x14
	ret
.Lfunc_end0:
	.size	copysignf, .Lfunc_end0-copysignf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
