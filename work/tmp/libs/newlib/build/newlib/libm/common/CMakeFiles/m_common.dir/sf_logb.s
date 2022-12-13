	.text
	.file	"sf_logb.c"
	.globl	logbf                   //  -- Begin function logbf
	.type	logbf,@function
logbf:                                  //  @logbf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	lui x14 ,  (2147483647>>12)&1048575
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x10
	beq x0, x14, .LBB0_9
.LBB0_1:                                //  %if.end
	srli x13 ,  x14 ,  23&31
	bltu x0, x13, .LBB0_5
.LBB0_2:                                //  %if.then9
	lui x30 ,  -1023672320&4095
	lui x15 ,  (-1023672320>>12)&1048575
	slli x14 ,  x10 ,  8&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x0, x14, .LBB0_9
.LBB0_3:                                //  %for.body.preheader
	addi x10 ,  x0 ,  -126
.LBB0_4:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x10 ,  x10 ,  -1
	slli x14 ,  x14 ,  1&31
	blt x0, x14, .LBB0_4
	jal x0, .LBB0_8
.LBB0_5:                                //  %if.else
	lui x15 ,  (2139095040>>12)&1048575
	beq x14, x15, .LBB0_9
.LBB0_6:                                //  %if.else17
	lui x12 ,  (2139095040>>12)&1048575
	add x15 ,  x0 ,  x10
	bltu x12, x14, .LBB0_9
.LBB0_7:                                //  %if.else21
	addi x10 ,  x13 ,  -127
.LBB0_8:                                //  %cleanup
	call __floatsisf
	add x15 ,  x0 ,  x10
.LBB0_9:                                //  %cleanup
	add x10 ,  x0 ,  x15
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	logbf, .Lfunc_end0-logbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
