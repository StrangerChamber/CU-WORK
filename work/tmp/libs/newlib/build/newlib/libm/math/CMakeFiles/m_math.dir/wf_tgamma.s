	.text
	.file	"wf_tgamma.c"
	.globl	tgammaf                 //  -- Begin function tgammaf
	.type	tgammaf,@function
tgammaf:                                //  @tgammaf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	add x11 ,  x0 ,  x0
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x9 ,  x0 ,  x10
	call __ltsf2
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __ieee754_tgammaf
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __extendsfdf2
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	bge x19, x0, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call floor
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __eqdf2
	bltu x0, x10, .LBB0_3
.LBB0_2:
	addi x9 ,  x0 ,  33
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.else
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_6
.LBB0_4:
	addi x9 ,  x0 ,  34
.LBB0_5:                                //  %if.end12.sink.split
	call __errno
	sw x9 ,  0 ( x10 )
.LBB0_6:                                //  %if.end12
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tgammaf, .Lfunc_end0-tgammaf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
