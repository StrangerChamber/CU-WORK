	.text
	.file	"cargf.c"
	.globl	cargf                   //  -- Begin function cargf
	.type	cargf,@function
cargf:                                  //  @cargf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9 ,  4 ( x10 )
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -16
	lw x18 ,  0 ( x10 )
	addi x10 ,  x2 ,  16
	sw x9 ,  36 ( x2 )
	sw x18 ,  32 ( x2 )
	sw x18 ,  16 ( x2 )
	sw x9 ,  20 ( x2 )
	call cimagf
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	sw x18 ,  24 ( x2 )
	sw x18 ,  8 ( x2 )
	sw x9 ,  28 ( x2 )
	sw x9 ,  12 ( x2 )
	call crealf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	jal x0, atan2f
.Lfunc_end0:
	.size	cargf, .Lfunc_end0-cargf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
