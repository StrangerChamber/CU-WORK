	.text
	.file	"getc.c"
	.globl	_getc_r                 //  -- Begin function _getc_r
	.type	_getc_r,@function
_getc_r:                                //  @_getc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	lw x15 ,  4 ( x8 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x8 )
	bge x0, x15, .LBB0_4
.LBB0_5:                                //  %cond.false9
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x8 )
	lbu x10 ,  0 ( x15 )
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	lw x15 ,  4 ( x8 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x8 )
	blt x0, x15, .LBB0_5
.LBB0_4:                                //  %cond.true8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srget_r
.LBB0_6:                                //  %cond.end11
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_getc_r, .Lfunc_end0-_getc_r
	.cfi_endproc
                                        //  -- End function
	.globl	getc                    //  -- Begin function getc
	.type	getc,@function
getc:                                   //  @getc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end
	lw x15 ,  4 ( x8 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x8 )
	bge x0, x15, .LBB1_4
.LBB1_5:                                //  %cond.false9
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x8 )
	lbu x10 ,  0 ( x15 )
	jal x0, .LBB1_6
.LBB1_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	lw x15 ,  4 ( x8 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x8 )
	blt x0, x15, .LBB1_5
.LBB1_4:                                //  %cond.true8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srget_r
.LBB1_6:                                //  %cond.end11
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	getc, .Lfunc_end1-getc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
