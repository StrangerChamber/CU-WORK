	.text
	.file	"strnlen.c"
	.globl	strnlen                 //  -- Begin function strnlen
	.type	strnlen,@function
strnlen:                                //  @strnlen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	beq x0, x11, .LBB0_4
.LBB0_1:                                //  %land.rhs.preheader
	add x15 ,  x0 ,  x10
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x15 )
	beq x0, x14, .LBB0_4
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x11 ,  -1
	addi x15 ,  x15 ,  1
	bltu x0, x11, .LBB0_2
.LBB0_4:                                //  %while.end
	sub x10 ,  x15 ,  x10
	ret
.Lfunc_end0:
	.size	strnlen, .Lfunc_end0-strnlen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
