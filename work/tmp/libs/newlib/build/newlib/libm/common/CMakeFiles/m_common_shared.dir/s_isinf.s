	.text
	.file	"s_isinf.c"
	.globl	isinf                   //  -- Begin function isinf
	.type	isinf,@function
isinf:                                  //  @isinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  2147483647&4095
	sub x14 ,  x0 ,  x10
	lui x15 ,  (2147483647>>12)&1048575
	lui x13 ,  (2146435072>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x10
	or x15 ,  x15 ,  x30
	lui x30 ,  -2146435072&4095
	slt x14 ,  x14 ,  x0
	and x15 ,  x15 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x14 ,  x15
	lui x14 ,  (-2146435072>>12)&1048575
	or x14 ,  x14 ,  x30
	add x14 ,  x14 ,  x15
	sub x15 ,  x13 ,  x15
	or x15 ,  x14 ,  x15
	xori x15 ,  x15 ,  -1
	slt x10 ,  x15 ,  x0
	ret
.Lfunc_end0:
	.size	isinf, .Lfunc_end0-isinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
