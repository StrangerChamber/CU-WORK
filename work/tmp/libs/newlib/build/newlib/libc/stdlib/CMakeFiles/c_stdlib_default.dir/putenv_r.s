	.text
	.file	"putenv_r.c"
	.globl	_putenv_r               //  -- Begin function _putenv_r
	.type	_putenv_r,@function
_putenv_r:                              //  @_putenv_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x8 ,  x0 ,  x10
	call _strdup_r
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB0_1
.LBB0_2:                                //  %if.end
	addi x11 ,  x0 ,  61
	add x10 ,  x0 ,  x9
	call strchr
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.end4
	sb x0 ,  0 ( x10 )
	addi x12 ,  x10 ,  1
	slti x13 ,  x0 ,  1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call _setenv_r
	add x18 ,  x0 ,  x10
	jal x0, .LBB0_5
.LBB0_1:
	slti x18 ,  x0 ,  1
	jal x0, .LBB0_6
.LBB0_3:
	slti x18 ,  x0 ,  1
.LBB0_5:                                //  %cleanup.sink.split
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call _free_r
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_putenv_r, .Lfunc_end0-_putenv_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
