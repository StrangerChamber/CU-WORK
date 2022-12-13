	.text
	.file	"s_scalbn.c"
	.globl	scalbn                  //  -- Begin function scalbn
	.type	scalbn,@function
scalbn:                                 //  @scalbn
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	add x14 ,  x0 ,  x11
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x12
	add x15 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	srli x13 ,  x14 ,  20&31
	andi x13 ,  x13 ,  2047
	xori x12 ,  x13 ,  2047
	beq x0, x12, .LBB0_9
.LBB0_1:                                //  %entry
	bltu x0, x13, .LBB0_5
.LBB0_2:                                //  %if.then
	lui x30 ,  2147483647&4095
	lui x13 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x14
	or x13 ,  x15 ,  x13
	beq x0, x13, .LBB0_18
.LBB0_3:                                //  %if.end
	add x12 ,  x0 ,  x0
	lui x13 ,  (1129316352>>12)&1048575
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	call __muldf3
	lui x30 ,  -50001&4095
	lui x13 ,  (-50001>>12)&1048575
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	blt x13, x8, .LBB0_4
.LBB0_8:                                //  %if.then14
	lui x30 ,  -1023872167&4095
	lui x13 ,  (-1023872167>>12)&1048575
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  27618847&4095
	lui x13 ,  (27618847>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	jal x0, .LBB0_16
.LBB0_9:                                //  %if.then19
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	add x12 ,  x0 ,  x15
	add x13 ,  x0 ,  x14
	call __adddf3
	jal x0, .LBB0_17
.LBB0_4:
	srli x13 ,  x14 ,  20&31
	andi x13 ,  x13 ,  2047
	addi x13 ,  x13 ,  -54
.LBB0_5:                                //  %if.end20
	add x13 ,  x8 ,  x13
	slti x12 ,  x13 ,  2047
	bltu x0, x12, .LBB0_10
.LBB0_6:                                //  %if.then23
	lui x30 ,  -2013235812&4095
	lui x13 ,  (-2013235812>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x13 ,  x30
	lui x13 ,  (2117592124>>12)&1048575
	lui x30 ,  2117592124&4095
.LBB0_7:                                //  %cleanup
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x15
	or x9 ,  x13 ,  x30
	add x13 ,  x0 ,  x14
	add x11 ,  x0 ,  x9
	call copysign
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
.LBB0_16:                               //  %cleanup
	call __muldf3
.LBB0_17:                               //  %cleanup
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
.LBB0_18:                               //  %cleanup
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_10:                               //  %if.end25
	bge x0, x13, .LBB0_12
.LBB0_11:                               //  %do.body28
	lui x30 ,  -2146435073&4095
	lui x12 ,  (-2146435073>>12)&1048575
	slli x13 ,  x13 ,  20&31
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	and x14 ,  x12 ,  x14
	or x14 ,  x13 ,  x14
	jal x0, .LBB0_18
.LBB0_12:                               //  %if.end37
	addi x12 ,  x0 ,  -54
	blt x12, x13, .LBB0_15
.LBB0_13:                               //  %if.then39
	lui x30 ,  50001&4095
	lui x13 ,  (50001>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	bge x8, x13, .LBB0_6
.LBB0_14:                               //  %if.else
	lui x30 ,  -1023872167&4095
	lui x13 ,  (-1023872167>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x13 ,  x30
	lui x13 ,  (27618847>>12)&1048575
	lui x30 ,  27618847&4095
	jal x0, .LBB0_7
.LBB0_15:                               //  %if.end46
	lui x30 ,  -2146435073&4095
	lui x12 ,  (-2146435073>>12)&1048575
	slli x13 ,  x13 ,  20&31
	add x10 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	and x14 ,  x12 ,  x14
	lui x12 ,  (56623104>>12)&1048575
	add x13 ,  x12 ,  x13
	add x12 ,  x0 ,  x0
	or x11 ,  x14 ,  x13
	lui x13 ,  (1016070144>>12)&1048575
	jal x0, .LBB0_16
.Lfunc_end0:
	.size	scalbn, .Lfunc_end0-scalbn
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
