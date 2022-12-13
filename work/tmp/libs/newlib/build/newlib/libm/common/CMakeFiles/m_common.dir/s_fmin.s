	.text
	.file	"s_fmin.c"
	.globl	fmin                    //  -- Begin function fmin
	.type	fmin,@function
fmin:                                   //  @fmin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call __fpclassifyd
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __fpclassifyd
	beq x0, x10, .LBB0_4
.LBB0_2:                                //  %if.end4
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __ltdf2
	add x15 ,  x0 ,  x0
	blt x10, x15, .LBB0_4
.LBB0_3:                                //  %if.end4
	add x8 ,  x0 ,  x19
	add x9 ,  x0 ,  x18
.LBB0_4:                                //  %return
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	fmin, .Lfunc_end0-fmin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
