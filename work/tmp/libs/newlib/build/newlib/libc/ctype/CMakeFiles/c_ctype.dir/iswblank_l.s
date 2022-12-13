	.text
	.file	"iswblank_l.c"
	.globl	iswblank_l              //  -- Begin function iswblank_l
	.type	iswblank_l,@function
iswblank_l:                             //  @iswblank_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	addi x15 ,  x0 ,  255
	bltu x15, x10, .LBB0_1
.LBB0_2:                                //  %cond.true
	.cfi_def_cfa 2, 0
	lui x30 ,  _ctype_&4095
	lui x15 ,  (_ctype_>>12)&1048575
	xori x14 ,  x10 ,  9
	srli x30 ,  x30 ,  12&31
	sltiu x14 ,  x14 ,  1
	or x15 ,  x15 ,  x30
	add x15 ,  x10 ,  x15
	lbu x15 ,  1 ( x15 )
	srli x15 ,  x15 ,  7&31
	or x10 ,  x14 ,  x15
	ret
.LBB0_1:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	iswblank_l, .Lfunc_end0-iswblank_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
