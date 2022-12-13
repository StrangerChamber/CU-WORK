	.text
	.file	"vdiprintf.c"
	.globl	_vdiprintf_r            //  -- Begin function _vdiprintf_r
	.type	_vdiprintf_r,@function
_vdiprintf_r:                           //  @_vdiprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -544
	.cfi_adjust_cfa_offset 544
	sw x9 ,  536 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	addi x9 ,  x2 ,  12
	sw x18 ,  532 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x14 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	addi x15 ,  x0 ,  512
	addi x12 ,  x2 ,  8
	sw x8 ,  524 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x1 ,  540 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  528 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	sw x15 ,  8 ( x2 )
	call _vasniprintf_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x13 ,  8 ( x2 )
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call _write_r
	sw x10 ,  8 ( x2 )
	beq x19, x9, .LBB0_4
.LBB0_3:                                //  %if.then3
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call _free_r
	lw x10 ,  8 ( x2 )
	jal x0, .LBB0_4
.LBB0_1:
	addi x10 ,  x0 ,  -1
.LBB0_4:                                //  %cleanup
	lw x8 ,  524 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  528 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  532 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  536 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  540 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  544
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_vdiprintf_r, .Lfunc_end0-_vdiprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	vdiprintf               //  -- Begin function vdiprintf
	.type	vdiprintf,@function
vdiprintf:                              //  @vdiprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -544
	.cfi_adjust_cfa_offset 544
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  524 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x18 ,  532 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	addi x18 ,  x2 ,  12
	sw x9 ,  536 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x14 ,  x0 ,  x12
	add x13 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	addi x12 ,  x2 ,  8
	sw x1 ,  540 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  528 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x18
	or x15 ,  x15 ,  x30
	lw x8 ,  0 ( x15 )
	addi x15 ,  x0 ,  512
	sw x15 ,  8 ( x2 )
	add x10 ,  x0 ,  x8
	call _vasniprintf_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB1_1
.LBB1_2:                                //  %if.end.i
	lw x13 ,  8 ( x2 )
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	call _write_r
	sw x10 ,  8 ( x2 )
	beq x19, x18, .LBB1_4
.LBB1_3:                                //  %if.then3.i
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call _free_r
	lw x10 ,  8 ( x2 )
	jal x0, .LBB1_4
.LBB1_1:
	addi x10 ,  x0 ,  -1
.LBB1_4:                                //  %_vdiprintf_r.exit
	lw x8 ,  524 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  528 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  532 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  536 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  540 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  544
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	vdiprintf, .Lfunc_end1-vdiprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
