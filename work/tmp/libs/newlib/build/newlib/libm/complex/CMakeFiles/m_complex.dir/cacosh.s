	.text
	.file	"cacosh.c"
	.globl	cacosh                  //  -- Begin function cacosh
	.type	cacosh,@function
cacosh:                                 //  @cacosh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -248
	.cfi_adjust_cfa_offset 248
	sw x8 ,  196 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	sw x22 ,  220 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  216 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x9 ,  240 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x0
	sw x10 ,  32 ( x2 )             //  4-byte Folded Spill
	lui x13 ,  (1072693248>>12)&1048575
	sw x1 ,  244 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  236 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  232 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  228 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  224 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24 ,  212 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  208 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  204 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  200 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x22 ,  0 ( x8 )
	add x12 ,  x0 ,  x9
	lw x23 ,  4 ( x8 )
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __adddf3
	lw x20 ,  8 ( x8 )
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x9
	lw x21 ,  12 ( x8 )
	addi x8 ,  x2 ,  164
	sw x19 ,  4 ( x8 )
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __adddf3
	sw x10 ,  8 ( x8 )
	addi x15 ,  x2 ,  68
	addi x8 ,  x2 ,  180
	sw x10 ,  8 ( x15 )
	sw x11 ,  176 ( x2 )
	sw x11 ,  80 ( x2 )
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x15
	sw x19 ,  4 ( x15 )
	sw x18 ,  164 ( x2 )
	sw x18 ,  68 ( x2 )
	call csqrt
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x9
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	addi x15 ,  x2 ,  132
	sw x11 ,  4 ( x15 )
	sw x20 ,  8 ( x15 )
	addi x15 ,  x2 ,  52
	sw x11 ,  4 ( x15 )
	sw x10 ,  132 ( x2 )
	sw x10 ,  52 ( x2 )
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  8 ( x15 )
	sw x21 ,  144 ( x2 )
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  64 ( x2 )
	add x11 ,  x0 ,  x15
	lw x21 ,  8 ( x8 )
	lw x23 ,  4 ( x8 )
	addi x8 ,  x2 ,  148
	add x10 ,  x0 ,  x8
	lw x22 ,  192 ( x2 )
	lw x24 ,  180 ( x2 )
	call csqrt
	lw x25 ,  8 ( x8 )
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	lw x19 ,  160 ( x2 )
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x19
	call __muldf3
	lw x20 ,  4 ( x8 )
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	lw x8 ,  148 ( x2 )
	add x13 ,  x0 ,  x20
	add x12 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __adddf3
	add x27 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x20
	call __muldf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __subdf3
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __unorddf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x27
	add x13 ,  x0 ,  x26
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x27
	call __unorddf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	lw x10 ,  20 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	lw x11 ,  16 ( x2 )             //  4-byte Folded Reload
	call __adddf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	lw x10 ,  28 ( x2 )             //  4-byte Folded Reload
	addi x18 ,  x2 ,  84
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x26
	lw x11 ,  24 ( x2 )             //  4-byte Folded Reload
	sw x9 ,  4 ( x18 )
	call __adddf3
	addi x15 ,  x2 ,  36
	sw x10 ,  8 ( x18 )
	sw x9 ,  4 ( x15 )
	sw x8 ,  84 ( x2 )
	sw x8 ,  36 ( x2 )
	addi x8 ,  x2 ,  100
	sw x10 ,  8 ( x15 )
	sw x11 ,  96 ( x2 )
	sw x11 ,  48 ( x2 )
	add x11 ,  x0 ,  x15
	add x10 ,  x0 ,  x8
	call clog
	lw x15 ,  112 ( x2 )
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  200 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  204 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  208 ( x2 )            //  4-byte Folded Reload
	sw x15 ,  12 ( x14 )
	lw x15 ,  8 ( x8 )
	lw x24 ,  212 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  216 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  220 ( x2 )            //  4-byte Folded Reload
	sw x15 ,  8 ( x14 )
	lw x15 ,  4 ( x8 )
	lw x8 ,  196 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  224 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  228 ( x2 )            //  4-byte Folded Reload
	sw x15 ,  4 ( x14 )
	lw x15 ,  100 ( x2 )
	lw x19 ,  232 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  236 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  240 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x14 )
	lw x1 ,  244 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  248
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %complex_mul_libcall
	addi x9 ,  x2 ,  116
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x21
	add x14 ,  x0 ,  x22
	add x15 ,  x0 ,  x8
	add x16 ,  x0 ,  x20
	add x17 ,  x0 ,  x25
	sw x19 ,  0 ( x2 )
	add x10 ,  x0 ,  x9
	call __muldc3
	lw x27 ,  8 ( x9 )
	lw x26 ,  128 ( x2 )
	lw x9 ,  4 ( x9 )
	lw x18 ,  116 ( x2 )
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	cacosh, .Lfunc_end0-cacosh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
