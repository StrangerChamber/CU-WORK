	.text
	.file	"isblank.c"
	.globl	isblank                 //  -- Begin function isblank
	.type	isblank,@function
isblank:                                //  @isblank
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _ctype_&4095
	lui x15 ,  (_ctype_>>12)&1048575
	xori x14 ,  x10 ,  9
	srli x30 ,  x30 ,  12&31
	sltiu x14 ,  x14 ,  1
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x10
	lbu x15 ,  1 ( x15 )
	srli x15 ,  x15 ,  7&31
	or x10 ,  x14 ,  x15
	ret
.Lfunc_end0:
	.size	isblank, .Lfunc_end0-isblank
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
