	.text
	.file	"wcsncpy.c"
	.globl	wcsncpy                 //  -- Begin function wcsncpy
	.type	wcsncpy,@function
wcsncpy:                                //  @wcsncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x12, .LBB0_6
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	add x13 ,  x15 ,  x11
	add x14 ,  x15 ,  x10
	addi x15 ,  x15 ,  4
	addi x12 ,  x12 ,  -1
	lw x13 ,  0 ( x13 )
	sw x13 ,  0 ( x14 )
	bltu x0, x13, .LBB0_1
.LBB0_3:                                //  %while.end
	beq x0, x12, .LBB0_6
.LBB0_4:                                //  %while.body6.preheader
	add x15 ,  x15 ,  x10
	add x14 ,  x0 ,  x0
.LBB0_5:                                //  %while.body6
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  1
	bne x12, x14, .LBB0_5
.LBB0_6:                                //  %while.end8
	ret
.Lfunc_end0:
	.size	wcsncpy, .Lfunc_end0-wcsncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
