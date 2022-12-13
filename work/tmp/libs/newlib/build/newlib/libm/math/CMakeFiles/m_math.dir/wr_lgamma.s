	.text
	.file	"wr_lgamma.c"
	.globl	lgamma_r                //  -- Begin function lgamma_r
	.type	lgamma_r,@function
lgamma_r:                               //  @lgamma_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	call __ieee754_lgamma_r
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call finite
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %land.lhs.true
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_7
.LBB0_2:                                //  %if.then
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x12
	call __ledf2
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call floor
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	call __errno
	add x20 ,  x0 ,  x10
	blt x0, x23, .LBB0_5
.LBB0_3:                                //  %if.then
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __nedf2
	bltu x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then7
	addi x15 ,  x0 ,  33
	jal x0, .LBB0_6
.LBB0_5:                                //  %if.else
	addi x15 ,  x0 ,  34
.LBB0_6:                                //  %if.end10
	sw x15 ,  0 ( x20 )
.LBB0_7:                                //  %if.end10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	lgamma_r, .Lfunc_end0-lgamma_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
