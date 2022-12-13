	.text
	.file	"e_remainder.c"
	.globl	__ieee754_remainder     //  -- Begin function __ieee754_remainder
	.type	__ieee754_remainder,@function
__ieee754_remainder:                    //  @__ieee754_remainder
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x13
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x19 ,  x0 ,  x12
	lui x14 ,  (-2147483648>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	and x20 ,  x15 ,  x18
	or x21 ,  x14 ,  x30
	or x14 ,  x19 ,  x20
	beq x0, x14, .LBB0_4
.LBB0_1:                                //  %if.end
	and x22 ,  x15 ,  x8
	addi x14 ,  x0 ,  2046
	srli x15 ,  x22 ,  20&31
	bltu x14, x15, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	srli x15 ,  x20 ,  20&31
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB0_7
.LBB0_3:                                //  %land.lhs.true
	lui x30 ,  -2146435072&4095
	lui x15 ,  (-2146435072>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x20
	or x15 ,  x19 ,  x15
	beq x0, x15, .LBB0_10
.LBB0_4:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
.LBB0_5:                                //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_7:                                //  %if.end22
	srli x15 ,  x20 ,  21&31
	addi x14 ,  x0 ,  1022
	bltu x14, x15, .LBB0_10
.LBB0_8:                                //  %if.then24
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_fmod
	sub x15 ,  x9 ,  x19
	sub x14 ,  x22 ,  x20
	or x15 ,  x15 ,  x14
	bltu x0, x15, .LBB0_11
.LBB0_9:                                //  %if.then30
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __muldf3
	jal x0, .LBB0_5
.LBB0_10:
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	sub x15 ,  x9 ,  x19
	sub x14 ,  x22 ,  x20
	or x15 ,  x15 ,  x14
	beq x0, x15, .LBB0_9
.LBB0_11:                               //  %if.end32
	and x22 ,  x21 ,  x8
	call fabs
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call fabs
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	srli x15 ,  x20 ,  21&31
	bltu x0, x15, .LBB0_14
.LBB0_12:                               //  %if.then36
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call __adddf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __gtdf2
	bge x0, x10, .LBB0_17
.LBB0_13:                               //  %if.then39
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __subdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __gedf2
	bge x10, x0, .LBB0_16
	jal x0, .LBB0_17
.LBB0_14:                               //  %if.else
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __gtdf2
	bge x0, x10, .LBB0_17
.LBB0_15:                               //  %if.then49
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __subdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __gedf2
	blt x10, x0, .LBB0_17
.LBB0_16:                               //  %if.then52
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __subdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB0_17:                               //  %do.body57
	xor x11 ,  x9 ,  x22
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	__ieee754_remainder, .Lfunc_end0-__ieee754_remainder
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
