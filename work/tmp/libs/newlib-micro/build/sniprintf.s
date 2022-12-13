	.text
	.file	"sniprintf.c"
	.globl	_sniprintf_r            //  -- Begin function _sniprintf_r
	.type	_sniprintf_r,@function
_sniprintf_r:                           //  @_sniprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw x8 ,  128 ( x2 )
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x9 ,  136 ( x2 )
	blt x9, x0, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x12 ,  140 ( x2 )
	addi x14 ,  x9 ,  -1
	lw x15 ,  132 ( x2 )
	bltu x14, x9, .LBB0_4
.LBB0_3:                                //  %if.end
	add x14 ,  x0 ,  x0
.LBB0_4:                                //  %if.end
	lui x30 ,  -65016&4095
	lui x13 ,  (-65016>>12)&1048575
	addi x11 ,  x2 ,  8
	add x10 ,  x0 ,  x8
	sw x15 ,  8 ( x2 )
	sw x14 ,  28 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x11 )
	sw x14 ,  8 ( x11 )
	or x13 ,  x13 ,  x30
	sw x13 ,  12 ( x11 )
	addi x13 ,  x2 ,  144
	sw x13 ,  112 ( x2 )
	call _svfiprintf_r
	addi x15 ,  x0 ,  -2
	blt x15, x10, .LBB0_6
.LBB0_5:                                //  %if.then6
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x8 )
.LBB0_6:                                //  %if.end8
	beq x0, x9, .LBB0_8
.LBB0_7:                                //  %if.then10
	lw x15 ,  8 ( x2 )
	sb x0 ,  0 ( x15 )
	jal x0, .LBB0_8
.LBB0_1:                                //  %if.then
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x8 )
.LBB0_8:                                //  %cleanup
	lw x8 ,  116 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_sniprintf_r, .Lfunc_end0-_sniprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	sniprintf               //  -- Begin function sniprintf
	.type	sniprintf,@function
sniprintf:                              //  @sniprintf
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
	sw x8 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw x9 ,  132 ( x2 )
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x8 ,  0 ( x15 )
	blt x9, x0, .LBB1_1
.LBB1_2:                                //  %if.end
	lw x12 ,  136 ( x2 )
	addi x14 ,  x9 ,  -1
	lw x15 ,  128 ( x2 )
	bltu x14, x9, .LBB1_4
.LBB1_3:                                //  %if.end
	add x14 ,  x0 ,  x0
.LBB1_4:                                //  %if.end
	lui x30 ,  -65016&4095
	lui x13 ,  (-65016>>12)&1048575
	addi x11 ,  x2 ,  8
	add x10 ,  x0 ,  x8
	sw x15 ,  8 ( x2 )
	sw x14 ,  28 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x11 )
	sw x14 ,  8 ( x11 )
	or x13 ,  x13 ,  x30
	sw x13 ,  12 ( x11 )
	addi x13 ,  x2 ,  140
	sw x13 ,  112 ( x2 )
	call _svfiprintf_r
	addi x15 ,  x0 ,  -2
	blt x15, x10, .LBB1_6
.LBB1_5:                                //  %if.then6
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x8 )
.LBB1_6:                                //  %if.end8
	beq x0, x9, .LBB1_8
.LBB1_7:                                //  %if.then10
	lw x15 ,  8 ( x2 )
	sb x0 ,  0 ( x15 )
	jal x0, .LBB1_8
.LBB1_1:                                //  %if.then
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x8 )
.LBB1_8:                                //  %cleanup
	lw x8 ,  116 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	sniprintf, .Lfunc_end1-sniprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
