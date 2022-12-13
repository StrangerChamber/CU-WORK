	.text
	.file	"vfiwprintf.c"
	.globl	vfiwprintf              //  -- Begin function vfiwprintf
	.type	vfiwprintf,@function
vfiwprintf:                             //  @vfiwprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _vfiwprintf_r
.Lfunc_end0:
	.size	vfiwprintf, .Lfunc_end0-vfiwprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiwprintf_r           //  -- Begin function _vfiwprintf_r
	.type	_vfiwprintf_r,@function
_vfiwprintf_r:                          //  @_vfiwprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1256
	.cfi_adjust_cfa_offset 1256
	sw x18 ,  1244 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  1236 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  1228 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26 ,  1212 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 26, -44
	add x18 ,  x0 ,  x13
	add x22 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x26 ,  x0 ,  x10
	sw x1 ,  1252 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  1248 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  1240 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  1232 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  1224 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  1220 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  1216 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27 ,  1208 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  1204 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x18 ,  72 ( x2 )
	beq x0, x26, .LBB1_2
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x26 )
	bltu x0, x15, .LBB1_2
.LBB1_283:                              //  %land.lhs.true
	jal x0, .LBB1_267
.LBB1_2:                                //  %if.end
	lhu x15 ,  12 ( x20 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_4
.LBB1_3:                                //  %if.then12
	lw x13 ,  100 ( x20 )
	or x15 ,  x14 ,  x15
	sh x15 ,  12 ( x20 )
	or x13 ,  x14 ,  x13
	sw x13 ,  100 ( x20 )
.LBB1_4:                                //  %do.end20
	andi x14 ,  x15 ,  8
	beq x0, x14, .LBB1_13
.LBB1_5:                                //  %lor.lhs.false
	lw x14 ,  16 ( x20 )
	beq x0, x14, .LBB1_13
.LBB1_6:                                //  %if.end42
	andi x14 ,  x15 ,  26
	xori x14 ,  x14 ,  10
	bltu x0, x14, .LBB1_15
.LBB1_7:                                //  %land.lhs.true48
	lh x14 ,  14 ( x20 )
	blt x14, x0, .LBB1_15
.LBB1_8:                                //  %if.then52
	lui x30 ,  65533&4095
	lui x13 ,  (65533>>12)&1048575
	addi x11 ,  x2 ,  1100
	add x10 ,  x0 ,  x26
	add x12 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	sh x14 ,  14 ( x11 )
	sw x0 ,  24 ( x11 )
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	add x13 ,  x0 ,  x18
	sh x15 ,  12 ( x11 )
	lw x15 ,  100 ( x20 )
	sw x15 ,  100 ( x11 )
	lw x15 ,  28 ( x20 )
	sw x15 ,  28 ( x11 )
	lw x15 ,  36 ( x20 )
	sw x15 ,  36 ( x11 )
	addi x15 ,  x2 ,  76
	sw x15 ,  16 ( x11 )
	sw x15 ,  1100 ( x2 )
	addi x15 ,  x0 ,  1024
	sw x15 ,  8 ( x11 )
	sw x15 ,  1120 ( x2 )
	call _vfiwprintf_r
	add x27 ,  x0 ,  x10
	blt x27, x0, .LBB1_11
.LBB1_9:                                //  %land.lhs.true.i
	addi x11 ,  x2 ,  1100
	add x10 ,  x0 ,  x26
	call _fflush_r
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB1_11
.LBB1_10:                               //  %land.lhs.true.i
	addi x27 ,  x0 ,  -1
.LBB1_11:                               //  %if.end.i
	lbu x15 ,  1112 ( x2 )
	andi x15 ,  x15 ,  64
	bltu x0, x15, .LBB1_12
.LBB1_284:                              //  %if.end.i
	jal x0, .LBB1_278
.LBB1_12:                               //  %if.then15.i
	lh x15 ,  12 ( x20 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x20 )
	jal x0, .LBB1_278
.LBB1_13:                               //  %land.lhs.true27
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	call __swsetup_r
	beq x0, x10, .LBB1_14
.LBB1_285:                              //  %land.lhs.true27
	jal x0, .LBB1_277
.LBB1_14:                               //  %land.lhs.true27.if.end42_crit_edge
	lhu x15 ,  12 ( x20 )
	andi x14 ,  x15 ,  26
	xori x14 ,  x14 ,  10
	beq x0, x14, .LBB1_7
.LBB1_15:                               //  %if.end66
	add x8 ,  x0 ,  x0
	addi x15 ,  x2 ,  1100
	addi x14 ,  x2 ,  76
	addi x19 ,  x2 ,  56
	addi x25 ,  x0 ,  -1
	addi x21 ,  x0 ,  10
	addi x24 ,  x0 ,  122
	sw x0 ,  60 ( x2 )
	sw x26 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  56 ( x2 )
	add x27 ,  x0 ,  x8
	addi x15 ,  x14 ,  400
	sw x0 ,  8 ( x19 )
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
.LBB1_16:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_19 Depth 2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_147 Depth 3
                                        //        Child Loop BB1_169 Depth 3
                                        //        Child Loop BB1_155 Depth 3
                                        //        Child Loop BB1_160 Depth 3
                                        //        Child Loop BB1_189 Depth 3
                                        //        Child Loop BB1_204 Depth 3
                                        //        Child Loop BB1_222 Depth 3
                                        //        Child Loop BB1_232 Depth 3
                                        //        Child Loop BB1_246 Depth 3
                                        //      Child Loop BB1_17 Depth 2
	addi x9 ,  x2 ,  1100
	add x18 ,  x0 ,  x22
	lw x15 ,  0 ( x18 )
	beq x0, x15, .LBB1_19
.LBB1_17:                               //  %while.cond
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB1_19
.LBB1_18:                               //  %while.body
                                        //    in Loop: Header=BB1_17 Depth=2
	addi x18 ,  x18 ,  4
	lw x15 ,  0 ( x18 )
	bltu x0, x15, .LBB1_17
.LBB1_19:                               //  %while.end
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_147 Depth 3
                                        //        Child Loop BB1_169 Depth 3
                                        //        Child Loop BB1_155 Depth 3
                                        //        Child Loop BB1_160 Depth 3
                                        //        Child Loop BB1_189 Depth 3
                                        //        Child Loop BB1_204 Depth 3
                                        //        Child Loop BB1_222 Depth 3
                                        //        Child Loop BB1_232 Depth 3
                                        //        Child Loop BB1_246 Depth 3
	sub x20 ,  x18 ,  x22
	beq x0, x20, .LBB1_24
.LBB1_20:                               //  %if.then73
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x19 )
	sw x20 ,  4 ( x9 )
	sw x22 ,  0 ( x9 )
	add x15 ,  x20 ,  x15
	sw x15 ,  8 ( x19 )
	lw x15 ,  60 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_22
