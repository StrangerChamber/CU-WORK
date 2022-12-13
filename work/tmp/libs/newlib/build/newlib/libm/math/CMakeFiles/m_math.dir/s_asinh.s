	.text
	.file	"s_asinh.c"
	.globl	asinh                   //  -- Begin function asinh
	.type	asinh,@function
asinh:                                  //  @asinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x11
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x19 ,  x15 ,  x8
	srli x20 ,  x19 ,  20&31
	sltiu x15 ,  x20 ,  2047
	bltu x0, x15, .LBB0_3
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x8
	call __adddf3
	add x18 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	jal x0, .LBB0_2
.LBB0_3:                                //  %if.end
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x9 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	call __gtdf2
	bge x0, x10, .LBB0_5
.LBB0_4:                                //  %if.end
	sltiu x15 ,  x20 ,  995
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %cleanup
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
.LBB0_12:                               //  %if.end31
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.LBB0_5:                                //  %if.end7
	lui x30 ,  1102053377&4095
	lui x15 ,  (1102053377>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x19, x15, .LBB0_7
.LBB0_6:                                //  %if.then9
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call fabs
	call __ieee754_log
	lui x30 ,  -17155601&4095
	lui x15 ,  (-17155601>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	jal x0, .LBB0_10
.LBB0_7:                                //  %if.else
	lui x30 ,  1073741825&4095
	lui x15 ,  (1073741825>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x19, x15, .LBB0_9
.LBB0_8:                                //  %if.then13
	add x11 ,  x0 ,  x8
	call fabs
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __adddf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x8
	call __muldf3
	add x18 ,  x0 ,  x0
	lui x23 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x23
	call __adddf3
	call __ieee754_sqrt
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x23
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __adddf3
	call __ieee754_log
	jal x0, .LBB0_10
.LBB0_9:                                //  %if.else21
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call fabs
	add x22 ,  x0 ,  x0
	lui x23 ,  (1072693248>>12)&1048575
	add x18 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __adddf3
	call __ieee754_sqrt
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call __adddf3
	call log1p
.LBB0_10:                               //  %if.end31
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x9, x8, .LBB0_12
.LBB0_11:                               //  %if.end31
	xor x11 ,  x15 ,  x11
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	asinh, .Lfunc_end0-asinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
