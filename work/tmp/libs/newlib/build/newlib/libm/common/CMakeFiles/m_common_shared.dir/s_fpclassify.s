	.text
	.file	"s_fpclassify.c"
	.globl	__fpclassifyd           //  -- Begin function __fpclassifyd
	.type	__fpclassifyd,@function
__fpclassifyd:                          //  @__fpclassifyd
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  -2147483648&4095
	add x15 ,  x0 ,  x10
	lui x14 ,  (-2147483648>>12)&1048575
	addi x10 ,  x0 ,  2
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x11
	or x13 ,  x14 ,  x30
	beq x0, x12, .LBB0_8
.LBB0_1:                                //  %entry
	xor x13 ,  x13 ,  x11
	xori x15 ,  x15 ,  0
	sltiu x13 ,  x13 ,  1
	sltiu x15 ,  x15 ,  1
	and x13 ,  x13 ,  x15
	bltu x0, x13, .LBB0_8
.LBB0_2:                                //  %if.else
	lui x30 ,  2147483647&4095
	lui x13 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  -1048576&4095
	and x12 ,  x13 ,  x11
	lui x13 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x13 ,  x30
	add x12 ,  x10 ,  x12
	srli x12 ,  x12 ,  21&31
	sltiu x12 ,  x12 ,  1023
	beq x0, x12, .LBB0_4
.LBB0_3:
	addi x10 ,  x0 ,  4
	ret
.LBB0_4:                                //  %if.else16
	addi x10 ,  x0 ,  3
	srli x12 ,  x11 ,  20&31
	beq x0, x12, .LBB0_8
.LBB0_5:                                //  %lor.lhs.false20
	bge x11, x0, .LBB0_7
.LBB0_6:                                //  %lor.lhs.false20
	lui x30 ,  2049&4095
	lui x5 ,  (2049>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x5 ,  x5 ,  x30
	bgeu x12, x5, .LBB0_7
.LBB0_8:                                //  %cleanup
	ret
.LBB0_7:                                //  %if.else25
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  -1048576&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x11
	or x13 ,  x13 ,  x30
	xor x14 ,  x13 ,  x14
	sltiu x14 ,  x14 ,  1
	and x10 ,  x14 ,  x15
	ret
.Lfunc_end0:
	.size	__fpclassifyd, .Lfunc_end0-__fpclassifyd
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
