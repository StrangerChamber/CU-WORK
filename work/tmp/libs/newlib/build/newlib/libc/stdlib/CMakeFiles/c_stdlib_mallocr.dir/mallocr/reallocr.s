	.text
	.file	"reallocr.c"
	.globl	_realloc_r              //  -- Begin function _realloc_r
	.type	_realloc_r,@function
_realloc_r:                             //  @_realloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x18 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x8, .LBB0_5
.LBB0_1:                                //  %if.end
	beq x0, x18, .LBB0_6
.LBB0_2:                                //  %if.end3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _malloc_usable_size_r
	add x20 ,  x0 ,  x10
	bltu x20, x18, .LBB0_7
.LBB0_3:                                //  %if.end3
	srli x15 ,  x20 ,  1&31
	bgeu x15, x18, .LBB0_7
.LBB0_4:
	add x19 ,  x0 ,  x8
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call _malloc_r
	add x19 ,  x0 ,  x10
	jal x0, .LBB0_12
.LBB0_6:                                //  %if.then2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _free_r
	jal x0, .LBB0_11
.LBB0_7:                                //  %if.end8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call _malloc_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB0_11
.LBB0_8:                                //  %if.then11
	bltu x18, x20, .LBB0_10
.LBB0_9:                                //  %if.then11
	add x18 ,  x0 ,  x20
.LBB0_10:                               //  %if.then11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call memcpy
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _free_r
	jal x0, .LBB0_12
.LBB0_11:
	add x19 ,  x0 ,  x0
.LBB0_12:                               //  %cleanup
	add x10 ,  x0 ,  x19
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_realloc_r, .Lfunc_end0-_realloc_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
