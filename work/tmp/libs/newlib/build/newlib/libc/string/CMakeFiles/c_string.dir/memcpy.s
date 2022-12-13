	.text
	.file	"memcpy.c"
	.globl	memcpy                  //  -- Begin function memcpy
	.type	memcpy,@function
memcpy:                                 //  @memcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x15 ,  x12 ,  16
	beq x0, x15, .LBB0_4
.LBB0_1:
	add x15 ,  x0 ,  x10
.LBB0_2:                                //  %if.end
	bltu x0, x12, .LBB0_6
	jal x0, .LBB0_3
.LBB0_4:                                //  %land.lhs.true
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	beq x0, x15, .LBB0_11
.LBB0_5:
	add x15 ,  x0 ,  x10
.LBB0_6:                                //  %while.body19
                                        //  =>This Inner Loop Header: Depth=1
	lb x14 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -1
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x12, .LBB0_6
.LBB0_3:                                //  %while.end22
	ret
.LBB0_11:                               //  %while.body.preheader
	addi x14 ,  x0 ,  15
	add x15 ,  x0 ,  x10
.LBB0_12:                               //  %while.body
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
	bltu x14, x12, .LBB0_12
.LBB0_7:                                //  %while.cond10.preheader
	sltiu x14 ,  x12 ,  4
	bltu x0, x14, .LBB0_2
.LBB0_8:                                //  %while.body12.preheader
	add x14 ,  x0 ,  x0
	addi x13 ,  x0 ,  3
.LBB0_9:                                //  %while.body12
                                        //  =>This Inner Loop Header: Depth=1
	add x6 ,  x14 ,  x11
	add x5 ,  x14 ,  x15
	addi x14 ,  x14 ,  4
	addi x12 ,  x12 ,  -4
	lw x6 ,  0 ( x6 )
	sw x6 ,  0 ( x5 )
	bltu x13, x12, .LBB0_9
.LBB0_10:                               //  %while.end16.loopexit
	add x15 ,  x14 ,  x15
	add x11 ,  x14 ,  x11
	bltu x0, x12, .LBB0_6
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	memcpy, .Lfunc_end0-memcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
