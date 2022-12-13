	.text
	.file	"wbuf.c"
	.globl	__swbuf_r               //  -- Begin function __swbuf_r
	.type	__swbuf_r,@function
__swbuf_r:                              //  @__swbuf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
.LBB0_3:                                //  %if.end
	lw x15 ,  24 ( x8 )
	addi x18 ,  x0 ,  -1
	sw x15 ,  8 ( x8 )
	lhu x15 ,  12 ( x8 )
	andi x14 ,  x15 ,  8
	beq x0, x14, .LBB0_5
.LBB0_4:                                //  %lor.lhs.false
	lw x14 ,  16 ( x8 )
	bltu x0, x14, .LBB0_7
.LBB0_5:                                //  %land.lhs.true5
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __swsetup_r
	bltu x0, x10, .LBB0_17
.LBB0_6:                                //  %land.lhs.true5.if.end8_crit_edge
	lhu x15 ,  12 ( x8 )
.LBB0_7:                                //  %if.end8
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_9
.LBB0_8:                                //  %if.then16
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x8 )
	lw x15 ,  100 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x8 )
.LBB0_9:                                //  %do.end23
	lw x14 ,  16 ( x8 )
	lw x15 ,  0 ( x8 )
	lw x13 ,  20 ( x8 )
	sub x14 ,  x15 ,  x14
	blt x14, x13, .LBB0_12
.LBB0_10:                               //  %if.then29
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	bltu x0, x10, .LBB0_17
.LBB0_11:                               //  %if.then29.if.end34_crit_edge
	lw x15 ,  0 ( x8 )
	add x14 ,  x0 ,  x0
.LBB0_12:                               //  %if.end34
	addi x13 ,  x15 ,  1
	andi x20 ,  x19 ,  255
	addi x14 ,  x14 ,  1
	sw x13 ,  0 ( x8 )
	lw x13 ,  8 ( x8 )
	addi x13 ,  x13 ,  -1
	sw x13 ,  8 ( x8 )
	sb x19 ,  0 ( x15 )
	lw x15 ,  20 ( x8 )
	beq x14, x15, .LBB0_15
.LBB0_13:                               //  %lor.lhs.false42
	xori x15 ,  x20 ,  10
	bltu x0, x15, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false42
	lhu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  1
	beq x0, x15, .LBB0_16
.LBB0_15:                               //  %if.then50
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	bltu x0, x10, .LBB0_17
.LBB0_16:                               //  %if.end55
	add x18 ,  x0 ,  x20
.LBB0_17:                               //  %cleanup
	add x10 ,  x0 ,  x18
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
	.size	__swbuf_r, .Lfunc_end0-__swbuf_r
	.cfi_endproc
                                        //  -- End function
	.globl	__swbuf                 //  -- Begin function __swbuf
	.type	__swbuf,@function
__swbuf:                                //  @__swbuf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, __swbuf_r
.Lfunc_end1:
	.size	__swbuf, .Lfunc_end1-__swbuf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
