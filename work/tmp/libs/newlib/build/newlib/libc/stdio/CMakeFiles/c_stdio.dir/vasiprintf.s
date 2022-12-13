	.text
	.file	"vasiprintf.c"
	.globl	vasiprintf              //  -- Begin function vasiprintf
	.type	vasiprintf,@function
vasiprintf:                             //  @vasiprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	addi x11 ,  x2 ,  8
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x0 ,  8 ( x2 )
	sw x0 ,  28 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x0 ,  16 ( x11 )
	sw x0 ,  8 ( x11 )
	or x15 ,  x15 ,  x30
	lui x30 ,  -64888&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (-64888>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  12 ( x11 )
	call _svfiprintf_r
	blt x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then.i
	lw x15 ,  8 ( x2 )
	sb x0 ,  0 ( x15 )
	lw x15 ,  24 ( x2 )
	sw x15 ,  0 ( x8 )
.LBB0_2:                                //  %_vasiprintf_r.exit
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	vasiprintf, .Lfunc_end0-vasiprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vasiprintf_r           //  -- Begin function _vasiprintf_r
	.type	_vasiprintf_r,@function
_vasiprintf_r:                          //  @_vasiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lui x30 ,  -64888&4095
	lui x15 ,  (-64888>>12)&1048575
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	addi x11 ,  x2 ,  8
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x0 ,  8 ( x2 )
	sw x0 ,  28 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x0 ,  16 ( x11 )
	sw x0 ,  8 ( x11 )
	or x15 ,  x15 ,  x30
	sw x15 ,  12 ( x11 )
	call _svfiprintf_r
	blt x10, x0, .LBB1_2
.LBB1_1:                                //  %if.then
	lw x15 ,  8 ( x2 )
	sb x0 ,  0 ( x15 )
	lw x15 ,  24 ( x2 )
	sw x15 ,  0 ( x8 )
.LBB1_2:                                //  %if.end
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_vasiprintf_r, .Lfunc_end1-_vasiprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
