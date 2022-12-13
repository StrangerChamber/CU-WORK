	.text
	.file	"execr.c"
	.globl	_execve_r               //  -- Begin function _execve_r
	.type	_execve_r,@function
_execve_r:                              //  @_execve_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  errno&4095
	lui x15 ,  (errno>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	add x11 ,  x0 ,  x12
	add x12 ,  x0 ,  x13
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	sw x0 ,  0 ( x9 )
	call execve
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_3
.LBB0_1:                                //  %entry
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	sw x15 ,  0 ( x8 )
.LBB0_3:                                //  %if.end
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_execve_r, .Lfunc_end0-_execve_r
	.cfi_endproc
                                        //  -- End function
	.globl	_fork_r                 //  -- Begin function _fork_r
	.type	_fork_r,@function
_fork_r:                                //  @_fork_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  errno&4095
	lui x15 ,  (errno>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	sw x0 ,  0 ( x9 )
	call fork
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_3
.LBB1_1:                                //  %entry
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB1_3
.LBB1_2:                                //  %if.then
	sw x15 ,  0 ( x8 )
.LBB1_3:                                //  %if.end
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_fork_r, .Lfunc_end1-_fork_r
	.cfi_endproc
                                        //  -- End function
	.globl	_wait_r                 //  -- Begin function _wait_r
	.type	_wait_r,@function
_wait_r:                                //  @_wait_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  errno&4095
	lui x15 ,  (errno>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	sw x0 ,  0 ( x9 )
	call wait
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB2_3
.LBB2_1:                                //  %entry
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB2_3
.LBB2_2:                                //  %if.then
	sw x15 ,  0 ( x8 )
.LBB2_3:                                //  %if.end
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_wait_r, .Lfunc_end2-_wait_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
