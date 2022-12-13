	.text
	.file	"sf_ilogb.c"
	.globl	ilogbf                  //  -- Begin function ilogbf
	.type	ilogbf,@function
ilogbf:                                 //  @ilogbf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  -2147483647&4095
	lui x14 ,  (-2147483647>>12)&1048575
	add x15 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	lui x30 ,  2147483647&4095
	lui x14 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	and x13 ,  x13 ,  x15
	beq x0, x13, .LBB0_6
.LBB0_1:                                //  %if.end
	srli x13 ,  x13 ,  23&31
	bltu x0, x13, .LBB0_4
.LBB0_2:                                //  %if.then2
	addi x10 ,  x0 ,  -126
	slli x15 ,  x15 ,  8&31
	bge x0, x15, .LBB0_6
.LBB0_3:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  -1
	slli x15 ,  x15 ,  1&31
	blt x0, x15, .LBB0_3
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.else
	lui x30 ,  2147483647&4095
	addi x15 ,  x0 ,  254
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	bltu x15, x13, .LBB0_6
.LBB0_5:                                //  %if.else7
	addi x10 ,  x13 ,  -127
.LBB0_6:                                //  %cleanup
	ret
.Lfunc_end0:
	.size	ilogbf, .Lfunc_end0-ilogbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
