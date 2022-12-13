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
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %while.body.lr.ph
	andi x14 ,  x11 ,  255
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13 ,  0 ( x15 )
	beq x13, x14, .LBB0_3
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x12 ,  x12 ,  -1
	addi x15 ,  x15 ,  1
	bltu x0, x12, .LBB0_2
.LBB0_5:                                //  %cleanup
	ret
.LBB0_3:
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	memchr, .Lfunc_end0-memchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
