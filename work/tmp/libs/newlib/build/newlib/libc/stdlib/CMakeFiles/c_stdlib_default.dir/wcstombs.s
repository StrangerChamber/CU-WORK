	.text
	.file	"wcstombs.c"
	.globl	wcstombs                //  -- Begin function wcstombs
	.type	wcstombs,@function
wcstombs:                               //  @wcstombs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x11 )
	add x14 ,  x10 ,  x15
	sb x13 ,  0 ( x14 )
	andi x14 ,  x13 ,  255
	beq x0, x14, .LBB0_3
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11 ,  x11 ,  4
	addi x10 ,  x10 ,  1
	bne x12, x10, .LBB0_1
.LBB0_3:                                //  %if.end8
	ret
.Lfunc_end0:
	.size	wcstombs, .Lfunc_end0-wcstombs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
