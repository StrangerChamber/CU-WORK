	.text
	.file	"memcmp.c"
	.globl	memcmp                  //  -- Begin function memcmp
	.type	memcmp,@function
memcmp:                                 //  @memcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	sltiu x14 ,  x12 ,  4
	add x10 ,  x0 ,  x0
	beq x0, x14, .LBB0_1
.LBB0_5:                                //  %if.end6
	bltu x0, x12, .LBB0_6
.LBB0_9:                                //  %cleanup
	ret
.LBB0_1:                                //  %land.lhs.true
	or x14 ,  x15 ,  x11
	andi x14 ,  x14 ,  3
	beq x0, x14, .LBB0_2
.LBB0_6:                                //  %while.body9
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x11 )
	lbu x13 ,  0 ( x15 )
	bne x13, x14, .LBB0_7
.LBB0_8:                                //  %if.end17
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x12 ,  x12 ,  -1
	addi x11 ,  x11 ,  1
	addi x15 ,  x15 ,  1
	bltu x0, x12, .LBB0_6
	jal x0, .LBB0_9
.LBB0_7:                                //  %if.then13
	sub x10 ,  x13 ,  x14
	ret
.LBB0_2:                                //  %while.body.preheader
	addi x14 ,  x0 ,  3
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x11 )
	lw x5 ,  0 ( x15 )
	bne x5, x13, .LBB0_5
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x11 ,  x11 ,  4
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -4
	bltu x14, x12, .LBB0_3
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	memcmp, .Lfunc_end0-memcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
