	.text
	.file	"vsnprintf.c"
	.globl	vsnprintf               //  -- Begin function vsnprintf
	.type	vsnprintf,@function
vsnprintf:                              //  @vsnprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	blt x8, x0, .LBB0_1
.LBB0_2:                                //  %if.end.i
	addi x15 ,  x8 ,  -1
	bltu x15, x8, .LBB0_4
.LBB0_3:                                //  %if.end.i
	add x15 ,  x0 ,  x0
.LBB0_4:                                //  %if.end.i
	lui x30 ,  -65016&4095
	addi x11 ,  x2 ,  4
	lui x14 ,  (-65016>>12)&1048575
	sw x10 ,  4 ( x2 )
	sw x15 ,  24 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x10 ,  16 ( x11 )
	add x10 ,  x0 ,  x9
	sw x15 ,  8 ( x11 )
	or x14 ,  x14 ,  x30
	sw x14 ,  12 ( x11 )
	call _svfprintf_r
	addi x15 ,  x0 ,  -2
	blt x15, x10, .LBB0_6
.LBB0_5:                                //  %if.then4.i
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x9 )
.LBB0_6:                                //  %if.end6.i
	beq x0, x8, .LBB0_8
.LBB0_7:                                //  %if.then8.i
	lw x15 ,  4 ( x2 )
	sb x0 ,  0 ( x15 )
	jal x0, .LBB0_8
.LBB0_1:                                //  %if.then.i
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x9 )
.LBB0_8:                                //  %_vsnprintf_r.exit
	lw x8 ,  108 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	vsnprintf, .Lfunc_end0-vsnprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vsnprintf_r            //  -- Begin function _vsnprintf_r
	.type	_vsnprintf_r,@function
_vsnprintf_r:                           //  @_vsnprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	sw x9 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x10
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x8, x0, .LBB1_1
.LBB1_2:                                //  %if.end
	addi x12 ,  x8 ,  -1
	bltu x12, x8, .LBB1_4
.LBB1_3:                                //  %if.end
	add x12 ,  x0 ,  x0
.LBB1_4:                                //  %if.end
	lui x30 ,  -65016&4095
	lui x10 ,  (-65016>>12)&1048575
	addi x15 ,  x2 ,  4
	sw x11 ,  4 ( x2 )
	sw x12 ,  24 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x11 ,  16 ( x15 )
	sw x12 ,  8 ( x15 )
	add x12 ,  x0 ,  x13
	add x11 ,  x0 ,  x15
	add x13 ,  x0 ,  x14
	or x10 ,  x10 ,  x30
	sw x10 ,  12 ( x15 )
	add x10 ,  x0 ,  x9
	call _svfprintf_r
	addi x15 ,  x0 ,  -2
	blt x15, x10, .LBB1_6
.LBB1_5:                                //  %if.then4
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x9 )
.LBB1_6:                                //  %if.end6
	beq x0, x8, .LBB1_8
.LBB1_7:                                //  %if.then8
	lw x15 ,  4 ( x2 )
	sb x0 ,  0 ( x15 )
	jal x0, .LBB1_8
.LBB1_1:                                //  %if.then
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x9 )
.LBB1_8:                                //  %cleanup
	lw x8 ,  108 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_vsnprintf_r, .Lfunc_end1-_vsnprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
