	.text
	.file	"stpncpy.c"
	.globl	stpncpy                 //  -- Begin function stpncpy
	.type	stpncpy,@function
stpncpy:                                //  @stpncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x15 ,  x12 ,  4
	bltu x0, x15, .LBB0_5
.LBB0_1:                                //  %entry
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_5
.LBB0_2:                                //  %if.then
	lui x15 ,  (-16843009>>12)&1048575
	lui x14 ,  (-2139062144>>12)&1048575
	addi x13 ,  x0 ,  3
.LBB0_3:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x5 ,  0 ( x11 )
	lui x30 ,  -16843009&4095
	srli x30 ,  x30 ,  12&31
	or x6 ,  x15 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x6 ,  x6 ,  x5
	xori x7 ,  x5 ,  -1
	and x6 ,  x6 ,  x7
	or x7 ,  x14 ,  x30
	and x6 ,  x7 ,  x6
	bltu x0, x6, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	sw x5 ,  0 ( x10 )
	addi x10 ,  x10 ,  4
	addi x11 ,  x11 ,  4
	addi x12 ,  x12 ,  -4
	bltu x13, x12, .LBB0_3
.LBB0_5:                                //  %while.cond8.preheader
	add x13 ,  x0 ,  x0
.LBB0_6:                                //  %while.cond8
                                        //  =>This Inner Loop Header: Depth=1
	beq x12, x13, .LBB0_12
.LBB0_7:                                //  %while.body10
                                        //    in Loop: Header=BB0_6 Depth=1
	add x14 ,  x13 ,  x11
	add x15 ,  x13 ,  x10
	addi x13 ,  x13 ,  1
	lbu x14 ,  0 ( x14 )
	sb x14 ,  0 ( x15 )
	bltu x0, x14, .LBB0_6
.LBB0_8:                                //  %while.end17
	add x15 ,  x13 ,  x10
	addi x14 ,  x15 ,  -1
	bne x12, x13, .LBB0_9
.LBB0_13:                               //  %while.end24
	add x13 ,  x0 ,  x0
	bne x14, x13, .LBB0_14
.LBB0_15:                               //  %while.end24
	add x10 ,  x0 ,  x15
	ret
.LBB0_12:                               //  %while.end24.loopexit1
	add x15 ,  x13 ,  x10
	add x14 ,  x0 ,  x0
	add x13 ,  x0 ,  x0
	beq x14, x13, .LBB0_15
.LBB0_14:                               //  %while.end24
	add x15 ,  x0 ,  x14
	add x10 ,  x0 ,  x15
	ret
.LBB0_9:                                //  %while.body22.preheader
	sub x12 ,  x12 ,  x13
	add x15 ,  x0 ,  x0
.LBB0_10:                               //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x15 ,  x10
	addi x15 ,  x15 ,  1
	add x11 ,  x13 ,  x11
	sb x0 ,  0 ( x11 )
	bne x12, x15, .LBB0_10
.LBB0_11:                               //  %while.end24.loopexit
	add x13 ,  x13 ,  x10
	add x15 ,  x15 ,  x13
	add x13 ,  x0 ,  x0
	beq x14, x13, .LBB0_15
	jal x0, .LBB0_14
.Lfunc_end0:
	.size	stpncpy, .Lfunc_end0-stpncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
