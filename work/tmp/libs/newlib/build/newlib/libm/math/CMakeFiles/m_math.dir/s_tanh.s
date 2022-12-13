	.text
	.file	"s_tanh.c"
	.globl	tanh                    //  -- Begin function tanh
	.type	tanh,@function
tanh:                                   //  @tanh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x11
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	srli x18 ,  x15 ,  20&31
	sltiu x14 ,  x18 ,  2047
	bltu x0, x14, .LBB0_4
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	add x12 ,  x0 ,  x0
	blt x8, x0, .LBB0_3
.LBB0_2:                                //  %if.then2
	lui x13 ,  (1072693248>>12)&1048575
	call __adddf3
	jal x0, .LBB0_13
.LBB0_4:                                //  %if.end
	lui x30 ,  1077280767&4095
	lui x14 ,  (1077280767>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_5
.LBB0_6:                                //  %if.then5
	srli x15 ,  x15 ,  23&31
	addi x14 ,  x0 ,  120
	bltu x14, x15, .LBB0_8
.LBB0_7:                                //  %if.then7
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	jal x0, .LBB0_13
.LBB0_5:
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_11
.LBB0_3:                                //  %if.else
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	jal x0, .LBB0_13
.LBB0_8:                                //  %if.end9
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	sltiu x15 ,  x18 ,  1023
	bltu x0, x15, .LBB0_10
.LBB0_9:                                //  %if.then11
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	call expm1
	add x9 ,  x0 ,  x0
	lui x18 ,  (1073741824>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x9
	call __subdf3
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else17
	lui x30 ,  -1073741824&4095
	add x9 ,  x0 ,  x0
	lui x15 ,  (-1073741824>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x9
	or x13 ,  x15 ,  x30
	call __muldf3
	call expm1
	lui x13 ,  (1073741824>>12)&1048575
	add x12 ,  x0 ,  x9
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __adddf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x19
	call __divdf3
.LBB0_11:                               //  %if.end26
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	addi x14 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x14, x8, .LBB0_13
.LBB0_12:                               //  %if.end26
	xor x11 ,  x15 ,  x11
.LBB0_13:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tanh, .Lfunc_end0-tanh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
