	.text
	.file	"siprintf.c"
	.globl	_siprintf_r             //  -- Begin function _siprintf_r
	.type	_siprintf_r,@function
_siprintf_r:                            //  @_siprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lui x30 ,  -65016&4095
	lui x15 ,  (-65016>>12)&1048575
	addi x11 ,  x2 ,  8
	lw x10 ,  120 ( x2 )
	addi x13 ,  x2 ,  132
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	lw x12 ,  128 ( x2 )
	sw x13 ,  112 ( x2 )
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	sw x15 ,  12 ( x11 )
	lw x15 ,  124 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x11 )
	sw x15 ,  8 ( x2 )
	lui x15 ,  (2147483647>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x11 )
	sw x15 ,  28 ( x2 )
	call _svfiprintf_r
	lw x15 ,  8 ( x2 )
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	sb x0 ,  0 ( x15 )
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_siprintf_r, .Lfunc_end0-_siprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	siprintf                //  -- Begin function siprintf
	.type	siprintf,@function
siprintf:                               //  @siprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lui x30 ,  -65016&4095
	lui x15 ,  (-65016>>12)&1048575
	addi x11 ,  x2 ,  8
	lw x12 ,  124 ( x2 )
	addi x13 ,  x2 ,  128
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	sw x13 ,  112 ( x2 )
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	sw x15 ,  12 ( x11 )
	lw x15 ,  120 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x11 )
	sw x15 ,  8 ( x2 )
	lui x15 ,  (2147483647>>12)&1048575
	or x15 ,  x15 ,  x30
	lui x30 ,  _impure_ptr&4095
	sw x15 ,  8 ( x11 )
	sw x15 ,  28 ( x2 )
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _svfiprintf_r
	lw x15 ,  8 ( x2 )
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	sb x0 ,  0 ( x15 )
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	siprintf, .Lfunc_end1-siprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
