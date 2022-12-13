	.text
	.file	"memccpy.c"
	.globl	memccpy                 //  -- Begin function memccpy
	.type	memccpy,@function
memccpy:                                //  @memccpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x14 ,  x13 ,  4
	slli x15 ,  x12 ,  24&31
	bltu x0, x14, .LBB0_5
.LBB0_1:                                //  %land.lhs.true
	or x14 ,  x10 ,  x11
	andi x14 ,  x14 ,  3
	bltu x0, x14, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	srai x14 ,  x15 ,  24&31
	slli x12 ,  x12 ,  8&31
	lui x5 ,  (-2139062144>>12)&1048575
	addi x6 ,  x0 ,  3
	add x12 ,  x14 ,  x12
	slli x12 ,  x12 ,  8&31
	add x12 ,  x14 ,  x12
	slli x12 ,  x12 ,  8&31
	add x14 ,  x14 ,  x12
	lui x12 ,  (-16843009>>12)&1048575
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x7 ,  0 ( x11 )
	lui x30 ,  -16843009&4095
	srli x30 ,  x30 ,  12&31
	or x17 ,  x12 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	xor x16 ,  x14 ,  x7
	add x17 ,  x17 ,  x16
	xori x16 ,  x16 ,  -1
	and x16 ,  x17 ,  x16
	or x17 ,  x5 ,  x30
	and x16 ,  x17 ,  x16
	bltu x0, x16, .LBB0_5
.LBB0_4:                                //  %cleanup
                                        //    in Loop: Header=BB0_3 Depth=1
	sw x7 ,  0 ( x10 )
	addi x10 ,  x10 ,  4
	addi x11 ,  x11 ,  4
	addi x13 ,  x13 ,  -4
	bltu x6, x13, .LBB0_3
.LBB0_5:                                //  %if.end15
	srai x14 ,  x15 ,  24&31
	add x15 ,  x0 ,  x0
.LBB0_6:                                //  %while.cond16
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x13, .LBB0_7
.LBB0_8:                                //  %while.body18
                                        //    in Loop: Header=BB0_6 Depth=1
	lb x12 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	addi x13 ,  x13 ,  -1
	sb x12 ,  0 ( x10 )
	addi x10 ,  x10 ,  1
	bne x14, x12, .LBB0_6
.LBB0_9:                                //  %while.end27
	ret
.LBB0_7:
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	memccpy, .Lfunc_end0-memccpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
