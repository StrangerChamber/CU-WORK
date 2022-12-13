	.text
	.file	"s_logb.c"
	.globl	logb                    //  -- Begin function logb
	.type	logb,@function
logb:                                   //  @logb
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x12 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x13 ,  x15 ,  x11
	add x15 ,  x0 ,  x12
	srli x14 ,  x13 ,  20&31
	bltu x0, x14, .LBB0_5
.LBB0_1:                                //  %if.then
	or x14 ,  x12 ,  x13
	beq x0, x14, .LBB0_12
.LBB0_2:                                //  %if.else
	beq x0, x13, .LBB0_13
.LBB0_3:                                //  %if.else15
	addi x10 ,  x0 ,  -1022
	slli x15 ,  x11 ,  11&31
	bge x0, x15, .LBB0_15
.LBB0_4:                                //  %for.body19
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_4
	jal x0, .LBB0_15
.LBB0_5:                                //  %if.else25
	addi x10 ,  x0 ,  2046
	bltu x10, x14, .LBB0_7
.LBB0_6:                                //  %if.then28
	addi x10 ,  x14 ,  -1023
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.else31
	add x14 ,  x0 ,  x0
	lui x10 ,  (2146435072>>12)&1048575
	add x5 ,  x0 ,  x12
	bne x13, x10, .LBB0_8
.LBB0_17:                               //  %if.else31
	add x5 ,  x0 ,  x14
	beq x15, x14, .LBB0_18
.LBB0_9:                                //  %if.else31
	add x5 ,  x0 ,  x11
	bne x13, x10, .LBB0_10
.LBB0_19:                               //  %if.else31
	add x5 ,  x0 ,  x10
	beq x15, x14, .LBB0_20
.LBB0_11:                               //  %cleanup
	add x10 ,  x0 ,  x12
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %if.else31
	bne x15, x14, .LBB0_9
.LBB0_18:                               //  %if.else31
	add x12 ,  x0 ,  x5
	add x5 ,  x0 ,  x11
	beq x13, x10, .LBB0_19
.LBB0_10:                               //  %if.else31
	bne x15, x14, .LBB0_11
.LBB0_20:                               //  %if.else31
	add x11 ,  x0 ,  x5
	add x10 ,  x0 ,  x12
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_12:                               //  %if.then3
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divdf3
	jal x0, .LBB0_16
.LBB0_13:                               //  %for.cond.preheader
	addi x10 ,  x0 ,  -1043
	bge x0, x15, .LBB0_15
.LBB0_14:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_14
.LBB0_15:                               //  %if.end24
	call __floatsidf
.LBB0_16:                               //  %if.end24
	add x12 ,  x0 ,  x10
	add x10 ,  x0 ,  x12
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	logb, .Lfunc_end0-logb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
