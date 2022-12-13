	.text
	.file	"asniprintf.c"
	.globl	_asniprintf_r           //  -- Begin function _asniprintf_r
	.type	_asniprintf_r,@function
_asniprintf_r:                          //  @_asniprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw x8 ,  128 ( x2 )
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x14 ,  124 ( x2 )
	lw x15 ,  0 ( x8 )
	sltu x13 ,  x0 ,  x14
	sltu x12 ,  x0 ,  x15
	and x13 ,  x12 ,  x13
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %entry
	addi x12 ,  x0 ,  648
	addi x11 ,  x2 ,  4
	sh x12 ,  12 ( x11 )
	add x12 ,  x0 ,  x0
	beq x0, x13, .LBB0_3
	jal x0, .LBB0_4
.LBB0_2:
	addi x12 ,  x0 ,  1544
	addi x11 ,  x2 ,  4
	sh x12 ,  12 ( x11 )
	add x12 ,  x0 ,  x0
	beq x0, x13, .LBB0_3
.LBB0_4:                                //  %entry
	bltu x0, x13, .LBB0_5
.LBB0_8:                                //  %entry
	add x15 ,  x0 ,  x12
	lw x10 ,  120 ( x2 )
	sw x14 ,  20 ( x2 )
	sw x14 ,  4 ( x2 )
	bge x15, x0, .LBB0_6
.LBB0_9:                                //  %if.then3
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_10
.LBB0_3:                                //  %entry
	add x14 ,  x0 ,  x12
	beq x0, x13, .LBB0_8
.LBB0_5:                                //  %entry
	lw x10 ,  120 ( x2 )
	sw x14 ,  20 ( x2 )
	sw x14 ,  4 ( x2 )
	blt x15, x0, .LBB0_9
.LBB0_6:                                //  %if.end4
	lw x12 ,  132 ( x2 )
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	addi x13 ,  x2 ,  136
	sw x15 ,  8 ( x11 )
	sw x15 ,  24 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x13 ,  108 ( x2 )
	or x14 ,  x14 ,  x30
	sh x14 ,  14 ( x11 )
	call _svfiprintf_r
	blt x10, x0, .LBB0_10
.LBB0_7:                                //  %if.end10
	lw x15 ,  4 ( x2 )
	sw x10 ,  0 ( x8 )
	sb x0 ,  0 ( x15 )
	lw x10 ,  20 ( x2 )
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.LBB0_10:
	add x10 ,  x0 ,  x0
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_asniprintf_r, .Lfunc_end0-_asniprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	asniprintf              //  -- Begin function asniprintf
	.type	asniprintf,@function
asniprintf:                             //  @asniprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw x8 ,  124 ( x2 )
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x14 ,  120 ( x2 )
	lw x15 ,  0 ( x8 )
	sltu x13 ,  x0 ,  x14
	sltu x12 ,  x0 ,  x15
	and x13 ,  x12 ,  x13
	bltu x0, x13, .LBB1_2
.LBB1_1:                                //  %entry
	addi x12 ,  x0 ,  648
	addi x11 ,  x2 ,  4
	sh x12 ,  12 ( x11 )
	add x12 ,  x0 ,  x0
	beq x0, x13, .LBB1_3
	jal x0, .LBB1_4
.LBB1_2:
	addi x12 ,  x0 ,  1544
	addi x11 ,  x2 ,  4
	sh x12 ,  12 ( x11 )
	add x12 ,  x0 ,  x0
	bltu x0, x13, .LBB1_4
.LBB1_3:                                //  %entry
	add x14 ,  x0 ,  x12
.LBB1_4:                                //  %entry
	bltu x0, x13, .LBB1_6
.LBB1_5:                                //  %entry
	add x15 ,  x0 ,  x12
.LBB1_6:                                //  %entry
	lui x30 ,  _impure_ptr&4095
	sw x14 ,  20 ( x2 )
	sw x14 ,  4 ( x2 )
	lui x14 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lw x10 ,  0 ( x14 )
	blt x15, x0, .LBB1_9
.LBB1_7:                                //  %if.end4
	lw x12 ,  128 ( x2 )
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	addi x13 ,  x2 ,  132
	sw x15 ,  8 ( x11 )
	sw x15 ,  24 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x13 ,  108 ( x2 )
	or x14 ,  x14 ,  x30
	sh x14 ,  14 ( x11 )
	call _svfiprintf_r
	blt x10, x0, .LBB1_10
.LBB1_8:                                //  %if.end10
	lw x15 ,  4 ( x2 )
	sw x10 ,  0 ( x8 )
	sb x0 ,  0 ( x15 )
	lw x10 ,  20 ( x2 )
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.LBB1_9:                                //  %if.then3
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x10 )
.LBB1_10:
	add x10 ,  x0 ,  x0
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	asniprintf, .Lfunc_end1-asniprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
