	.text
	.file	"e_sinh.c"
	.globl	__ieee754_sinh          //  -- Begin function __ieee754_sinh
	.type	__ieee754_sinh,@function
__ieee754_sinh:                         //  @__ieee754_sinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	srli x19 ,  x15 ,  20&31
	sltiu x14 ,  x19 ,  2047
	bltu x0, x14, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __adddf3
	jal x0, .LBB0_20
.LBB0_2:                                //  %if.end
	lui x30 ,  -1075838976&4095
	lui x14 ,  (-1075838976>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x14 ,  x30
	add x14 ,  x0 ,  x0
	blt x9, x14, .LBB0_4
.LBB0_3:                                //  %if.end
	lui x8 ,  (1071644672>>12)&1048575
.LBB0_4:                                //  %if.end
	lui x30 ,  1077280767&4095
	lui x14 ,  (1077280767>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_12
.LBB0_5:                                //  %if.then5
	lui x30 ,  1017934899&4095
	lui x15 ,  (1017934899>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2142010143&4095
	lui x15 ,  (2142010143>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __gtdf2
	bge x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then5
	sltiu x15 ,  x19 ,  995
	bltu x0, x15, .LBB0_21
.LBB0_7:                                //  %if.end12
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call fabs
	call expm1
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	addi x15 ,  x0 ,  1022
	bltu x15, x19, .LBB0_9
.LBB0_8:                                //  %if.then15
	add x19 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	call __adddf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __divdf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __subdf3
	jal x0, .LBB0_10
.LBB0_12:                               //  %if.end25
	lui x30 ,  1082535489&4095
	lui x14 ,  (1082535489>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_14
.LBB0_13:                               //  %if.then27
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call fabs
	call __ieee754_exp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_19
.LBB0_14:                               //  %do.body32
	lui x30 ,  1082536910&4095
	lui x14 ,  (1082536910>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	bltu x15, x13, .LBB0_17
.LBB0_15:                               //  %lor.lhs.false
	lui x30 ,  -1883637635&4095
	lui x13 ,  (-1883637635>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	bltu x13, x18, .LBB0_18
.LBB0_16:                               //  %lor.lhs.false
	lui x30 ,  1082536910&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bne x15, x14, .LBB0_18
.LBB0_17:                               //  %if.then40
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call fabs
	add x9 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x9
	call __muldf3
	call __ieee754_exp
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	jal x0, .LBB0_19
.LBB0_9:                                //  %if.end20
	add x19 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __adddf3
.LBB0_10:                               //  %cleanup
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_19
.LBB0_18:                               //  %if.end46
	lui x30 ,  1017934899&4095
	lui x15 ,  (1017934899>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2142010143&4095
	lui x15 ,  (2142010143>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
.LBB0_19:                               //  %cleanup
	call __muldf3
.LBB0_20:                               //  %cleanup
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB0_21:                               //  %cleanup
	add x10 ,  x0 ,  x18
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
.Lfunc_end0:
	.size	__ieee754_sinh, .Lfunc_end0-__ieee754_sinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
