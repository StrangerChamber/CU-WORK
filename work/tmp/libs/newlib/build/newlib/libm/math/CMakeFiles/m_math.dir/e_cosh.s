	.text
	.file	"e_cosh.c"
	.globl	__ieee754_cosh          //  -- Begin function __ieee754_cosh
	.type	__ieee754_cosh,@function
__ieee754_cosh:                         //  @__ieee754_cosh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x20 ,  x15 ,  x11
	srli x15 ,  x20 ,  20&31
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB0_5
.LBB0_1:                                //  %if.then
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
.LBB0_2:                                //  %cleanup
	call __muldf3
.LBB0_3:                                //  %cleanup
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB0_4:                                //  %cleanup
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_5:                                //  %if.end
	lui x30 ,  1071001154&4095
	lui x15 ,  (1071001154>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_8
.LBB0_6:                                //  %if.then2
	call fabs
	call expm1
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __adddf3
	srli x15 ,  x20 ,  23&31
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	sltiu x15 ,  x15 ,  121
	bltu x0, x15, .LBB0_4
.LBB0_7:                                //  %if.end6
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __divdf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __adddf3
	jal x0, .LBB0_3
.LBB0_8:                                //  %if.end10
	lui x30 ,  1077280767&4095
	lui x15 ,  (1077280767>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_10
.LBB0_9:                                //  %if.then12
	call fabs
	call __ieee754_exp
	add x18 ,  x0 ,  x0
	lui x19 ,  (1071644672>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __adddf3
	jal x0, .LBB0_3
.LBB0_10:                               //  %if.end18
	lui x30 ,  1082535489&4095
	lui x15 ,  (1082535489>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_12
.LBB0_11:                               //  %if.then20
	call fabs
	call __ieee754_exp
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	jal x0, .LBB0_2
.LBB0_12:                               //  %do.body25
	lui x30 ,  1082536910&4095
	lui x15 ,  (1082536910>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	bltu x20, x14, .LBB0_15
.LBB0_13:                               //  %lor.lhs.false
	lui x30 ,  -1883637635&4095
	lui x14 ,  (-1883637635>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x10, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false
	lui x30 ,  1082536910&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x20, x15, .LBB0_16
.LBB0_15:                               //  %if.then33
	call fabs
	add x8 ,  x0 ,  x0
	lui x9 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __muldf3
	call __ieee754_exp
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	jal x0, .LBB0_2
.LBB0_16:                               //  %if.end39
	add x10 ,  x0 ,  x0
	call __math_oflow
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	__ieee754_cosh, .Lfunc_end0-__ieee754_cosh
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
