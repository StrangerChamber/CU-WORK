	.text
	.file	"getsubopt.c"
	.globl	getsubopt               //  -- Begin function getsubopt
	.type	getsubopt,@function
getsubopt:                              //  @getsubopt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  suboptarg&4095
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	lui x9 ,  (suboptarg>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	addi x8 ,  x0 ,  -1
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x0 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	sw x0 ,  0 ( x15 )
	beq x0, x10, .LBB0_37
.LBB0_1:                                //  %lor.lhs.false
	lw x14 ,  0 ( x10 )
	beq x0, x14, .LBB0_37
.LBB0_2:                                //  %for.cond.preheader
	addi x15 ,  x0 ,  31
	lbu x13 ,  0 ( x14 )
	blt x15, x13, .LBB0_7
.LBB0_4:                                //  %for.cond
	xori x5 ,  x13 ,  9
	bltu x0, x5, .LBB0_5
.LBB0_9:                                //  %for.inc
	addi x14 ,  x14 ,  1
	lbu x13 ,  0 ( x14 )
	bge x15, x13, .LBB0_4
.LBB0_7:                                //  %for.cond
	xori x5 ,  x13 ,  44
	beq x0, x5, .LBB0_9
.LBB0_8:                                //  %for.cond
	xori x13 ,  x13 ,  32
	beq x0, x13, .LBB0_9
	jal x0, .LBB0_10
.LBB0_5:                                //  %for.cond
	bltu x0, x13, .LBB0_10
.LBB0_6:                                //  %if.then13
	sw x14 ,  0 ( x10 )
	jal x0, .LBB0_37
.LBB0_10:                               //  %if.end14
	lui x30 ,  suboptarg&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	sw x14 ,  0 ( x13 )
	addi x13 ,  x14 ,  1
.LBB0_11:                               //  %for.cond15
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x13 ,  1
	lbu x13 ,  0 ( x13 )
	bge x15, x13, .LBB0_12
.LBB0_15:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5 ,  x13 ,  32
	beq x0, x5, .LBB0_14
.LBB0_16:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5 ,  x13 ,  44
	beq x0, x5, .LBB0_14
.LBB0_17:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5 ,  x13 ,  61
	add x13 ,  x0 ,  x14
	bltu x0, x5, .LBB0_11
	jal x0, .LBB0_18
.LBB0_12:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	beq x0, x13, .LBB0_31
.LBB0_13:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5 ,  x13 ,  9
	add x13 ,  x0 ,  x14
	bltu x0, x5, .LBB0_11
.LBB0_14:                               //  %if.else
	addi x15 ,  x14 ,  -1
	sb x0 ,  0 ( x15 )
	lbu x15 ,  0 ( x14 )
	xori x13 ,  x15 ,  9
	bltu x0, x13, .LBB0_28
.LBB0_30:                               //  %for.inc88
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  1
	lbu x15 ,  0 ( x14 )
	xori x13 ,  x15 ,  9
	beq x0, x13, .LBB0_30
.LBB0_28:                               //  %for.cond70
	xori x13 ,  x15 ,  44
	beq x0, x13, .LBB0_30
.LBB0_29:                               //  %for.cond70
	xori x15 ,  x15 ,  32
	beq x0, x15, .LBB0_30
.LBB0_32:                               //  %if.end91
	sw x14 ,  0 ( x10 )
	lw x15 ,  0 ( x11 )
	beq x0, x15, .LBB0_37
.LBB0_33:                               //  %for.body94.preheader
	add x18 ,  x0 ,  x0
	addi x19 ,  x11 ,  4
.LBB0_34:                               //  %for.body94
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  suboptarg&4095
	add x11 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x14 ,  x9 ,  x30
	lw x10 ,  0 ( x14 )
	call strcmp
	beq x0, x10, .LBB0_35
.LBB0_36:                               //  %for.inc98
                                        //    in Loop: Header=BB0_34 Depth=1
	lw x15 ,  0 ( x19 )
	addi x14 ,  x19 ,  4
	addi x18 ,  x18 ,  1
	add x19 ,  x0 ,  x14
	bltu x0, x15, .LBB0_34
	jal x0, .LBB0_37
.LBB0_35:
	add x8 ,  x0 ,  x18
.LBB0_37:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_18:                               //  %if.then42
	add x13 ,  x0 ,  x14
	sb x0 ,  -1 ( x14 )
	sw x14 ,  0 ( x12 )
	lbu x14 ,  0 ( x13 )
	blt x15, x14, .LBB0_23
	jal x0, .LBB0_20
.LBB0_25:                               //  %for.inc61
	addi x13 ,  x13 ,  1
	lbu x14 ,  0 ( x13 )
	blt x15, x14, .LBB0_23
.LBB0_20:                               //  %for.cond44
	beq x0, x14, .LBB0_26
.LBB0_21:                               //  %for.cond44
	xori x14 ,  x14 ,  9
	bltu x0, x14, .LBB0_25
	jal x0, .LBB0_22
.LBB0_23:                               //  %for.cond44
	xori x12 ,  x14 ,  32
	beq x0, x12, .LBB0_22
.LBB0_24:                               //  %for.cond44
	xori x14 ,  x14 ,  44
	bltu x0, x14, .LBB0_25
.LBB0_22:                               //  %if.then65
	addi x14 ,  x13 ,  1
	sb x0 ,  0 ( x13 )
	lbu x15 ,  0 ( x14 )
	xori x13 ,  x15 ,  9
	bltu x0, x13, .LBB0_28
	jal x0, .LBB0_30
.LBB0_31:                               //  %if.end91.loopexit1
	addi x14 ,  x14 ,  -1
	sw x14 ,  0 ( x10 )
	lw x15 ,  0 ( x11 )
	bltu x0, x15, .LBB0_33
	jal x0, .LBB0_37
.LBB0_26:                               //  %for.cond70.preheader.loopexit
	add x14 ,  x0 ,  x13
	lbu x15 ,  0 ( x14 )
	xori x13 ,  x15 ,  9
	bltu x0, x13, .LBB0_28
	jal x0, .LBB0_30
.Lfunc_end0:
	.size	getsubopt, .Lfunc_end0-getsubopt
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	suboptarg,@object       //  @suboptarg
	.comm	suboptarg,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
