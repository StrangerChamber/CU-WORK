	.text
	.file	"sf_fdim.c"
	.globl	fdimf                   //  -- Begin function fdimf
	.type	fdimf,@function
fdimf:                                  //  @fdimf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call __fpclassifyf
	beq x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x9
	call __fpclassifyf
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end4
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __gtsf2
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subsf3
	add x8 ,  x0 ,  x10
	add x15 ,  x0 ,  x0
	blt x15, x18, .LBB0_5
.LBB0_4:                                //  %if.end4
	add x8 ,  x0 ,  x15
	jal x0, .LBB0_5
.LBB0_2:
	add x8 ,  x0 ,  x9
.LBB0_5:                                //  %return
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	fdimf, .Lfunc_end0-fdimf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
