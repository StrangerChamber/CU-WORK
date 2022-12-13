	.text
	.file	"s_ceil.c"
	.globl	ceil                    //  -- Begin function ceil
	.type	ceil,@function
ceil:                                   //  @ceil
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
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x15 ,  x8 ,  20&31
	andi x20 ,  x15 ,  2047
	addi x15 ,  x0 ,  19
	addi x19 ,  x20 ,  -1023
	blt x15, x19, .LBB0_6
.LBB0_1:                                //  %if.then
	blt x19, x0, .LBB0_14
.LBB0_2:                                //  %if.else12
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	srl x15 ,  x15 ,  x19
	and x15 ,  x8 ,  x15
	or x15 ,  x9 ,  x15
	beq x0, x15, .LBB0_18
.LBB0_3:                                //  %if.end18
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
	bge x0, x10, .LBB0_18
.LBB0_4:                                //  %if.then21
	lui x30 ,  -1048576&4095
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sra x15 ,  x15 ,  x19
	blt x18, x8, .LBB0_21
.LBB0_5:                                //  %if.then21
	add x14 ,  x0 ,  x18
	jal x0, .LBB0_22
.LBB0_6:                                //  %if.else30
	slti x15 ,  x19 ,  52
	bltu x0, x15, .LBB0_9
.LBB0_7:                                //  %if.then32
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __adddf3
	addi x15 ,  x0 ,  1024
	beq x19, x15, .LBB0_20
.LBB0_8:                                //  %if.then32
	add x11 ,  x0 ,  x8
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_20
.LBB0_9:                                //  %if.else37
	addi x15 ,  x20 ,  -1043
	addi x14 ,  x0 ,  -1
	srl x18 ,  x14 ,  x15
	and x15 ,  x9 ,  x18
	beq x0, x15, .LBB0_18
.LBB0_10:                               //  %if.end43
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
	bge x0, x10, .LBB0_18
.LBB0_11:                               //  %if.then46
	bge x0, x8, .LBB0_23
.LBB0_12:                               //  %if.then48
	xori x15 ,  x19 ,  20
	bltu x0, x15, .LBB0_24
.LBB0_13:                               //  %if.then50
	addi x11 ,  x8 ,  1
	jal x0, .LBB0_25
.LBB0_14:                               //  %if.then3
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
	bge x0, x10, .LBB0_18
.LBB0_15:                               //  %if.then5
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	blt x8, x0, .LBB0_19
.LBB0_16:                               //  %if.else
	or x14 ,  x9 ,  x8
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB0_18
.LBB0_17:                               //  %if.else
	lui x8 ,  (1072693248>>12)&1048575
	add x9 ,  x0 ,  x15
.LBB0_18:                               //  %if.else
	add x18 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
.LBB0_19:                               //  %if.then32
	add x10 ,  x0 ,  x18
.LBB0_20:                               //  %if.then32
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_21:
	lui x14 ,  (1048576>>12)&1048575
	srl x14 ,  x14 ,  x19
.LBB0_22:                               //  %if.then21
	add x14 ,  x8 ,  x14
	add x10 ,  x0 ,  x18
	and x11 ,  x15 ,  x14
	jal x0, .LBB0_20
.LBB0_23:
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_25
.LBB0_24:                               //  %if.else52
	addi x15 ,  x0 ,  1075
	slti x14 ,  x0 ,  1
	sub x15 ,  x15 ,  x20
	sll x15 ,  x14 ,  x15
	add x9 ,  x9 ,  x15
	sltu x15 ,  x9 ,  x15
	add x11 ,  x8 ,  x15
.LBB0_25:                               //  %if.end60
	xori x15 ,  x18 ,  -1
	and x18 ,  x15 ,  x9
	jal x0, .LBB0_19
.Lfunc_end0:
	.size	ceil, .Lfunc_end0-ceil
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
