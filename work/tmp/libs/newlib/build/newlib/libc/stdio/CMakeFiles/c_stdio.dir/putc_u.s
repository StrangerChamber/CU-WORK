	.text
	.file	"putc_u.c"
	.globl	_putc_unlocked_r        //  -- Begin function _putc_unlocked_r
	.type	_putc_unlocked_r,@function
_putc_unlocked_r:                       //  @_putc_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lw x14 ,  8 ( x12 )
	add x15 ,  x0 ,  x10
	andi x10 ,  x11 ,  255
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	addi x13 ,  x14 ,  -1
	sw x13 ,  8 ( x12 )
	blt x0, x14, .LBB0_3
.LBB0_1:                                //  %lor.lhs.false.i
	xori x13 ,  x10 ,  10
	beq x0, x13, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false.i
	lw x13 ,  24 ( x12 )
	bge x13, x14, .LBB0_4
.LBB0_3:                                //  %if.then.i
	lw x15 ,  0 ( x12 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x12 )
	sb x11 ,  0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_4:                                //  %if.else.i
	add x10 ,  x0 ,  x15
	call __swbuf_r
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_putc_unlocked_r, .Lfunc_end0-_putc_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	putc_unlocked           //  -- Begin function putc_unlocked
	.type	putc_unlocked,@function
putc_unlocked:                          //  @putc_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x12 ,  x0 ,  x11
	lui x30 ,  _impure_ptr&4095
	add x11 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x14 ,  8 ( x12 )
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x14 ,  -1
	sw x15 ,  8 ( x12 )
	lui x15 ,  (_impure_ptr>>12)&1048575
	or x15 ,  x15 ,  x30
	bge x0, x14, .LBB1_2
.LBB1_1:                                //  %entry.if.then_crit_edge.i
	andi x10 ,  x11 ,  255
	jal x0, .LBB1_4
.LBB1_2:                                //  %lor.lhs.false.i
	lw x15 ,  0 ( x15 )
	andi x10 ,  x11 ,  255
	xori x13 ,  x10 ,  10
	beq x0, x13, .LBB1_5
.LBB1_3:                                //  %lor.lhs.false.i
	lw x13 ,  24 ( x12 )
	bge x13, x14, .LBB1_5
.LBB1_4:                                //  %if.then.i
	lw x15 ,  0 ( x12 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x12 )
	sb x11 ,  0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB1_5:                                //  %if.else.i
	add x10 ,  x0 ,  x15
	call __swbuf_r
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	putc_unlocked, .Lfunc_end1-putc_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
