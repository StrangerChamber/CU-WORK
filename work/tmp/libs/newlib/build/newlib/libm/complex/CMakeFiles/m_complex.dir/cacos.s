	.text
	.file	"cacos.c"
	.globl	cacos                   //  -- Begin function cacos
	.type	cacos,@function
cacos:                                  //  @cacos
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -152
	.cfi_adjust_cfa_offset 152
	lw x15 ,  4 ( x11 )
	addi x14 ,  x2 ,  88
	sw x9 ,  144 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	addi x9 ,  x2 ,  104
	sw x8 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	sw x1 ,  148 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  140 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  136 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x13 ,  8 ( x11 )
	add x10 ,  x0 ,  x9
	lw x12 ,  12 ( x11 )
	sw x15 ,  4 ( x14 )
	sw x13 ,  8 ( x14 )
	lw x14 ,  0 ( x11 )
	addi x11 ,  x2 ,  40
	sw x13 ,  8 ( x11 )
	sw x15 ,  4 ( x11 )
	sw x12 ,  100 ( x2 )
	sw x12 ,  52 ( x2 )
	sw x14 ,  88 ( x2 )
	sw x14 ,  40 ( x2 )
	call casin
	lw x19 ,  8 ( x9 )
	addi x10 ,  x2 ,  24
	addi x15 ,  x2 ,  72
	lw x20 ,  4 ( x9 )
	sw x19 ,  8 ( x15 )
	sw x20 ,  4 ( x15 )
	sw x20 ,  4 ( x10 )
	sw x19 ,  8 ( x10 )
	lw x21 ,  104 ( x2 )
	lw x22 ,  116 ( x2 )
	sw x21 ,  72 ( x2 )
	sw x22 ,  84 ( x2 )
	sw x21 ,  24 ( x2 )
	sw x22 ,  36 ( x2 )
	call creal
	addi x15 ,  x2 ,  56
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	add x18 ,  x0 ,  x11
	sw x20 ,  4 ( x15 )
	sw x19 ,  8 ( x15 )
	sw x20 ,  4 ( x10 )
	sw x19 ,  8 ( x10 )
	sw x21 ,  56 ( x2 )
	sw x21 ,  8 ( x2 )
	sw x22 ,  68 ( x2 )
	sw x22 ,  20 ( x2 )
	call cimag
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x21 ,  x0 ,  x0
	add x11 ,  x0 ,  x21
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __subdf3
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	sw x10 ,  8 ( x8 )
	sw x11 ,  12 ( x8 )
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  1073291771&4095
	lui x15 ,  (1073291771>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __subdf3
	sw x11 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	lw x8 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  128 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  132 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  136 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  140 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  144 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  148 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  152
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	cacos, .Lfunc_end0-cacos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
