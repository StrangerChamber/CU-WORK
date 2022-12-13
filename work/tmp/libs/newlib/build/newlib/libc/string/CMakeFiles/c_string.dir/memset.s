	.text
	.file	"memset.c"
	.globl	memset                  //  -- Begin function memset
	.type	memset,@function
memset:                                 //  @memset
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	andi x15 ,  x10 ,  3
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %while.body.lr.ph
	add x15 ,  x0 ,  x10
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x12, .LBB0_14
.LBB0_4:                                //  %if.then
                                        //    in Loop: Header=BB0_3 Depth=1
	sb x11 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x12 ,  x12 ,  -1
	andi x14 ,  x15 ,  3
	bltu x0, x14, .LBB0_3
.LBB0_5:                                //  %while.end
	sltiu x14 ,  x12 ,  4
	beq x0, x14, .LBB0_6
	jal x0, .LBB0_12
.LBB0_1:
	add x15 ,  x0 ,  x10
	sltiu x14 ,  x12 ,  4
	bltu x0, x14, .LBB0_12
.LBB0_6:                                //  %if.then4
	andi x14 ,  x11 ,  255
	slli x13 ,  x14 ,  8&31
	or x14 ,  x14 ,  x13
	slli x13 ,  x14 ,  16&31
	or x14 ,  x14 ,  x13
	sltiu x13 ,  x12 ,  16
	bltu x0, x13, .LBB0_10
.LBB0_7:                                //  %while.body15.preheader
	addi x13 ,  x0 ,  15
.LBB0_8:                                //  %while.body15
                                        //  =>This Inner Loop Header: Depth=1
	sw x14 ,  12 ( x15 )
	sw x14 ,  8 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  16
	addi x12 ,  x12 ,  -16
	bltu x13, x12, .LBB0_8
.LBB0_9:                                //  %while.cond21.preheader
	sltiu x13 ,  x12 ,  4
	bltu x0, x13, .LBB0_12
.LBB0_10:                               //  %while.body24.preheader
	addi x13 ,  x0 ,  3
.LBB0_11:                               //  %while.body24
                                        //  =>This Inner Loop Header: Depth=1
	sw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -4
	bltu x13, x12, .LBB0_11
.LBB0_12:                               //  %if.end28
	beq x0, x12, .LBB0_14
.LBB0_13:                               //  %while.body32
                                        //  =>This Inner Loop Header: Depth=1
	sb x11 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x12 ,  x12 ,  -1
	bltu x0, x12, .LBB0_13
.LBB0_14:                               //  %cleanup
	ret
.Lfunc_end0:
	.size	memset, .Lfunc_end0-memset
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
