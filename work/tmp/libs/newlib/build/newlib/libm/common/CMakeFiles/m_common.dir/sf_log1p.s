	.text
	.file	"sf_log1p.c"
	.globl	log1pf                  //  -- Begin function log1pf
	.type	log1pf,@function
log1pf:                                 //  @log1pf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	lui x14 ,  (2139095040>>12)&1048575
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x8, x14, .LBB0_1
.LBB0_3:                                //  %if.end
	lui x30 ,  1054086102&4095
	lui x14 ,  (1054086102>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x14, x8, .LBB0_17
.LBB0_4:                                //  %if.then2
	and x15 ,  x15 ,  x8
	srli x9 ,  x15 ,  23&31
	sltiu x14 ,  x9 ,  127
	bltu x0, x14, .LBB0_8
.LBB0_5:                                //  %if.then4
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __nesf2
	bltu x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then6
	slti x10 ,  x0 ,  1
	call __math_divzerof
	jal x0, .LBB0_34
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_34
.LBB0_17:                               //  %if.then24
	lui x30 ,  1509949439&4095
	lui x15 ,  (1509949439>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB0_21
.LBB0_18:                               //  %if.then26
	lui x9 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __addsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __subsf3
	srai x15 ,  x19 ,  23&31
	add x11 ,  x0 ,  x9
	addi x18 ,  x15 ,  -127
	call __addsf3
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __subsf3
	add x15 ,  x0 ,  x0
	blt x15, x18, .LBB0_20
.LBB0_19:                               //  %if.then26
	add x9 ,  x0 ,  x10
.LBB0_20:                               //  %if.then26
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __divsf3
	add x9 ,  x0 ,  x10
	jal x0, .LBB0_22
.LBB0_8:                                //  %if.end8
	srli x15 ,  x15 ,  24&31
	addi x14 ,  x0 ,  48
	bltu x14, x15, .LBB0_13
.LBB0_9:                                //  %if.then10
	lui x11 ,  (1275068416>>12)&1048575
	add x10 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x0
	call __gtsf2
	bge x0, x10, .LBB0_12
.LBB0_10:                               //  %if.then10
	sltiu x15 ,  x9 ,  73
	beq x0, x15, .LBB0_12
.LBB0_11:
	add x20 ,  x0 ,  x8
	jal x0, .LBB0_35
.LBB0_21:                               //  %if.else40
	srli x15 ,  x8 ,  23&31
	add x9 ,  x0 ,  x0
	add x19 ,  x0 ,  x8
	addi x18 ,  x15 ,  -127
.LBB0_22:                               //  %if.end49
	lui x30 ,  8388607&4095
	lui x15 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  3474678&4095
	and x20 ,  x15 ,  x19
	lui x15 ,  (3474678>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_24
.LBB0_23:                               //  %do.body53
	lui x15 ,  (1065353216>>12)&1048575
	or x10 ,  x15 ,  x20
	jal x0, .LBB0_25
.LBB0_24:                               //  %if.else58
	lui x15 ,  (1056964608>>12)&1048575
	addi x18 ,  x18 ,  1
	or x10 ,  x15 ,  x20
	lui x15 ,  (8388608>>12)&1048575
	sub x15 ,  x15 ,  x20
	srli x20 ,  x15 ,  2&31
.LBB0_25:                               //  %if.end71
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x11 ,  (1056964608>>12)&1048575
	add x8 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x19 ,  x0 ,  x10
	beq x0, x20, .LBB0_26
.LBB0_15:                               //  %if.end103
	lui x11 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __divsf3
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1041729687&4095
	lui x15 ,  (1041729687>>12)&1048575
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1042075727&4095
	lui x15 ,  (1042075727>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1044001573&4095
	lui x15 ,  (1044001573>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1046711849&4095
	lui x15 ,  (1046711849>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1049774373&4095
	lui x15 ,  (1049774373>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1053609165&4095
	lui x15 ,  (1053609165>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1059760811&4095
	lui x15 ,  (1059760811>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x21 ,  x0 ,  x10
	beq x0, x18, .LBB0_16
.LBB0_32:                               //  %if.else127
	add x10 ,  x0 ,  x18
	call __floatsisf
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	jal x0, .LBB0_33
.LBB0_26:                               //  %if.then75
	add x20 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	call __nesf2
	bltu x0, x10, .LBB0_29
.LBB0_27:                               //  %if.then77
	beq x0, x18, .LBB0_35
.LBB0_28:                               //  %if.else80
	add x10 ,  x0 ,  x18
	call __floatsisf
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	jal x0, .LBB0_34
.LBB0_16:                               //  %if.then122
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_33
.LBB0_13:                               //  %if.end17
	lui x30 ,  1097468384&4095
	lui x15 ,  (1097468384>>12)&1048575
	lui x14 ,  (1097468385>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1097468385&4095
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x8
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_18
.LBB0_14:                               //  %if.end71.thread
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
                                        //  implicit-def: $rf_xpr_9
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.else
	add x10 ,  x0 ,  x8
	call __math_invalidf
	jal x0, .LBB0_34
.LBB0_29:                               //  %if.end86
	lui x30 ,  -1087722837&4095
	lui x15 ,  (-1087722837>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x19 ,  x0 ,  x10
	beq x0, x18, .LBB0_30
.LBB0_31:                               //  %if.else94
	add x10 ,  x0 ,  x18
	call __floatsisf
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	jal x0, .LBB0_33
.LBB0_12:                               //  %if.else15
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_34
.LBB0_30:                               //  %if.then92
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
.LBB0_33:                               //  %cleanup
	call __subsf3
.LBB0_34:                               //  %cleanup
	add x20 ,  x0 ,  x10
.LBB0_35:                               //  %cleanup
	add x10 ,  x0 ,  x20
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	log1pf, .Lfunc_end0-log1pf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzerof
	.hidden	__math_invalidf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
