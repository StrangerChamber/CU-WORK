	.text
	.file	"getopt.c"
	.globl	getopt                  //  -- Begin function getopt
	.type	getopt,@function
getopt:                                 //  @getopt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	lui x30 ,  optind&4095
	lui x15 ,  (optind>>12)&1048575
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	addi x8 ,  x2 ,  8
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x13 ,  x0 ,  x0
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x14 ,  x0 ,  x13
	add x16 ,  x0 ,  x8
	or x9 ,  x15 ,  x30
	lui x30 ,  opterr&4095
	lw x15 ,  0 ( x9 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x8 )
	lui x15 ,  (opterr>>12)&1048575
	or x18 ,  x15 ,  x30
	lui x30 ,  optopt&4095
	lw x15 ,  0 ( x18 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x8 )
	lui x15 ,  (optopt>>12)&1048575
	or x19 ,  x15 ,  x30
	lui x30 ,  optwhere&4095
	lw x15 ,  0 ( x19 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  12 ( x8 )
	lui x15 ,  (optwhere>>12)&1048575
	or x20 ,  x15 ,  x30
	lui x30 ,  permute_from&4095
	lw x15 ,  0 ( x20 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x8 )
	lui x15 ,  (permute_from>>12)&1048575
	or x21 ,  x15 ,  x30
	lui x30 ,  optarg&4095
	lw x15 ,  0 ( x21 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  20 ( x8 )
	lui x15 ,  (optarg>>12)&1048575
	or x22 ,  x15 ,  x30
	lui x30 ,  num_nonopts&4095
	lw x15 ,  0 ( x22 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x2 )
	lui x15 ,  (num_nonopts>>12)&1048575
	or x23 ,  x15 ,  x30
	lw x15 ,  0 ( x23 )
	sw x15 ,  32 ( x2 )
	add x15 ,  x0 ,  x13
	call getopt_internal
	lw x15 ,  8 ( x2 )
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x22 )
	lw x15 ,  4 ( x8 )
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x9 )
	lw x15 ,  8 ( x8 )
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	lw x15 ,  12 ( x8 )
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x19 )
	lw x15 ,  16 ( x8 )
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x20 )
	lw x15 ,  20 ( x8 )
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  32 ( x2 )
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x23 )
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	getopt, .Lfunc_end0-getopt
	.cfi_endproc
                                        //  -- End function
	.type	getopt_internal,@function //  -- Begin function getopt_internal
getopt_internal:                        //  @getopt_internal
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x16
	add x23 ,  x0 ,  x15
	add x19 ,  x0 ,  x14
	add x9 ,  x0 ,  x13
	add x21 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	addi x22 ,  x0 ,  -1
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x20, .LBB1_119
.LBB1_1:                                //  %entry
	beq x0, x18, .LBB1_119
.LBB1_2:                                //  %lor.lhs.false2
	bltu x0, x21, .LBB1_4
.LBB1_3:                                //  %lor.lhs.false2
	beq x0, x9, .LBB1_119
.LBB1_4:                                //  %lor.lhs.false5
	lw x15 ,  4 ( x8 )
	bge x15, x20, .LBB1_119
.LBB1_5:                                //  %lor.lhs.false7
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB1_119
.LBB1_6:                                //  %if.end
	lui x30 ,  .str&4095
	lui x27 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x27 ,  x30
	call strcmp
	lw x15 ,  4 ( x8 )
	beq x0, x10, .LBB1_117
.LBB1_7:                                //  %if.end15
	bltu x0, x15, .LBB1_9
.LBB1_8:                                //  %if.then18
	slti x15 ,  x0 ,  1
	sw x0 ,  24 ( x8 )
	sw x0 ,  20 ( x8 )
	sw x15 ,  16 ( x8 )
	sw x15 ,  4 ( x8 )
.LBB1_9:                                //  %if.end20
	beq x0, x21, .LBB1_14
.LBB1_10:                               //  %land.lhs.true22
	lbu x15 ,  0 ( x21 )
	xori x14 ,  x15 ,  45
	beq x0, x14, .LBB1_12
.LBB1_11:                               //  %land.lhs.true22
	xori x14 ,  x15 ,  43
	bltu x0, x14, .LBB1_15
.LBB1_12:                               //  %if.end37.thread
	addi x14 ,  x0 ,  45
	beq x15, x14, .LBB1_16
.LBB1_13:                               //  %if.end37.thread
	addi x24 ,  x0 ,  2
	addi x21 ,  x21 ,  1
	lbu x15 ,  0 ( x21 )
	addi x14 ,  x0 ,  58
	beq x15, x14, .LBB1_17
	jal x0, .LBB1_18
.LBB1_14:                               //  %if.end37.thread748
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call getenv
	add x21 ,  x0 ,  x0
	sltu x15 ,  x0 ,  x10
	slli x24 ,  x15 ,  1&31
	add x25 ,  x0 ,  x21
	lw x15 ,  16 ( x8 )
	xori x15 ,  x15 ,  1
	beq x0, x15, .LBB1_19
	jal x0, .LBB1_38
