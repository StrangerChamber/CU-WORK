	.text
	.file	"ccos.c"
	.globl	ccos                    //  -- Begin function ccos
	.type	ccos,@function
ccos:                                   //  @ccos
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -160
	.cfi_adjust_cfa_offset 160
	sw x21 ,  136 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x21 ,  4 ( x11 )
	sw x8 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  40
	addi x15 ,  x2 ,  88
	sw x1 ,  156 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  152 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  148 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  144 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  140 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x22 ,  8 ( x11 )
	lw x23 ,  12 ( x11 )
	lw x24 ,  0 ( x11 )
	sw x21 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x22 ,  8 ( x10 )
	sw x21 ,  4 ( x10 )
	sw x23 ,  100 ( x2 )
	sw x24 ,  88 ( x2 )
	sw x23 ,  52 ( x2 )
	sw x24 ,  40 ( x2 )
	call cimag
	addi x9 ,  x2 ,  112
	addi x18 ,  x2 ,  104
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call _cchsh
	addi x15 ,  x2 ,  72
	addi x10 ,  x2 ,  24
	sw x21 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x21 ,  4 ( x10 )
	sw x22 ,  8 ( x10 )
	sw x24 ,  72 ( x2 )
	sw x23 ,  84 ( x2 )
	sw x24 ,  24 ( x2 )
	sw x23 ,  36 ( x2 )
	call creal
	call cos
	addi x15 ,  x2 ,  56
	add x19 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	add x20 ,  x0 ,  x11
	sw x21 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x21 ,  4 ( x10 )
	sw x22 ,  8 ( x10 )
	sw x24 ,  56 ( x2 )
	sw x24 ,  8 ( x2 )
	sw x23 ,  68 ( x2 )
	sw x23 ,  20 ( x2 )
	ori x15 ,  x9 ,  4
	lw x9 ,  0 ( x15 )
	lw x21 ,  112 ( x2 )
	call creal
	call sin
	ori x15 ,  x18 ,  4
	lw x12 ,  104 ( x2 )
	lw x13 ,  0 ( x15 )
	call __muldf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x22 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	sw x18 ,  8 ( x8 )
	or x23 ,  x15 ,  x30
	xor x15 ,  x23 ,  x22
	sw x15 ,  12 ( x8 )
	call __muldf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __adddf3
	sw x11 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	lw x8 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  128 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  132 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  136 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  140 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  144 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  148 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  152 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  156 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  160
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ccos, .Lfunc_end0-ccos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
