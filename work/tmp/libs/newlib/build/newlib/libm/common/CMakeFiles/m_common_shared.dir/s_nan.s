	.text
	.file	"s_nan.c"
	.globl	nan                     //  -- Begin function nan
	.type	nan,@function
nan:                                    //  @nan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10 ,  x0 ,  x0
	lui x11 ,  (2146959360>>12)&1048575
	ret
.Lfunc_end0:
	.size	nan, .Lfunc_end0-nan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
