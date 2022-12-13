	.text
	.file	"ctanhf.c"
	.globl	ctanhf                  //  -- Begin function ctanhf
	.type	ctanhf,@function
ctanhf:                                 //  @ctanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18 ,  4 ( x11 )
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  12
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x19 ,  0 ( x11 )
	sw x18 ,  32 ( x2 )
	sw x19 ,  28 ( x2 )
	sw x19 ,  12 ( x2 )
	sw x18 ,  16 ( x2 )
	call crealf
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  4
	sw x19 ,  20 ( x2 )
	sw x19 ,  4 ( x2 )
	sw x18 ,  24 ( x2 )
	sw x18 ,  8 ( x2 )
	call cimagf
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __addsf3
	add x9 ,  x0 ,  x10
	call coshf
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __addsf3
	add x18 ,  x0 ,  x10
	call cosf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __addsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call sinhf
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call sinf
	add x11 ,  x0 ,  x19
	call __divsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	sw x18 ,  4 ( x8 )
	call __divsf3
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  0 ( x8 )
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ctanhf, .Lfunc_end0-ctanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
