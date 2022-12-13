	.text
	.file	"memchr.c"
	.globl	memchr                  //  -- Begin function memchr
	.type	memchr,@function
memchr:                                 //  @memchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	andi x14 ,  x11 ,  255
	andi x13 ,  x15 ,  3
	beq x0, x13, .LBB0_4
.LBB0_1:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x12, .LBB0_11
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	lbu x13 ,  0 ( x15 )
	beq x13, x14, .LBB0_13
.LBB0_3:                                //  %if.end6
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x15 ,  x15 ,  1
	addi x12 ,  x12 ,  -1
	andi x13 ,  x15 ,  3
	bltu x0, x13, .LBB0_1
.LBB0_4:                                //  %while.end
	sltiu x13 ,  x12 ,  4
	bltu x0, x13, .LBB0_8
.LBB0_5:                                //  %if.then9
	slli x13 ,  x14 ,  8&31
	lui x5 ,  (-2139062144>>12)&1048575
	addi x6 ,  x0 ,  3
	or x13 ,  x14 ,  x13
	slli x11 ,  x13 ,  16&31
	or x13 ,  x13 ,  x11
	lui x11 ,  (-16843009>>12)&1048575
.LBB0_6:                                //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	lw x7 ,  0 ( x15 )
	lui x30 ,  -16843009&4095
	srli x30 ,  x30 ,  12&31
	or x16 ,  x11 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	xor x7 ,  x13 ,  x7
	add x16 ,  x16 ,  x7
	xori x7 ,  x7 ,  -1
	and x7 ,  x16 ,  x7
	or x16 ,  x5 ,  x30
	and x7 ,  x16 ,  x7
	bltu x0, x7, .LBB0_8
.LBB0_7:                                //  %if.end28
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -4
	bltu x6, x12, .LBB0_6
.LBB0_8:                                //  %if.end32
	beq x0, x12, .LBB0_11
.LBB0_9:                                //  %while.body36
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13 ,  0 ( x15 )
	beq x13, x14, .LBB0_13
.LBB0_10:                               //  %if.end42
                                        //    in Loop: Header=BB0_9 Depth=1
	addi x12 ,  x12 ,  -1
	addi x15 ,  x15 ,  1
	bltu x0, x12, .LBB0_9
.LBB0_11:                               //  %cleanup
	ret
.LBB0_13:
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	memchr, .Lfunc_end0-memchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
