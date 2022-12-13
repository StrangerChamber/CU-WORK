	.text
	.file	"strcmp.c"
	.globl	strcmp                  //  -- Begin function strcmp
	.type	strcmp,@function
strcmp:                                 //  @strcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x14 ,  0 ( x10 )
	add x15 ,  x0 ,  x0
	beq x0, x14, .LBB0_5
.LBB0_1:                                //  %land.rhs.preheader
	addi x13 ,  x10 ,  1
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12 ,  0 ( x11 )
	andi x10 ,  x14 ,  255
	bne x10, x12, .LBB0_3
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x14 ,  0 ( x13 )
	addi x12 ,  x13 ,  1
	addi x11 ,  x11 ,  1
	add x13 ,  x0 ,  x12
	bltu x0, x14, .LBB0_2
.LBB0_5:                                //  %while.end
	lbu x14 ,  0 ( x11 )
	andi x15 ,  x15 ,  255
	sub x10 ,  x15 ,  x14
	ret
.LBB0_3:
	add x15 ,  x0 ,  x14
	lbu x14 ,  0 ( x11 )
	andi x15 ,  x15 ,  255
	sub x10 ,  x15 ,  x14
	ret
.Lfunc_end0:
	.size	strcmp, .Lfunc_end0-strcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
