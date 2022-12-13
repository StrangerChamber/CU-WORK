	.text
	.file	"strchr.c"
	.globl	strchr                  //  -- Begin function strchr
	.type	strchr,@function
strchr:                                 //  @strchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x13 ,  x10 ,  -1
	andi x15 ,  x11 ,  255
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  1 ( x13 )
	addi x10 ,  x13 ,  1
	beq x14, x15, .LBB0_3
.LBB0_2:                                //  %while.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	add x13 ,  x0 ,  x10
	bltu x0, x14, .LBB0_1
.LBB0_3:                                //  %while.end
	beq x14, x15, .LBB0_5
.LBB0_4:                                //  %while.end
	add x10 ,  x0 ,  x0
.LBB0_5:                                //  %while.end
	ret
.Lfunc_end0:
	.size	strchr, .Lfunc_end0-strchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
