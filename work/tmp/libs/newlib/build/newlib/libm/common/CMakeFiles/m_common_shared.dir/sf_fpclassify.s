	.text
	.file	"sf_fpclassify.c"
	.globl	__fpclassifyf           //  -- Begin function __fpclassifyf
	.type	__fpclassifyf,@function
__fpclassifyf:                          //  @__fpclassifyf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x14 ,  x15 ,  x10
	beq x0, x14, .LBB0_1
.LBB0_2:                                //  %if.else
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	add x13 ,  x13 ,  x14
	srli x13 ,  x13 ,  24&31
	sltiu x13 ,  x13 ,  127
	beq x0, x13, .LBB0_4
.LBB0_3:
	addi x10 ,  x0 ,  4
	ret
.LBB0_1:
	addi x10 ,  x0 ,  2
	ret
.LBB0_4:                                //  %if.else9
	lui x30 ,  8388607&4095
	lui x13 ,  (8388607>>12)&1048575
	addi x14 ,  x14 ,  -1
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	bgeu x14, x13, .LBB0_6
.LBB0_5:
	addi x10 ,  x0 ,  3
	ret
.LBB0_6:                                //  %if.else18
	lui x30 ,  -2147483648&4095
	lui x14 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  -8388608&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x10
	or x15 ,  x15 ,  x30
	xor x15 ,  x15 ,  x14
	sltiu x10 ,  x15 ,  1
	ret
.Lfunc_end0:
	.size	__fpclassifyf, .Lfunc_end0-__fpclassifyf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
