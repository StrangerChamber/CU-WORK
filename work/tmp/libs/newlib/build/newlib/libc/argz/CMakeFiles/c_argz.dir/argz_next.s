	.text
	.file	"argz_next.c"
	.globl	argz_next               //  -- Begin function argz_next
	.type	argz_next,@function
argz_next:                              //  @argz_next
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %while.cond.preheader
	.cfi_def_cfa 2, 0
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  0 ( x12 )
	addi x12 ,  x12 ,  1
	bltu x0, x15, .LBB0_2
.LBB0_3:                                //  %while.end
	add x15 ,  x11 ,  x10
	bltu x12, x15, .LBB0_7
.LBB0_4:                                //  %while.end
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x12
	ret
.LBB0_5:                                //  %if.else7
	add x12 ,  x0 ,  x0
	beq x11, x12, .LBB0_7
.LBB0_6:                                //  %if.else7
	add x12 ,  x0 ,  x10
.LBB0_7:                                //  %return
	add x10 ,  x0 ,  x12
	ret
.Lfunc_end0:
	.size	argz_next, .Lfunc_end0-argz_next
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