.LBB1_15:                               //  %if.end37
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call getenv
	sltu x15 ,  x0 ,  x10
	slli x24 ,  x15 ,  1&31
	lbu x15 ,  0 ( x21 )
	addi x14 ,  x0 ,  58
	bne x15, x14, .LBB1_18
.LBB1_17:
	addi x21 ,  x21 ,  1
.LBB1_18:                               //  %land.lhs.true40
	xori x15 ,  x15 ,  58
	sltiu x25 ,  x15 ,  1
	lw x15 ,  16 ( x8 )
	xori x15 ,  x15 ,  1
	bltu x0, x15, .LBB1_38
.LBB1_19:                               //  %if.then50
	xori x15 ,  x24 ,  1
	beq x0, x15, .LBB1_25
.LBB1_20:                               //  %if.then50
	xori x15 ,  x24 ,  2
	bltu x0, x15, .LBB1_30
.LBB1_21:                               //  %sw.bb91
	lw x15 ,  4 ( x8 )
	addi x24 ,  x0 ,  2
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x15 ,  0 ( x15 )
	beq x0, x15, .LBB1_38
.LBB1_22:                               //  %lor.lhs.false.i643
	lbu x15 ,  0 ( x15 )
	xori x14 ,  x15 ,  45
	beq x0, x14, .LBB1_38
.LBB1_23:                               //  %lor.rhs.i645
	beq x0, x23, .LBB1_119
.LBB1_24:                               //  %lor.rhs.i645
	xori x15 ,  x15 ,  43
	beq x0, x15, .LBB1_38
	jal x0, .LBB1_119
.LBB1_16:
	slti x24 ,  x0 ,  1
	addi x21 ,  x21 ,  1
	lbu x15 ,  0 ( x21 )
	addi x14 ,  x0 ,  58
	bne x15, x14, .LBB1_18
	jal x0, .LBB1_17
.LBB1_25:                               //  %sw.bb81
	lw x15 ,  4 ( x8 )
	addi x24 ,  x0 ,  2
	slli x14 ,  x15 ,  2&31
	add x14 ,  x14 ,  x18
	lw x14 ,  0 ( x14 )
	beq x0, x14, .LBB1_38
.LBB1_26:                               //  %lor.lhs.false.i652
	lbu x13 ,  0 ( x14 )
	xori x12 ,  x13 ,  45
	beq x0, x12, .LBB1_38
.LBB1_27:                               //  %lor.rhs.i654
	beq x0, x23, .LBB1_29
.LBB1_28:                               //  %lor.rhs.i654
	xori x13 ,  x13 ,  43
	beq x0, x13, .LBB1_38
.LBB1_29:                               //  %if.then86
	addi x15 ,  x15 ,  1
	slti x22 ,  x0 ,  1
	sw x14 ,  0 ( x8 )
	sw x15 ,  4 ( x8 )
	sw x22 ,  12 ( x8 )
	jal x0, .LBB1_119
.LBB1_30:                               //  %sw.bb
	lw x15 ,  4 ( x8 )
	sw x0 ,  24 ( x8 )
	slli x14 ,  x15 ,  2&31
	sw x15 ,  20 ( x8 )
	add x13 ,  x14 ,  x18
	lw x10 ,  0 ( x13 )
	beq x0, x10, .LBB1_118
.LBB1_31:                               //  %lor.lhs.false.i.lr.ph
	slti x14 ,  x0 ,  1
	addi x13 ,  x13 ,  4
	beq x0, x23, .LBB1_36
.LBB1_32:                               //  %lor.lhs.false.i.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12 ,  0 ( x10 )
	xori x11 ,  x12 ,  43
	beq x0, x11, .LBB1_37
.LBB1_33:                               //  %lor.lhs.false.i.us
                                        //    in Loop: Header=BB1_32 Depth=1
	xori x12 ,  x12 ,  45
	beq x0, x12, .LBB1_37
.LBB1_34:                               //  %while.body.us
                                        //    in Loop: Header=BB1_32 Depth=1
	lw x10 ,  0 ( x13 )
	add x12 ,  x14 ,  x15
	sw x14 ,  24 ( x8 )
	addi x14 ,  x14 ,  1
	sw x12 ,  4 ( x8 )
	addi x12 ,  x13 ,  4
	add x13 ,  x0 ,  x12
	bltu x0, x10, .LBB1_32
	jal x0, .LBB1_118
.LBB1_35:                               //  %while.body
                                        //    in Loop: Header=BB1_36 Depth=1
	lw x10 ,  0 ( x13 )
	add x12 ,  x14 ,  x15
	sw x14 ,  24 ( x8 )
	addi x14 ,  x14 ,  1
	sw x12 ,  4 ( x8 )
	addi x12 ,  x13 ,  4
	add x13 ,  x0 ,  x12
	beq x0, x10, .LBB1_118
