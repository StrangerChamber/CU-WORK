	.text
	.file	"sf_scalbn.c"
	.globl	scalbnf                 //  -- Begin function scalbnf
	.type	scalbnf,@function
scalbnf:                                //  @scalbnf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  2147483647&4095
	lui x14 ,  (2147483647>>12)&1048575
	add x15 ,  x0 ,  x10
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x15
	beq x0, x14, .LBB0_18
.LBB0_1:                                //  %if.end
	srli x13 ,  x14 ,  23&31
	sltiu x12 ,  x13 ,  255
	beq x0, x12, .LBB0_2
.LBB0_3:                                //  %if.end3
	bltu x0, x13, .LBB0_4
.LBB0_5:                                //  %if.then5
	lui x11 ,  (1275068416>>12)&1048575
	add x10 ,  x0 ,  x15
	call __mulsf3
	lui x30 ,  -50001&4095
	lui x14 ,  (-50001>>12)&1048575
	add x15 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x14, x8, .LBB0_6
.LBB0_19:                               //  %if.then15
	lui x30 ,  228737632&4095
	lui x14 ,  (228737632>>12)&1048575
	add x10 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	jal x0, .LBB0_16
.LBB0_2:                                //  %if.then2
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x15
	call __addsf3
	jal x0, .LBB0_17
.LBB0_4:
	srli x14 ,  x14 ,  23&31
	add x14 ,  x8 ,  x14
	slti x13 ,  x14 ,  255
	beq x0, x13, .LBB0_8
.LBB0_10:                               //  %if.end23
	bge x0, x14, .LBB0_12
.LBB0_11:                               //  %do.body26
	lui x30 ,  -2139095041&4095
	lui x13 ,  (-2139095041>>12)&1048575
	slli x14 ,  x14 ,  23&31
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	or x15 ,  x15 ,  x14
	jal x0, .LBB0_18
.LBB0_6:
	srli x14 ,  x15 ,  23&31
	andi x14 ,  x14 ,  255
	addi x14 ,  x14 ,  -25
	add x14 ,  x8 ,  x14
	slti x13 ,  x14 ,  255
	bltu x0, x13, .LBB0_10
	jal x0, .LBB0_8
.LBB0_12:                               //  %if.end32
	addi x13 ,  x0 ,  -23
	blt x13, x14, .LBB0_15
.LBB0_13:                               //  %if.then34
	lui x30 ,  50001&4095
	lui x14 ,  (50001>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x8, x14, .LBB0_14
.LBB0_8:                                //  %if.then21
	lui x14 ,  (1900671690>>12)&1048575
	lui x30 ,  1900671690&4095
.LBB0_9:                                //  %cleanup
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x15
	or x8 ,  x14 ,  x30
	add x10 ,  x0 ,  x8
	call copysignf
	add x11 ,  x0 ,  x8
.LBB0_16:                               //  %cleanup
	call __mulsf3
.LBB0_17:                               //  %cleanup
	add x15 ,  x0 ,  x10
.LBB0_18:                               //  %cleanup
	add x10 ,  x0 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_15:                               //  %if.end41
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
	jal x0, .LBB0_16
.LBB0_14:                               //  %if.else
	lui x14 ,  (228737632>>12)&1048575
	lui x30 ,  228737632&4095
	jal x0, .LBB0_9
.Lfunc_end0:
	.size	scalbnf, .Lfunc_end0-scalbnf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
