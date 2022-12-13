	.text
	.file	"csinf.c"
	.globl	csinf                   //  -- Begin function csinf
	.type	csinf,@function
csinf:                                  //  @csinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18 ,  4 ( x11 )
	sw x8 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  20
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x19 ,  0 ( x11 )
	sw x18 ,  48 ( x2 )
	sw x19 ,  44 ( x2 )
	sw x19 ,  20 ( x2 )
	sw x18 ,  24 ( x2 )
	call cimagf
	addi x11 ,  x2 ,  56
	addi x12 ,  x2 ,  52
	call _cchshf
	addi x10 ,  x2 ,  12
	sw x18 ,  40 ( x2 )
	sw x19 ,  36 ( x2 )
	sw x19 ,  12 ( x2 )
	sw x18 ,  16 ( x2 )
	call crealf
	call sinf
	add x9 ,  x0 ,  x10
	sw x19 ,  28 ( x2 )
	sw x19 ,  4 ( x2 )
	sw x18 ,  32 ( x2 )
	sw x18 ,  8 ( x2 )
	addi x10 ,  x2 ,  4
	lw x18 ,  56 ( x2 )
	call crealf
	call cosf
	lw x11 ,  52 ( x2 )
	call __mulsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	sw x19 ,  4 ( x8 )
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  0 ( x8 )
	lw x8 ,  60 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	csinf, .Lfunc_end0-csinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
