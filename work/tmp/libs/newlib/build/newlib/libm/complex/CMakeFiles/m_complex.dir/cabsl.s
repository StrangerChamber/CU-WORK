	.text
	.file	"cabsl.c"
	.globl	cabsl                   //  -- Begin function cabsl
	.type	cabsl,@function
cabsl:                                  //  @cabsl
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x10 ,  0 ( x8 )
	lw x11 ,  4 ( x8 )
	lw x12 ,  8 ( x8 )
	lw x13 ,  12 ( x8 )
	call __trunctfdf2
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	lw x10 ,  16 ( x8 )
	lw x11 ,  20 ( x8 )
	lw x12 ,  24 ( x8 )
	lw x13 ,  28 ( x8 )
	addi x8 ,  x2 ,  24
	sw x18 ,  4 ( x8 )
	call __trunctfdf2
	addi x15 ,  x2 ,  8
	sw x10 ,  8 ( x8 )
	sw x10 ,  8 ( x15 )
	add x10 ,  x0 ,  x15
	sw x11 ,  36 ( x2 )
	sw x11 ,  20 ( x2 )
	sw x18 ,  4 ( x15 )
	sw x9 ,  24 ( x2 )
	sw x9 ,  8 ( x2 )
	call cabs
	call __extenddftf2
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	cabsl, .Lfunc_end0-cabsl
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
