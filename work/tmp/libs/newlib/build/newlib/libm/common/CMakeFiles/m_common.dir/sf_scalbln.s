	.text
	.file	"sf_scalbln.c"
	.globl	scalblnf                //  -- Begin function scalblnf
	.type	scalblnf,@function
scalblnf:                               //  @scalblnf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x15 ,  x0 ,  x10
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x14 ,  x15 ,  23&31
	andi x14 ,  x14 ,  255
	xori x13 ,  x14 ,  255
	beq x0, x13, .LBB0_17
.LBB0_1:                                //  %entry
	bltu x0, x14, .LBB0_4
.LBB0_2:                                //  %if.then
	lui x30 ,  2147483647&4095
	lui x14 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x15
	beq x0, x14, .LBB0_16
.LBB0_3:                                //  %if.end12.thread
	lui x11 ,  (1275068416>>12)&1048575
	add x10 ,  x0 ,  x15
	call __mulsf3
	add x15 ,  x0 ,  x10
	srli x14 ,  x15 ,  23&31
	andi x14 ,  x14 ,  255
	addi x14 ,  x14 ,  -25
.LBB0_4:                                //  %if.end15
	lui x30 ,  50000&4095
	lui x13 ,  (50000>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	blt x13, x8, .LBB0_6
.LBB0_5:                                //  %if.end15
	add x14 ,  x8 ,  x14
	slti x13 ,  x14 ,  255
	beq x0, x13, .LBB0_6
.LBB0_8:                                //  %if.end21
	lui x30 ,  -50001&4095
	lui x13 ,  (-50001>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	blt x13, x8, .LBB0_10
.LBB0_9:                                //  %if.then23
	lui x14 ,  (228737632>>12)&1048575
	lui x30 ,  228737632&4095
	jal x0, .LBB0_7
.LBB0_17:                               //  %if.then14
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x15
	call __addsf3
	jal x0, .LBB0_15
.LBB0_6:                                //  %if.then19
	lui x14 ,  (1900671690>>12)&1048575
	lui x30 ,  1900671690&4095
.LBB0_7:                                //  %cleanup
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x15
	or x8 ,  x14 ,  x30
	add x10 ,  x0 ,  x8
	call copysignf
	add x11 ,  x0 ,  x8
.LBB0_14:                               //  %cleanup
	call __mulsf3
.LBB0_15:                               //  %cleanup
	add x15 ,  x0 ,  x10
.LBB0_16:                               //  %cleanup
	add x10 ,  x0 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_10:                               //  %if.end26
	bge x0, x14, .LBB0_12
.LBB0_11:                               //  %do.body29
	lui x30 ,  -2139095041&4095
	lui x13 ,  (-2139095041>>12)&1048575
	slli x14 ,  x14 ,  23&31
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	or x15 ,  x14 ,  x15
	jal x0, .LBB0_16
.LBB0_12:                               //  %if.end35
	addi x13 ,  x0 ,  -25
	bge x13, x14, .LBB0_9
.LBB0_13:                               //  %if.end40
	lui x30 ,  -2139095041&4095
	lui x13 ,  (-2139095041>>12)&1048575
	slli x14 ,  x14 ,  23&31
	lui x11 ,  (855638016>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	lui x13 ,  (209715200>>12)&1048575
	add x14 ,  x13 ,  x14
	or x10 ,  x15 ,  x14
	jal x0, .LBB0_14
.Lfunc_end0:
	.size	scalblnf, .Lfunc_end0-scalblnf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