.LBB1_21:                               //  %if.then80
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  36 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __sprint_r
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_23
	jal x0, .LBB1_279
.LBB1_22:                               //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
.LBB1_23:                               //  %if.end86
                                        //    in Loop: Header=BB1_19 Depth=2
	srai x15 ,  x20 ,  2&31
	add x27 ,  x27 ,  x15
	lw x15 ,  0 ( x18 )
.LBB1_24:                               //  %if.end88
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB1_25
.LBB1_286:                              //  %if.end88
	jal x0, .LBB1_268
.LBB1_25:                               //  %if.end92
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x18 ,  4
	add x23 ,  x0 ,  x8
	sw x8 ,  44 ( x2 )              //  4-byte Folded Spill
	sw x0 ,  68 ( x2 )
	sw x25 ,  40 ( x2 )             //  4-byte Folded Spill
.LBB1_26:                               //  %rflag
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	lw x18 ,  0 ( x15 )
	addi x22 ,  x15 ,  4
.LBB1_27:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	addi x15 ,  x18 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB1_30
.LBB1_28:                               //  %do.body152.preheader
                                        //    in Loop: Header=BB1_27 Depth=4
	add x23 ,  x0 ,  x8
.LBB1_29:                               //  %do.body152
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x21
	call __mulsi3
	add x15 ,  x10 ,  x18
	lw x18 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x23 ,  x15 ,  -48
	addi x15 ,  x18 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB1_29
	jal x0, .LBB1_27
.LBB1_37:                               //    in Loop: Header=BB1_30 Depth=5
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	sw x10 ,  40 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x18 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_28
.LBB1_30:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB1_34 Depth 6
	bltu x24, x18, .LBB1_114
.LBB1_31:                               //  %reswitch
                                        //    in Loop: Header=BB1_30 Depth=5
	lui x30 ,  JTI1_0&4095
	lui x14 ,  (JTI1_0>>12)&1048575
	slli x15 ,  x18 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_32:                               //  %sw.bb123
                                        //    in Loop: Header=BB1_30 Depth=5
	lw x18 ,  0 ( x22 )
	addi x15 ,  x22 ,  4
	xori x14 ,  x18 ,  42
	beq x0, x14, .LBB1_63
.LBB1_33:                               //  %while.cond134.preheader
                                        //    in Loop: Header=BB1_30 Depth=5
	addi x20 ,  x18 ,  -48
	add x22 ,  x0 ,  x15
	add x10 ,  x0 ,  x8
	addi x14 ,  x0 ,  9
	bltu x14, x20, .LBB1_37
.LBB1_34:                               //  %while.body138
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //            Parent Loop BB1_30 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	add x11 ,  x0 ,  x21
	call __mulsi3
	lw x18 ,  0 ( x22 )
	add x10 ,  x10 ,  x20
	addi x22 ,  x22 ,  4
	addi x20 ,  x18 ,  -48
	sltiu x15 ,  x20 ,  10
	bltu x0, x15, .LBB1_34
.LBB1_35:                               //  %while.end143
                                        //    in Loop: Header=BB1_30 Depth=5
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	sw x25 ,  40 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB1_27
.LBB1_36:                               //  %while.end143.thread
                                        //    in Loop: Header=BB1_30 Depth=5
	sw x10 ,  40 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x18 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_28
	jal x0, .LBB1_30
.LBB1_38:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  32
	jal x0, .LBB1_54
.LBB1_39:                               //  %sw.bb109
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x14 ,  68 ( x2 )
	add x15 ,  x0 ,  x22
	bltu x0, x14, .LBB1_26
.LBB1_40:                               //  %if.then111
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x15 ,  x0 ,  32
	jal x0, .LBB1_51
.LBB1_41:                               //  %sw.bb113
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  1
	jal x0, .LBB1_54
.LBB1_42:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10 ,  x0 ,  x26
	call _localeconv_r
	lw x15 ,  4 ( x10 )
	add x10 ,  x0 ,  x26
	lb x18 ,  0 ( x15 )
	call _localeconv_r
	lw x15 ,  8 ( x10 )
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x22
	beq x0, x18, .LBB1_26
.LBB1_43:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x22
	beq x0, x14, .LBB1_26
.LBB1_44:                               //  %land.lhs.true103
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  0 ( x15 )
	beq x15, x8, .LBB1_46
.LBB1_45:                               //  %land.lhs.true103
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  1024
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
.LBB1_46:                               //  %land.lhs.true103
                                        //    in Loop: Header=BB1_26 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_47:                               //  %sw.bb115
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x23 ,  0 ( x15 )
	add x15 ,  x0 ,  x22
	bge x23, x0, .LBB1_26
.LBB1_48:                               //  %if.end119
                                        //    in Loop: Header=BB1_26 Depth=3
	sub x23 ,  x0 ,  x23
.LBB1_49:                               //  %sw.bb120.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  4
	jal x0, .LBB1_54
.LBB1_50:                               //  %sw.bb122
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x15 ,  x0 ,  43
.LBB1_51:                               //  %rflag
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x15 ,  68 ( x2 )
.LBB1_52:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_53:                               //  %sw.bb149
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  128
.LBB1_54:                               //  %rflag
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_55:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB1_60
.LBB1_56:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x14 ,  x0 ,  64
	jal x0, .LBB1_59
.LBB1_57:                               //  %sw.bb170
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB1_61
.LBB1_58:                               //  %sw.bb170
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x14 ,  x0 ,  16
.LBB1_59:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_62
.LBB1_60:                               //    in Loop: Header=BB1_26 Depth=3
	addi x15 ,  x22 ,  4
	addi x14 ,  x0 ,  512
	jal x0, .LBB1_62
.LBB1_61:                               //    in Loop: Header=BB1_26 Depth=3
	addi x15 ,  x22 ,  4
	addi x14 ,  x0 ,  32
