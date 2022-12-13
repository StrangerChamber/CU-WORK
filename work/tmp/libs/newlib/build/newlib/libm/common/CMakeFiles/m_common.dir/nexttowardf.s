	.text
	.file	"nexttowardf.c"
	.globl	nexttowardf             //  -- Begin function nexttowardf
	.type	nexttowardf,@function
nexttowardf:                            //  @nexttowardf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x8 ,  x0 ,  x10
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x11
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
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
	add x9 ,  x0 ,  x14
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x11 ,  x0 ,  x8
	call __unordsf2
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __extendsftf2
	add x24 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x22 ,  x0 ,  x12
	add x21 ,  x0 ,  x13
	bltu x0, x25, .LBB0_4
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x20
	add x17 ,  x0 ,  x9
	add x15 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	add x14 ,  x0 ,  x20
	add x16 ,  x0 ,  x18
	call __unordtf2
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	add x14 ,  x0 ,  x20
	add x15 ,  x0 ,  x19
	add x16 ,  x0 ,  x18
	add x17 ,  x0 ,  x9
	call __netf2
	bltu x0, x10, .LBB0_7
.LBB0_3:                                //  %if.then6
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.then
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	add x14 ,  x0 ,  x20
	add x15 ,  x0 ,  x19
	add x16 ,  x0 ,  x18
	add x17 ,  x0 ,  x9
	call __addtf3
.LBB0_5:                                //  %cleanup
	call __trunctfsf2
	add x18 ,  x0 ,  x10
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
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
.LBB0_7:                                //  %if.end8
	add x25 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x25
	call __nesf2
	bltu x0, x10, .LBB0_13
.LBB0_8:                                //  %if.then11
	lui x30 ,  -2147483647&4095
	lui x15 ,  (-2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	blt x9, x25, .LBB0_10
.LBB0_9:                                //  %if.then11
	slti x18 ,  x0 ,  1
.LBB0_10:                               //  %if.end44
	lui x15 ,  (2139095040>>12)&1048575
	and x14 ,  x15 ,  x18
	beq x0, x14, .LBB0_18
.LBB0_11:                               //  %if.end44
	bne x14, x15, .LBB0_6
.LBB0_12:                               //  %if.then48
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	sw x10 ,  8 ( x2 )
	jal x0, .LBB0_6
.LBB0_13:                               //  %if.else
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	add x14 ,  x0 ,  x20
	add x15 ,  x0 ,  x19
	add x16 ,  x0 ,  x18
	add x17 ,  x0 ,  x9
	call __lttf2
	bge x10, x0, .LBB0_16
.LBB0_14:                               //  %cond.true22
	blt x8, x0, .LBB0_17
.LBB0_15:                               //  %if.else28
	addi x18 ,  x8 ,  1
	lui x15 ,  (2139095040>>12)&1048575
	and x14 ,  x15 ,  x18
	bltu x0, x14, .LBB0_11
	jal x0, .LBB0_18
.LBB0_16:                               //  %cond.true32
	blt x8, x0, .LBB0_15
.LBB0_17:                               //  %if.else39
	addi x18 ,  x8 ,  -1
	lui x15 ,  (2139095040>>12)&1048575
	and x14 ,  x15 ,  x18
	bltu x0, x14, .LBB0_11
.LBB0_18:                               //  %if.then53
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	sw x10 ,  4 ( x2 )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	nexttowardf, .Lfunc_end0-nexttowardf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
