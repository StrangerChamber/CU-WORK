	.text
	.file	"e_log10.c"
	.globl	__ieee754_log10         //  -- Begin function __ieee754_log10
	.type	__ieee754_log10,@function
__ieee754_log10:                        //  @__ieee754_log10
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  1048575&4095
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	lui x9 ,  (1048575>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	blt x15, x11, .LBB0_1
.LBB0_2:                                //  %if.then
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -1048576&4095
	and x15 ,  x15 ,  x11
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x15
	lui x15 ,  (-1048576>>12)&1048575
	or x15 ,  x15 ,  x30
	beq x0, x14, .LBB0_3
.LBB0_4:                                //  %if.end
	blt x11, x0, .LBB0_5
.LBB0_6:                                //  %if.end6
	add x12 ,  x0 ,  x0
	lui x13 ,  (1129316352>>12)&1048575
	add x10 ,  x0 ,  x8
	call __muldf3
	add x8 ,  x0 ,  x10
	addi x15 ,  x0 ,  -54
	lui x14 ,  (2146435072>>12)&1048575
	bge x11, x14, .LBB0_8
.LBB0_9:                                //  %if.end17
	srai x13 ,  x11 ,  20&31
	lui x30 ,  1048575&4095
	add x15 ,  x15 ,  x13
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  -1023
	or x14 ,  x9 ,  x30
	slt x13 ,  x15 ,  x0
	and x14 ,  x14 ,  x11
	slli x12 ,  x13 ,  20&31
	add x10 ,  x15 ,  x13
	or x21 ,  x14 ,  x12
	call __floatsidf
	lui x30 ,  301017910&4095
	lui x15 ,  (301017910>>12)&1048575
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1029308147&4095
	lui x15 ,  (1029308147>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x15 ,  (1072693248>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	xor x11 ,  x15 ,  x21
	call __ieee754_log
	lui x30 ,  354870542&4095
	lui x15 ,  (354870542>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071369083&4095
	lui x15 ,  (1071369083>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	lui x30 ,  1070810131&4095
	lui x15 ,  (1070810131>>12)&1048575
	add x8 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	lui x12 ,  (1352622080>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x19
	jal x0, .LBB0_10
.LBB0_1:
	add x15 ,  x0 ,  x0
	lui x14 ,  (2146435072>>12)&1048575
	blt x11, x14, .LBB0_9
.LBB0_8:                                //  %if.then16
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x11
.LBB0_10:                               //  %cleanup
	call __adddf3
.LBB0_11:                               //  %cleanup
	add x15 ,  x0 ,  x11
.LBB0_12:                               //  %cleanup
	add x11 ,  x0 ,  x15
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
.LBB0_3:
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x11
	call __subdf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __divdf3
	jal x0, .LBB0_11
.Lfunc_end0:
	.size	__ieee754_log10, .Lfunc_end0-__ieee754_log10
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
