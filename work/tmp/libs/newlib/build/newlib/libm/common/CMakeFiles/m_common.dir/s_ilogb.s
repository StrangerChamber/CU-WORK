	.text
	.file	"s_ilogb.c"
	.globl	ilogb                   //  -- Begin function ilogb
	.type	ilogb,@function
ilogb:                                  //  @ilogb
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  2147483647&4095
	lui x12 ,  (2147483647>>12)&1048575
	add x15 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x12 ,  x30
	and x14 ,  x14 ,  x11
	srli x13 ,  x14 ,  20&31
	bltu x0, x13, .LBB0_7
.LBB0_1:                                //  %if.then
	lui x30 ,  -2147483647&4095
	lui x12 ,  (-2147483647>>12)&1048575
	or x13 ,  x15 ,  x14
	srli x30 ,  x30 ,  12&31
	or x10 ,  x12 ,  x30
	beq x0, x13, .LBB0_9
.LBB0_2:                                //  %if.else
	beq x0, x14, .LBB0_3
.LBB0_5:                                //  %if.else7
	addi x10 ,  x0 ,  -1022
	slli x15 ,  x11 ,  11&31
	bge x0, x15, .LBB0_9
.LBB0_6:                                //  %for.body11
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_6
	jal x0, .LBB0_9
.LBB0_7:                                //  %if.else17
	lui x30 ,  2147483647&4095
	addi x15 ,  x0 ,  2046
	srli x30 ,  x30 ,  12&31
	or x10 ,  x12 ,  x30
	bltu x15, x13, .LBB0_9
.LBB0_8:                                //  %if.then19
	addi x10 ,  x13 ,  -1023
	ret
.LBB0_3:                                //  %for.cond.preheader
	addi x10 ,  x0 ,  -1043
	bge x0, x15, .LBB0_9
.LBB0_4:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_4
.LBB0_9:                                //  %cleanup
	ret
.Lfunc_end0:
	.size	ilogb, .Lfunc_end0-ilogb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
