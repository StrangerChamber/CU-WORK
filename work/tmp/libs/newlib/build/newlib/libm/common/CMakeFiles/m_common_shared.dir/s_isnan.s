	.text
	.file	"s_isnan.c"
	.globl	isnan                   //  -- Begin function isnan
	.type	isnan,@function
isnan:                                  //  @isnan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  2147483647&4095
	sub x14 ,  x0 ,  x10
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x10
	or x15 ,  x15 ,  x30
	slt x14 ,  x14 ,  x0
	and x15 ,  x15 ,  x11
	or x15 ,  x14 ,  x15
	lui x14 ,  (2146435072>>12)&1048575
	sub x15 ,  x14 ,  x15
	slt x10 ,  x15 ,  x0
	ret
.Lfunc_end0:
	.size	isnan, .Lfunc_end0-isnan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
