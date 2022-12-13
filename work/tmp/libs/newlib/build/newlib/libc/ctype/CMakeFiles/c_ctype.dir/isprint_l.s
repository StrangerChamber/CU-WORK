	.text
	.file	"isprint_l.c"
	.globl	isgraph_l               //  -- Begin function isgraph_l
	.type	isgraph_l,@function
isgraph_l:                              //  @isgraph_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _ctype_&4095
	lui x15 ,  (_ctype_>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x10
	lbu x15 ,  1 ( x15 )
	andi x10 ,  x15 ,  23
	ret
.Lfunc_end0:
	.size	isgraph_l, .Lfunc_end0-isgraph_l
	.cfi_endproc
                                        //  -- End function
	.globl	isprint_l               //  -- Begin function isprint_l
	.type	isprint_l,@function
isprint_l:                              //  @isprint_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _ctype_&4095
	lui x15 ,  (_ctype_>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x10
	lbu x15 ,  1 ( x15 )
	andi x10 ,  x15 ,  151
	ret
.Lfunc_end1:
	.size	isprint_l, .Lfunc_end1-isprint_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
