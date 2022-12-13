	.text
	.file	"towupper.c"
	.globl	towupper                //  -- Begin function towupper
	.type	towupper,@function
towupper:                               //  @towupper
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	addi x15 ,  x0 ,  254
	bltu x15, x10, .LBB0_3
.LBB0_1:                                //  %cond.true
	.cfi_def_cfa 2, 0
	lui x30 ,  _ctype_&4095
	lui x15 ,  (_ctype_>>12)&1048575
	addi x14 ,  x0 ,  2
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x10 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  3
	bne x15, x14, .LBB0_3
.LBB0_2:
	addi x10 ,  x10 ,  -32
.LBB0_3:                                //  %cond.end5
	ret
.Lfunc_end0:
	.size	towupper, .Lfunc_end0-towupper
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
