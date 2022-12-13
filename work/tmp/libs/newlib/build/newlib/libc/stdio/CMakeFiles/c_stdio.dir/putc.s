	.text
	.file	"putc.c"
	.globl	_putc_r                 //  -- Begin function _putc_r
	.type	_putc_r,@function
_putc_r:                                //  @_putc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
.LBB0_3:                                //  %if.end
	lw x15 ,  8 ( x8 )
	andi x10 ,  x9 ,  255
	addi x14 ,  x15 ,  -1
	sw x14 ,  8 ( x8 )
	blt x0, x15, .LBB0_6
.LBB0_4:                                //  %lor.lhs.false.i
	xori x14 ,  x10 ,  10
	beq x0, x14, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false.i
	lw x14 ,  24 ( x8 )
	bge x14, x15, .LBB0_7
.LBB0_6:                                //  %if.then.i
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x8 )
	sb x9 ,  0 ( x15 )
	jal x0, .LBB0_8
.LBB0_7:                                //  %if.else.i
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call __swbuf_r
.LBB0_8:                                //  %__sputc_r.exit
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_putc_r, .Lfunc_end0-_putc_r
	.cfi_endproc
                                        //  -- End function
	.globl	putc                    //  -- Begin function putc
	.type	putc,@function
putc:                                   //  @putc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	bltu x0, x15, .LBB1_3
.LBB1_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
.LBB1_3:                                //  %if.end
	lw x15 ,  8 ( x8 )
	andi x10 ,  x9 ,  255
	addi x14 ,  x15 ,  -1
	sw x14 ,  8 ( x8 )
	blt x0, x15, .LBB1_6
.LBB1_4:                                //  %lor.lhs.false.i
	xori x14 ,  x10 ,  10
	beq x0, x14, .LBB1_7
.LBB1_5:                                //  %lor.lhs.false.i
	lw x14 ,  24 ( x8 )
	bge x14, x15, .LBB1_7
.LBB1_6:                                //  %if.then.i
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x8 )
	sb x9 ,  0 ( x15 )
	jal x0, .LBB1_8
.LBB1_7:                                //  %if.else.i
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call __swbuf_r
.LBB1_8:                                //  %__sputc_r.exit
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	putc, .Lfunc_end1-putc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
