	.text
	.file	"vasnprintf.c"
	.globl	_vasnprintf_r           //  -- Begin function _vasnprintf_r
	.type	_vasnprintf_r,@function
_vasnprintf_r:                          //  @_vasnprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x12
	sltu x15 ,  x0 ,  x11
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x12 ,  0 ( x8 )
	sltu x5 ,  x0 ,  x12
	and x5 ,  x5 ,  x15
	bltu x0, x5, .LBB0_2
.LBB0_1:                                //  %entry
	addi x6 ,  x0 ,  648
	addi x15 ,  x2 ,  8
	sh x6 ,  12 ( x15 )
	add x6 ,  x0 ,  x0
	beq x0, x5, .LBB0_3
	jal x0, .LBB0_4
.LBB0_2:
	addi x6 ,  x0 ,  1544
	addi x15 ,  x2 ,  8
	sh x6 ,  12 ( x15 )
	add x6 ,  x0 ,  x0
	beq x0, x5, .LBB0_3
.LBB0_4:                                //  %entry
	bltu x0, x5, .LBB0_5
.LBB0_8:                                //  %entry
	add x11 ,  x0 ,  x6
	sw x11 ,  24 ( x2 )
	sw x11 ,  8 ( x2 )
	bge x12, x0, .LBB0_6
.LBB0_9:                                //  %if.then3
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_10
.LBB0_3:                                //  %entry
	add x12 ,  x0 ,  x6
	beq x0, x5, .LBB0_8
.LBB0_5:                                //  %entry
	sw x11 ,  24 ( x2 )
	sw x11 ,  8 ( x2 )
	blt x12, x0, .LBB0_9
.LBB0_6:                                //  %if.end4
	lui x30 ,  65535&4095
	lui x11 ,  (65535>>12)&1048575
	sw x12 ,  8 ( x15 )
	sw x12 ,  28 ( x2 )
	add x12 ,  x0 ,  x13
	add x13 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x11 ,  x11 ,  x30
	sh x11 ,  14 ( x15 )
	add x11 ,  x0 ,  x15
	call _svfprintf_r
	blt x10, x0, .LBB0_10
.LBB0_7:                                //  %if.end8
	lw x15 ,  8 ( x2 )
	sw x10 ,  0 ( x8 )
	sb x0 ,  0 ( x15 )
	lw x10 ,  24 ( x2 )
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
	.size	_vasnprintf_r, .Lfunc_end0-_vasnprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	vasnprintf              //  -- Begin function vasnprintf
	.type	vasnprintf,@function
vasnprintf:                             //  @vasnprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lui x30 ,  _impure_ptr&4095
	lui x14 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	add x15 ,  x0 ,  x10
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	sltu x11 ,  x0 ,  x15
	or x14 ,  x14 ,  x30
	lw x10 ,  0 ( x14 )
	lw x14 ,  0 ( x8 )
	sltu x5 ,  x0 ,  x14
	and x5 ,  x5 ,  x11
	bltu x0, x5, .LBB1_2
.LBB1_1:                                //  %entry
	addi x6 ,  x0 ,  648
	addi x11 ,  x2 ,  8
	sh x6 ,  12 ( x11 )
	add x6 ,  x0 ,  x0
	beq x0, x5, .LBB1_3
	jal x0, .LBB1_4
.LBB1_2:
	addi x6 ,  x0 ,  1544
	addi x11 ,  x2 ,  8
	sh x6 ,  12 ( x11 )
	add x6 ,  x0 ,  x0
	beq x0, x5, .LBB1_3
.LBB1_4:                                //  %entry
	bltu x0, x5, .LBB1_5
.LBB1_8:                                //  %entry
	add x15 ,  x0 ,  x6
	sw x15 ,  24 ( x2 )
	sw x15 ,  8 ( x2 )
	bge x14, x0, .LBB1_6
.LBB1_9:                                //  %if.then3.i
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x10 )
	jal x0, .LBB1_10
.LBB1_3:                                //  %entry
	add x14 ,  x0 ,  x6
	beq x0, x5, .LBB1_8
.LBB1_5:                                //  %entry
	sw x15 ,  24 ( x2 )
	sw x15 ,  8 ( x2 )
	blt x14, x0, .LBB1_9
.LBB1_6:                                //  %if.end4.i
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	sw x14 ,  8 ( x11 )
	sw x14 ,  28 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sh x15 ,  14 ( x11 )
	call _svfprintf_r
	blt x10, x0, .LBB1_10
.LBB1_7:                                //  %if.end8.i
	lw x15 ,  8 ( x2 )
	sw x10 ,  0 ( x8 )
	sb x0 ,  0 ( x15 )
	lw x10 ,  24 ( x2 )
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.LBB1_10:
	add x10 ,  x0 ,  x0
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	vasnprintf, .Lfunc_end1-vasnprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