.LBB1_62:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x13 ,  44 ( x2 )             //  4-byte Folded Reload
	or x13 ,  x13 ,  x14
	sw x13 ,  44 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_26
.LBB1_63:                               //  %if.then127
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x14 ,  72 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  72 ( x2 )
	lw x14 ,  0 ( x14 )
	blt x25, x14, .LBB1_65
.LBB1_64:                               //  %if.then127
                                        //    in Loop: Header=BB1_26 Depth=3
	add x14 ,  x0 ,  x25
.LBB1_65:                               //  %if.then127
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x14 ,  40 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_26
.LBB1_66:                               //  %sw.bb248
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x14 ,  32
	bltu x0, x15, .LBB1_71
.LBB1_67:                               //  %if.else254
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x14 ,  16
	bltu x0, x15, .LBB1_70
.LBB1_68:                               //  %if.else259
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x14 ,  64
	bltu x0, x15, .LBB1_72
.LBB1_69:                               //  %if.else265
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x14 ,  512
	bltu x0, x15, .LBB1_73
.LBB1_70:                               //  %if.then257
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x15 ,  0 ( x15 )
	sw x27 ,  0 ( x15 )
	add x18 ,  x0 ,  x22
	lw x15 ,  0 ( x18 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_71:                               //  %if.then251
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	srai x14 ,  x27 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x27 ,  0 ( x15 )
	add x18 ,  x0 ,  x22
	lw x15 ,  0 ( x18 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_72:                               //  %if.then262
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x27 ,  0 ( x15 )
	add x18 ,  x0 ,  x22
	lw x15 ,  0 ( x18 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_73:                               //  %if.then268
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x27 ,  0 ( x15 )
	add x18 ,  x0 ,  x22
	lw x15 ,  0 ( x18 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_74:                               //  %sw.bb185
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x10 ,  0 ( x15 )
	andi x15 ,  x26 ,  16
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_107
.LBB1_75:                               //  %sw.bb185
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x15 ,  x18 ,  99
	bltu x0, x15, .LBB1_107
.LBB1_76:                               //  %if.then192
                                        //    in Loop: Header=BB1_19 Depth=2
	call btowc
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_108
	jal x0, .LBB1_280
.LBB1_77:                               //  %sw.bb319
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
	sw x0 ,  68 ( x2 )
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	beq x0, x26, .LBB1_115
.LBB1_78:                               //  %if.else330
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  16
	bltu x0, x15, .LBB1_118
.LBB1_79:                               //  %if.else330
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x15 ,  x18 ,  83
	beq x0, x15, .LBB1_118
.LBB1_80:                               //  %if.then336
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	blt x18, x0, .LBB1_183
.LBB1_81:                               //  %if.then339
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call memchr
	beq x10, x8, .LBB1_184
.LBB1_82:                               //  %if.then339
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x18 ,  x10 ,  x26
	jal x0, .LBB1_184
.LBB1_83:                               //  %sw.bb208
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x13 ,  32
	bltu x0, x15, .LBB1_109
.LBB1_84:                               //  %cond.false213
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  16
	bltu x0, x15, .LBB1_123
.LBB1_85:                               //  %cond.false218
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  64
	bltu x0, x15, .LBB1_132
.LBB1_86:                               //  %cond.false225
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
	andi x15 ,  x13 ,  512
	beq x0, x15, .LBB1_124
.LBB1_87:                               //  %cond.true228
                                        //    in Loop: Header=BB1_19 Depth=2
	slli x15 ,  x26 ,  24&31
	srai x26 ,  x15 ,  24&31
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	bge x27, x0, .LBB1_110
	jal x0, .LBB1_125
.LBB1_88:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	jal x0, .LBB1_101
.LBB1_89:                               //  %sw.bb277
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x13 ,  32
	bltu x0, x15, .LBB1_128
.LBB1_90:                               //  %cond.false282
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  16
	bltu x0, x15, .LBB1_133
.LBB1_91:                               //  %cond.false287
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  64
	bltu x0, x15, .LBB1_262
.LBB1_92:                               //  %cond.false294
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	andi x14 ,  x13 ,  512
	lw x26 ,  0 ( x15 )
	beq x14, x8, .LBB1_263
.LBB1_93:                               //  %cond.false294
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x26 ,  x26 ,  255
	jal x0, .LBB1_263
.LBB1_94:                               //  %sw.bb313
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	lui x30 ,  .str&4095
	add x27 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
	addi x15 ,  x0 ,  120
	sw x15 ,  52 ( x2 )
	addi x15 ,  x0 ,  48
	sw x15 ,  48 ( x2 )
	lui x15 ,  (.str>>12)&1048575
	or x24 ,  x15 ,  x30
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  2
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x0 ,  2
	sw x0 ,  68 ( x2 )
	blt x25, x18, .LBB1_138
	jal x0, .LBB1_139
.LBB1_95:                               //  %sw.bb405
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x13 ,  32
	bltu x0, x15, .LBB1_129
.LBB1_96:                               //  %cond.false410
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  16
	bltu x0, x15, .LBB1_134
.LBB1_97:                               //  %cond.false415
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  64
	bltu x0, x15, .LBB1_265
.LBB1_98:                               //  %cond.false422
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	andi x14 ,  x13 ,  512
	lw x26 ,  0 ( x15 )
	beq x14, x8, .LBB1_266
.LBB1_99:                               //  %cond.false422
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x26 ,  x26 ,  255
	jal x0, .LBB1_266
.LBB1_100:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
.LBB1_101:                              //  %hex
                                        //    in Loop: Header=BB1_19 Depth=2
	srli x30 ,  x30 ,  12&31
	lw x13 ,  44 ( x2 )             //  4-byte Folded Reload
	or x24 ,  x15 ,  x30
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x13 ,  32
	bltu x0, x15, .LBB1_111
.LBB1_103:                              //  %cond.false446
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  16
	bltu x0, x15, .LBB1_130
.LBB1_104:                              //  %cond.false451
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  64
	bltu x0, x15, .LBB1_135
.LBB1_105:                              //  %cond.false458
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	andi x14 ,  x13 ,  512
	lw x26 ,  0 ( x15 )
	beq x14, x8, .LBB1_131
.LBB1_106:                              //  %cond.false458
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x26 ,  x26 ,  255
	add x27 ,  x0 ,  x8
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB1_112
	jal x0, .LBB1_136
.LBB1_107:                              //    in Loop: Header=BB1_19 Depth=2
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
.LBB1_108:                              //  %if.end206
                                        //    in Loop: Header=BB1_19 Depth=2
	add x18 ,  x0 ,  x8
	sw x10 ,  76 ( x2 )
	sw x0 ,  80 ( x2 )
	sw x0 ,  68 ( x2 )
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	slti x27 ,  x0 ,  1
	addi x25 ,  x2 ,  76
	add x15 ,  x0 ,  x18
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x18 ,  40 ( x2 )             //  4-byte Folded Spill
	bge x27, x18, .LBB1_196
	jal x0, .LBB1_197
.LBB1_109:                              //  %cond.true211
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  72 ( x2 )
	lw x27 ,  4 ( x15 )
	blt x27, x0, .LBB1_125
.LBB1_110:                              //    in Loop: Header=BB1_19 Depth=2
	slti x15 ,  x0 ,  1
	blt x25, x18, .LBB1_138
	jal x0, .LBB1_139
.LBB1_111:                              //  %cond.true444
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  72 ( x2 )
	lw x27 ,  4 ( x15 )
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	beq x0, x15, .LBB1_136
.LBB1_112:                              //  %cond.end474
                                        //    in Loop: Header=BB1_19 Depth=2
	or x15 ,  x27 ,  x26
	beq x0, x15, .LBB1_136
.LBB1_113:                              //  %if.then481
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  48
	sw x18 ,  52 ( x2 )
	sw x15 ,  48 ( x2 )
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  2
	jal x0, .LBB1_137
.LBB1_114:                              //  %if.end588
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x27 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x18 ,  76 ( x2 )
	add x18 ,  x0 ,  x8
	slti x27 ,  x0 ,  1
	addi x25 ,  x2 ,  76
	sw x0 ,  68 ( x2 )
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB1_260
.LBB1_115:                              //  %if.then323
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x27 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	bltu x27, x15, .LBB1_117
.LBB1_116:                              //  %if.then323
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x27 ,  x0 ,  6
.LBB1_117:                              //  %if.then323
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x18 ,  x0 ,  x8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	jal x0, .LBB1_260
.LBB1_118:                              //  %if.else381
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	blt x18, x0, .LBB1_191
.LBB1_119:                              //  %if.then384
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call wmemchr
	beq x0, x10, .LBB1_258
.LBB1_120:                              //  %if.then389
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x15 ,  x10 ,  x26
	srai x15 ,  x15 ,  2&31
	blt x18, x15, .LBB1_122
.LBB1_121:                              //  %if.then389
                                        //    in Loop: Header=BB1_19 Depth=2
	add x18 ,  x0 ,  x15
.LBB1_122:                              //  %if.then389
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27 ,  x0 ,  x18
	jal x0, .LBB1_192
.LBB1_123:                              //  %cond.true216
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
.LBB1_124:                              //  %cond.end238
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	bge x27, x0, .LBB1_110
.LBB1_125:                              //  %if.then498.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x25, x18, .LBB1_127
.LBB1_126:                              //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  -129
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
.LBB1_127:                              //  %if.then498.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  68 ( x2 )
	sltu x15 ,  x0 ,  x26
	sub x26 ,  x0 ,  x26
	add x15 ,  x15 ,  x27
	sub x27 ,  x0 ,  x15
	jal x0, .LBB1_149
.LBB1_128:                              //  %cond.true280
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  72 ( x2 )
	lw x27 ,  4 ( x15 )
	jal x0, .LBB1_264
.LBB1_129:                              //  %cond.true408
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  72 ( x2 )
	lw x27 ,  4 ( x15 )
	slti x15 ,  x0 ,  1
	sw x0 ,  68 ( x2 )
	blt x25, x18, .LBB1_138
	jal x0, .LBB1_139
.LBB1_130:                              //  %cond.true449
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
.LBB1_131:                              //  %cond.end471
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27 ,  x0 ,  x8
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB1_112
	jal x0, .LBB1_136
.LBB1_132:                              //  %cond.true221
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x26 ,  x15 ,  16&31
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	bge x27, x0, .LBB1_110
	jal x0, .LBB1_125
.LBB1_133:                              //  %cond.true285
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
	jal x0, .LBB1_263
.LBB1_134:                              //  %cond.true413
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
	jal x0, .LBB1_266
.LBB1_135:                              //  %cond.true454
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lhu x26 ,  0 ( x15 )
	add x27 ,  x0 ,  x8
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB1_112
.LBB1_136:                              //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
.LBB1_137:                              //  %if.end485
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  -1025
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x0 ,  2
	sw x0 ,  68 ( x2 )
	bge x25, x18, .LBB1_139
.LBB1_138:                              //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x14 ,  -129
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
.LBB1_139:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x18, .LBB1_144
.LBB1_140:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	or x14 ,  x27 ,  x26
	bltu x0, x14, .LBB1_144
.LBB1_141:                              //  %if.else567
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x15, .LBB1_157
.LBB1_142:                              //  %if.else567
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x26 ,  1
	beq x0, x15, .LBB1_158
.LBB1_143:                              //  %if.then574
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  48
	addi x25 ,  x2 ,  472
	sw x15 ,  472 ( x2 )
	jal x0, .LBB1_195
.LBB1_144:                              //  %if.then498
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, x15, .LBB1_159
.LBB1_145:                              //  %if.then498
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB1_149
.LBB1_146:                              //  %if.then498
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB1_164
.LBB1_147:                              //  %do.body558
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x15 ,  x26 ,  15
	slli x14 ,  x27 ,  28&31
	srli x27 ,  x27 ,  4&31
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x24
	lw x15 ,  0 ( x15 )
	sw x15 ,  -4 ( x25 )
	srli x15 ,  x26 ,  4&31
	addi x25 ,  x25 ,  -4
	or x26 ,  x14 ,  x15
	or x15 ,  x27 ,  x26
	bltu x0, x15, .LBB1_147
.LBB1_148:                              //    in Loop: Header=BB1_19 Depth=2
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_195
.LBB1_149:                              //  %sw.bb517
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x27, x8, .LBB1_165
.LBB1_150:                              //  %sw.bb517
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x0 ,  x8
	bltu x0, x15, .LBB1_166
.LBB1_151:                              //  %do.body525.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x15 ,  1024
	bltu x0, x15, .LBB1_167
.LBB1_152:                              //  %do.body525.us.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_155
.LBB1_153:                              //  %do.body525.us
                                        //    in Loop: Header=BB1_155 Depth=3
	sltu x15 ,  x0 ,  x27
.LBB1_154:                              //  %do.body525.us
                                        //    in Loop: Header=BB1_155 Depth=3
	sub x14 ,  x26 ,  x10
	add x26 ,  x0 ,  x18
	add x27 ,  x0 ,  x24
	ori x14 ,  x14 ,  48
	sw x14 ,  -4 ( x25 )
	addi x25 ,  x25 ,  -4
	beq x0, x15, .LBB1_182
.LBB1_155:                              //  %do.body525.us
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	call __udivdi3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	add x18 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __muldi3
	bne x27, x8, .LBB1_153
.LBB1_156:                              //    in Loop: Header=BB1_155 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x26
	jal x0, .LBB1_154
.LBB1_157:                              //    in Loop: Header=BB1_19 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_195
.LBB1_158:                              //    in Loop: Header=BB1_19 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_195
.LBB1_159:                              //  %do.body501.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x25 ,  x2 ,  472
.LBB1_160:                              //  %do.body501
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	slli x14 ,  x27 ,  29&31
	srli x15 ,  x26 ,  3&31
	srli x27 ,  x27 ,  3&31
	or x14 ,  x14 ,  x15
	andi x15 ,  x26 ,  7
	ori x15 ,  x15 ,  48
	or x13 ,  x27 ,  x14
	add x26 ,  x0 ,  x14
	sw x15 ,  0 ( x25 )
	addi x25 ,  x25 ,  -4
	bltu x0, x13, .LBB1_160
.LBB1_161:                              //  %do.end508
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x25 ,  4
	andi x13 ,  x26 ,  1
	beq x0, x13, .LBB1_194
.LBB1_162:                              //  %do.end508
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB1_194
.LBB1_163:                              //  %if.then514
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  48
	sw x15 ,  0 ( x25 )
	jal x0, .LBB1_195
.LBB1_164:                              //  %sw.default
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	add x10 ,  x0 ,  x25
	call wcslen
	add x27 ,  x0 ,  x10
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB1_261
.LBB1_165:                              //    in Loop: Header=BB1_19 Depth=2
	sltiu x15 ,  x26 ,  10
	beq x0, x15, .LBB1_151
.LBB1_166:                              //  %if.then520
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x26 ,  48
	addi x25 ,  x2 ,  472
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  472 ( x2 )
	jal x0, .LBB1_195
.LBB1_194:                              //    in Loop: Header=BB1_19 Depth=2
	add x25 ,  x0 ,  x14
	jal x0, .LBB1_195
.LBB1_167:                              //  %do.body525.preheader5
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	add x20 ,  x0 ,  x8
	jal x0, .LBB1_169
.LBB1_168:                              //  %if.end552
                                        //    in Loop: Header=BB1_169 Depth=3
	sltu x15 ,  x0 ,  x27
	add x26 ,  x0 ,  x18
	add x27 ,  x0 ,  x24
	beq x0, x15, .LBB1_181
.LBB1_169:                              //  %do.body525
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	call __udivdi3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	add x18 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __muldi3
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x26 ,  x10
	addi x20 ,  x20 ,  1
	ori x15 ,  x15 ,  48
	sw x15 ,  -4 ( x25 )
	addi x15 ,  x25 ,  -4
	lb x14 ,  0 ( x14 )
	bne x20, x14, .LBB1_173
.LBB1_170:                              //  %land.lhs.true536
                                        //    in Loop: Header=BB1_169 Depth=3
	beq x27, x8, .LBB1_174
.LBB1_171:                              //  %land.lhs.true536
                                        //    in Loop: Header=BB1_169 Depth=3
	add x13 ,  x0 ,  x8
	bltu x0, x13, .LBB1_173
.LBB1_175:                              //  %land.lhs.true536
                                        //    in Loop: Header=BB1_169 Depth=3
	andi x14 ,  x14 ,  255
	xori x14 ,  x14 ,  127
	beq x0, x14, .LBB1_173
.LBB1_176:                              //  %if.then543
                                        //    in Loop: Header=BB1_169 Depth=3
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  -8 ( x25 )
	lbu x15 ,  1 ( x14 )
	beq x15, x8, .LBB1_178
.LBB1_177:                              //  %if.then543
                                        //    in Loop: Header=BB1_169 Depth=3
	addi x14 ,  x14 ,  1
	sw x14 ,  24 ( x2 )             //  4-byte Folded Spill
.LBB1_178:                              //  %if.then543
                                        //    in Loop: Header=BB1_169 Depth=3
	addi x25 ,  x25 ,  -8
	add x20 ,  x0 ,  x8
	bne x27, x8, .LBB1_168
	jal x0, .LBB1_180
.LBB1_174:                              //    in Loop: Header=BB1_169 Depth=3
	sltiu x13 ,  x26 ,  10
	beq x0, x13, .LBB1_175
.LBB1_173:                              //    in Loop: Header=BB1_169 Depth=3
	add x25 ,  x0 ,  x15
	bne x27, x8, .LBB1_168
.LBB1_180:                              //    in Loop: Header=BB1_169 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x26
	add x26 ,  x0 ,  x18
	add x27 ,  x0 ,  x24
	bltu x0, x15, .LBB1_169
.LBB1_181:                              //    in Loop: Header=BB1_19 Depth=2
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
.LBB1_182:                              //    in Loop: Header=BB1_19 Depth=2
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB1_195:                              //  %if.end577
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sub x15 ,  x15 ,  x25
	srai x27 ,  x15 ,  2&31
	add x15 ,  x0 ,  x18
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x18 ,  40 ( x2 )             //  4-byte Folded Spill
	blt x27, x18, .LBB1_197
.LBB1_196:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x0 ,  x27
.LBB1_197:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  68 ( x2 )
	andi x18 ,  x26 ,  2
	sltu x14 ,  x0 ,  x14
	add x24 ,  x14 ,  x15
	srli x15 ,  x18 ,  1&31
	beq x0, x15, .LBB1_199
.LBB1_198:                              //    in Loop: Header=BB1_19 Depth=2
	addi x24 ,  x24 ,  2
.LBB1_199:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x26 ,  44 ( x2 )             //  4-byte Folded Spill
	andi x26 ,  x26 ,  132
	beq x0, x26, .LBB1_200
.LBB1_208:                              //  %if.end655
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  68 ( x2 )
	beq x0, x15, .LBB1_214
.LBB1_209:                              //  %if.then657
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x9 )
	addi x15 ,  x2 ,  68
	sw x15 ,  0 ( x9 )
	lw x15 ,  60 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_211
.LBB1_210:                              //  %if.then667
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_214
	jal x0, .LBB1_272
.LBB1_200:                              //  %if.then609
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x20 ,  x23 ,  x24
	bge x0, x20, .LBB1_213
.LBB1_201:                              //  %while.cond614.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfiwprintf_r.blanks&4095
	lui x15 ,  (_vfiwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	slti x15 ,  x20 ,  17
	beq x0, x15, .LBB1_204
	jal x0, .LBB1_206
.LBB1_202:                              //    in Loop: Header=BB1_204 Depth=3
	addi x9 ,  x9 ,  8
.LBB1_203:                              //  %if.end633
                                        //    in Loop: Header=BB1_204 Depth=3
	lui x30 ,  _vfiwprintf_r.blanks&4095
	lui x15 ,  (_vfiwprintf_r.blanks>>12)&1048575
	addi x20 ,  x20 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	addi x15 ,  x0 ,  16
	bge x15, x20, .LBB1_206
.LBB1_204:                              //  %while.body617
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x9 )
	lw x15 ,  60 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_202
.LBB1_205:                              //  %if.then627
                                        //    in Loop: Header=BB1_204 Depth=3
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	lw x11 ,  36 ( x2 )             //  4-byte Folded Reload
	call __sprint_r
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_203
	jal x0, .LBB1_271
.LBB1_211:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
	bltu x0, x18, .LBB1_215
	jal x0, .LBB1_217
.LBB1_206:                              //  %while.end635
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x19 )
	slli x15 ,  x20 ,  2&31
	sw x15 ,  4 ( x9 )
	add x14 ,  x15 ,  x14
	lw x15 ,  60 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_212
.LBB1_207:                              //  %if.then647
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x20
	call __sprint_r
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_208
	jal x0, .LBB1_272
.LBB1_212:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
.LBB1_213:                              //  %if.end655
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  68 ( x2 )
	bltu x0, x15, .LBB1_209
.LBB1_214:                              //  %if.end674
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, x18, .LBB1_217
.LBB1_215:                              //  %if.then677
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  8
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  8
	sw x15 ,  4 ( x9 )
	addi x15 ,  x2 ,  48
	sw x15 ,  0 ( x9 )
	lw x15 ,  60 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_226
.LBB1_216:                              //  %if.then688
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	addi x9 ,  x2 ,  1100
	bltu x0, x10, .LBB1_272
.LBB1_217:                              //  %if.end695
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x15 ,  x26 ,  128
	bltu x0, x15, .LBB1_227
.LBB1_218:                              //  %if.then699
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	sub x18 ,  x23 ,  x24
	bge x0, x18, .LBB1_237
.LBB1_219:                              //  %while.cond704.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfiwprintf_r.zeroes&4095
	lui x15 ,  (_vfiwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	slti x15 ,  x18 ,  17
	beq x0, x15, .LBB1_222
	jal x0, .LBB1_224
.LBB1_220:                              //    in Loop: Header=BB1_222 Depth=3
	addi x9 ,  x9 ,  8
.LBB1_221:                              //  %if.end723
                                        //    in Loop: Header=BB1_222 Depth=3
	lui x30 ,  _vfiwprintf_r.zeroes&4095
	lui x15 ,  (_vfiwprintf_r.zeroes>>12)&1048575
	addi x18 ,  x18 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	addi x15 ,  x0 ,  16
	bge x15, x18, .LBB1_224
.LBB1_222:                              //  %while.body707
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x9 )
	lw x15 ,  60 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_220
.LBB1_223:                              //  %if.then717
                                        //    in Loop: Header=BB1_222 Depth=3
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_221
	jal x0, .LBB1_273
.LBB1_224:                              //  %while.end725
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x19 )
	slli x15 ,  x18 ,  2&31
	sw x15 ,  4 ( x9 )
	add x14 ,  x15 ,  x14
	lw x15 ,  60 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_238
.LBB1_225:                              //  %if.then737
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_228
	jal x0, .LBB1_273
.LBB1_226:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
	xori x15 ,  x26 ,  128
	beq x0, x15, .LBB1_218
.LBB1_227:                              //    in Loop: Header=BB1_19 Depth=2
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB1_228:                              //  %if.end745
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x18 ,  x15 ,  x27
	bge x0, x18, .LBB1_239
.LBB1_229:                              //  %while.cond750.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfiwprintf_r.zeroes&4095
	lui x15 ,  (_vfiwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	slti x15 ,  x18 ,  17
	beq x0, x15, .LBB1_232
	jal x0, .LBB1_234
.LBB1_230:                              //    in Loop: Header=BB1_232 Depth=3
	addi x9 ,  x9 ,  8
.LBB1_231:                              //  %if.end769
                                        //    in Loop: Header=BB1_232 Depth=3
	lui x30 ,  _vfiwprintf_r.zeroes&4095
	lui x15 ,  (_vfiwprintf_r.zeroes>>12)&1048575
	addi x18 ,  x18 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	addi x15 ,  x0 ,  16
	bge x15, x18, .LBB1_234
.LBB1_232:                              //  %while.body753
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x9 )
	lw x15 ,  60 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_230
.LBB1_233:                              //  %if.then763
                                        //    in Loop: Header=BB1_232 Depth=3
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_231
	jal x0, .LBB1_273
.LBB1_234:                              //  %while.end771
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x19 )
	slli x15 ,  x18 ,  2&31
	sw x15 ,  4 ( x9 )
	add x14 ,  x15 ,  x14
	lw x15 ,  60 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_236
