	.text
	.file	"wcrtomb.c"
	.globl	_wcrtomb_r              //  -- Begin function _wcrtomb_r
	.type	_wcrtomb_r,@function
_wcrtomb_r:                             //  @_wcrtomb_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  224 ( x15 )
	bltu x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	addi x11 ,  x2 ,  10
	add x12 ,  x0 ,  x0
.LBB0_2:                                //  %if.else
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_4
.LBB0_3:                                //  %if.then7
	addi x15 ,  x0 ,  138
	sw x0 ,  0 ( x8 )
	sw x15 ,  0 ( x9 )
.LBB0_4:                                //  %cleanup
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wcrtomb_r, .Lfunc_end0-_wcrtomb_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcrtomb                 //  -- Begin function wcrtomb
	.type	wcrtomb,@function
wcrtomb:                                //  @wcrtomb
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	lui x14 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	lw x15 ,  224 ( x15 )
	or x14 ,  x14 ,  x30
	lw x9 ,  0 ( x14 )
	bltu x0, x11, .LBB1_2
.LBB1_1:                                //  %if.then
	addi x11 ,  x2 ,  10
	add x12 ,  x0 ,  x0
.LBB1_2:                                //  %if.else
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_4
.LBB1_3:                                //  %if.then7
	addi x15 ,  x0 ,  138
	sw x0 ,  0 ( x8 )
	sw x15 ,  0 ( x9 )
.LBB1_4:                                //  %cleanup
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	wcrtomb, .Lfunc_end1-wcrtomb
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