.LBB1_36:                               //  %lor.lhs.false.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12 ,  0 ( x10 )
	xori x12 ,  x12 ,  45
	bltu x0, x12, .LBB1_35
.LBB1_37:                               //  %if.else68
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x27 ,  x30
	call strcmp
	beq x0, x10, .LBB1_111
.LBB1_38:                               //  %if.end98
	lw x15 ,  4 ( x8 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB1_119
.LBB1_39:                               //  %if.end104
	addi x26 ,  x0 ,  -1
	beq x0, x9, .LBB1_61
.LBB1_40:                               //  %land.lhs.true107
	lui x30 ,  .str&4095
	addi x12 ,  x0 ,  2
	srli x30 ,  x30 ,  12&31
	or x11 ,  x27 ,  x30
	call memcmp
	beq x0, x10, .LBB1_43
.LBB1_41:                               //  %lor.lhs.false113
	beq x0, x23, .LBB1_61
.LBB1_42:                               //  %land.lhs.true115
	lw x15 ,  4 ( x8 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x15 ,  0 ( x15 )
	lbu x15 ,  0 ( x15 )
	xori x15 ,  x15 ,  43
	bltu x0, x15, .LBB1_61
.LBB1_43:                               //  %land.lhs.true122
	lw x15 ,  16 ( x8 )
	xori x15 ,  x15 ,  1
	bltu x0, x15, .LBB1_61
.LBB1_44:                               //  %if.then126
	lw x15 ,  4 ( x8 )
	lui x30 ,  .str&4095
	addi x22 ,  x0 ,  2
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x22
	or x11 ,  x27 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x10 ,  0 ( x15 )
	call memcmp
	beq x0, x10, .LBB1_47
.LBB1_45:                               //  %if.then126.if.end134_crit_edge
	lw x22 ,  16 ( x8 )
	jal x0, .LBB1_48
.LBB1_47:                               //  %if.then132
	sw x22 ,  16 ( x8 )
.LBB1_48:                               //  %if.end134
	lw x15 ,  4 ( x8 )
	addi x11 ,  x0 ,  61
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x15 ,  0 ( x15 )
	add x10 ,  x22 ,  x15
	call strchr
	lw x15 ,  4 ( x8 )
	add x22 ,  x0 ,  x10
	slli x14 ,  x15 ,  2&31
	add x14 ,  x14 ,  x18
	beq x0, x22, .LBB1_50
.LBB1_49:                               //  %if.else150
	lw x14 ,  0 ( x14 )
	sub x13 ,  x22 ,  x14
	lw x14 ,  16 ( x8 )
	sub x23 ,  x13 ,  x14
	lw x11 ,  0 ( x9 )
	bltu x0, x11, .LBB1_51
	jal x0, .LBB1_61
.LBB1_50:                               //  %if.then142
	lw x10 ,  0 ( x14 )
	call strlen
	lw x15 ,  4 ( x8 )
	slli x14 ,  x15 ,  2&31
	add x14 ,  x14 ,  x18
	lw x14 ,  0 ( x14 )
	add x22 ,  x10 ,  x14
	lw x14 ,  16 ( x8 )
	sub x23 ,  x10 ,  x14
	lw x11 ,  0 ( x9 )
	beq x0, x11, .LBB1_61
.LBB1_51:                               //  %for.body.preheader
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	add x26 ,  x0 ,  x0
	addi x25 ,  x0 ,  -1
	add x27 ,  x0 ,  x9
.LBB1_52:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x15 ,  x15 ,  2&31
	add x12 ,  x0 ,  x23
	add x15 ,  x15 ,  x18
	lw x15 ,  0 ( x15 )
	add x10 ,  x14 ,  x15
	call memcmp
	beq x0, x10, .LBB1_54
.LBB1_53:                               //    in Loop: Header=BB1_52 Depth=1
	add x13 ,  x0 ,  x25
	lw x11 ,  16 ( x27 )
	bltu x0, x11, .LBB1_57
	jal x0, .LBB1_58
.LBB1_54:                               //  %if.then168
                                        //    in Loop: Header=BB1_52 Depth=1
	lw x10 ,  0 ( x27 )
	call strlen
	beq x23, x10, .LBB1_59
.LBB1_55:                               //  %if.else175
                                        //    in Loop: Header=BB1_52 Depth=1
	add x13 ,  x0 ,  x26
	bge x25, x0, .LBB1_120
.LBB1_56:                               //  %for.inc
                                        //    in Loop: Header=BB1_52 Depth=1
	lw x11 ,  16 ( x27 )
	beq x0, x11, .LBB1_58
.LBB1_57:                               //  %for.inc.for.body_crit_edge
                                        //    in Loop: Header=BB1_52 Depth=1
	addi x26 ,  x26 ,  1
	addi x27 ,  x27 ,  16
	lw x14 ,  16 ( x8 )
	add x25 ,  x0 ,  x13
	lw x15 ,  4 ( x8 )
	jal x0, .LBB1_52
.LBB1_58:
	add x26 ,  x0 ,  x13
.LBB1_59:                               //  %for.end
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	blt x26, x0, .LBB1_61
.LBB1_60:                               //  %if.end216.thread
	slli x15 ,  x26 ,  4&31
	add x14 ,  x0 ,  x0
	add x15 ,  x15 ,  x9
	add x21 ,  x0 ,  x14
	lw x15 ,  4 ( x15 )
	xori x13 ,  x15 ,  1
	bltu x0, x13, .LBB1_75
.LBB1_81:                               //  %sw.bb300
	lbu x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  61
	bne x15, x14, .LBB1_83
.LBB1_82:
	addi x22 ,  x22 ,  1
.LBB1_83:                               //  %sw.bb300
	lbu x15 ,  0 ( x22 )
	beq x0, x15, .LBB1_91
.LBB1_84:                               //  %if.then310
	slti x14 ,  x0 ,  1
	sw x22 ,  0 ( x8 )
	sw x14 ,  16 ( x8 )
	add x15 ,  x0 ,  x0
	xori x14 ,  x14 ,  1
	bltu x0, x24, .LBB1_89
	jal x0, .LBB1_93
.LBB1_61:                               //  %if.end216
	beq x0, x21, .LBB1_86
.LBB1_62:                               //  %if.end216
	bge x26, x0, .LBB1_86
.LBB1_63:                               //  %if.then222
	lw x15 ,  4 ( x8 )
	add x10 ,  x0 ,  x21
	lw x14 ,  16 ( x8 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x15 ,  0 ( x15 )
	add x15 ,  x14 ,  x15
	lb x11 ,  0 ( x15 )
	call strchr
	add x21 ,  x0 ,  x10
	beq x0, x21, .LBB1_67
.LBB1_64:                               //  %if.end265
	lbu x15 ,  1 ( x21 )
	xori x15 ,  x15 ,  58
	bltu x0, x15, .LBB1_72
.LBB1_65:                               //  %cond.true
	lbu x15 ,  2 ( x21 )
	addi x14 ,  x0 ,  58
	beq x15, x14, .LBB1_73
.LBB1_66:                               //  %cond.true
	slti x15 ,  x0 ,  1
	jal x0, .LBB1_74
.LBB1_67:                               //  %if.then231
	lw x15 ,  8 ( x8 )
	beq x0, x15, .LBB1_69
.LBB1_68:                               //  %if.then234
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	lw x10 ,  0 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	lw x15 ,  0 ( x9 )
	lw x11 ,  12 ( x15 )
	call fputs
	lw x15 ,  0 ( x9 )
	lui x30 ,  .str.6&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.6>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
	lw x15 ,  4 ( x8 )
	lw x14 ,  16 ( x8 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x15 ,  0 ( x15 )
	add x15 ,  x14 ,  x15
	lb x10 ,  0 ( x15 )
	lw x15 ,  0 ( x9 )
	lw x11 ,  12 ( x15 )
	call fputc
	lw x15 ,  0 ( x9 )
	lui x30 ,  .str.7&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.7>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
.LBB1_69:                               //  %if.end249
	lw x15 ,  16 ( x8 )
	addi x14 ,  x15 ,  1
	lw x15 ,  4 ( x8 )
	sw x14 ,  16 ( x8 )
	slli x13 ,  x15 ,  2&31
	add x13 ,  x13 ,  x18
	lw x13 ,  0 ( x13 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	bltu x0, x14, .LBB1_71
.LBB1_70:                               //  %if.then259
	slti x14 ,  x0 ,  1
	addi x15 ,  x15 ,  1
	sw x14 ,  16 ( x8 )
	sw x15 ,  4 ( x8 )
.LBB1_71:                               //  %if.end204
	addi x22 ,  x0 ,  63
	sw x22 ,  12 ( x8 )
	jal x0, .LBB1_119
.LBB1_72:
	add x15 ,  x0 ,  x0
	jal x0, .LBB1_74
.LBB1_73:
	addi x15 ,  x0 ,  2
.LBB1_74:                               //  %cond.end
	lb x14 ,  0 ( x21 )
	lw x13 ,  16 ( x8 )
	sw x14 ,  12 ( x8 )
	lw x14 ,  4 ( x8 )
	slli x14 ,  x14 ,  2&31
	add x14 ,  x14 ,  x18
	lw x14 ,  0 ( x14 )
	add x13 ,  x13 ,  x14
	slti x14 ,  x0 ,  1
	addi x22 ,  x13 ,  1
	xori x13 ,  x15 ,  1
	beq x0, x13, .LBB1_81
.LBB1_75:                               //  %if.end283
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB1_85
.LBB1_76:                               //  %sw.bb284
	lbu x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  61
	bne x15, x14, .LBB1_78
.LBB1_77:
	addi x22 ,  x22 ,  1
.LBB1_78:                               //  %sw.bb284
	lbu x13 ,  0 ( x22 )
	add x15 ,  x0 ,  x0
	add x14 ,  x0 ,  x15
	beq x13, x15, .LBB1_80
.LBB1_79:                               //  %sw.bb284
	add x14 ,  x0 ,  x22
.LBB1_80:                               //  %sw.bb284
	sw x14 ,  0 ( x8 )
	slti x14 ,  x0 ,  1
	sw x14 ,  16 ( x8 )
	xori x14 ,  x14 ,  1
	bltu x0, x24, .LBB1_89
.LBB1_93:                               //  %land.lhs.true385
	bltu x0, x14, .LBB1_105
.LBB1_94:                               //  %land.lhs.true389
	lw x11 ,  24 ( x8 )
	beq x0, x11, .LBB1_90
.LBB1_95:                               //  %if.then393
	lw x14 ,  20 ( x8 )
	slti x10 ,  x11 ,  2
	slli x13 ,  x14 ,  2&31
	add x12 ,  x13 ,  x18
	addi x13 ,  x15 ,  1
	bltu x0, x10, .LBB1_98
.LBB1_96:                               //  %for.body.i.i.preheader
	add x5 ,  x11 ,  x14
	srai x10 ,  x11 ,  1&31
	add x7 ,  x0 ,  x12
	slli x5 ,  x5 ,  2&31
	add x6 ,  x18 ,  x5
	add x5 ,  x0 ,  x0
	addi x6 ,  x6 ,  -4
.LBB1_97:                               //  %for.body.i.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x16 ,  0 ( x7 )
	addi x5 ,  x5 ,  1
	lw x17 ,  0 ( x6 )
	sw x17 ,  0 ( x7 )
	sw x16 ,  0 ( x6 )
	addi x7 ,  x7 ,  4
	addi x6 ,  x6 ,  -4
	blt x5, x10, .LBB1_97
.LBB1_98:                               //  %reverse_argv_elements.exit.i
	add x10 ,  x13 ,  x11
	slti x5 ,  x10 ,  2
	bltu x0, x5, .LBB1_101
.LBB1_99:                               //  %for.body.i23.i.preheader
	add x11 ,  x11 ,  x15
	srai x10 ,  x10 ,  1&31
	add x5 ,  x0 ,  x0
	add x6 ,  x0 ,  x12
	add x11 ,  x14 ,  x11
	slli x11 ,  x11 ,  2&31
	add x11 ,  x11 ,  x18
.LBB1_100:                              //  %for.body.i23.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x7 ,  0 ( x6 )
	addi x5 ,  x5 ,  1
	lw x16 ,  0 ( x11 )
	sw x16 ,  0 ( x6 )
	sw x7 ,  0 ( x11 )
	addi x6 ,  x6 ,  4
	addi x11 ,  x11 ,  -4
	blt x5, x10, .LBB1_100
.LBB1_101:                              //  %reverse_argv_elements.exit24.i
	beq x0, x15, .LBB1_103
.LBB1_102:                              //  %for.body.i13.i.preheader
	slli x15 ,  x15 ,  2&31
	lw x10 ,  0 ( x12 )
	add x15 ,  x15 ,  x12
	lw x11 ,  0 ( x15 )
	sw x11 ,  0 ( x12 )
	sw x10 ,  0 ( x15 )
.LBB1_103:                              //  %permute.exit
	add x15 ,  x14 ,  x13
	jal x0, .LBB1_104
.LBB1_85:                               //  %sw.bb362
	beq x0, x14, .LBB1_87
.LBB1_86:                               //  %if.then365
	lw x15 ,  16 ( x8 )
	add x13 ,  x0 ,  x0
	addi x14 ,  x15 ,  1
	lw x15 ,  4 ( x8 )
	sw x14 ,  16 ( x8 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x15 ,  0 ( x15 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  0 ( x15 )
	bne x15, x13, .LBB1_88
.LBB1_87:
	slti x14 ,  x0 ,  1
.LBB1_88:                               //  %if.end380
	sw x14 ,  16 ( x8 )
	sw x0 ,  0 ( x8 )
	add x15 ,  x0 ,  x0
	xori x14 ,  x14 ,  1
	beq x0, x24, .LBB1_93
.LBB1_89:                               //  %if.else402
	bltu x0, x14, .LBB1_105
.LBB1_90:                               //  %if.then406
	lw x14 ,  4 ( x8 )
	add x15 ,  x14 ,  x15
	addi x15 ,  x15 ,  1
.LBB1_104:                              //  %if.end412
	sw x15 ,  4 ( x8 )
.LBB1_105:                              //  %if.end412
	blt x26, x0, .LBB1_110
.LBB1_106:                              //  %if.then415
	beq x0, x19, .LBB1_108
.LBB1_107:                              //  %if.then418
	sw x26 ,  0 ( x19 )
.LBB1_108:                              //  %if.end419
	slli x15 ,  x26 ,  4&31
	add x15 ,  x15 ,  x9
	lw x22 ,  12 ( x15 )
	lw x15 ,  8 ( x15 )
	beq x0, x15, .LBB1_119
.LBB1_109:                              //  %if.then423
	sw x22 ,  0 ( x15 )
	add x22 ,  x0 ,  x0
	jal x0, .LBB1_119
.LBB1_110:                              //  %if.else430
	lw x22 ,  12 ( x8 )
	jal x0, .LBB1_119
.LBB1_91:                               //  %if.else313
	lw x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  1
	bge x15, x20, .LBB1_122
.LBB1_92:                               //  %if.else353
	slli x15 ,  x15 ,  2&31
	slti x14 ,  x0 ,  1
	add x15 ,  x15 ,  x18
	sw x14 ,  16 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  0 ( x8 )
	add x15 ,  x0 ,  x14
	xori x14 ,  x14 ,  1
	bltu x0, x24, .LBB1_89
	jal x0, .LBB1_93
.LBB1_111:                              //  %if.then74
	lw x15 ,  20 ( x8 )
	lw x13 ,  24 ( x8 )
	slli x14 ,  x15 ,  2&31
	add x14 ,  x14 ,  x18
	slti x11 ,  x13 ,  2
	add x12 ,  x13 ,  x15
	bltu x0, x11, .LBB1_114
.LBB1_112:                              //  %for.body.i.i667.preheader
	slli x10 ,  x12 ,  2&31
	srai x11 ,  x13 ,  1&31
	add x6 ,  x0 ,  x14
	add x5 ,  x18 ,  x10
	add x10 ,  x0 ,  x0
	addi x5 ,  x5 ,  -4
.LBB1_113:                              //  %for.body.i.i667
                                        //  =>This Inner Loop Header: Depth=1
	lw x7 ,  0 ( x6 )
	addi x10 ,  x10 ,  1
	lw x16 ,  0 ( x5 )
	sw x16 ,  0 ( x6 )
	sw x7 ,  0 ( x5 )
	addi x6 ,  x6 ,  4
	addi x5 ,  x5 ,  -4
	blt x10, x11, .LBB1_113
.LBB1_114:                              //  %reverse_argv_elements.exit.i671
	bge x0, x13, .LBB1_117
.LBB1_115:                              //  %for.body.i23.i678.preheader
	addi x13 ,  x13 ,  1
	slli x12 ,  x12 ,  2&31
	add x11 ,  x0 ,  x0
	srai x13 ,  x13 ,  1&31
	add x12 ,  x12 ,  x18
.LBB1_116:                              //  %for.body.i23.i678
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x14 )
	addi x11 ,  x11 ,  1
	lw x5 ,  0 ( x12 )
	sw x5 ,  0 ( x14 )
	sw x10 ,  0 ( x12 )
	addi x14 ,  x14 ,  4
	addi x12 ,  x12 ,  -4
	blt x11, x13, .LBB1_116
.LBB1_117:                              //  %if.then13
	addi x15 ,  x15 ,  1
.LBB1_118:                              //  %cleanup
	sw x15 ,  4 ( x8 )
.LBB1_119:                              //  %cleanup
	add x10 ,  x0 ,  x22
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.LBB1_120:                              //  %if.else179
	lw x15 ,  8 ( x8 )
	beq x0, x15, .LBB1_71
.LBB1_121:                              //  %if.then181
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	lw x10 ,  0 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	lw x15 ,  0 ( x19 )
	lw x11 ,  12 ( x15 )
	call fputs
	lw x15 ,  0 ( x19 )
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.2>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
	lw x15 ,  4 ( x8 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x18
	lw x10 ,  0 ( x15 )
	lw x15 ,  0 ( x19 )
	lw x11 ,  12 ( x15 )
	call fputs
	lw x15 ,  0 ( x19 )
	lui x30 ,  .str.3&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.3>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
	slli x15 ,  x25 ,  4&31
	add x15 ,  x15 ,  x9
	lw x10 ,  0 ( x15 )
	lw x15 ,  0 ( x19 )
	lw x11 ,  12 ( x15 )
	call fputs
	lw x15 ,  0 ( x19 )
	lui x30 ,  .str.4&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.4>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
	lw x15 ,  0 ( x19 )
	lw x10 ,  0 ( x27 )
	lw x11 ,  12 ( x15 )
	call fputs
	lw x15 ,  0 ( x19 )
	lui x30 ,  .str.5&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.5>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
	jal x0, .LBB1_71
.LBB1_122:                              //  %if.then318
	lw x14 ,  8 ( x8 )
	beq x0, x14, .LBB1_129
.LBB1_123:                              //  %if.then321
	lui x30 ,  _impure_ptr&4095
	lw x10 ,  0 ( x18 )
	lui x18 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x18 ,  x30
	lw x15 ,  0 ( x19 )
	lw x11 ,  12 ( x15 )
	call fputs
	lw x15 ,  0 ( x19 )
	lui x30 ,  .str.8&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.8>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	blt x26, x0, .LBB1_126
.LBB1_124:                              //  %if.then329
	or x19 ,  x18 ,  x30
	addi x10 ,  x0 ,  45
	lw x15 ,  0 ( x19 )
	lw x11 ,  12 ( x15 )
	call fputc
	slli x15 ,  x26 ,  4&31
	add x15 ,  x15 ,  x9
	lw x10 ,  0 ( x15 )
	lw x15 ,  0 ( x19 )
	lw x11 ,  12 ( x15 )
	call fputs
	add x15 ,  x0 ,  x0
	beq x25, x15, .LBB1_127
.LBB1_125:                              //  %if.then329
	addi x15 ,  x0 ,  58
	jal x0, .LBB1_128
.LBB1_126:                              //  %if.else339
	or x15 ,  x18 ,  x30
	lb x10 ,  0 ( x21 )
	lw x15 ,  0 ( x15 )
	lw x11 ,  12 ( x15 )
	call fputc
	lb x15 ,  0 ( x21 )
	jal x0, .LBB1_128
.LBB1_127:
	addi x15 ,  x0 ,  63
.LBB1_128:                              //  %if.end345
	lui x30 ,  _impure_ptr&4095
	sw x15 ,  12 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	lui x30 ,  .str.7&4095
	lw x15 ,  0 ( x15 )
	srli x30 ,  x30 ,  12&31
	lw x11 ,  12 ( x15 )
	lui x15 ,  (.str.7>>12)&1048575
	or x10 ,  x15 ,  x30
	call fputs
	lw x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  1
.LBB1_129:                              //  %if.end348
	add x14 ,  x0 ,  x0
	beq x25, x14, .LBB1_131
.LBB1_130:                              //  %if.end348
	addi x22 ,  x0 ,  58
	jal x0, .LBB1_118
.LBB1_131:
	addi x22 ,  x0 ,  63
	jal x0, .LBB1_118
.Lfunc_end1:
	.size	getopt_internal, .Lfunc_end1-getopt_internal
	.cfi_endproc
                                        //  -- End function
	.globl	getopt_long             //  -- Begin function getopt_long
	.type	getopt_long,@function
getopt_long:                            //  @getopt_long
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	lui x30 ,  optind&4095
	lui x15 ,  (optind>>12)&1048575
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	addi x8 ,  x2 ,  8
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x16 ,  x0 ,  x8
	or x9 ,  x15 ,  x30
	lui x30 ,  opterr&4095
	lw x15 ,  0 ( x9 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x8 )
	lui x15 ,  (opterr>>12)&1048575
	or x18 ,  x15 ,  x30
	lui x30 ,  optopt&4095
	lw x15 ,  0 ( x18 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x8 )
	lui x15 ,  (optopt>>12)&1048575
	or x19 ,  x15 ,  x30
	lui x30 ,  optwhere&4095
	lw x15 ,  0 ( x19 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  12 ( x8 )
	lui x15 ,  (optwhere>>12)&1048575
	or x20 ,  x15 ,  x30
	lui x30 ,  permute_from&4095
	lw x15 ,  0 ( x20 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x8 )
	lui x15 ,  (permute_from>>12)&1048575
	or x21 ,  x15 ,  x30
	lui x30 ,  optarg&4095
	lw x15 ,  0 ( x21 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  20 ( x8 )
	lui x15 ,  (optarg>>12)&1048575
	or x22 ,  x15 ,  x30
	lui x30 ,  num_nonopts&4095
	lw x15 ,  0 ( x22 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x2 )
	lui x15 ,  (num_nonopts>>12)&1048575
	or x23 ,  x15 ,  x30
	lw x15 ,  0 ( x23 )
	sw x15 ,  32 ( x2 )
	add x15 ,  x0 ,  x0
	call getopt_internal
	lw x15 ,  8 ( x2 )
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x22 )
	lw x15 ,  4 ( x8 )
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x9 )
	lw x15 ,  8 ( x8 )
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	lw x15 ,  12 ( x8 )
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x19 )
	lw x15 ,  16 ( x8 )
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x20 )
	lw x15 ,  20 ( x8 )
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  32 ( x2 )
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x23 )
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	getopt_long, .Lfunc_end2-getopt_long
	.cfi_endproc
                                        //  -- End function
	.globl	getopt_long_only        //  -- Begin function getopt_long_only
	.type	getopt_long_only,@function
getopt_long_only:                       //  @getopt_long_only
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	lui x30 ,  optind&4095
	lui x15 ,  (optind>>12)&1048575
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	addi x8 ,  x2 ,  8
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x16 ,  x0 ,  x8
	or x9 ,  x15 ,  x30
	lui x30 ,  opterr&4095
	lw x15 ,  0 ( x9 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x8 )
	lui x15 ,  (opterr>>12)&1048575
	or x18 ,  x15 ,  x30
	lui x30 ,  optopt&4095
	lw x15 ,  0 ( x18 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x8 )
	lui x15 ,  (optopt>>12)&1048575
	or x19 ,  x15 ,  x30
	lui x30 ,  optwhere&4095
	lw x15 ,  0 ( x19 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  12 ( x8 )
	lui x15 ,  (optwhere>>12)&1048575
	or x20 ,  x15 ,  x30
	lui x30 ,  permute_from&4095
	lw x15 ,  0 ( x20 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x8 )
	lui x15 ,  (permute_from>>12)&1048575
	or x21 ,  x15 ,  x30
	lui x30 ,  optarg&4095
	lw x15 ,  0 ( x21 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  20 ( x8 )
	lui x15 ,  (optarg>>12)&1048575
	or x22 ,  x15 ,  x30
	lui x30 ,  num_nonopts&4095
	lw x15 ,  0 ( x22 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x2 )
	lui x15 ,  (num_nonopts>>12)&1048575
	or x23 ,  x15 ,  x30
	lw x15 ,  0 ( x23 )
	sw x15 ,  32 ( x2 )
	slti x15 ,  x0 ,  1
	call getopt_internal
	lw x15 ,  8 ( x2 )
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x22 )
	lw x15 ,  4 ( x8 )
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x9 )
	lw x15 ,  8 ( x8 )
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	lw x15 ,  12 ( x8 )
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x19 )
	lw x15 ,  16 ( x8 )
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x20 )
	lw x15 ,  20 ( x8 )
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  32 ( x2 )
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x23 )
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	getopt_long_only, .Lfunc_end3-getopt_long_only
	.cfi_endproc
                                        //  -- End function
	.globl	__getopt_r              //  -- Begin function __getopt_r
	.type	__getopt_r,@function
__getopt_r:                             //  @__getopt_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x16 ,  x0 ,  x13
	add x13 ,  x0 ,  x0
	add x14 ,  x0 ,  x13
	add x15 ,  x0 ,  x13
	jal x0, getopt_internal
.Lfunc_end4:
	.size	__getopt_r, .Lfunc_end4-__getopt_r
	.cfi_endproc
                                        //  -- End function
	.globl	__getopt_long_r         //  -- Begin function __getopt_long_r
	.type	__getopt_long_r,@function
__getopt_long_r:                        //  @__getopt_long_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x16 ,  x0 ,  x15
	add x15 ,  x0 ,  x0
	jal x0, getopt_internal
.Lfunc_end5:
	.size	__getopt_long_r, .Lfunc_end5-__getopt_long_r
	.cfi_endproc
                                        //  -- End function
	.globl	__getopt_long_only_r    //  -- Begin function __getopt_long_only_r
	.type	__getopt_long_only_r,@function
__getopt_long_only_r:                   //  @__getopt_long_only_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x16 ,  x0 ,  x15
	slti x15 ,  x0 ,  1
	jal x0, getopt_internal
.Lfunc_end6:
	.size	__getopt_long_only_r, .Lfunc_end6-__getopt_long_only_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	optarg,@object          //  @optarg
	.bss
	.globl	optarg
	.p2align	2
optarg:
	.long	0
	.size	optarg, 4

	.address_space	0
	.type	optind,@object          //  @optind
	.globl	optind
	.p2align	2
optind:
	.long	0                       //  0x0
	.size	optind, 4

	.address_space	0
	.type	opterr,@object          //  @opterr
	.data
	.globl	opterr
	.p2align	2
opterr:
	.long	1                       //  0x1
	.size	opterr, 4

	.address_space	0
	.type	optopt,@object          //  @optopt
	.globl	optopt
	.p2align	2
optopt:
	.long	63                      //  0x3f
	.size	optopt, 4

	.address_space	0
	.type	optwhere,@object        //  @optwhere
	.local	optwhere
	.comm	optwhere,4,4
	.address_space	0
	.type	permute_from,@object    //  @permute_from
	.local	permute_from
	.comm	permute_from,4,4
	.address_space	0
	.type	num_nonopts,@object     //  @num_nonopts
	.local	num_nonopts
	.comm	num_nonopts,4,4
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"--"
	.size	.str, 3

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"POSIXLY_CORRECT"
	.size	.str.1, 16

	.address_space	0
	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	": option `"
	.size	.str.2, 11

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"' is ambiguous (could be `--"
	.size	.str.3, 29

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"' or `--"
	.size	.str.4, 9

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"')\n"
	.size	.str.5, 4

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	": invalid option -- `-"
	.size	.str.6, 23

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"'\n"
	.size	.str.7, 3

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	": argument required for option `-"
	.size	.str.8, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
