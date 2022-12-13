	.text
	.file	"getenv_r.c"
	.globl	_findenv_r              //  -- Begin function _findenv_r
	.type	_findenv_r,@function
_findenv_r:                             //  @_findenv_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call __env_lock
	lui x30 ,  environ&4095
	lui x20 ,  (environ>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	lw x21 ,  0 ( x15 )
	beq x0, x21, .LBB0_11
.LBB0_1:
	add x15 ,  x0 ,  x18
	lbu x14 ,  0 ( x15 )
	beq x0, x14, .LBB0_5
.LBB0_3:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xori x14 ,  x14 ,  61
	beq x0, x14, .LBB0_11
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x15 ,  x15 ,  1
	lbu x14 ,  0 ( x15 )
	bltu x0, x14, .LBB0_3
.LBB0_5:                                //  %if.then7
	lw x10 ,  0 ( x21 )
	beq x0, x10, .LBB0_11
.LBB0_6:                                //  %for.body.preheader
	sub x19 ,  x15 ,  x18
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call strncmp
	beq x0, x10, .LBB0_8
.LBB0_10:                               //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  4 ( x21 )
	addi x15 ,  x21 ,  4
	add x21 ,  x0 ,  x15
	beq x0, x10, .LBB0_11
.LBB0_7:                                //  %for.body
                                        //    in Loop: Header=BB0_10 Depth=1
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call strncmp
	bltu x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then10
	lw x15 ,  0 ( x21 )
	add x22 ,  x19 ,  x15
	lbu x15 ,  0 ( x22 )
	xori x15 ,  x15 ,  61
	bltu x0, x15, .LBB0_10
.LBB0_9:                                //  %if.then14
	lui x30 ,  environ&4095
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	lw x15 ,  0 ( x15 )
	sub x15 ,  x21 ,  x15
	srai x15 ,  x15 ,  2&31
	sw x15 ,  0 ( x9 )
	call __env_unlock
	addi x10 ,  x22 ,  1
	jal x0, .LBB0_12
.LBB0_11:                               //  %if.end22
	add x10 ,  x0 ,  x8
	call __env_unlock
	add x10 ,  x0 ,  x0
.LBB0_12:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_findenv_r, .Lfunc_end0-_findenv_r
	.cfi_endproc
                                        //  -- End function
	.globl	_getenv_r               //  -- Begin function _getenv_r
	.type	_getenv_r,@function
_getenv_r:                              //  @_getenv_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	addi x12 ,  x2 ,  8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	call _findenv_r
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_getenv_r, .Lfunc_end1-_getenv_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
