	.text
	.file	"rawmemchr.c"
	.globl	rawmemchr               //  -- Begin function rawmemchr
	.type	rawmemchr,@function
rawmemchr:                              //  @rawmemchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	andi x14 ,  x10 ,  3
	andi x15 ,  x11 ,  255
	beq x0, x14, .LBB0_3
.LBB0_1:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x10 )
	beq x14, x15, .LBB0_7
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10 ,  x10 ,  1
	andi x14 ,  x10 ,  3
	bltu x0, x14, .LBB0_1
.LBB0_3:                                //  %while.end
	slli x14 ,  x15 ,  8&31
	addi x10 ,  x10 ,  -4
	lui x12 ,  (-2139062144>>12)&1048575
	or x14 ,  x15 ,  x14
	slli x13 ,  x14 ,  16&31
	or x14 ,  x14 ,  x13
	lui x13 ,  (-16843009>>12)&1048575
.LBB0_4:                                //  %while.cond13
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  4 ( x10 )
	lui x30 ,  -16843009&4095
	addi x10 ,  x10 ,  4
	srli x30 ,  x30 ,  12&31
	or x6 ,  x13 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	xor x5 ,  x14 ,  x11
	add x6 ,  x6 ,  x5
	xori x5 ,  x5 ,  -1
	and x5 ,  x6 ,  x5
	or x6 ,  x12 ,  x30
	and x5 ,  x6 ,  x5
	beq x0, x5, .LBB0_4
.LBB0_5:                                //  %while.end22
	andi x14 ,  x11 ,  255
	beq x14, x15, .LBB0_7
.LBB0_6:                                //  %while.cond23.while.cond23_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  1 ( x10 )
	addi x10 ,  x10 ,  1
	bne x14, x15, .LBB0_6
.LBB0_7:                                //  %cleanup
	ret
.Lfunc_end0:
	.size	rawmemchr, .Lfunc_end0-rawmemchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
