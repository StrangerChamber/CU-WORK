	.text
	.file	"mempcpy.c"
	.globl	mempcpy                 //  -- Begin function mempcpy
	.type	mempcpy,@function
mempcpy:                                //  @mempcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x15 ,  x12 ,  16
	beq x0, x15, .LBB0_1
.LBB0_8:                                //  %if.end
	bltu x0, x12, .LBB0_9
	jal x0, .LBB0_10
.LBB0_1:                                //  %land.lhs.true
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	beq x0, x15, .LBB0_2
.LBB0_9:                                //  %while.body19
                                        //  =>This Inner Loop Header: Depth=1
	lb x15 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -1
	sb x15 ,  0 ( x10 )
	addi x10 ,  x10 ,  1
	bltu x0, x12, .LBB0_9
.LBB0_10:                               //  %while.end22
	ret
.LBB0_2:                                //  %while.body.preheader
	addi x15 ,  x0 ,  15
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x11 )
	addi x12 ,  x12 ,  -16
	sw x14 ,  0 ( x10 )
	lw x14 ,  4 ( x11 )
	sw x14 ,  4 ( x10 )
	lw x14 ,  8 ( x11 )
	sw x14 ,  8 ( x10 )
	lw x14 ,  12 ( x11 )
	addi x11 ,  x11 ,  16
	sw x14 ,  12 ( x10 )
	addi x10 ,  x10 ,  16
	bltu x15, x12, .LBB0_3
.LBB0_4:                                //  %while.cond10.preheader
	sltiu x15 ,  x12 ,  4
	bltu x0, x15, .LBB0_8
.LBB0_5:                                //  %while.body12.preheader
	add x15 ,  x0 ,  x0
	addi x14 ,  x0 ,  3
.LBB0_6:                                //  %while.body12
                                        //  =>This Inner Loop Header: Depth=1
	add x5 ,  x15 ,  x11
	add x13 ,  x15 ,  x10
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -4
	lw x5 ,  0 ( x5 )
	sw x5 ,  0 ( x13 )
	bltu x14, x12, .LBB0_6
.LBB0_7:                                //  %while.end16.loopexit
	add x10 ,  x15 ,  x10
	add x11 ,  x15 ,  x11
	bltu x0, x12, .LBB0_9
	jal x0, .LBB0_10
.Lfunc_end0:
	.size	mempcpy, .Lfunc_end0-mempcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
