	.text
	.file	"memmove.c"
	.globl	memmove                 //  -- Begin function memmove
	.type	memmove,@function
memmove:                                //  @memmove
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	bgeu x11, x10, .LBB0_5
.LBB0_1:                                //  %land.lhs.true
	add x15 ,  x12 ,  x11
	bgeu x10, x15, .LBB0_5
.LBB0_2:                                //  %if.then
	beq x0, x12, .LBB0_8
.LBB0_3:                                //  %while.body.preheader
	addi x15 ,  x10 ,  -1
	addi x14 ,  x11 ,  -1
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x12 ,  x14
	add x13 ,  x12 ,  x15
	addi x12 ,  x12 ,  -1
	lb x11 ,  0 ( x11 )
	sb x11 ,  0 ( x13 )
	bltu x0, x12, .LBB0_4
	jal x0, .LBB0_8
.LBB0_5:                                //  %if.else
	sltiu x15 ,  x12 ,  16
	beq x0, x15, .LBB0_9
.LBB0_6:
	add x15 ,  x0 ,  x10
.LBB0_7:                                //  %if.end
	bltu x0, x12, .LBB0_11
	jal x0, .LBB0_8
.LBB0_9:                                //  %land.lhs.true6
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	beq x0, x15, .LBB0_16
.LBB0_10:
	add x15 ,  x0 ,  x10
.LBB0_11:                               //  %while.body32
                                        //  =>This Inner Loop Header: Depth=1
	lb x14 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -1
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x12, .LBB0_11
.LBB0_8:                                //  %if.end36
	ret
.LBB0_16:                               //  %while.body12.preheader
	addi x14 ,  x0 ,  15
	add x15 ,  x0 ,  x10
.LBB0_17:                               //  %while.body12
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x11 )
	addi x12 ,  x12 ,  -16
	sw x13 ,  0 ( x15 )
	lw x13 ,  4 ( x11 )
	sw x13 ,  4 ( x15 )
	lw x13 ,  8 ( x11 )
	sw x13 ,  8 ( x15 )
	lw x13 ,  12 ( x11 )
	addi x11 ,  x11 ,  16
	sw x13 ,  12 ( x15 )
	addi x15 ,  x15 ,  16
	bltu x14, x12, .LBB0_17
.LBB0_12:                               //  %while.cond22.preheader
	sltiu x14 ,  x12 ,  4
	bltu x0, x14, .LBB0_7
.LBB0_13:                               //  %while.body24.preheader
	add x14 ,  x0 ,  x0
	addi x13 ,  x0 ,  3
.LBB0_14:                               //  %while.body24
                                        //  =>This Inner Loop Header: Depth=1
	add x6 ,  x14 ,  x11
	add x5 ,  x14 ,  x15
	addi x14 ,  x14 ,  4
	addi x12 ,  x12 ,  -4
	lw x6 ,  0 ( x6 )
	sw x6 ,  0 ( x5 )
	bltu x13, x12, .LBB0_14
.LBB0_15:                               //  %while.end28.loopexit
	add x15 ,  x14 ,  x15
	add x11 ,  x14 ,  x11
	bltu x0, x12, .LBB0_11
	jal x0, .LBB0_8
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