.LBB1_235:                              //  %if.then783
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	addi x9 ,  x2 ,  1100
	beq x0, x10, .LBB1_239
	jal x0, .LBB1_273
.LBB1_236:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
	jal x0, .LBB1_239
.LBB1_237:                              //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	sub x18 ,  x15 ,  x27
	blt x0, x18, .LBB1_229
	jal x0, .LBB1_239
.LBB1_238:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	sub x18 ,  x15 ,  x27
	blt x0, x18, .LBB1_229
.LBB1_239:                              //  %if.end790
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x19 )
	slli x15 ,  x27 ,  2&31
	sw x25 ,  0 ( x9 )
	sw x15 ,  4 ( x9 )
	add x14 ,  x15 ,  x14
	lw x15 ,  60 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  60 ( x2 )
	bltu x0, x15, .LBB1_248
.LBB1_240:                              //  %if.then802
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	lw x27 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  1100
	addi x25 ,  x0 ,  -1
	bltu x0, x10, .LBB1_274
.LBB1_241:                              //  %if.end808
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x14 ,  4
	beq x0, x14, .LBB1_251
.LBB1_242:                              //  %if.then811
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x9 ,  x23 ,  x24
	bge x0, x9, .LBB1_251
.LBB1_243:                              //  %while.cond816.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfiwprintf_r.blanks&4095
	lui x14 ,  (_vfiwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	slti x14 ,  x9 ,  17
	beq x0, x14, .LBB1_246
	jal x0, .LBB1_249
.LBB1_244:                              //    in Loop: Header=BB1_246 Depth=3
	addi x15 ,  x15 ,  8
.LBB1_245:                              //  %if.end835
                                        //    in Loop: Header=BB1_246 Depth=3
	lui x30 ,  _vfiwprintf_r.blanks&4095
	lui x14 ,  (_vfiwprintf_r.blanks>>12)&1048575
	addi x9 ,  x9 ,  -16
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	addi x14 ,  x0 ,  16
	bge x14, x9, .LBB1_249
.LBB1_246:                              //  %while.body819
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  8 ( x19 )
	addi x14 ,  x14 ,  64
	sw x14 ,  8 ( x19 )
	addi x14 ,  x0 ,  64
	sw x14 ,  4 ( x15 )
	lw x14 ,  60 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  60 ( x2 )
	bltu x0, x14, .LBB1_244
.LBB1_247:                              //  %if.then829
                                        //    in Loop: Header=BB1_246 Depth=3
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	addi x15 ,  x2 ,  1100
	beq x0, x10, .LBB1_245
	jal x0, .LBB1_274
.LBB1_248:                              //    in Loop: Header=BB1_19 Depth=2
	lw x27 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x9 ,  8
	addi x25 ,  x0 ,  -1
	lw x14 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x14 ,  4
	bltu x0, x14, .LBB1_242
	jal x0, .LBB1_251
.LBB1_249:                              //  %while.end837
                                        //    in Loop: Header=BB1_19 Depth=2
	slli x14 ,  x9 ,  2&31
	sw x14 ,  4 ( x15 )
	lw x15 ,  8 ( x19 )
	add x15 ,  x14 ,  x15
	lw x14 ,  60 ( x2 )
	sw x15 ,  8 ( x19 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  60 ( x2 )
	bltu x0, x14, .LBB1_252
.LBB1_250:                              //  %if.then849
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	bltu x0, x10, .LBB1_274
.LBB1_251:                              //  %if.end857thread-pre-split
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  64 ( x2 )
.LBB1_252:                              //  %if.end857
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x24, x23, .LBB1_254
.LBB1_253:                              //  %if.end857
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x24
.LBB1_254:                              //  %if.end857
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27 ,  x27 ,  x23
	beq x0, x15, .LBB1_256
.LBB1_255:                              //  %land.lhs.true867
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call __sprint_r
	bltu x0, x10, .LBB1_274
.LBB1_256:                              //  %if.end871
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	addi x24 ,  x0 ,  122
	sw x0 ,  60 ( x2 )
	bltu x0, x15, .LBB1_257
.LBB1_287:                              //  %if.end871
                                        //    in Loop: Header=BB1_16 Depth=1
	jal x0, .LBB1_16
.LBB1_257:                              //  %if.then876
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x26
	call _free_r
	addi x9 ,  x2 ,  1100
	add x18 ,  x0 ,  x22
	lw x15 ,  0 ( x18 )
	beq x0, x15, .LBB1_288
.LBB1_289:                              //  %if.then876
                                        //    in Loop: Header=BB1_16 Depth=1
	jal x0, .LBB1_17
.LBB1_288:                              //  %if.then876
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_19
.LBB1_183:                              //  %if.else349
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	call strlen
	add x18 ,  x0 ,  x10
.LBB1_184:                              //  %if.end351
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	sltiu x15 ,  x18 ,  100
	slli x12 ,  x18 ,  2&31
	sw x18 ,  40 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_187
.LBB1_185:                              //  %if.then354
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	addi x11 ,  x12 ,  4
	add x18 ,  x0 ,  x12
	call _malloc_r
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB1_281
.LBB1_186:                              //    in Loop: Header=BB1_19 Depth=2
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	add x12 ,  x0 ,  x18
	jal x0, .LBB1_188
.LBB1_187:                              //  %if.end368
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x25 ,  x2 ,  76
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	beq x0, x18, .LBB1_190
.LBB1_188:                              //  %for.body.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  40 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x25
.LBB1_189:                              //  %for.body
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x13 ,  0 ( x26 )
	addi x26 ,  x26 ,  1
	addi x14 ,  x14 ,  -1
	sw x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB1_189
.LBB1_190:                              //  %cleanup377.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x12 ,  x25
	lw x27 ,  40 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x8
	sw x0 ,  0 ( x15 )
	jal x0, .LBB1_261
.LBB1_191:                              //  %if.else400
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	call wcslen
	add x27 ,  x0 ,  x10
.LBB1_192:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	add x18 ,  x0 ,  x8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB1_259
.LBB1_258:                              //    in Loop: Header=BB1_19 Depth=2
	add x27 ,  x0 ,  x18
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	add x18 ,  x0 ,  x8
.LBB1_259:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	add x25 ,  x0 ,  x26
.LBB1_260:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
.LBB1_261:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x18
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x18 ,  40 ( x2 )             //  4-byte Folded Spill
	bge x27, x18, .LBB1_196
	jal x0, .LBB1_197
.LBB1_262:                              //  %cond.true290
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lhu x26 ,  0 ( x15 )
.LBB1_263:                              //  %cond.false294
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x8
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB1_264:                              //  %cond.end310
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  -1025
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x8
	sw x0 ,  68 ( x2 )
	blt x25, x18, .LBB1_138
	jal x0, .LBB1_139
.LBB1_265:                              //  %cond.true418
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  72 ( x2 )
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lhu x26 ,  0 ( x15 )
.LBB1_266:                              //  %cond.false422
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x0 ,  1
	add x27 ,  x0 ,  x8
	sw x0 ,  68 ( x2 )
	blt x25, x18, .LBB1_138
	jal x0, .LBB1_139
.LBB1_267:                              //  %if.then
	add x10 ,  x0 ,  x26
	call __sinit
	lhu x15 ,  12 ( x20 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_290
.LBB1_291:                              //  %if.then
	jal x0, .LBB1_3
.LBB1_290:                              //  %if.then
	jal x0, .LBB1_4
.LBB1_268:                              //  %done
	lw x15 ,  64 ( x2 )
	beq x0, x15, .LBB1_270
.LBB1_269:                              //  %land.lhs.true880
	addi x12 ,  x2 ,  56
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	call __sprint_r
	bltu x0, x10, .LBB1_276
.LBB1_270:                              //  %if.end884
	sw x0 ,  60 ( x2 )
	lbu x15 ,  12 ( x20 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_278
	jal x0, .LBB1_277
.LBB1_271:
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
.LBB1_272:
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
.LBB1_273:
	lw x27 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB1_274:                              //  %error
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB1_276
.LBB1_275:                              //  %if.then889
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x26
	call _free_r
.LBB1_276:                              //  %if.end890
	lbu x15 ,  12 ( x20 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_278
.LBB1_277:                              //  %if.end890
	addi x27 ,  x0 ,  -1
.LBB1_278:                              //  %cleanup912
	add x10 ,  x0 ,  x27
	lw x8 ,  1204 ( x2 )            //  4-byte Folded Reload
	lw x27 ,  1208 ( x2 )           //  4-byte Folded Reload
	lw x26 ,  1212 ( x2 )           //  4-byte Folded Reload
	lw x25 ,  1216 ( x2 )           //  4-byte Folded Reload
	lw x24 ,  1220 ( x2 )           //  4-byte Folded Reload
	lw x23 ,  1224 ( x2 )           //  4-byte Folded Reload
	lw x22 ,  1228 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1232 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1236 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1240 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1244 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1248 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1252 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1256
	.cfi_def_cfa 2, 0
	ret
.LBB1_279:
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  12 ( x20 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB1_277
	jal x0, .LBB1_278
.LBB1_280:                              //  %cleanup
	lh x15 ,  12 ( x20 )
	lw x27 ,  20 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_282
.LBB1_281:                              //  %cleanup377
	lh x15 ,  12 ( x20 )
.LBB1_282:                              //  %cleanup377
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x20 )
	lbu x15 ,  12 ( x20 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB1_277
	jal x0, .LBB1_278
.Lfunc_end1:
	.size	_vfiwprintf_r, .Lfunc_end1-_vfiwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_268
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_39
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_41
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_42
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_47
	.long	.LBB1_50
	.long	.LBB1_114
	.long	.LBB1_49
	.long	.LBB1_32
	.long	.LBB1_114
	.long	.LBB1_53
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_74
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_77
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_88
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_74
	.long	.LBB1_83
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_55
	.long	.LBB1_83
	.long	.LBB1_38
	.long	.LBB1_114
	.long	.LBB1_57
	.long	.LBB1_114
	.long	.LBB1_66
	.long	.LBB1_89
	.long	.LBB1_94
	.long	.LBB1_38
	.long	.LBB1_114
	.long	.LBB1_77
	.long	.LBB1_52
	.long	.LBB1_95
	.long	.LBB1_114
	.long	.LBB1_114
	.long	.LBB1_100
	.long	.LBB1_114
	.long	.LBB1_52
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfiwprintf_r.blanks,@object //  @_vfiwprintf_r.blanks
	.p2align	2
_vfiwprintf_r.blanks:
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.size	_vfiwprintf_r.blanks, 64

	.address_space	0
	.type	_vfiwprintf_r.zeroes,@object //  @_vfiwprintf_r.zeroes
	.p2align	2
_vfiwprintf_r.zeroes:
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.size	_vfiwprintf_r.zeroes, 64

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
	.long	48                      //  0x30
	.long	49                      //  0x31
	.long	50                      //  0x32
	.long	51                      //  0x33
	.long	52                      //  0x34
	.long	53                      //  0x35
	.long	54                      //  0x36
	.long	55                      //  0x37
	.long	56                      //  0x38
	.long	57                      //  0x39
	.long	97                      //  0x61
	.long	98                      //  0x62
	.long	99                      //  0x63
	.long	100                     //  0x64
	.long	101                     //  0x65
	.long	102                     //  0x66
	.long	0                       //  0x0
	.size	.str, 68

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.p2align	2
.str.1:
	.long	40                      //  0x28
	.long	110                     //  0x6e
	.long	117                     //  0x75
	.long	108                     //  0x6c
	.long	108                     //  0x6c
	.long	41                      //  0x29
	.long	0                       //  0x0
	.size	.str.1, 28

	.address_space	0
	.type	.str.2,@object          //  @.str.2
	.p2align	2
.str.2:
	.long	48                      //  0x30
	.long	49                      //  0x31
	.long	50                      //  0x32
	.long	51                      //  0x33
	.long	52                      //  0x34
	.long	53                      //  0x35
	.long	54                      //  0x36
	.long	55                      //  0x37
	.long	56                      //  0x38
	.long	57                      //  0x39
	.long	65                      //  0x41
	.long	66                      //  0x42
	.long	67                      //  0x43
	.long	68                      //  0x44
	.long	69                      //  0x45
	.long	70                      //  0x46
	.long	0                       //  0x0
	.size	.str.2, 68

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.p2align	2
.str.3:
	.long	98                      //  0x62
	.long	117                     //  0x75
	.long	103                     //  0x67
	.long	32                      //  0x20
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	32                      //  0x20
	.long	118                     //  0x76
	.long	102                     //  0x66
	.long	112                     //  0x70
	.long	114                     //  0x72
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	116                     //  0x74
	.long	102                     //  0x66
	.long	58                      //  0x3a
	.long	32                      //  0x20
	.long	98                      //  0x62
	.long	97                      //  0x61
	.long	100                     //  0x64
	.long	32                      //  0x20
	.long	98                      //  0x62
	.long	97                      //  0x61
	.long	115                     //  0x73
	.long	101                     //  0x65
	.long	0                       //  0x0
	.size	.str.3, 104


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
