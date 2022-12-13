	.text
	.file	"isattyr.c"
	.globl	_isatty_r               //  -- Begin function _isatty_r
	.type	_isatty_r,@function
_isatty_r:                              //  @_isatty_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  errno&4095
	lui x15 ,  (errno>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	sw x0 ,  0 ( x9 )
	call isatty
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_3
.LBB0_1:                                //  %entry
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	sw x15 ,  0 ( x8 )
.LBB0_3:                                //  %if.end
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_isatty_r, .Lfunc_end0-_isatty_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
