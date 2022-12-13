	.text
	.file	"makebuf.c"
	.globl	__smakebuf_r            //  -- Begin function __smakebuf_r
	.type	__smakebuf_r,@function
__smakebuf_r:                           //  @__smakebuf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -104
	.cfi_adjust_cfa_offset 104
	sw x8 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x11
	sw x9 ,  96 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lhu x15 ,  12 ( x8 )
	andi x14 ,  x15 ,  2
	bltu x0, x14, .LBB0_8
.LBB0_1:                                //  %if.end
	lh x11 ,  14 ( x8 )
	blt x11, x0, .LBB0_10
.LBB0_2:                                //  %lor.lhs.false.i
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x9
	call _fstat_r
	blt x10, x0, .LBB0_9
.LBB0_3:                                //  %if.end8.i
	lw x15 ,  12 ( x2 )
	lui x14 ,  (61440>>12)&1048575
	lui x30 ,  2048&4095
	addi x18 ,  x0 ,  1024
	srli x30 ,  x30 ,  12&31
	and x15 ,  x14 ,  x15
	lui x14 ,  (8192>>12)&1048575
	xor x15 ,  x14 ,  x15
	lui x14 ,  (2048>>12)&1048575
	or x19 ,  x14 ,  x30
	sltiu x20 ,  x15 ,  1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call _malloc_r
	bltu x0, x10, .LBB0_4
.LBB0_12:                               //  %if.then4
	lhu x15 ,  12 ( x8 )
	andi x14 ,  x15 ,  512
	bltu x0, x14, .LBB0_15
.LBB0_13:                               //  %if.then9
	slti x14 ,  x0 ,  1
	lui x30 ,  65532&4095
	sw x14 ,  20 ( x8 )
	addi x14 ,  x8 ,  67
	srli x30 ,  x30 ,  12&31
	sw x14 ,  16 ( x8 )
	sw x14 ,  0 ( x8 )
	lui x14 ,  (65532>>12)&1048575
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	ori x15 ,  x15 ,  2
	jal x0, .LBB0_14
.LBB0_8:                                //  %if.then
	slti x15 ,  x0 ,  1
	sw x15 ,  20 ( x8 )
	addi x15 ,  x8 ,  67
	sw x15 ,  16 ( x8 )
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_15
.LBB0_9:                                //  %lor.lhs.false.i.if.then.i_crit_edge
	lhu x15 ,  12 ( x8 )
.LBB0_10:                               //  %if.then.i
	andi x15 ,  x15 ,  128
	add x20 ,  x0 ,  x0
	beq x15, x20, .LBB0_16
.LBB0_11:                               //  %if.then.i
	addi x18 ,  x0 ,  64
	jal x0, .LBB0_17
.LBB0_16:
	addi x18 ,  x0 ,  1024
.LBB0_17:
	add x19 ,  x0 ,  x20
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call _malloc_r
	beq x0, x10, .LBB0_12
.LBB0_4:                                //  %if.else
	lui x30 ,  _cleanup_r&4095
	lui x15 ,  (_cleanup_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  60 ( x9 )
	sw x18 ,  20 ( x8 )
	sw x10 ,  16 ( x8 )
	sw x10 ,  0 ( x8 )
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  128
	sh x15 ,  12 ( x8 )
	beq x0, x20, .LBB0_7
.LBB0_5:                                //  %land.lhs.true
	lh x11 ,  14 ( x8 )
	add x10 ,  x0 ,  x9
	call _isatty_r
	lhu x15 ,  12 ( x8 )
	beq x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then36
	lui x30 ,  65532&4095
	lui x14 ,  (65532>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	ori x15 ,  x15 ,  1
	sh x15 ,  12 ( x8 )
.LBB0_7:                                //  %if.end43
	or x15 ,  x19 ,  x15
.LBB0_14:                               //  %cleanup
	sh x15 ,  12 ( x8 )
.LBB0_15:                               //  %cleanup
	lw x8 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  96 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  100 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  104
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__smakebuf_r, .Lfunc_end0-__smakebuf_r
	.cfi_endproc
                                        //  -- End function
	.globl	__swhatbuf_r            //  -- Begin function __swhatbuf_r
	.type	__swhatbuf_r,@function
__swhatbuf_r:                           //  @__swhatbuf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -96
	.cfi_adjust_cfa_offset 96
	sw x18 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x9 ,  88 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x9 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	sw x1 ,  92 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lh x11 ,  14 ( x18 )
	blt x11, x0, .LBB1_2
.LBB1_1:                                //  %lor.lhs.false
	addi x12 ,  x2 ,  8
	call _fstat_r
	blt x10, x0, .LBB1_2
.LBB1_4:                                //  %if.end8
	lw x15 ,  12 ( x2 )
	lui x14 ,  (61440>>12)&1048575
	lui x30 ,  2048&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x14 ,  x15
	lui x14 ,  (8192>>12)&1048575
	xor x15 ,  x14 ,  x15
	sltiu x15 ,  x15 ,  1
	sw x15 ,  0 ( x9 )
	lui x15 ,  (2048>>12)&1048575
	or x10 ,  x15 ,  x30
	jal x0, .LBB1_5
.LBB1_2:                                //  %if.then
	sw x0 ,  0 ( x9 )
	add x10 ,  x0 ,  x0
	lbu x15 ,  12 ( x18 )
	andi x15 ,  x15 ,  128
	beq x15, x10, .LBB1_5
.LBB1_3:                                //  %if.then
	addi x15 ,  x0 ,  64
	jal x0, .LBB1_6
.LBB1_5:                                //  %cleanup
	addi x15 ,  x0 ,  1024
.LBB1_6:                                //  %cleanup
	sw x15 ,  0 ( x8 )
	lw x8 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  88 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  92 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  96
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__swhatbuf_r, .Lfunc_end1-__swhatbuf_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
