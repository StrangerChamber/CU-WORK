	.text
	.file	"strtok_r.c"
	.globl	__strtok_r              //  -- Begin function __strtok_r
	.type	__strtok_r,@function
__strtok_r:                             //  @__strtok_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10 ,  0 ( x12 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	beq x0, x13, .LBB0_4
.LBB0_9:                                //  %cont
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_10 Depth 2
	lbu x14 ,  0 ( x10 )
	addi x15 ,  x10 ,  1
	add x13 ,  x0 ,  x11
.LBB0_10:                               //  %for.cond
                                        //    Parent Loop BB0_9 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x5 ,  0 ( x13 )
	beq x0, x5, .LBB0_13
.LBB0_11:                               //  %for.body
                                        //    in Loop: Header=BB0_10 Depth=2
	addi x13 ,  x13 ,  1
	bne x14, x5, .LBB0_10
.LBB0_12:                               //    in Loop: Header=BB0_9 Depth=1
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_9
.LBB0_4:                                //  %cont.us
	lbu x14 ,  0 ( x10 )
	addi x15 ,  x10 ,  1
	add x13 ,  x0 ,  x11
.LBB0_5:                                //  %for.cond.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x5 ,  0 ( x13 )
	beq x0, x5, .LBB0_13
.LBB0_6:                                //  %for.body.us
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x13 ,  x13 ,  1
	bne x14, x5, .LBB0_5
.LBB0_7:                                //  %if.else
	sw x15 ,  0 ( x12 )
	sb x0 ,  0 ( x10 )
	ret
.LBB0_13:                               //  %for.end
	beq x0, x14, .LBB0_14
.LBB0_15:                               //  %for.cond16
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_16 Depth 2
	lbu x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  1
	add x5 ,  x0 ,  x11
.LBB0_16:                               //  %do.body
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x6 ,  0 ( x5 )
	beq x6, x13, .LBB0_17
.LBB0_21:                               //  %do.cond
                                        //    in Loop: Header=BB0_16 Depth=2
	addi x5 ,  x5 ,  1
	bltu x0, x6, .LBB0_16
.LBB0_22:                               //    in Loop: Header=BB0_15 Depth=1
	add x15 ,  x0 ,  x14
	jal x0, .LBB0_15
.LBB0_17:                               //  %if.then23
	beq x0, x13, .LBB0_18
.LBB0_19:                               //  %if.else27
	sb x0 ,  0 ( x15 )
	sw x14 ,  0 ( x12 )
	ret
.LBB0_14:                               //  %if.then13
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x12 )
	ret
.LBB0_18:
	add x14 ,  x0 ,  x0
	sw x14 ,  0 ( x12 )
	ret
.LBB0_2:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	__strtok_r, .Lfunc_end0-__strtok_r
	.cfi_endproc
                                        //  -- End function
	.globl	strtok_r                //  -- Begin function strtok_r
	.type	strtok_r,@function
strtok_r:                               //  @strtok_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	bltu x0, x10, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x10 ,  0 ( x12 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %cont.i.preheader
	add x15 ,  x0 ,  x0
.LBB1_4:                                //  %cont.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
	lbu x13 ,  0 ( x10 )
	addi x14 ,  x10 ,  1
	add x5 ,  x0 ,  x11
.LBB1_5:                                //  %for.cond.i
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x6 ,  0 ( x5 )
	beq x0, x6, .LBB1_8
.LBB1_6:                                //  %for.body.i
                                        //    in Loop: Header=BB1_5 Depth=2
	addi x5 ,  x5 ,  1
	bne x13, x6, .LBB1_5
.LBB1_7:                                //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x14
	jal x0, .LBB1_4
.LBB1_8:                                //  %for.end.i
	beq x0, x13, .LBB1_9
.LBB1_10:                               //  %for.cond16.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_11 Depth 2
	lbu x5 ,  0 ( x14 )
	addi x13 ,  x14 ,  1
	add x6 ,  x0 ,  x11
.LBB1_11:                               //  %do.body.i
                                        //    Parent Loop BB1_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x7 ,  0 ( x6 )
	beq x7, x5, .LBB1_12
.LBB1_14:                               //  %do.cond.i
                                        //    in Loop: Header=BB1_11 Depth=2
	addi x6 ,  x6 ,  1
	bltu x0, x7, .LBB1_11
.LBB1_15:                               //    in Loop: Header=BB1_10 Depth=1
	add x14 ,  x0 ,  x13
	jal x0, .LBB1_10
.LBB1_12:                               //  %if.then23.i
	beq x0, x5, .LBB1_13
.LBB1_16:                               //  %if.else27.i
	sb x0 ,  0 ( x14 )
	sw x13 ,  0 ( x12 )
	ret
.LBB1_9:
	add x13 ,  x0 ,  x15
	add x10 ,  x0 ,  x15
	sw x13 ,  0 ( x12 )
	ret
.LBB1_13:
	add x13 ,  x0 ,  x15
	sw x13 ,  0 ( x12 )
	ret
.LBB1_2:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end1:
	.size	strtok_r, .Lfunc_end1-strtok_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
