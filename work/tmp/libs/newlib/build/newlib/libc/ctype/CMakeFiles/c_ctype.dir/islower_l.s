	.text
	.file	"islower_l.c"
	.globl	islower_l               //  -- Begin function islower_l
	.type	islower_l,@function
islower_l:                              //  @islower_l
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
	andi x15 ,  x15 ,  3
	xori x15 ,  x15 ,  2
	sltiu x10 ,  x15 ,  1
	ret
.Lfunc_end0:
	.size	islower_l, .Lfunc_end0-islower_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
