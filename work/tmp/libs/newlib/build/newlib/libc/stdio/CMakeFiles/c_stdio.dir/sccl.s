	.text
	.file	"sccl.c"
	.globl	__sccl                  //  -- Begin function __sccl
	.type	__sccl,@function
__sccl:                                 //  @__sccl
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x5 ,  0 ( x11 )
	add x14 ,  x0 ,  x0
	xori x15 ,  x5 ,  94
	bltu x0, x15, .LBB0_1
.LBB0_2:                                //  %if.then
	lbu x5 ,  1 ( x11 )
	slti x13 ,  x0 ,  1
	addi x15 ,  x11 ,  2
	jal x0, .LBB0_3
.LBB0_1:
	addi x15 ,  x11 ,  1
	add x13 ,  x0 ,  x14
.LBB0_3:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x12 ,  x14 ,  x10
	addi x14 ,  x14 ,  1
	sb x13 ,  0 ( x12 )
	xori x12 ,  x14 ,  256
	bltu x0, x12, .LBB0_3
.LBB0_4:                                //  %for.end
	beq x0, x5, .LBB0_17
.LBB0_5:                                //  %for.cond11.preheader
	addi x14 ,  x10 ,  1
	xori x13 ,  x13 ,  1
	addi x12 ,  x0 ,  45
	jal x0, .LBB0_6
.LBB0_14:                               //    in Loop: Header=BB0_6 Depth=1
	add x15 ,  x0 ,  x6
	add x5 ,  x0 ,  x12
.LBB0_6:                                //  %for.cond11
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_13 Depth 2
                                        //        Child Loop BB0_16 Depth 3
	andi x11 ,  x5 ,  255
	add x5 ,  x11 ,  x10
	sb x13 ,  0 ( x5 )
	lbu x5 ,  0 ( x15 )
	addi x6 ,  x15 ,  1
	xori x7 ,  x5 ,  45
	bltu x0, x7, .LBB0_9
.LBB0_13:                               //  %sw.bb17
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_16 Depth 3
	lbu x5 ,  0 ( x6 )
	xori x7 ,  x5 ,  93
	beq x0, x7, .LBB0_14
.LBB0_15:                               //  %sw.bb17
                                        //    in Loop: Header=BB0_13 Depth=2
	blt x5, x11, .LBB0_14
.LBB0_16:                               //  %do.body
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_13 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x6 ,  x11 ,  x14
	addi x11 ,  x11 ,  1
	sb x13 ,  0 ( x6 )
	blt x11, x5, .LBB0_16
.LBB0_7:                                //  %doswitch.loopexit
                                        //    in Loop: Header=BB0_13 Depth=2
	addi x15 ,  x15 ,  2
	lbu x5 ,  0 ( x15 )
	addi x6 ,  x15 ,  1
	xori x7 ,  x5 ,  45
	beq x0, x7, .LBB0_13
.LBB0_9:                                //  %doswitch
                                        //    in Loop: Header=BB0_6 Depth=1
	beq x0, x5, .LBB0_12
.LBB0_10:                               //  %doswitch
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x11 ,  x5 ,  93
	add x15 ,  x0 ,  x6
	bltu x0, x11, .LBB0_6
.LBB0_11:                               //  %cleanup.loopexit1
	add x15 ,  x0 ,  x6
.LBB0_12:                               //  %cleanup
	add x10 ,  x0 ,  x15
	ret
.LBB0_17:                               //  %if.then9
	addi x15 ,  x15 ,  -1
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	__sccl, .Lfunc_end0-__sccl
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
