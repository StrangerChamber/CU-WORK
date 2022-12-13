	.text
	.file	"s_modf.c"
	.globl	modf                    //  -- Begin function modf
	.type	modf,@function
modf:                                   //  @modf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x12
	add x9 ,  x0 ,  x10
	addi x13 ,  x0 ,  19
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x15 ,  x8 ,  20&31
	andi x14 ,  x15 ,  2047
	addi x15 ,  x14 ,  -1023
	blt x13, x15, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x15, x0, .LBB0_2
.LBB0_3:                                //  %if.else
	lui x30 ,  1048575&4095
	lui x14 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	srl x14 ,  x14 ,  x15
	and x14 ,  x8 ,  x14
	or x14 ,  x9 ,  x14
	beq x0, x14, .LBB0_4
.LBB0_6:                                //  %do.body28
	lui x30 ,  -1048576&4095
	lui x14 ,  (-1048576>>12)&1048575
	sw x0 ,  0 ( x18 )
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sra x15 ,  x14 ,  x15
	and x13 ,  x8 ,  x15
	sw x13 ,  4 ( x18 )
	jal x0, .LBB0_12
.LBB0_7:                                //  %if.else39
	slti x15 ,  x15 ,  52
	bltu x0, x15, .LBB0_10
.LBB0_8:                                //  %if.then41
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	sw x9 ,  0 ( x18 )
	sw x8 ,  4 ( x18 )
	call __fpclassifyd
	bltu x0, x10, .LBB0_5
.LBB0_9:                                //  %if.then43
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	sw x8 ,  4 ( x18 )
	sw x9 ,  0 ( x18 )
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.else54
	addi x15 ,  x14 ,  -1043
	addi x14 ,  x0 ,  -1
	srl x15 ,  x14 ,  x15
	and x14 ,  x9 ,  x15
	beq x0, x14, .LBB0_4
.LBB0_11:                               //  %do.body71
	xori x15 ,  x15 ,  -1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	sw x8 ,  4 ( x18 )
	and x12 ,  x9 ,  x15
	sw x12 ,  0 ( x18 )
.LBB0_12:                               //  %cleanup
	call __subdf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	jal x0, .LBB0_13
.LBB0_4:                                //  %if.then16
	sw x9 ,  0 ( x18 )
	sw x8 ,  4 ( x18 )
.LBB0_5:                                //  %do.body44
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x9 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x8 ,  x15 ,  x8
	jal x0, .LBB0_13
.LBB0_2:                                //  %do.body4
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	sw x0 ,  0 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	sw x15 ,  4 ( x18 )
.LBB0_13:                               //  %cleanup
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	modf, .Lfunc_end0-modf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
