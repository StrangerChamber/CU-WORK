	.text
	.file	"vswprintf.c"
	.globl	_vswprintf_r            //  -- Begin function _vswprintf_r
	.type	_vswprintf_r,@function
_vswprintf_r:                           //  @_vswprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	sw x9 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x12
	sw x8 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x15 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x12 ,  x9 ,  29&31
	bltu x0, x12, .LBB0_6
.LBB0_1:                                //  %if.end
	lui x30 ,  -65016&4095
	addi x11 ,  x2 ,  4
	lui x12 ,  (-65016>>12)&1048575
	sw x15 ,  4 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x11 )
	add x15 ,  x0 ,  x0
	or x12 ,  x12 ,  x30
	sw x12 ,  12 ( x11 )
	beq x9, x15, .LBB0_3
.LBB0_2:
	slli x15 ,  x9 ,  2&31
	addi x15 ,  x15 ,  -4
.LBB0_3:                                //  %if.end
	add x12 ,  x0 ,  x13
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x14
	sw x15 ,  8 ( x11 )
	sw x15 ,  24 ( x2 )
	call _svfwprintf_r
	beq x0, x9, .LBB0_5
.LBB0_4:                                //  %if.then4
	lw x15 ,  4 ( x2 )
	sw x0 ,  0 ( x15 )
.LBB0_5:                                //  %if.end6
	bltu x10, x9, .LBB0_7
.LBB0_6:                                //  %cleanup.sink.split
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x8 )
.LBB0_7:                                //  %cleanup
	lw x8 ,  108 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_vswprintf_r, .Lfunc_end0-_vswprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	vswprintf               //  -- Begin function vswprintf
	.type	vswprintf,@function
vswprintf:                              //  @vswprintf
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
	srli x15 ,  x8 ,  29&31
	bltu x0, x15, .LBB1_6
.LBB1_1:                                //  %if.end.i
	lui x30 ,  -65016&4095
	lui x15 ,  (-65016>>12)&1048575
	addi x11 ,  x2 ,  4
	sw x10 ,  4 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x10 ,  16 ( x11 )
	or x15 ,  x15 ,  x30
	sw x15 ,  12 ( x11 )
	add x15 ,  x0 ,  x0
	beq x8, x15, .LBB1_3
.LBB1_2:
	slli x15 ,  x8 ,  2&31
	addi x15 ,  x15 ,  -4
.LBB1_3:                                //  %if.end.i
	add x10 ,  x0 ,  x9
	sw x15 ,  8 ( x11 )
	sw x15 ,  24 ( x2 )
	call _svfwprintf_r
	beq x0, x8, .LBB1_5
.LBB1_4:                                //  %if.then4.i
	lw x15 ,  4 ( x2 )
	sw x0 ,  0 ( x15 )
.LBB1_5:                                //  %if.end6.i
	bltu x10, x8, .LBB1_7
.LBB1_6:                                //  %_vswprintf_r.exit.sink.split
	addi x15 ,  x0 ,  139
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x9 )
.LBB1_7:                                //  %_vswprintf_r.exit
	lw x8 ,  108 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	vswprintf, .Lfunc_end1-vswprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
