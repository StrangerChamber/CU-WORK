	.text
	.file	"s_infinity.c"
	.globl	infinity                //  -- Begin function infinity
	.type	infinity,@function
infinity:                               //  @infinity
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10 ,  x0 ,  x0
	lui x11 ,  (2146435072>>12)&1048575
	ret
.Lfunc_end0:
	.size	infinity, .Lfunc_end0-infinity
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
