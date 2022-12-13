	.text
	.file	"sf_expm1.c"
	.globl	expm1f                  //  -- Begin function expm1f
	.type	expm1f,@function
expm1f:                                 //  @expm1f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lui x14 ,  (1100331076>>12)&1048575
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
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	and x18 ,  x15 ,  x8
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1100331076&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x8
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_15
.LBB0_1:                                //  %if.then3
	lui x30 ,  2139095041&4095
	lui x14 ,  (2139095041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_3
.LBB0_2:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_38
.LBB0_15:                               //  %if.end27
	lui x30 ,  1051816473&4095
	lui x14 ,  (1051816473>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_21
.LBB0_16:                               //  %if.then30
	lui x30 ,  1065686417&4095
	lui x14 ,  (1065686417>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_12
.LBB0_17:                               //  %if.then33
	bltu x0, x18, .LBB0_19
.LBB0_18:                               //  %if.then36
	lui x30 ,  -1087278720&4095
	lui x15 ,  (-1087278720>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x18 ,  x0 ,  x10
	slti x9 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	jal x0, .LBB0_20
.LBB0_3:                                //  %if.end6
	lui x14 ,  (2139095040>>12)&1048575
	bne x15, x14, .LBB0_7
.LBB0_4:                                //  %if.then8
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x18, x14, .LBB0_6
.LBB0_5:                                //  %if.then8
	add x8 ,  x0 ,  x15
.LBB0_6:                                //  %if.then8
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_38
.LBB0_21:                               //  %if.else55
	srli x15 ,  x15 ,  24&31
	addi x14 ,  x0 ,  50
	bltu x14, x15, .LBB0_22
.LBB0_39:                               //  %if.then58
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	jal x0, .LBB0_25
.LBB0_7:                                //  %if.end11
	bltu x0, x18, .LBB0_10
.LBB0_8:                                //  %if.end11
	lui x30 ,  1118925336&4095
	lui x14 ,  (1118925336>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_10
.LBB0_9:                                //  %if.then16
	add x10 ,  x0 ,  x0
	call __math_oflowf
	jal x0, .LBB0_38
.LBB0_22:
	add x9 ,  x0 ,  x0
                                        //  implicit-def: $rf_xpr_18
	jal x0, .LBB0_23
.LBB0_19:                               //  %if.else38
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1223165999&4095
	lui x15 ,  (-1223165999>>12)&1048575
	add x18 ,  x0 ,  x10
	addi x9 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	jal x0, .LBB0_20
.LBB0_10:                               //  %if.end17
	lui x30 ,  228737632&4095
	lui x15 ,  (228737632>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x0
	call __ltsf2
	lui x30 ,  -1082130432&4095
	lui x14 ,  (-1082130432>>12)&1048575
	add x15 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	bge x15, x0, .LBB0_12
.LBB0_11:                               //  %if.end17
	bltu x0, x18, .LBB0_38
.LBB0_12:                               //  %if.else41
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	add x15 ,  x0 ,  x0
	bne x18, x15, .LBB0_14
.LBB0_13:
	lui x9 ,  (1056964608>>12)&1048575
.LBB0_14:                               //  %if.else41
	lui x30 ,  1069066811&4095
	lui x15 ,  (1069066811>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	call __fixsfsi
	add x9 ,  x0 ,  x10
	call __floatsisf
	lui x30 ,  -1087278720&4095
	lui x15 ,  (-1087278720>>12)&1048575
	add x19 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x19 ,  x0 ,  x10
.LBB0_20:                               //  %if.end51
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __subsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x19
	call __subsf3
	add x18 ,  x0 ,  x10
.LBB0_23:                               //  %if.end65
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  -1269305925&4095
	lui x15 ,  (-1269305925>>12)&1048575
	add x19 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  914783828&4095
	lui x15 ,  (914783828>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1197051699&4095
	lui x15 ,  (-1197051699>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  986713345&4095
	lui x15 ,  (986713345>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1123514231&4095
	lui x15 ,  (-1123514231>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x20 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x20
	call __addsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __mulsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1077936128>>12)&1048575
	call __subsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __subsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1086324736>>12)&1048575
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	beq x0, x9, .LBB0_24
.LBB0_26:                               //  %if.else90
	add x10 ,  x0 ,  x11
	add x11 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x19
	call __subsf3
	add x18 ,  x0 ,  x10
	xori x15 ,  x9 ,  1
	beq x0, x15, .LBB0_30
.LBB0_27:                               //  %if.else90
	xori x15 ,  x9 ,  -1
	bltu x0, x15, .LBB0_33
.LBB0_28:                               //  %if.then97
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __subsf3
	lui x11 ,  (1056964608>>12)&1048575
	call __mulsf3
	lui x15 ,  (-1090519040>>12)&1048575
	lui x30 ,  -1090519040&4095
	jal x0, .LBB0_29
.LBB0_24:                               //  %if.then86
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x19
.LBB0_25:                               //  %cleanup
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __subsf3
	jal x0, .LBB0_38
.LBB0_30:                               //  %if.then104
	lui x30 ,  -1098907648&4095
	lui x15 ,  (-1098907648>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __ltsf2
	bge x10, x0, .LBB0_32
.LBB0_31:                               //  %if.then107
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	jal x0, .LBB0_38
.LBB0_33:                               //  %if.end115
	sltiu x15 ,  x9 ,  57
	bltu x0, x15, .LBB0_35
.LBB0_34:                               //  %if.then120
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __subsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	slli x15 ,  x9 ,  23&31
	lui x30 ,  -1082130432&4095
	add x10 ,  x10 ,  x15
	lui x15 ,  (-1082130432>>12)&1048575
.LBB0_29:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	jal x0, .LBB0_38
.LBB0_32:                               //  %if.else111
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x10
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	jal x0, .LBB0_38
.LBB0_35:                               //  %if.end136
	addi x15 ,  x0 ,  22
	blt x15, x9, .LBB0_37
.LBB0_36:                               //  %if.then139
	lui x15 ,  (16777216>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	srl x19 ,  x15 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x10
	sub x10 ,  x20 ,  x19
	call __subsf3
	slli x15 ,  x9 ,  23&31
	add x10 ,  x10 ,  x15
	jal x0, .LBB0_38
.LBB0_37:                               //  %if.else164
	slli x9 ,  x9 ,  23&31
	add x10 ,  x0 ,  x18
	sub x11 ,  x20 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	add x10 ,  x10 ,  x9
.LBB0_38:                               //  %cleanup
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
	.size	expm1f, .Lfunc_end0-expm1f
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
