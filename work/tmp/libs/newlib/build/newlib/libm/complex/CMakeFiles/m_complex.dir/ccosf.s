	.text
	.file	"ccosf.c"
	.globl	ccosf                   //  -- Begin function ccosf
	.type	ccosf,@function
ccosf:                                  //  @ccosf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -88
	.cfi_adjust_cfa_offset 88
	sw x18 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18 ,  4 ( x11 )
	sw x8 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  24
	sw x1 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19 ,  0 ( x11 )
	sw x18 ,  52 ( x2 )
	sw x19 ,  48 ( x2 )
	sw x19 ,  24 ( x2 )
	sw x18 ,  28 ( x2 )
	call cimagf
	addi x11 ,  x2 ,  60
	addi x12 ,  x2 ,  56
	call _cchshf
	addi x10 ,  x2 ,  16
	sw x18 ,  44 ( x2 )
	sw x19 ,  40 ( x2 )
	sw x19 ,  16 ( x2 )
	sw x18 ,  20 ( x2 )
	call crealf
	call cosf
	add x9 ,  x0 ,  x10
	sw x19 ,  32 ( x2 )
	sw x19 ,  8 ( x2 )
	sw x18 ,  36 ( x2 )
	sw x18 ,  12 ( x2 )
	addi x10 ,  x2 ,  8
	lw x18 ,  60 ( x2 )
	call crealf
	call sinf
	lw x11 ,  56 ( x2 )
	call __mulsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	xor x15 ,  x20 ,  x19
	sw x15 ,  4 ( x8 )
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  0 ( x8 )
	lw x8 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  88
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ccosf, .Lfunc_end0-ccosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
