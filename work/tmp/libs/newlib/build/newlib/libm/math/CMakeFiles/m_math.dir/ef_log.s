	.text
	.file	"ef_log.c"
	.globl	__ieee754_logf          //  -- Begin function __ieee754_logf
	.type	__ieee754_logf,@function
__ieee754_logf:                         //  @__ieee754_logf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	beq x0, x15, .LBB0_29
.LBB0_1:                                //  %if.end
	blt x8, x0, .LBB0_2
.LBB0_3:                                //  %if.end3
	lui x15 ,  (2139095040>>12)&1048575
	bge x8, x15, .LBB0_4
.LBB0_6:                                //  %if.end6
	lui x9 ,  (8388608>>12)&1048575
	blt x8, x9, .LBB0_7
.LBB0_8:                                //  %if.end6
	addi x19 ,  x0 ,  -127
	jal x0, .LBB0_9
.LBB0_2:                                //  %if.then2
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x0
	call __divsf3
	jal x0, .LBB0_28
.LBB0_4:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_28
.LBB0_7:
	addi x19 ,  x0 ,  -152
.LBB0_9:                                //  %if.end6
	lui x11 ,  (1275068416>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x18 ,  x0 ,  x10
	blt x8, x9, .LBB0_11
.LBB0_10:                               //  %if.end6
	add x18 ,  x0 ,  x8
.LBB0_11:                               //  %if.end6
	lui x30 ,  8388607&4095
	lui x14 ,  (8388607>>12)&1048575
	srai x15 ,  x18 ,  23&31
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x19
	or x14 ,  x14 ,  x30
	lui x30 ,  4913952&4095
	and x22 ,  x14 ,  x18
	lui x14 ,  (4913952>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  -1082130432&4095
	add x14 ,  x14 ,  x22
	srli x30 ,  x30 ,  12&31
	and x13 ,  x9 ,  x14
	srli x14 ,  x14 ,  23&31
	add x9 ,  x14 ,  x15
	or x15 ,  x22 ,  x13
	lui x14 ,  (1065353216>>12)&1048575
	xor x10 ,  x14 ,  x15
	lui x15 ,  (-1082130432>>12)&1048575
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  8388592&4095
	lui x14 ,  (8388592>>12)&1048575
	addi x15 ,  x18 ,  15
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	beq x0, x15, .LBB0_12
.LBB0_18:                               //  %if.end57
	lui x11 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __divsf3
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x18
	call __mulsf3
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1042075727&4095
	lui x15 ,  (1042075727>>12)&1048575
	add x20 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1046711849&4095
	lui x15 ,  (1046711849>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1053609165&4095
	lui x15 ,  (1053609165>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1041729687&4095
	lui x15 ,  (1041729687>>12)&1048575
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1044001573&4095
	lui x15 ,  (1044001573>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1049774373&4095
	lui x15 ,  (1049774373>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1059760811&4095
	lui x15 ,  (1059760811>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __addsf3
	lui x30 ,  3523208&4095
	lui x15 ,  (3523208>>12)&1048575
	lui x14 ,  (-3187664>>12)&1048575
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -3187664&4095
	srli x30 ,  x30 ,  12&31
	sub x15 ,  x15 ,  x22
	or x14 ,  x14 ,  x30
	add x14 ,  x14 ,  x22
	or x21 ,  x15 ,  x14
	call __floatsisf
	add x19 ,  x0 ,  x10
	bge x0, x21, .LBB0_22
.LBB0_19:                               //  %if.then81
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x21 ,  x0 ,  x10
	beq x0, x9, .LBB0_20
.LBB0_21:                               //  %if.else91
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x18
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __subsf3
	jal x0, .LBB0_26
.LBB0_12:                               //  %if.then33
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __nesf2
	bltu x0, x10, .LBB0_15
.LBB0_13:                               //  %if.then35
	beq x0, x9, .LBB0_29
.LBB0_14:                               //  %if.else
	add x10 ,  x0 ,  x9
	call __floatsisf
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	jal x0, .LBB0_28
.LBB0_22:                               //  %if.else100
	beq x0, x9, .LBB0_23
.LBB0_25:                               //  %if.else107
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1223165999&4095
	lui x15 ,  (-1223165999>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
.LBB0_26:                               //  %cleanup
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_27
.LBB0_20:                               //  %if.then86
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __subsf3
	jal x0, .LBB0_24
.LBB0_15:                               //  %if.end41
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1096111445&4095
	lui x15 ,  (-1096111445>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x11 ,  (1056964608>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x18 ,  x0 ,  x10
	beq x0, x9, .LBB0_16
.LBB0_17:                               //  %if.else50
	add x10 ,  x0 ,  x9
	call __floatsisf
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1223165999&4095
	lui x15 ,  (-1223165999>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	jal x0, .LBB0_27
.LBB0_23:                               //  %if.then103
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
.LBB0_24:                               //  %cleanup
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
.LBB0_27:                               //  %cleanup
	call __subsf3
.LBB0_28:                               //  %cleanup
	add x18 ,  x0 ,  x10
.LBB0_29:                               //  %cleanup
	add x10 ,  x0 ,  x18
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
.LBB0_16:                               //  %if.then48
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	jal x0, .LBB0_27
.Lfunc_end0:
	.size	__ieee754_logf, .Lfunc_end0-__ieee754_logf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
