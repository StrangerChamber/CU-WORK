	.text
	.file	"casin.c"
	.globl	casin                   //  -- Begin function casin
	.type	casin,@function
casin:                                  //  @casin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -320
	.cfi_adjust_cfa_offset 320
	sw x9 ,  312 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  308 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  304 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  300 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x9 ,  4 ( x11 )
	sw x8 ,  268 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  92
	addi x15 ,  x2 ,  252
	sw x1 ,  316 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  296 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  292 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  288 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  284 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  280 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  276 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  272 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x18 ,  8 ( x11 )
	lw x19 ,  12 ( x11 )
	lw x20 ,  0 ( x11 )
	sw x9 ,  4 ( x15 )
	sw x18 ,  8 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x9 ,  4 ( x10 )
	sw x19 ,  264 ( x2 )
	sw x20 ,  252 ( x2 )
	sw x19 ,  104 ( x2 )
	sw x20 ,  92 ( x2 )
	call creal
	addi x15 ,  x2 ,  236
	add x21 ,  x0 ,  x10
	addi x10 ,  x2 ,  76
	add x22 ,  x0 ,  x11
	sw x9 ,  4 ( x15 )
	sw x18 ,  8 ( x15 )
	sw x9 ,  4 ( x10 )
	sw x18 ,  8 ( x10 )
	sw x20 ,  236 ( x2 )
	sw x20 ,  76 ( x2 )
	sw x19 ,  248 ( x2 )
	sw x19 ,  88 ( x2 )
	call cimag
	add x19 ,  x0 ,  x0
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x19
	call __muldf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __adddf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __adddf3
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __unorddf2
	add x27 ,  x0 ,  x10
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	beq x0, x27, .LBB0_3
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x20
	call __unorddf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __adddf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __muldf3
	add x21 ,  x0 ,  x0
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x13 ,  x0 ,  x21
	add x12 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __adddf3
	add x24 ,  x0 ,  x10
	addi x15 ,  x2 ,  204
	addi x10 ,  x2 ,  60
	add x25 ,  x0 ,  x11
	sw x25 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x25 ,  4 ( x10 )
	sw x22 ,  8 ( x10 )
	sw x24 ,  204 ( x2 )
	sw x23 ,  216 ( x2 )
	sw x24 ,  60 ( x2 )
	sw x23 ,  72 ( x2 )
	call creal
	addi x15 ,  x2 ,  188
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	addi x26 ,  x2 ,  44
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x21
	sw x25 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x25 ,  4 ( x26 )
	sw x24 ,  188 ( x2 )
	sw x24 ,  44 ( x2 )
	sw x22 ,  8 ( x26 )
	sw x23 ,  200 ( x2 )
	sw x23 ,  56 ( x2 )
	call __subdf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x26
	add x23 ,  x0 ,  x11
	call cimag
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __subdf3
	lui x30 ,  -2147483648&4095
	addi x15 ,  x2 ,  156
	lui x26 ,  (-2147483648>>12)&1048575
	addi x23 ,  x2 ,  172
	srli x30 ,  x30 ,  12&31
	sw x11 ,  4 ( x15 )
	sw x24 ,  8 ( x15 )
	addi x15 ,  x2 ,  28
	or x22 ,  x26 ,  x30
	sw x11 ,  4 ( x15 )
	sw x10 ,  156 ( x2 )
	sw x10 ,  28 ( x2 )
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x15
	sw x24 ,  8 ( x15 )
	xor x14 ,  x22 ,  x25
	sw x14 ,  168 ( x2 )
	sw x14 ,  40 ( x2 )
	call csqrt
	lw x13 ,  4 ( x23 )
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	lw x12 ,  172 ( x2 )
	call __adddf3
	lw x12 ,  8 ( x23 )
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	addi x23 ,  x2 ,  124
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	lw x13 ,  184 ( x2 )
	sw x20 ,  4 ( x23 )
	call __adddf3
	addi x15 ,  x2 ,  12
	sw x10 ,  8 ( x23 )
	sw x20 ,  4 ( x15 )
	sw x19 ,  124 ( x2 )
	sw x19 ,  12 ( x2 )
	addi x19 ,  x2 ,  140
	sw x10 ,  8 ( x15 )
	sw x11 ,  136 ( x2 )
	sw x11 ,  24 ( x2 )
	add x11 ,  x0 ,  x15
	add x10 ,  x0 ,  x19
	call clog
	lw x9 ,  8 ( x19 )
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	lw x18 ,  152 ( x2 )
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __muldf3
	lw x19 ,  4 ( x19 )
	lw x20 ,  140 ( x2 )
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x20
	call __subdf3
	add x23 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __subdf3
	add x24 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x21
	call __unorddf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	call __unorddf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont66
	sw x23 ,  8 ( x8 )
	sw x24 ,  0 ( x8 )
	sw x22 ,  12 ( x8 )
	sw x21 ,  4 ( x8 )
	lw x8 ,  268 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  272 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  276 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  280 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  284 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  288 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  292 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  296 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  300 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  304 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  308 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  312 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  316 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  320
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %complex_mul_libcall
	lui x15 ,  (1072693248>>12)&1048575
	addi x19 ,  x2 ,  220
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x23
	add x14 ,  x0 ,  x24
	sw x15 ,  0 ( x2 )
	add x15 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x16 ,  x0 ,  x15
	add x17 ,  x0 ,  x15
	call __muldc3
	lw x18 ,  8 ( x19 )
	lw x9 ,  232 ( x2 )
	lw x19 ,  4 ( x19 )
	lw x20 ,  220 ( x2 )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall64
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	addi x21 ,  x2 ,  108
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	add x14 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x21
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	sw x15 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	add x15 ,  x0 ,  x0
	or x16 ,  x26 ,  x30
	add x17 ,  x0 ,  x15
	call __muldc3
	lw x23 ,  8 ( x21 )
	lw x22 ,  120 ( x2 )
	lw x21 ,  4 ( x21 )
	lw x24 ,  108 ( x2 )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casin, .Lfunc_end0-casin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
