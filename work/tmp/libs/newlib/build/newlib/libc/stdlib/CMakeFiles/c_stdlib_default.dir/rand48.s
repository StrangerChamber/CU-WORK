	.text
	.file	"rand48.c"
	.globl	__dorand48              //  -- Begin function __dorand48
	.type	__dorand48,@function
__dorand48:                             //  @__dorand48
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x11
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	lhu x18 ,  178 ( x9 )
	lh x10 ,  4 ( x8 )
	add x11 ,  x0 ,  x18
	call __mulsi3
	lhu x21 ,  2 ( x8 )
	add x19 ,  x0 ,  x10
	lhu x20 ,  180 ( x9 )
	add x11 ,  x0 ,  x21
	add x10 ,  x0 ,  x20
	call __mulsi3
	add x22 ,  x10 ,  x19
	lhu x19 ,  0 ( x8 )
	add x11 ,  x0 ,  x18
	add x10 ,  x0 ,  x19
	call __mulsi3
	lhu x15 ,  184 ( x9 )
	add x11 ,  x0 ,  x19
	add x23 ,  x15 ,  x10
	lh x10 ,  182 ( x9 )
	call __mulsi3
	add x9 ,  x10 ,  x22
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	srli x22 ,  x23 ,  16&31
	call __mulsi3
	add x18 ,  x10 ,  x22
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x15 ,  x10 ,  x18
	sh x23 ,  0 ( x8 )
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	srli x14 ,  x15 ,  16&31
	sh x15 ,  2 ( x8 )
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x14 ,  x9
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	sh x14 ,  4 ( x8 )
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__dorand48, .Lfunc_end0-__dorand48
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
