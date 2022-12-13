	.text
	.file	"wrf_lgamma.c"
	.globl	lgammaf_r               //  -- Begin function lgammaf_r
	.type	lgammaf_r,@function
lgammaf_r:                              //  @lgammaf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x9 ,  x0 ,  x10
	call __ieee754_lgammaf_r
	add x8 ,  x0 ,  x10
	call finitef
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %land.lhs.true
	add x10 ,  x0 ,  x9
	call finitef
	beq x0, x10, .LBB0_7
.LBB0_2:                                //  %if.then
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __lesf2
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call floorf
	add x19 ,  x0 ,  x10
	call __errno
	add x18 ,  x0 ,  x10
	blt x0, x20, .LBB0_5
.LBB0_3:                                //  %if.then
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __nesf2
	bltu x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then7
	addi x15 ,  x0 ,  33
	jal x0, .LBB0_6
.LBB0_5:                                //  %if.else
	addi x15 ,  x0 ,  34
.LBB0_6:                                //  %if.end10
	sw x15 ,  0 ( x18 )
.LBB0_7:                                //  %if.end10
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	lgammaf_r, .Lfunc_end0-lgammaf_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
