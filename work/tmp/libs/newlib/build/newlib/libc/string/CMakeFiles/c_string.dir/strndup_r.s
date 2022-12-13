	.text
	.file	"strndup_r.c"
	.globl	_strndup_r              //  -- Begin function _strndup_r
	.type	_strndup_r,@function
_strndup_r:                             //  @_strndup_r
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
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x15 ,  x0 ,  x8
	beq x0, x12, .LBB0_4
.LBB0_1:                                //  %land.rhs.preheader
	add x15 ,  x0 ,  x8
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x15 )
	beq x0, x14, .LBB0_4
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x12 ,  x12 ,  -1
	addi x15 ,  x15 ,  1
	bltu x0, x12, .LBB0_2
.LBB0_4:                                //  %while.end
	sub x9 ,  x15 ,  x8
	addi x11 ,  x9 ,  1
	call _malloc_r
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_6
.LBB0_5:                                //  %if.then
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call memcpy
	add x15 ,  x9 ,  x18
	sb x0 ,  0 ( x15 )
.LBB0_6:                                //  %if.end
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_strndup_r, .Lfunc_end0-_strndup_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
