	.text
	.file	"casinh.c"
	.globl	casinh                  //  -- Begin function casinh
	.type	casinh,@function
casinh:                                 //  @casinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -136
	.cfi_adjust_cfa_offset 136
	sw x9 ,  128 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x18 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x23 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x23 ,  x0 ,  x0
	sw x8 ,  92 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x8 ,  x0 ,  x10
	sw x1 ,  132 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	lw x18 ,  8 ( x9 )
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x23
	lw x19 ,  12 ( x9 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lw x21 ,  0 ( x9 )
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x22 ,  4 ( x9 )
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __adddf3
	add x20 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __subdf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __unorddf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x20
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x20
	call __unorddf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	addi x18 ,  x2 ,  60
	addi x15 ,  x2 ,  44
	addi x11 ,  x2 ,  12
	add x10 ,  x0 ,  x18
	sw x20 ,  8 ( x15 )
	sw x20 ,  8 ( x11 )
	sw x24 ,  4 ( x15 )
	sw x24 ,  4 ( x11 )
	sw x23 ,  44 ( x2 )
	sw x23 ,  12 ( x2 )
	sw x9 ,  56 ( x2 )
	sw x9 ,  24 ( x2 )
	call casin
	lw x9 ,  8 ( x18 )
	lui x30 ,  -2147483648&4095
	lui x25 ,  (-2147483648>>12)&1048575
	add x23 ,  x0 ,  x0
	lw x19 ,  72 ( x2 )
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x23
	or x24 ,  x25 ,  x30
	add x13 ,  x0 ,  x24
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __muldf3
	lw x18 ,  4 ( x18 )
	lw x20 ,  60 ( x2 )
	add x13 ,  x0 ,  x18
	add x12 ,  x0 ,  x20
	call __subdf3
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __adddf3
	add x24 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __unorddf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	call __unorddf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont14
	sw x22 ,  8 ( x8 )
	sw x24 ,  0 ( x8 )
	sw x21 ,  12 ( x8 )
	sw x23 ,  4 ( x8 )
	lw x8 ,  92 ( x2 )              //  4-byte Folded Reload
	lw x25 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  128 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  132 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  136
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %complex_mul_libcall
	lui x15 ,  (1072693248>>12)&1048575
	addi x23 ,  x2 ,  76
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	add x14 ,  x0 ,  x19
	sw x15 ,  0 ( x2 )
	add x15 ,  x0 ,  x0
	add x10 ,  x0 ,  x23
	add x16 ,  x0 ,  x15
	add x17 ,  x0 ,  x15
	call __muldc3
	lw x9 ,  88 ( x2 )
	lw x20 ,  8 ( x23 )
	lw x24 ,  4 ( x23 )
	lw x23 ,  76 ( x2 )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall12
	lui x30 ,  -2147483648&4095
	sw x19 ,  0 ( x2 )
	addi x19 ,  x2 ,  28
	add x11 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	add x16 ,  x0 ,  x18
	add x17 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x11
	or x12 ,  x25 ,  x30
	lui x30 ,  -1074790400&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	add x15 ,  x0 ,  x20
	call __muldc3
	lw x21 ,  40 ( x2 )
	lw x22 ,  8 ( x19 )
	lw x23 ,  4 ( x19 )
	lw x24 ,  28 ( x2 )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casinh, .Lfunc_end0-casinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
