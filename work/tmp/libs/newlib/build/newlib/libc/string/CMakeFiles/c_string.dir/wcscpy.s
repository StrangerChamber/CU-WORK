	.text
	.file	"wcscpy.c"
	.globl	wcscpy                  //  -- Begin function wcscpy
	.type	wcscpy,@function
wcscpy:                                 //  @wcscpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x15 ,  0 ( x11 )
	add x14 ,  x0 ,  x10
	sw x0 ,  0 ( x10 )
	beq x0, x15, .LBB0_3
.LBB0_1:                                //  %while.body.preheader
	addi x13 ,  x11 ,  4
	add x14 ,  x0 ,  x10
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x15 ,  0 ( x14 )
	lw x15 ,  0 ( x13 )
	addi x12 ,  x13 ,  4
	addi x14 ,  x14 ,  4
	add x13 ,  x0 ,  x12
	bltu x0, x15, .LBB0_2
.LBB0_3:                                //  %while.end
	sw x0 ,  0 ( x14 )
	ret
.Lfunc_end0:
	.size	wcscpy, .Lfunc_end0-wcscpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
