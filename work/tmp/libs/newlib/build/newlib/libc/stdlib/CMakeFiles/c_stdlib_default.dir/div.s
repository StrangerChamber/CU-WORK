	.text
	.file	"div.c"
	.globl	div                     //  -- Begin function div
	.type	div,@function
div:                                    //  @div
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x9 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __divsi3
	add x11 ,  x0 ,  x9
	add x18 ,  x0 ,  x10
	call __mulsi3
	sub x15 ,  x19 ,  x10
	sw x18 ,  0 ( x8 )
	sw x15 ,  4 ( x8 )
	blt x19, x0, .LBB0_3
.LBB0_1:                                //  %entry
	bge x15, x0, .LBB0_3
.LBB0_2:                                //  %if.then
	addi x14 ,  x18 ,  1
	sub x15 ,  x15 ,  x9
	jal x0, .LBB0_6
.LBB0_3:                                //  %if.else
	bge x19, x0, .LBB0_8
.LBB0_4:                                //  %if.else
	bge x0, x15, .LBB0_8
.LBB0_5:                                //  %if.then10
	addi x14 ,  x18 ,  -1
	add x15 ,  x9 ,  x15
.LBB0_6:                                //  %if.end13.sink.split
	sw x14 ,  0 ( x8 )
	sw x15 ,  4 ( x8 )
.LBB0_8:                                //  %if.end13
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	div, .Lfunc_end0-div
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
