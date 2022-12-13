	.text
	.file	"memrchr.c"
	.globl	memrchr                 //  -- Begin function memrchr
	.type	memrchr,@function
memrchr:                                //  @memrchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	addi x13 ,  x12 ,  -1
	add x10 ,  x0 ,  x0
	andi x14 ,  x11 ,  255
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x12 ,  x13 ,  x15
	addi x11 ,  x12 ,  1
	andi x11 ,  x11 ,  3
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x11 ,  x13 ,  -1
	beq x0, x11, .LBB0_14
.LBB0_3:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	lbu x12 ,  0 ( x12 )
	addi x13 ,  x13 ,  -1
	bne x12, x14, .LBB0_1
.LBB0_4:                                //  %if.end.cleanup.loopexit1_crit_edge
	add x15 ,  x13 ,  x15
	addi x10 ,  x15 ,  1
	ret
.LBB0_5:                                //  %while.end
	addi x13 ,  x13 ,  1
	sltiu x11 ,  x13 ,  4
	bltu x0, x11, .LBB0_10
.LBB0_6:                                //  %if.then11
	slli x12 ,  x14 ,  8&31
	lui x5 ,  (-16843009>>12)&1048575
	lui x6 ,  (-2139062144>>12)&1048575
	addi x7 ,  x0 ,  3
	or x12 ,  x14 ,  x12
	slli x11 ,  x12 ,  16&31
	or x12 ,  x12 ,  x11
	addi x11 ,  x15 ,  -4
.LBB0_7:                                //  %while.body26
                                        //  =>This Inner Loop Header: Depth=1
	add x16 ,  x13 ,  x11
	lui x30 ,  -16843009&4095
	lw x16 ,  0 ( x16 )
	srli x30 ,  x30 ,  12&31
	or x17 ,  x5 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	xor x16 ,  x12 ,  x16
	add x17 ,  x17 ,  x16
	xori x16 ,  x16 ,  -1
	and x16 ,  x17 ,  x16
	or x17 ,  x6 ,  x30
	and x16 ,  x17 ,  x16
	bltu x0, x16, .LBB0_9
.LBB0_8:                                //  %if.end32
                                        //    in Loop: Header=BB0_7 Depth=1
	addi x13 ,  x13 ,  -4
	bltu x7, x13, .LBB0_7
.LBB0_9:                                //  %while.body26.while.end35_crit_edge
	add x15 ,  x13 ,  x15
	addi x15 ,  x15 ,  -4
	addi x12 ,  x15 ,  3
.LBB0_10:                               //  %if.end38
	beq x0, x13, .LBB0_14
.LBB0_11:                               //  %while.body42
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  0 ( x12 )
	beq x15, x14, .LBB0_12
.LBB0_13:                               //  %if.end48
                                        //    in Loop: Header=BB0_11 Depth=1
	addi x13 ,  x13 ,  -1
	addi x12 ,  x12 ,  -1
	bltu x0, x13, .LBB0_11
.LBB0_14:                               //  %cleanup
	ret
.LBB0_12:
	add x10 ,  x0 ,  x12
	ret
.Lfunc_end0:
	.size	memrchr, .Lfunc_end0-memrchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
