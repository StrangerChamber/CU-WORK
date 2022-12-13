	.text
	.file	"wcpncpy.c"
	.globl	wcpncpy                 //  -- Begin function wcpncpy
	.type	wcpncpy,@function
wcpncpy:                                //  @wcpncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x12, .LBB0_2
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x14 ,  0 ( x11 )
	addi x11 ,  x11 ,  4
	addi x12 ,  x12 ,  -1
	sw x14 ,  0 ( x10 )
	addi x10 ,  x10 ,  4
	bltu x0, x14, .LBB0_1
.LBB0_4:                                //  %while.end
	addi x14 ,  x10 ,  -4
	beq x0, x12, .LBB0_7
.LBB0_5:                                //  %while.body6.preheader
	add x13 ,  x0 ,  x0
.LBB0_6:                                //  %while.body6
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  0 ( x10 )
	addi x10 ,  x10 ,  4
	addi x13 ,  x13 ,  1
	bne x12, x13, .LBB0_6
.LBB0_7:                                //  %while.end8
	beq x14, x15, .LBB0_9
.LBB0_8:                                //  %while.end8
	add x10 ,  x0 ,  x14
.LBB0_9:                                //  %while.end8
	ret
.LBB0_2:
	add x14 ,  x0 ,  x15
	bne x14, x15, .LBB0_8
	jal x0, .LBB0_9
.Lfunc_end0:
	.size	wcpncpy, .Lfunc_end0-wcpncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
