	.text
	.file	"nl_langinfo.c"
	.globl	nl_langinfo_l           //  -- Begin function nl_langinfo_l
	.type	nl_langinfo_l,@function
nl_langinfo_l:                          //  @nl_langinfo_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  .str&4095
	lui x14 ,  (.str>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	add x15 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	addi x14 ,  x0 ,  84
	bltu x14, x15, .LBB0_40
.LBB0_1:                                //  %entry
	lui x30 ,  JTI0_0&4095
	lui x13 ,  (JTI0_0>>12)&1048575
	slli x14 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x13 ,  x13 ,  x14
	lw x13 ,  0 ( x13 )
	jalr x0 ,  0 ( x13 )
.LBB0_10:                               //  %sw.bb21
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  -36 ( x15 )
	jal x0, .LBB0_42
.LBB0_11:                               //  %sw.bb25
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  -132 ( x15 )
	jal x0, .LBB0_42
.LBB0_8:                                //  %sw.bb14
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  96 ( x15 )
	jal x0, .LBB0_42
.LBB0_9:                                //  %sw.bb17
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  40 ( x15 )
	jal x0, .LBB0_42
.LBB0_2:                                //  %sw.bb1
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  160 ( x15 )
	jal x0, .LBB0_42
.LBB0_3:                                //  %sw.bb2
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  156 ( x15 )
	jal x0, .LBB0_42
.LBB0_4:                                //  %sw.bb4
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  152 ( x15 )
	jal x0, .LBB0_42
.LBB0_5:                                //  %sw.bb6
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  228 ( x15 )
	jal x0, .LBB0_42
.LBB0_6:                                //  %sw.bb8
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  164 ( x15 )
	jal x0, .LBB0_42
.LBB0_7:                                //  %sw.bb10
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  168 ( x15 )
	jal x0, .LBB0_42
.LBB0_12:                               //  %sw.bb29
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  232 ( x15 )
	jal x0, .LBB0_42
.LBB0_13:                               //  %sw.bb31
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  236 ( x15 )
	jal x0, .LBB0_42
.LBB0_14:                               //  %sw.bb33
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  240 ( x15 )
	jal x0, .LBB0_42
.LBB0_15:                               //  %sw.bb35
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  244 ( x15 )
	jal x0, .LBB0_42
.LBB0_16:                               //  %sw.bb37
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  248 ( x15 )
	jal x0, .LBB0_42
.LBB0_18:                               //  %sw.bb41
	lui x15 ,  (_C_numeric_locale>>12)&1048575
	lui x30 ,  _C_numeric_locale&4095
	jal x0, .LBB0_19
.LBB0_20:                               //  %sw.bb43
	lui x15 ,  (_C_numeric_locale>>12)&1048575
	lui x30 ,  _C_numeric_locale&4095
	jal x0, .LBB0_21
.LBB0_22:                               //  %sw.bb45
	lui x15 ,  (_C_messages_locale>>12)&1048575
	lui x30 ,  _C_messages_locale&4095
.LBB0_19:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, .LBB0_42
.LBB0_23:                               //  %sw.bb47
	lui x15 ,  (_C_messages_locale>>12)&1048575
	lui x30 ,  _C_messages_locale&4095
.LBB0_21:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  4 ( x15 )
	jal x0, .LBB0_42
.LBB0_24:                               //  %sw.bb49
	lui x30 ,  _C_messages_locale&4095
	lui x15 ,  (_C_messages_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  8 ( x15 )
	jal x0, .LBB0_42
.LBB0_25:                               //  %sw.bb51
	lui x30 ,  _C_messages_locale&4095
	lui x15 ,  (_C_messages_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  12 ( x15 )
	jal x0, .LBB0_42
.LBB0_26:                               //  %sw.bb53
	lui x30 ,  .str.1&4095
	lui x18 ,  (.str.1>>12)&1048575
	lui x19 ,  (_C_monetary_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x18 ,  x30
	lui x30 ,  _C_monetary_locale&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x8 ,  4 ( x15 )
	lbu x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_42
.LBB0_27:                               //  %if.then
	add x10 ,  x0 ,  x9
	call __localeconv_l
	lbu x20 ,  42 ( x10 )
	add x10 ,  x0 ,  x9
	call __localeconv_l
	add x15 ,  x0 ,  x10
	lui x30 ,  .str.1&4095
	lbu x15 ,  44 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x10 ,  x18 ,  x30
	bne x20, x15, .LBB0_42
.LBB0_28:                               //  %if.then62
	xori x15 ,  x20 ,  127
	bltu x0, x15, .LBB0_31
.LBB0_29:                               //  %if.then66
	lui x30 ,  _C_monetary_locale&4095
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x11 ,  8 ( x15 )
	call strcmp
	lui x30 ,  .str.1&4095
	add x15 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x18 ,  x30
	bltu x0, x15, .LBB0_42
.LBB0_30:
	addi x19 ,  x0 ,  46
	jal x0, .LBB0_34
.LBB0_39:                               //  %sw.bb93
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  224 ( x15 )
	jal x0, .LBB0_42
.LBB0_40:                               //  %sw.default
	lui x30 ,  -100001&4095
	lui x14 ,  (-100001>>12)&1048575
	lui x13 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  .str.1&4095
	srli x30 ,  x30 ,  12&31
	add x14 ,  x14 ,  x15
	or x10 ,  x13 ,  x30
	addi x13 ,  x0 ,  5
	bltu x13, x14, .LBB0_42
.LBB0_41:                               //  %if.then100
	lui x30 ,  -3200000&4095
	slli x15 ,  x15 ,  5&31
	lui x14 ,  (-3200000>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x15 ,  x9 ,  x15
	or x14 ,  x14 ,  x30
	add x10 ,  x14 ,  x15
	jal x0, .LBB0_42
.LBB0_17:                               //  %sw.bb39
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  172 ( x15 )
.LBB0_42:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_31:                               //  %if.else
	add x15 ,  x0 ,  x0
	beq x20, x15, .LBB0_32
.LBB0_33:                               //  %if.else
	addi x19 ,  x0 ,  45
	jal x0, .LBB0_34
.LBB0_32:
	addi x19 ,  x0 ,  43
.LBB0_34:                               //  %if.then78
	add x10 ,  x0 ,  x8
	call strlen
	lui x30 ,  nl_langinfo_l.csym&4095
	lui x20 ,  (nl_langinfo_l.csym>>12)&1048575
	addi x11 ,  x10 ,  2
	srli x30 ,  x30 ,  12&31
	or x21 ,  x20 ,  x30
	lw x15 ,  0 ( x21 )
	add x10 ,  x0 ,  x15
	call realloc
	add x9 ,  x0 ,  x10
	bltu x0, x9, .LBB0_37
.LBB0_35:                               //  %if.then78
	lw x10 ,  0 ( x21 )
	beq x0, x10, .LBB0_37
.LBB0_36:                               //  %if.then83
	call free
.LBB0_37:                               //  %if.end84
	lui x30 ,  nl_langinfo_l.csym&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	lui x30 ,  .str.1&4095
	srli x30 ,  x30 ,  12&31
	sw x9 ,  0 ( x15 )
	or x10 ,  x18 ,  x30
	beq x0, x9, .LBB0_42
.LBB0_38:                               //  %if.then87
	addi x10 ,  x9 ,  1
	add x11 ,  x0 ,  x8
	sb x19 ,  0 ( x9 )
	call strcpy
	lui x30 ,  nl_langinfo_l.csym&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, .LBB0_42
.Lfunc_end0:
	.size	nl_langinfo_l, .Lfunc_end0-nl_langinfo_l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_42
	.long	.LBB0_2
	.long	.LBB0_3
	.long	.LBB0_4
	.long	.LBB0_5
	.long	.LBB0_6
	.long	.LBB0_7
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_12
	.long	.LBB0_13
	.long	.LBB0_14
	.long	.LBB0_15
	.long	.LBB0_16
	.long	.LBB0_18
	.long	.LBB0_20
	.long	.LBB0_22
	.long	.LBB0_23
	.long	.LBB0_24
	.long	.LBB0_25
	.long	.LBB0_26
	.long	.LBB0_39
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_17
                                        //  -- End function
	.text
	.globl	nl_langinfo             //  -- Begin function nl_langinfo
	.type	nl_langinfo,@function
nl_langinfo:                            //  @nl_langinfo
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, nl_langinfo_l
.Lfunc_end1:
	.size	nl_langinfo, .Lfunc_end1-nl_langinfo
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	nl_langinfo_l.csym,@object //  @nl_langinfo_l.csym
	.local	nl_langinfo_l.csym
	.comm	nl_langinfo_l.csym,4,4
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"US-ASCII"
	.size	.str, 9

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0
	.address_space	0
	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
