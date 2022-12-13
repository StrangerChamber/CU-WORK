	.text
	.file	"wmemcmp.c"
	.globl	wmemcmp                 //  -- Begin function wmemcmp
	.type	wmemcmp,@function
wmemcmp:                                //  @wmemcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x12, .LBB0_6
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x11 )
	lw x13 ,  0 ( x15 )
	bne x13, x14, .LBB0_2
.LBB0_5:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11 ,  x11 ,  4
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -1
	bltu x0, x12, .LBB0_1
.LBB0_6:                                //  %cleanup
	ret
.LBB0_2:                                //  %if.then
	blt x14, x13, .LBB0_3
.LBB0_4:                                //  %if.then
	addi x10 ,  x0 ,  -1
	ret
.LBB0_3:
	slti x10 ,  x0 ,  1
	ret
.Lfunc_end0:
	.size	wmemcmp, .Lfunc_end0-wmemcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
