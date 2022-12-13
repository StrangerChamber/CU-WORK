	.text
	.file	"wcsdup.c"
	.globl	_wcsdup_r               //  -- Begin function _wcsdup_r
	.type	_wcsdup_r,@function
_wcsdup_r:                              //  @_wcsdup_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x10 ,  x0 ,  x8
	call wcslen
	addi x9 ,  x10 ,  1
	add x10 ,  x0 ,  x18
	slli x11 ,  x9 ,  2&31
	call _malloc_r
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call wmemcpy
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wcsdup_r, .Lfunc_end0-_wcsdup_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcsdup                  //  -- Begin function wcsdup
	.type	wcsdup,@function
wcsdup:                                 //  @wcsdup
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	call wcslen
	addi x9 ,  x10 ,  1
	add x10 ,  x0 ,  x18
	slli x11 ,  x9 ,  2&31
	call _malloc_r
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB1_2
.LBB1_1:                                //  %if.then.i
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call wmemcpy
.LBB1_2:                                //  %_wcsdup_r.exit
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	wcsdup, .Lfunc_end1-wcsdup
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
