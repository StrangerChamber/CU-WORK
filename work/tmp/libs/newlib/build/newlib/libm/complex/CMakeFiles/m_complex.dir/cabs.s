	.text
	.file	"cabs.c"
	.globl	cabs                    //  -- Begin function cabs
	.type	cabs,@function
cabs:                                   //  @cabs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -96
	.cfi_adjust_cfa_offset 96
	sw x18 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x18 ,  4 ( x10 )
	addi x15 ,  x2 ,  52
	sw x1 ,  92 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  88 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	lw x19 ,  8 ( x10 )
	lw x20 ,  12 ( x10 )
	lw x21 ,  0 ( x10 )
	addi x10 ,  x2 ,  20
	sw x18 ,  4 ( x15 )
	sw x19 ,  8 ( x15 )
	sw x19 ,  8 ( x10 )
	sw x18 ,  4 ( x10 )
	sw x20 ,  64 ( x2 )
	sw x21 ,  52 ( x2 )
	sw x20 ,  32 ( x2 )
	sw x21 ,  20 ( x2 )
	call creal
	addi x15 ,  x2 ,  36
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  4
	add x9 ,  x0 ,  x11
	sw x18 ,  4 ( x15 )
	sw x19 ,  8 ( x15 )
	sw x18 ,  4 ( x10 )
	sw x19 ,  8 ( x10 )
	sw x21 ,  36 ( x2 )
	sw x21 ,  4 ( x2 )
	sw x20 ,  48 ( x2 )
	sw x20 ,  16 ( x2 )
	call cimag
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  68 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  88 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  92 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  96
	.cfi_def_cfa 2, 0
	jal x0, hypot
.Lfunc_end0:
	.size	cabs, .Lfunc_end0-cabs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
