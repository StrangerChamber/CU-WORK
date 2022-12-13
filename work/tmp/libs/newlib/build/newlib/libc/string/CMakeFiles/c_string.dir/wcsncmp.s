	.text
	.file	"wcsncmp.c"
	.globl	wcsncmp                 //  -- Begin function wcsncmp
	.type	wcsncmp,@function
wcsncmp:                                //  @wcsncmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x11 )
	lw x14 ,  0 ( x15 )
	bne x14, x13, .LBB0_2
.LBB0_3:                                //  %if.end4
                                        //    in Loop: Header=BB0_1 Depth=1
	beq x0, x14, .LBB0_5
.LBB0_4:                                //  %do.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11 ,  x11 ,  4
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -1
	bltu x0, x12, .LBB0_1
.LBB0_5:                                //  %return
	ret
.LBB0_2:                                //  %if.then2
	sub x10 ,  x14 ,  x13
	ret
.Lfunc_end0:
	.size	wcsncmp, .Lfunc_end0-wcsncmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
