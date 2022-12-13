	.text
	.file	"s_nextafter.c"
	.globl	nextafter               //  -- Begin function nextafter
	.type	nextafter,@function
nextafter:                              //  @nextafter
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x11
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x20 ,  x15 ,  x8
	srli x14 ,  x20 ,  20&31
	sltiu x14 ,  x14 ,  2047
	bltu x0, x14, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lui x30 ,  -2146435072&4095
	lui x14 ,  (-2146435072>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x14 ,  x14 ,  x20
	or x14 ,  x9 ,  x14
	bltu x0, x14, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	and x15 ,  x15 ,  x18
	srli x14 ,  x15 ,  20&31
	sltiu x14 ,  x14 ,  2047
	bltu x0, x14, .LBB0_6
.LBB0_3:                                //  %land.lhs.true14
	lui x30 ,  -2146435072&4095
	lui x14 ,  (-2146435072>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	or x15 ,  x19 ,  x15
	beq x0, x15, .LBB0_6
.LBB0_4:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
.LBB0_5:                                //  %cleanup
	call __adddf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	jal x0, .LBB0_8
.LBB0_6:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __eqdf2
	bltu x0, x10, .LBB0_9
.LBB0_7:
	add x18 ,  x0 ,  x9
	add x19 ,  x0 ,  x8
.LBB0_8:                                //  %cleanup
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_9:                                //  %if.end20
	or x15 ,  x9 ,  x20
	beq x0, x15, .LBB0_14
.LBB0_10:                               //  %if.end35
	blt x8, x0, .LBB0_15
.LBB0_11:                               //  %if.then37
	blt x18, x8, .LBB0_19
.LBB0_12:                               //  %lor.lhs.false39
	bltu x19, x9, .LBB0_18
	jal x0, .LBB0_22
.LBB0_14:                               //  %do.body24
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	slti x9 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x9
	add x10 ,  x0 ,  x9
	or x15 ,  x15 ,  x30
	and x8 ,  x15 ,  x18
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __eqdf2
	add x15 ,  x0 ,  x0
	bne x10, x15, .LBB0_7
	jal x0, .LBB0_8
.LBB0_15:                               //  %if.else56
	bge x18, x0, .LBB0_19
.LBB0_16:                               //  %if.else56
	blt x18, x8, .LBB0_19
.LBB0_17:                               //  %lor.lhs.false60
	bgeu x19, x9, .LBB0_22
.LBB0_18:                               //  %lor.lhs.false60
	bne x8, x18, .LBB0_22
.LBB0_19:                               //  %if.then43
	xori x15 ,  x9 ,  0
	addi x18 ,  x9 ,  -1
	sltiu x15 ,  x15 ,  1
	sub x19 ,  x8 ,  x15
	lui x15 ,  (2146435072>>12)&1048575
	and x14 ,  x15 ,  x19
	beq x0, x14, .LBB0_23
.LBB0_20:                               //  %if.end77
	bne x14, x15, .LBB0_8
.LBB0_21:                               //  %if.then80
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	jal x0, .LBB0_5
.LBB0_22:                               //  %if.else70
	addi x18 ,  x9 ,  1
	sltu x15 ,  x18 ,  x9
	add x19 ,  x8 ,  x15
	lui x15 ,  (2146435072>>12)&1048575
	and x14 ,  x15 ,  x19
	bltu x0, x14, .LBB0_20
.LBB0_23:                               //  %if.then84
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __eqdf2
	jal x0, .LBB0_8
.Lfunc_end0:
	.size	nextafter, .Lfunc_end0-nextafter
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
