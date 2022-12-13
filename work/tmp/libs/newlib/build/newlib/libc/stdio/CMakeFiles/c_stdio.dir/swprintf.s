	.text
	.file	"swprintf.c"
	.globl	_swprintf_r             //  -- Begin function _swprintf_r
	.type	_swprintf_r,@function
_swprintf_r:                            //  @_swprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9 ,  136 ( x2 )
	sw x8 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x8 ,  128 ( x2 )
	srli x15 ,  x9 ,  29&31
	bltu x0, x15, .LBB0_6
.LBB0_1:                                //  %if.end
	lw x15 ,  132 ( x2 )
	lui x30 ,  -65016&4095
	addi x11 ,  x2 ,  8
	lui x14 ,  (-65016>>12)&1048575
	lw x12 ,  140 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  12 ( x11 )
	sw x15 ,  16 ( x11 )
	sw x15 ,  8 ( x2 )
	add x15 ,  x0 ,  x0
	beq x9, x15, .LBB0_3
.LBB0_2:
	slli x15 ,  x9 ,  2&31
	addi x15 ,  x15 ,  -4
.LBB0_3:                                //  %if.end
	addi x13 ,  x2 ,  144
	add x10 ,  x0 ,  x8
	sw x15 ,  8 ( x11 )
	sw x15 ,  28 ( x2 )
	sw x13 ,  112 ( x2 )
	call _svfwprintf_r
	beq x0, x9, .LBB0_5
.LBB0_4:                                //  %if.then6
	lw x15 ,  8 ( x2 )
	sw x0 ,  0 ( x15 )
.LBB0_5:                                //  %if.end8
	bltu x10, x9, .LBB0_7
.LBB0_6:                                //  %cleanup.sink.split
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x8 )
.LBB0_7:                                //  %cleanup
	lw x8 ,  116 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_swprintf_r, .Lfunc_end0-_swprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	swprintf                //  -- Begin function swprintf
	.type	swprintf,@function
swprintf:                               //  @swprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9 ,  132 ( x2 )
	sw x8 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x8 ,  0 ( x15 )
	srli x15 ,  x9 ,  29&31
	bltu x0, x15, .LBB1_6
.LBB1_1:                                //  %if.end
	lw x15 ,  128 ( x2 )
	lui x30 ,  -65016&4095
	addi x11 ,  x2 ,  8
	lui x14 ,  (-65016>>12)&1048575
	lw x12 ,  136 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  12 ( x11 )
	sw x15 ,  16 ( x11 )
	sw x15 ,  8 ( x2 )
	add x15 ,  x0 ,  x0
	beq x9, x15, .LBB1_3
.LBB1_2:
	slli x15 ,  x9 ,  2&31
	addi x15 ,  x15 ,  -4
.LBB1_3:                                //  %if.end
	addi x13 ,  x2 ,  140
	add x10 ,  x0 ,  x8
	sw x15 ,  8 ( x11 )
	sw x15 ,  28 ( x2 )
	sw x13 ,  112 ( x2 )
	call _svfwprintf_r
	beq x0, x9, .LBB1_5
.LBB1_4:                                //  %if.then6
	lw x15 ,  8 ( x2 )
	sw x0 ,  0 ( x15 )
.LBB1_5:                                //  %if.end8
	bltu x10, x9, .LBB1_7
.LBB1_6:                                //  %cleanup.sink.split
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x8 )
.LBB1_7:                                //  %cleanup
	lw x8 ,  116 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	swprintf, .Lfunc_end1-swprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
