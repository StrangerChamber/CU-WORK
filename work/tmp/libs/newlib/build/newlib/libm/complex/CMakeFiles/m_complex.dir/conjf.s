	.text
	.file	"conjf.c"
	.globl	conjf                   //  -- Begin function conjf
	.type	conjf,@function
conjf:                                  //  @conjf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x15 ,  4 ( x11 )
	lui x30 ,  -2147483648&4095
	lui x14 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	xor x15 ,  x14 ,  x15
	sw x15 ,  4 ( x10 )
	lw x15 ,  0 ( x11 )
	sw x15 ,  0 ( x10 )
	ret
.Lfunc_end0:
	.size	conjf, .Lfunc_end0-conjf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
