	.text
	.file	"e_log.c"
	.globl	__ieee754_log           //  -- Begin function __ieee754_log
	.type	__ieee754_log,@function
__ieee754_log:                          //  @__ieee754_log
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lui x30 ,  1048575&4095
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	lui x8 ,  (1048575>>12)&1048575
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	srli x30 ,  x30 ,  12&31
	or x15 ,  x8 ,  x30
	blt x15, x18, .LBB0_1
.LBB0_2:                                //  %if.then
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	lui x14 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -1048576&4095
	and x15 ,  x15 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x10 ,  x15
	or x11 ,  x14 ,  x30
	beq x0, x15, .LBB0_3
.LBB0_4:                                //  %if.end
	blt x18, x0, .LBB0_5
.LBB0_6:                                //  %if.end6
	add x12 ,  x0 ,  x0
	lui x13 ,  (1129316352>>12)&1048575
	add x11 ,  x0 ,  x18
	call __muldf3
	add x18 ,  x0 ,  x11
	addi x15 ,  x0 ,  -54
	lui x14 ,  (2146435072>>12)&1048575
	bge x18, x14, .LBB0_8
.LBB0_10:                               //  %if.end17
	lui x30 ,  1048575&4095
	srai x14 ,  x18 ,  20&31
	lui x13 ,  (1048576>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x14
	lui x14 ,  (614244>>12)&1048575
	or x19 ,  x8 ,  x30
	lui x30 ,  614244&4095
	srli x30 ,  x30 ,  12&31
	and x27 ,  x19 ,  x18
	or x14 ,  x14 ,  x30
	lui x30 ,  -1074790400&4095
	add x14 ,  x14 ,  x27
	srli x30 ,  x30 ,  12&31
	and x13 ,  x13 ,  x14
	srli x14 ,  x14 ,  20&31
	add x20 ,  x14 ,  x15
	or x15 ,  x27 ,  x13
	lui x14 ,  (1072693248>>12)&1048575
	xor x11 ,  x14 ,  x15
	lui x15 ,  (-1074790400>>12)&1048575
	or x13 ,  x15 ,  x30
	call __adddf3
	addi x15 ,  x18 ,  2
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	addi x18 ,  x20 ,  -1023
	addi x14 ,  x0 ,  2
	and x15 ,  x19 ,  x15
	bltu x14, x15, .LBB0_18
.LBB0_11:                               //  %if.then37
	add x19 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	call __nedf2
	bltu x0, x10, .LBB0_15
.LBB0_12:                               //  %if.then39
	beq x0, x18, .LBB0_13
.LBB0_14:                               //  %if.else
	add x10 ,  x0 ,  x18
	call __floatsidf
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	jal x0, .LBB0_28
.LBB0_1:
	add x15 ,  x0 ,  x0
	lui x14 ,  (2146435072>>12)&1048575
	blt x18, x14, .LBB0_10
.LBB0_8:                                //  %if.then16
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x18
	call __adddf3
	jal x0, .LBB0_28
.LBB0_3:
	add x19 ,  x0 ,  x0
	jal x0, .LBB0_29
.LBB0_18:                               //  %if.end61
	add x12 ,  x0 ,  x0
	lui x13 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __divdf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	call __muldf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -797391201&4095
	lui x15 ,  (-797391201>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069783561&4095
	lui x15 ,  (1069783561>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  495876271&4095
	lui x15 ,  (495876271>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070363077&4095
	lui x15 ,  (1070363077>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1718093308&4095
	lui x15 ,  (-1718093308>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071225241&4095
	lui x15 ,  (1071225241>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -549563836&4095
	lui x15 ,  (-549563836>>12)&1048575
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069740306&4095
	lui x15 ,  (1069740306>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1765080098&4095
	lui x15 ,  (-1765080098>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070024292&4095
	lui x15 ,  (1070024292>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1809673383&4095
	lui x15 ,  (-1809673383>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070745892&4095
	lui x15 ,  (1070745892>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  1431655827&4095
	lui x15 ,  (1431655827>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071994197&4095
	lui x15 ,  (1071994197>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __adddf3
	lui x30 ,  440401&4095
	lui x15 ,  (440401>>12)&1048575
	lui x14 ,  (-398458>>12)&1048575
	add x26 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x23 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -398458&4095
	srli x30 ,  x30 ,  12&31
	sub x15 ,  x15 ,  x27
	or x14 ,  x14 ,  x30
	add x14 ,  x14 ,  x27
	or x24 ,  x15 ,  x14
	call __floatsidf
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	bge x0, x24, .LBB0_22
.LBB0_19:                               //  %if.then85
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	add x25 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x23
	beq x0, x18, .LBB0_20
.LBB0_21:                               //  %if.else95
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call __subdf3
	jal x0, .LBB0_26
.LBB0_5:                                //  %if.then5
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x18
	call __subdf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __divdf3
	jal x0, .LBB0_28
.LBB0_15:                               //  %if.end45
	lui x30 ,  1431655765&4095
	lui x15 ,  (1431655765>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1076538027&4095
	lui x15 ,  (-1076538027>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	call __adddf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __muldf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	beq x0, x18, .LBB0_16
.LBB0_17:                               //  %if.else54
	add x10 ,  x0 ,  x18
	call __floatsidf
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x18 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1108723217&4095
	lui x15 ,  (-1108723217>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	jal x0, .LBB0_27
.LBB0_22:                               //  %if.else104
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x23
	beq x0, x18, .LBB0_23
.LBB0_25:                               //  %if.else111
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1108723217&4095
	lui x15 ,  (-1108723217>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
.LBB0_26:                               //  %cleanup
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	jal x0, .LBB0_27
.LBB0_13:
	add x11 ,  x0 ,  x19
	jal x0, .LBB0_29
.LBB0_20:                               //  %if.then90
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call __subdf3
	jal x0, .LBB0_24
.LBB0_16:                               //  %if.then52
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	jal x0, .LBB0_27
.LBB0_23:                               //  %if.then107
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __muldf3
.LBB0_24:                               //  %cleanup
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
.LBB0_27:                               //  %cleanup
	call __subdf3
.LBB0_28:                               //  %cleanup
	add x19 ,  x0 ,  x10
.LBB0_29:                               //  %cleanup
	add x10 ,  x0 ,  x19
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x27 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_log, .Lfunc_end0-__ieee754_log
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
