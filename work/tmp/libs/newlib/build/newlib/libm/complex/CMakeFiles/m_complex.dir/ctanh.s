	.text
	.file	"ctanh.c"
	.globl	ctanh                   //  -- Begin function ctanh
	.type	ctanh,@function
ctanh:                                  //  @ctanh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -104
	.cfi_adjust_cfa_offset 104
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x19 ,  4 ( x11 )
	sw x8 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  24
	addi x15 ,  x2 ,  56
	sw x1 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  96 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x20 ,  8 ( x11 )
	lw x21 ,  12 ( x11 )
	lw x22 ,  0 ( x11 )
	sw x19 ,  4 ( x15 )
	sw x20 ,  8 ( x15 )
	sw x20 ,  8 ( x10 )
	sw x19 ,  4 ( x10 )
	sw x21 ,  68 ( x2 )
	sw x22 ,  56 ( x2 )
	sw x21 ,  36 ( x2 )
	sw x22 ,  24 ( x2 )
	call creal
	addi x15 ,  x2 ,  40
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	add x18 ,  x0 ,  x11
	sw x19 ,  4 ( x15 )
	sw x20 ,  8 ( x15 )
	sw x19 ,  4 ( x10 )
	sw x20 ,  8 ( x10 )
	sw x22 ,  40 ( x2 )
	sw x22 ,  8 ( x2 )
	sw x21 ,  52 ( x2 )
	sw x21 ,  20 ( x2 )
	call cimag
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __adddf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	call cosh
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __adddf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	call cos
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __adddf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call sinh
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call sin
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __divdf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	sw x20 ,  12 ( x8 )
	sw x19 ,  8 ( x8 )
	call __divdf3
	add x12 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x12
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	sw x11 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	lw x8 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  96 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  100 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  104
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ctanh, .Lfunc_end0-ctanh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
