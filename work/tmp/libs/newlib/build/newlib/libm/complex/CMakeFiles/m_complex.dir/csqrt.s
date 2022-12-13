	.text
	.file	"csqrt.c"
	.globl	csqrt                   //  -- Begin function csqrt
	.type	csqrt,@function
csqrt:                                  //  @csqrt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -152
	.cfi_adjust_cfa_offset 152
	sw x9 ,  144 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  140 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  136 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x9 ,  4 ( x11 )
	sw x8 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  36
	addi x15 ,  x2 ,  84
	sw x1 ,  148 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x18 ,  8 ( x11 )
	lw x19 ,  12 ( x11 )
	lw x20 ,  0 ( x11 )
	sw x9 ,  4 ( x15 )
	sw x18 ,  8 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x9 ,  4 ( x10 )
	sw x19 ,  96 ( x2 )
	sw x20 ,  84 ( x2 )
	sw x19 ,  48 ( x2 )
	sw x20 ,  36 ( x2 )
	call creal
	addi x15 ,  x2 ,  68
	add x22 ,  x0 ,  x10
	addi x10 ,  x2 ,  20
	add x21 ,  x0 ,  x11
	sw x9 ,  4 ( x15 )
	sw x18 ,  8 ( x15 )
	sw x9 ,  4 ( x10 )
	sw x18 ,  8 ( x10 )
	sw x20 ,  68 ( x2 )
	sw x20 ,  20 ( x2 )
	sw x19 ,  80 ( x2 )
	sw x19 ,  32 ( x2 )
	call cimag
	add x19 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x19
	call __nedf2
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x19
	call __eqdf2
	bltu x0, x10, .LBB0_3
.LBB0_2:
	add x20 ,  x0 ,  x19
	jal x0, .LBB0_6
.LBB0_7:                                //  %if.end27
	add x19 ,  x0 ,  x0
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	call __nedf2
	bltu x0, x10, .LBB0_13
.LBB0_8:                                //  %if.then29
	add x19 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	call __gtdf2
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call fabs
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x19
	call __muldf3
	call sqrt
	lui x30 ,  -2147483648&4095
	add x21 ,  x0 ,  x11
	lui x15 ,  (-2147483648>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	add x18 ,  x0 ,  x21
	or x22 ,  x15 ,  x30
	blt x19, x20, .LBB0_10
.LBB0_9:                                //  %if.then29
	xor x18 ,  x22 ,  x21
.LBB0_10:                               //  %if.then29
	add x13 ,  x0 ,  x19
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	blt x19, x20, .LBB0_12
.LBB0_11:                               //  %if.then29
	xor x13 ,  x22 ,  x13
.LBB0_12:                               //  %if.then29
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	jal x0, .LBB0_25
.LBB0_3:                                //  %if.else
	add x19 ,  x0 ,  x0
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	call __ltdf2
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call fabs
	call sqrt
	blt x20, x19, .LBB0_4
.LBB0_5:                                //  %if.else
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	jal x0, .LBB0_6
.LBB0_13:                               //  %if.end51
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call fabs
	lui x13 ,  (1074790400>>12)&1048575
	add x12 ,  x0 ,  x19
	call __gtdf2
	lui x20 ,  (1073741824>>12)&1048575
	lui x23 ,  (1070596096>>12)&1048575
	blt x0, x10, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call fabs
	add x19 ,  x0 ,  x0
	lui x13 ,  (1074790400>>12)&1048575
	add x12 ,  x0 ,  x19
	call __gtdf2
	blt x0, x10, .LBB0_16
.LBB0_15:                               //  %if.else59
	lui x20 ,  (1044381696>>12)&1048575
	lui x23 ,  (1129316352>>12)&1048575
	add x19 ,  x0 ,  x0
.LBB0_16:                               //  %if.end62
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x23
	call __muldf3
	add x22 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x23
	call __muldf3
	add x21 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x13 ,  x0 ,  x21
	add x12 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x24
	call __adddf3
	addi x15 ,  x2 ,  52
	addi x25 ,  x2 ,  4
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	sw x11 ,  4 ( x15 )
	sw x9 ,  8 ( x15 )
	sw x11 ,  4 ( x25 )
	sw x10 ,  52 ( x2 )
	sw x10 ,  4 ( x2 )
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x24
	sw x9 ,  8 ( x25 )
	sw x18 ,  64 ( x2 )
	sw x18 ,  16 ( x2 )
	call __gtdf2
	lui x27 ,  (1071644672>>12)&1048575
	add x26 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x27
	call __muldf3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x25
	add x22 ,  x0 ,  x11
	call cabs
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x27
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	bge x0, x26, .LBB0_18
.LBB0_17:                               //  %if.then75
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x22
	call __adddf3
	call sqrt
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __divdf3
	call fabs
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	jal x0, .LBB0_19
.LBB0_4:
	add x20 ,  x0 ,  x19
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
.LBB0_6:                                //  %if.end24
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x12
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
.LBB0_25:                               //  %cleanup
	call __adddf3
	sw x9 ,  8 ( x8 )
	sw x18 ,  12 ( x8 )
	sw x10 ,  0 ( x8 )
	sw x11 ,  4 ( x8 )
	lw x8 ,  100 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  120 ( x2 )            //  4-byte Folded Reload
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
.LBB0_18:                               //  %if.else83
	add x10 ,  x0 ,  x12
	add x11 ,  x0 ,  x13
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	call __subdf3
	call sqrt
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __divdf3
	call fabs
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
.LBB0_19:                               //  %if.end92
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x21
	call __ltdf2
	add x26 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x9 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	blt x26, x21, .LBB0_20
.LBB0_21:                               //  %if.end92
	add x18 ,  x0 ,  x24
	jal x0, .LBB0_22
.LBB0_20:
	xor x18 ,  x25 ,  x24
.LBB0_22:                               //  %if.end92
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x21
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	bge x26, x21, .LBB0_24
.LBB0_23:
	xor x13 ,  x25 ,  x13
.LBB0_24:                               //  %if.end92
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	jal x0, .LBB0_25
.Lfunc_end0:
	.size	csqrt, .Lfunc_end0-csqrt
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
