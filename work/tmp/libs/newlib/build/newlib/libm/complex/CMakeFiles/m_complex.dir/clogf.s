	.text
	.file	"clogf.c"
	.globl	clogf                   //  -- Begin function clogf
	.type	clogf,@function
clogf:                                  //  @clogf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19 ,  4 ( x11 )
	sw x8 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  24
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x20 ,  0 ( x11 )
	sw x19 ,  52 ( x2 )
	sw x20 ,  48 ( x2 )
	sw x20 ,  24 ( x2 )
	sw x19 ,  28 ( x2 )
	call cabsf
	call logf
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  16
	sw x19 ,  44 ( x2 )
	sw x20 ,  40 ( x2 )
	sw x20 ,  16 ( x2 )
	sw x19 ,  20 ( x2 )
	call cimagf
	add x18 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	sw x20 ,  32 ( x2 )
	sw x20 ,  8 ( x2 )
	sw x19 ,  36 ( x2 )
	sw x19 ,  12 ( x2 )
	call crealf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call atan2f
	add x11 ,  x0 ,  x0
	sw x10 ,  4 ( x8 )
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  0 ( x8 )
	lw x8 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	clogf, .Lfunc_end0-clogf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
