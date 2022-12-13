	.text
	.file	"wprintf.c"
	.globl	_wprintf_r              //  -- Begin function _wprintf_r
	.type	_wprintf_r,@function
_wprintf_r:                             //  @_wprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lw x10 ,  16 ( x2 )
	addi x13 ,  x2 ,  24
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x12 ,  20 ( x2 )
	sw x13 ,  8 ( x2 )
	lw x11 ,  8 ( x10 )
	call _vfwprintf_r
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wprintf_r, .Lfunc_end0-_wprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	wprintf                 //  -- Begin function wprintf
	.type	wprintf,@function
wprintf:                                //  @wprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	lw x12 ,  16 ( x2 )
	addi x13 ,  x2 ,  20
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	sw x13 ,  8 ( x2 )
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	lw x11 ,  8 ( x10 )
	call _vfwprintf_r
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	wprintf, .Lfunc_end1-wprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
