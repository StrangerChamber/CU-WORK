	.text
	.file	"vsprintf.c"
	.globl	vsprintf                //  -- Begin function vsprintf
	.type	vsprintf,@function
vsprintf:                               //  @vsprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -112
	.cfi_adjust_cfa_offset 112
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	lui x14 ,  (-65016>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	addi x11 ,  x2 ,  4
	sw x10 ,  4 ( x2 )
	sw x1 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	sw x10 ,  16 ( x11 )
	or x15 ,  x15 ,  x30
	lui x30 ,  -65016&4095
	lw x15 ,  0 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  2147483647&4095
	sw x14 ,  12 ( x11 )
	lui x14 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x10 ,  x0 ,  x15
	sw x14 ,  8 ( x11 )
	sw x14 ,  24 ( x2 )
	call _svfprintf_r
	lw x15 ,  4 ( x2 )
	lw x1 ,  108 ( x2 )             //  4-byte Folded Reload
	sb x0 ,  0 ( x15 )
	addi x2 ,  x2 ,  112
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	vsprintf, .Lfunc_end0-vsprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vsprintf_r             //  -- Begin function _vsprintf_r
	.type	_vsprintf_r,@function
_vsprintf_r:                            //  @_vsprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -112
	.cfi_adjust_cfa_offset 112
	lui x30 ,  -65016&4095
	lui x14 ,  (-65016>>12)&1048575
	addi x15 ,  x2 ,  4
	sw x11 ,  4 ( x2 )
	sw x1 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	sw x11 ,  16 ( x15 )
	add x11 ,  x0 ,  x15
	or x14 ,  x14 ,  x30
	lui x30 ,  2147483647&4095
	sw x14 ,  12 ( x15 )
	lui x14 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x15 )
	sw x14 ,  24 ( x2 )
	call _svfprintf_r
	lw x15 ,  4 ( x2 )
	lw x1 ,  108 ( x2 )             //  4-byte Folded Reload
	sb x0 ,  0 ( x15 )
	addi x2 ,  x2 ,  112
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_vsprintf_r, .Lfunc_end1-_vsprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
