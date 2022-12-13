	.text
	.file	"wcsnlen.c"
	.globl	wcsnlen                 //  -- Begin function wcsnlen
	.type	wcsnlen,@function
wcsnlen:                                //  @wcsnlen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	beq x0, x11, .LBB0_5
.LBB0_1:                                //  %entry
	lw x14 ,  0 ( x10 )
	add x15 ,  x0 ,  x10
	beq x0, x14, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	xori x15 ,  x14 ,  0
	add x14 ,  x0 ,  x10
	sltiu x13 ,  x15 ,  1
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	xori x15 ,  x13 ,  -1
	andi x15 ,  x15 ,  1
	sub x11 ,  x11 ,  x15
	addi x15 ,  x14 ,  4
	beq x0, x11, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x12 ,  4 ( x14 )
	xori x14 ,  x12 ,  0
	sltiu x13 ,  x14 ,  1
	add x14 ,  x0 ,  x15
	bltu x0, x12, .LBB0_3
.LBB0_5:                                //  %while.end
	sub x15 ,  x15 ,  x10
	srai x10 ,  x15 ,  2&31
	ret
.Lfunc_end0:
	.size	wcsnlen, .Lfunc_end0-wcsnlen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
