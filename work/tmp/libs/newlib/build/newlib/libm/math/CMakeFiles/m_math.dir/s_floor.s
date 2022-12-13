	.text
	.file	"s_floor.c"
	.globl	floor                   //  -- Begin function floor
	.type	floor,@function
floor:                                  //  @floor
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x11
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x15 ,  x8 ,  20&31
	andi x19 ,  x15 ,  2047
	addi x15 ,  x0 ,  19
	addi x20 ,  x19 ,  -1023
	blt x15, x20, .LBB0_5
.LBB0_1:                                //  %if.then
	blt x20, x0, .LBB0_12
.LBB0_2:                                //  %if.else13
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	srl x15 ,  x15 ,  x20
	and x15 ,  x8 ,  x15
	or x15 ,  x9 ,  x15
	beq x0, x15, .LBB0_16
.LBB0_3:                                //  %if.end19
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x19 ,  x0 ,  x0
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	call __gtdf2
	add x18 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	bge x0, x10, .LBB0_21
.LBB0_4:                                //  %if.then22
	lui x30 ,  -1048576&4095
	lui x14 ,  (1048576>>12)&1048575
	lui x15 ,  (-1048576>>12)&1048575
	srai x13 ,  x8 ,  31&31
	add x18 ,  x0 ,  x19
	srl x14 ,  x14 ,  x20
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x18
	or x15 ,  x15 ,  x30
	and x14 ,  x14 ,  x13
	sra x15 ,  x15 ,  x20
	add x14 ,  x8 ,  x14
	and x11 ,  x15 ,  x14
	jal x0, .LBB0_22
.LBB0_5:                                //  %if.else31
	slti x15 ,  x20 ,  52
	bltu x0, x15, .LBB0_8
.LBB0_6:                                //  %if.then33
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __adddf3
	addi x15 ,  x0 ,  1024
	beq x20, x15, .LBB0_22
.LBB0_7:                                //  %if.then33
	add x11 ,  x0 ,  x8
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_22
.LBB0_8:                                //  %if.else38
	addi x15 ,  x19 ,  -1043
	addi x14 ,  x0 ,  -1
	srl x18 ,  x14 ,  x15
	and x15 ,  x9 ,  x18
	beq x0, x15, .LBB0_16
.LBB0_9:                                //  %if.end44
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __gtdf2
	bge x0, x10, .LBB0_16
.LBB0_10:                               //  %if.then47
	blt x8, x0, .LBB0_17
.LBB0_11:
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_20
.LBB0_12:                               //  %if.then3
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x18 ,  x0 ,  x0
	add x13 ,  x0 ,  x18
	add x12 ,  x0 ,  x18
	call __gtdf2
	bge x0, x10, .LBB0_16
.LBB0_13:                               //  %if.then5
	add x11 ,  x0 ,  x18
	bge x8, x0, .LBB0_21
.LBB0_14:                               //  %if.else
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -1074790400&4095
	and x15 ,  x15 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x15
	lui x15 ,  (-1074790400>>12)&1048575
	or x15 ,  x15 ,  x30
	beq x13, x14, .LBB0_16
.LBB0_15:                               //  %if.else
	add x9 ,  x0 ,  x14
	add x8 ,  x0 ,  x15
.LBB0_16:                               //  %if.else
	add x18 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
.LBB0_21:                               //  %cleanup
	add x10 ,  x0 ,  x18
.LBB0_22:                               //  %if.then33
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_17:                               //  %if.then49
	xori x15 ,  x20 ,  20
	bltu x0, x15, .LBB0_19
.LBB0_18:                               //  %if.then51
	addi x11 ,  x8 ,  1
	jal x0, .LBB0_20
.LBB0_19:                               //  %if.else53
	addi x15 ,  x0 ,  1075
	slti x14 ,  x0 ,  1
	sub x15 ,  x15 ,  x19
	sll x15 ,  x14 ,  x15
	add x9 ,  x9 ,  x15
	sltu x15 ,  x9 ,  x15
	add x11 ,  x8 ,  x15
.LBB0_20:                               //  %if.end61
	xori x15 ,  x18 ,  -1
	and x18 ,  x15 ,  x9
	jal x0, .LBB0_21
.Lfunc_end0:
	.size	floor, .Lfunc_end0-floor
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
