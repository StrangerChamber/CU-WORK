	.text
	.file	"fsetpos.c"
	.globl	_fsetpos_r              //  -- Begin function _fsetpos_r
	.type	_fsetpos_r,@function
_fsetpos_r:                             //  @_fsetpos_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lw x12 ,  0 ( x12 )
	add x13 ,  x0 ,  x0
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call _fseek_r
	sltu x10 ,  x0 ,  x10
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fsetpos_r, .Lfunc_end0-_fsetpos_r
	.cfi_endproc
                                        //  -- End function
	.globl	fsetpos                 //  -- Begin function fsetpos
	.type	fsetpos,@function
fsetpos:                                //  @fsetpos
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  _impure_ptr&4095
	lui x14 ,  (_impure_ptr>>12)&1048575
	add x15 ,  x0 ,  x10
	lw x12 ,  0 ( x11 )
	add x13 ,  x0 ,  x0
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x15
	or x14 ,  x14 ,  x30
	lw x10 ,  0 ( x14 )
	call _fseek_r
	sltu x10 ,  x0 ,  x10
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	fsetpos, .Lfunc_end1-fsetpos
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
