	.text
	.file	"ccoshf.c"
	.globl	ccoshf                  //  -- Begin function ccoshf
	.type	ccoshf,@function
ccoshf:                                 //  @ccoshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18 ,  4 ( x11 )
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  16
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19 ,  0 ( x11 )
	sw x18 ,  36 ( x2 )
	sw x19 ,  32 ( x2 )
	sw x19 ,  16 ( x2 )
	sw x18 ,  20 ( x2 )
	call crealf
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	sw x19 ,  24 ( x2 )
	sw x19 ,  8 ( x2 )
	sw x18 ,  28 ( x2 )
	sw x18 ,  12 ( x2 )
	call cimagf
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call coshf
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call cosf
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call sinhf
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call sinf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	sw x9 ,  4 ( x8 )
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	sw x10 ,  0 ( x8 )
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ccoshf, .Lfunc_end0-ccoshf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
