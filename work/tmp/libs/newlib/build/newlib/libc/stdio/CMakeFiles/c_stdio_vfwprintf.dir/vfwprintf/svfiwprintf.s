	.text
	.file	"svfiwprintf.c"
	.globl	_svfiwprintf_r          //  -- Begin function _svfiwprintf_r
	.type	_svfiwprintf_r,@function
_svfiwprintf_r:                         //  @_svfiwprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -592
	.cfi_adjust_cfa_offset 592
	sw x26 ,  548 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	add x26 ,  x0 ,  x11
	sw x22 ,  564 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  556 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x22 ,  x0 ,  x12
	add x24 ,  x0 ,  x10
	sw x1 ,  588 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  584 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  580 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  576 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  572 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  568 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  560 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  552 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27 ,  544 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  540 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x13 ,  536 ( x2 )
	lbu x15 ,  12 ( x26 )
	andi x15 ,  x15 ,  128
	beq x0, x15, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  16 ( x26 )
	bltu x0, x15, .LBB0_4
.LBB0_2:                                //  %if.then
	addi x9 ,  x0 ,  64
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x9
	call _malloc_r
	sw x10 ,  16 ( x26 )
	sw x10 ,  0 ( x26 )
	bltu x0, x10, .LBB0_3
.LBB0_267:                              //  %if.then
	jal x0, .LBB0_264
.LBB0_3:                                //  %if.end
	sw x9 ,  20 ( x26 )
.LBB0_4:                                //  %if.end8
	addi x15 ,  x2 ,  456
	add x8 ,  x0 ,  x0
	addi x19 ,  x2 ,  520
	addi x25 ,  x0 ,  -1
	addi x21 ,  x0 ,  10
	sw x0 ,  524 ( x2 )
	sw x26 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  520 ( x2 )
	addi x15 ,  x2 ,  56
	add x20 ,  x0 ,  x8
	sw x0 ,  8 ( x19 )
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	sw x8 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	addi x15 ,  x15 ,  400
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_151 Depth 3
                                        //        Child Loop BB0_173 Depth 3
                                        //        Child Loop BB0_158 Depth 3
                                        //        Child Loop BB0_163 Depth 3
                                        //        Child Loop BB0_131 Depth 3
                                        //        Child Loop BB0_202 Depth 3
                                        //        Child Loop BB0_213 Depth 3
                                        //        Child Loop BB0_228 Depth 3
                                        //        Child Loop BB0_240 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	addi x18 ,  x2 ,  456
	add x9 ,  x0 ,  x22
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB0_8
.LBB0_6:                                //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB0_8
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_6 Depth=2
	addi x9 ,  x9 ,  4
	lw x15 ,  0 ( x9 )
	bltu x0, x15, .LBB0_6
.LBB0_8:                                //  %while.end
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_151 Depth 3
                                        //        Child Loop BB0_173 Depth 3
                                        //        Child Loop BB0_158 Depth 3
                                        //        Child Loop BB0_163 Depth 3
                                        //        Child Loop BB0_131 Depth 3
                                        //        Child Loop BB0_202 Depth 3
                                        //        Child Loop BB0_213 Depth 3
                                        //        Child Loop BB0_228 Depth 3
                                        //        Child Loop BB0_240 Depth 3
	sw x20 ,  40 ( x2 )             //  4-byte Folded Spill
	sub x20 ,  x9 ,  x22
	beq x0, x20, .LBB0_13
.LBB0_9:                                //  %if.then14
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x19 )
	sw x20 ,  4 ( x18 )
	sw x22 ,  0 ( x18 )
	add x15 ,  x20 ,  x15
	sw x15 ,  8 ( x19 )
	lw x15 ,  524 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_11
.LBB0_10:                               //  %if.then21
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	addi x18 ,  x2 ,  456
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_259
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x18 ,  8
.LBB0_12:                               //  %if.end27
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  40 ( x2 )             //  4-byte Folded Reload
	srai x15 ,  x20 ,  2&31
	add x14 ,  x14 ,  x15
	lw x15 ,  0 ( x9 )
	sw x14 ,  40 ( x2 )             //  4-byte Folded Spill
.LBB0_13:                               //  %if.end29
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x15, .LBB0_14
.LBB0_268:                              //  %if.end29
	jal x0, .LBB0_256
.LBB0_14:                               //  %if.end33
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x9 ,  4
	add x27 ,  x0 ,  x8
	add x23 ,  x0 ,  x8
	sw x0 ,  532 ( x2 )
	sw x25 ,  44 ( x2 )             //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lw x24 ,  0 ( x15 )
	addi x22 ,  x15 ,  4
	add x20 ,  x0 ,  x27
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	addi x15 ,  x24 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB0_19
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	add x23 ,  x0 ,  x8
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x21
	call __mulsi3
	add x15 ,  x10 ,  x24
	lw x24 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x23 ,  x15 ,  -48
	addi x15 ,  x24 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB0_18
	jal x0, .LBB0_16
.LBB0_19:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_23 Depth 6
	addi x15 ,  x0 ,  122
	bltu x15, x24, .LBB0_107
.LBB0_20:                               //  %reswitch
                                        //    in Loop: Header=BB0_19 Depth=5
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x24 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_21:                               //  %sw.bb63
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x24 ,  0 ( x22 )
	addi x15 ,  x22 ,  4
	xori x14 ,  x24 ,  42
	beq x0, x14, .LBB0_51
.LBB0_22:                               //  %while.cond74.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	addi x9 ,  x24 ,  -48
	add x22 ,  x0 ,  x15
	add x10 ,  x0 ,  x8
	addi x14 ,  x0 ,  9
	bltu x14, x9, .LBB0_25
.LBB0_23:                               //  %while.body78
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_19 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	add x11 ,  x0 ,  x21
	call __mulsi3
	lw x24 ,  0 ( x22 )
	add x10 ,  x10 ,  x9
	addi x22 ,  x22 ,  4
	addi x9 ,  x24 ,  -48
	sltiu x15 ,  x9 ,  10
	bltu x0, x15, .LBB0_23
.LBB0_24:                               //  %while.end83
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x25 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB0_16
.LBB0_25:                               //  %while.end83.thread
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x10 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x24 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_17
	jal x0, .LBB0_19
.LBB0_26:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x20 ,  x20 ,  32
	jal x0, .LBB0_42
.LBB0_27:                               //  %sw.bb49
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  532 ( x2 )
	add x15 ,  x0 ,  x22
	bltu x0, x14, .LBB0_15
.LBB0_28:                               //  %if.then51
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x0 ,  32
	jal x0, .LBB0_38
.LBB0_29:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x20 ,  x20 ,  1
	jal x0, .LBB0_42
.LBB0_30:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x9 ,  36 ( x2 )              //  4-byte Folded Reload
	add x10 ,  x0 ,  x9
	call _localeconv_r
	lw x15 ,  4 ( x10 )
	add x10 ,  x0 ,  x9
	lb x20 ,  0 ( x15 )
	call _localeconv_r
	lw x15 ,  8 ( x10 )
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x22
	beq x0, x20, .LBB0_15
.LBB0_31:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x22
	beq x0, x14, .LBB0_15
.LBB0_32:                               //  %land.lhs.true44
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  0 ( x15 )
	beq x15, x8, .LBB0_34
.LBB0_33:                               //  %land.lhs.true44
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x27 ,  x27 ,  1024
.LBB0_34:                               //  %land.lhs.true44
                                        //    in Loop: Header=BB0_15 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB0_15
.LBB0_35:                               //  %sw.bb55
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x23 ,  0 ( x15 )
	add x15 ,  x0 ,  x22
	bge x23, x0, .LBB0_15
.LBB0_36:                               //  %if.end59
                                        //    in Loop: Header=BB0_15 Depth=3
	sub x23 ,  x0 ,  x23
	ori x27 ,  x27 ,  4
	add x15 ,  x0 ,  x22
	jal x0, .LBB0_15
.LBB0_37:                               //  %sw.bb62
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x0 ,  43
.LBB0_38:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x15 ,  532 ( x2 )
.LBB0_39:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB0_15
.LBB0_40:                               //  %sw.bb60.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x20 ,  x20 ,  4
	jal x0, .LBB0_42
.LBB0_41:                               //  %sw.bb86
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x20 ,  x20 ,  128
.LBB0_42:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	add x27 ,  x0 ,  x20
	add x15 ,  x0 ,  x22
	jal x0, .LBB0_15
.LBB0_43:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB0_48
.LBB0_44:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x14 ,  x0 ,  64
	jal x0, .LBB0_47
.LBB0_45:                               //  %sw.bb104
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB0_49
.LBB0_46:                               //  %sw.bb104
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x14 ,  x0 ,  16
.LBB0_47:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB0_50
.LBB0_48:                               //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x22 ,  4
	addi x14 ,  x0 ,  512
	jal x0, .LBB0_50
.LBB0_49:                               //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x22 ,  4
	addi x14 ,  x0 ,  32
.LBB0_50:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	or x20 ,  x20 ,  x14
	add x27 ,  x0 ,  x20
	jal x0, .LBB0_15
.LBB0_51:                               //  %if.then67
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  536 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  536 ( x2 )
	lw x14 ,  0 ( x14 )
	blt x25, x14, .LBB0_53
.LBB0_52:                               //  %if.then67
                                        //    in Loop: Header=BB0_15 Depth=3
	add x14 ,  x0 ,  x25
.LBB0_53:                               //  %if.then67
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_54:                               //  %sw.bb182
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  32
	bltu x0, x15, .LBB0_59
.LBB0_55:                               //  %if.else188
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  16
	bltu x0, x15, .LBB0_60
.LBB0_56:                               //  %if.else193
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  64
	bltu x0, x15, .LBB0_62
.LBB0_57:                               //  %if.else199
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x20 ,  512
	bltu x0, x15, .LBB0_63
.LBB0_58:                               //  %if.else205
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x15 ,  0 ( x15 )
	sw x20 ,  0 ( x15 )
	add x9 ,  x0 ,  x22
	lw x15 ,  0 ( x9 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_59:                               //  %if.then185
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	srai x14 ,  x20 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	jal x0, .LBB0_61
.LBB0_60:                               //  %if.then191
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x15 ,  0 ( x15 )
.LBB0_61:                               //  %for.cond
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20 ,  0 ( x15 )
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x0 ,  x22
	lw x15 ,  0 ( x9 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_62:                               //  %if.then196
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x20 ,  0 ( x15 )
	add x9 ,  x0 ,  x22
	lw x15 ,  0 ( x9 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_63:                               //  %if.then202
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x20 ,  0 ( x15 )
	add x9 ,  x0 ,  x22
	lw x15 ,  0 ( x9 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_64:                               //  %sw.bb119
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x10 ,  0 ( x15 )
	andi x15 ,  x20 ,  16
	bltu x0, x15, .LBB0_103
.LBB0_65:                               //  %sw.bb119
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x24 ,  99
	bltu x0, x15, .LBB0_103
.LBB0_66:                               //  %if.then126
                                        //    in Loop: Header=BB0_8 Depth=2
	call btowc
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_104
	jal x0, .LBB0_266
.LBB0_67:                               //  %sw.bb253
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x9 ,  0 ( x15 )
	sw x0 ,  532 ( x2 )
	beq x0, x9, .LBB0_108
.LBB0_68:                               //  %if.else264
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  16
	bltu x0, x15, .LBB0_111
.LBB0_69:                               //  %if.else264
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x24 ,  83
	beq x0, x15, .LBB0_111
.LBB0_70:                               //  %if.then270
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	blt x24, x0, .LBB0_128
.LBB0_71:                               //  %if.then273
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	call memchr
	beq x10, x8, .LBB0_73
.LBB0_72:                               //  %if.then273
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x24 ,  x10 ,  x9
.LBB0_73:                               //  %if.end285
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	sltiu x15 ,  x24 ,  100
	slli x20 ,  x24 ,  2&31
	bltu x0, x15, .LBB0_129
.LBB0_74:                               //  %if.then288
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x11 ,  x20 ,  4
	call _malloc_r
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB0_266
.LBB0_75:                               //    in Loop: Header=BB0_8 Depth=2
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_130
.LBB0_76:                               //  %sw.bb142
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  32
	bltu x0, x15, .LBB0_105
.LBB0_77:                               //  %cond.false147
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  16
	bltu x0, x15, .LBB0_116
.LBB0_78:                               //  %cond.false152
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  64
	bltu x0, x15, .LBB0_124
.LBB0_79:                               //  %cond.false159
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x26 ,  0 ( x15 )
	andi x15 ,  x20 ,  512
	beq x0, x15, .LBB0_117
.LBB0_80:                               //  %cond.true162
                                        //    in Loop: Header=BB0_8 Depth=2
	slli x15 ,  x26 ,  24&31
	srai x26 ,  x15 ,  24&31
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	bge x27, x0, .LBB0_106
	jal x0, .LBB0_118
.LBB0_81:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	andi x15 ,  x20 ,  32
	beq x0, x15, .LBB0_98
.LBB0_82:                               //  %cond.true378
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  536 ( x2 )
	lw x27 ,  4 ( x15 )
	andi x15 ,  x20 ,  1
	beq x0, x15, .LBB0_85
.LBB0_83:                               //  %cond.end408
                                        //    in Loop: Header=BB0_8 Depth=2
	or x15 ,  x27 ,  x26
	beq x0, x15, .LBB0_85
.LBB0_84:                               //  %if.then415
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	ori x20 ,  x20 ,  2
	sw x24 ,  52 ( x2 )
	sw x15 ,  48 ( x2 )
.LBB0_85:                               //  %if.end419
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x20 ,  x20 ,  -1025
	addi x15 ,  x0 ,  2
	sw x0 ,  532 ( x2 )
	bge x25, x24, .LBB0_143
.LBB0_142:                              //    in Loop: Header=BB0_8 Depth=2
	andi x20 ,  x20 ,  -129
.LBB0_143:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x24, .LBB0_148
.LBB0_144:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x14 ,  x27 ,  x26
	bltu x0, x14, .LBB0_148
.LBB0_145:                              //  %if.else500
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x15, .LBB0_161
.LBB0_146:                              //  %if.else500
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  1
	beq x0, x15, .LBB0_161
.LBB0_147:                              //  %if.then507
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	jal x0, .LBB0_170
.LBB0_148:                              //  %if.then431
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x15, .LBB0_162
.LBB0_149:                              //  %if.then431
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB0_152
.LBB0_150:                              //  %if.then431
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_167
.LBB0_151:                              //  %do.body491
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x15 ,  x26 ,  15
	slli x14 ,  x27 ,  28&31
	srli x27 ,  x27 ,  4&31
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x9
	lw x15 ,  0 ( x15 )
	sw x15 ,  -4 ( x25 )
	srli x15 ,  x26 ,  4&31
	addi x25 ,  x25 ,  -4
	or x26 ,  x14 ,  x15
	or x15 ,  x27 ,  x26
	bltu x0, x15, .LBB0_151
	jal x0, .LBB0_190
.LBB0_161:                              //    in Loop: Header=BB0_8 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_190
.LBB0_86:                               //  %sw.bb211
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  32
	bltu x0, x15, .LBB0_121
.LBB0_87:                               //  %cond.false216
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  16
	bltu x0, x15, .LBB0_125
.LBB0_88:                               //  %cond.false221
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  64
	bltu x0, x15, .LBB0_138
.LBB0_89:                               //  %cond.false228
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	andi x14 ,  x20 ,  512
	lw x26 ,  0 ( x15 )
	beq x14, x8, .LBB0_139
.LBB0_90:                               //  %cond.false228
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x26 ,  x26 ,  255
	jal x0, .LBB0_139
.LBB0_91:                               //  %sw.bb247
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lui x30 ,  .str&4095
	ori x20 ,  x20 ,  2
	add x27 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x26 ,  0 ( x15 )
	addi x15 ,  x0 ,  120
	sw x15 ,  52 ( x2 )
	addi x15 ,  x0 ,  48
	sw x15 ,  48 ( x2 )
	lui x15 ,  (.str>>12)&1048575
	or x9 ,  x15 ,  x30
	addi x15 ,  x0 ,  2
	sw x0 ,  532 ( x2 )
	blt x25, x24, .LBB0_142
	jal x0, .LBB0_143
.LBB0_92:                               //  %sw.bb339
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  32
	bltu x0, x15, .LBB0_122
.LBB0_93:                               //  %cond.false344
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  16
	bltu x0, x15, .LBB0_126
.LBB0_94:                               //  %cond.false349
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  64
	bltu x0, x15, .LBB0_140
.LBB0_95:                               //  %cond.false356
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	andi x14 ,  x20 ,  512
	lw x26 ,  0 ( x15 )
	beq x14, x8, .LBB0_141
.LBB0_96:                               //  %cond.false356
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x26 ,  x26 ,  255
	jal x0, .LBB0_141
.LBB0_97:                               //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	andi x15 ,  x20 ,  32
	bltu x0, x15, .LBB0_82
.LBB0_98:                               //  %cond.false380
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  16
	bltu x0, x15, .LBB0_123
.LBB0_99:                               //  %cond.false385
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  64
	bltu x0, x15, .LBB0_127
.LBB0_100:                              //  %cond.false392
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	andi x14 ,  x20 ,  512
	lw x26 ,  0 ( x15 )
	beq x14, x8, .LBB0_102
.LBB0_101:                              //  %cond.false392
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x26 ,  x26 ,  255
.LBB0_102:                              //  %cond.end405
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27 ,  x0 ,  x8
	andi x15 ,  x20 ,  1
	bltu x0, x15, .LBB0_83
	jal x0, .LBB0_85
.LBB0_103:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
.LBB0_104:                              //  %if.end140
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x27 ,  x0 ,  1
	add x24 ,  x0 ,  x8
	sw x10 ,  56 ( x2 )
	sw x0 ,  60 ( x2 )
	sw x0 ,  532 ( x2 )
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	addi x25 ,  x2 ,  56
	add x10 ,  x0 ,  x27
	add x15 ,  x0 ,  x24
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x24, .LBB0_191
	jal x0, .LBB0_192
.LBB0_105:                              //  %cond.true145
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  536 ( x2 )
	lw x27 ,  4 ( x15 )
	blt x27, x0, .LBB0_118
.LBB0_106:                              //    in Loop: Header=BB0_8 Depth=2
	slti x15 ,  x0 ,  1
	blt x25, x24, .LBB0_142
	jal x0, .LBB0_143
.LBB0_107:                              //  %if.end521
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x27 ,  x0 ,  1
	sw x24 ,  56 ( x2 )
	add x24 ,  x0 ,  x8
	addi x25 ,  x2 ,  56
	sw x0 ,  532 ( x2 )
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	add x10 ,  x0 ,  x27
	jal x0, .LBB0_137
.LBB0_162:                              //  %do.body434.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x25 ,  x2 ,  452
.LBB0_163:                              //  %do.body434
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
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
	bltu x0, x13, .LBB0_163
.LBB0_164:                              //  %do.end441
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x25 ,  4
	andi x13 ,  x20 ,  1
	beq x0, x13, .LBB0_189
.LBB0_165:                              //  %do.end441
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB0_189
.LBB0_166:                              //  %if.then447
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	sw x15 ,  0 ( x25 )
	jal x0, .LBB0_190
.LBB0_167:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	add x10 ,  x0 ,  x25
	call wcslen
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	add x15 ,  x0 ,  x24
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x24, .LBB0_191
	jal x0, .LBB0_192
.LBB0_108:                              //  %if.then257
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	lw x14 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x14, x15, .LBB0_110
.LBB0_109:                              //  %if.then257
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  6
	add x14 ,  x0 ,  x15
.LBB0_110:                              //  %if.then257
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x10 ,  x0 ,  x14
	add x24 ,  x0 ,  x8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	add x15 ,  x0 ,  x24
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x24, .LBB0_191
	jal x0, .LBB0_192
.LBB0_111:                              //  %if.else315
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	blt x24, x0, .LBB0_133
.LBB0_112:                              //  %if.then318
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	call wmemchr
	beq x0, x10, .LBB0_135
.LBB0_113:                              //  %if.then323
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x15 ,  x10 ,  x9
	srai x15 ,  x15 ,  2&31
	blt x24, x15, .LBB0_115
.LBB0_114:                              //  %if.then323
                                        //    in Loop: Header=BB0_8 Depth=2
	add x24 ,  x0 ,  x15
.LBB0_115:                              //  %if.then323
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	jal x0, .LBB0_134
.LBB0_116:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x26 ,  0 ( x15 )
.LBB0_117:                              //  %cond.end172
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	bge x27, x0, .LBB0_106
.LBB0_118:                              //  %if.then431.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x25, x24, .LBB0_120
.LBB0_119:                              //    in Loop: Header=BB0_8 Depth=2
	andi x20 ,  x20 ,  -129
.LBB0_120:                              //  %if.then431.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  532 ( x2 )
	sltu x15 ,  x0 ,  x26
	sub x26 ,  x0 ,  x26
	add x15 ,  x15 ,  x27
	sub x27 ,  x0 ,  x15
.LBB0_152:                              //  %sw.bb450
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x27, x8, .LBB0_168
.LBB0_153:                              //  %sw.bb450
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x8
	bltu x0, x15, .LBB0_169
.LBB0_154:                              //  %do.body458.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x20 ,  1024
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_171
.LBB0_155:                              //  %do.body458.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	add x20 ,  x0 ,  x9
	jal x0, .LBB0_158
.LBB0_156:                              //  %do.body458.us
                                        //    in Loop: Header=BB0_158 Depth=3
	sltu x15 ,  x0 ,  x27
.LBB0_157:                              //  %do.body458.us
                                        //    in Loop: Header=BB0_158 Depth=3
	sub x14 ,  x26 ,  x10
	add x26 ,  x0 ,  x9
	add x27 ,  x0 ,  x24
	ori x14 ,  x14 ,  48
	sw x14 ,  -4 ( x25 )
	addi x25 ,  x25 ,  -4
	beq x0, x15, .LBB0_186
.LBB0_158:                              //  %do.body458.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	call __udivdi3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	add x9 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __muldi3
	bne x27, x8, .LBB0_156
.LBB0_159:                              //    in Loop: Header=BB0_158 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x26
	jal x0, .LBB0_157
.LBB0_168:                              //    in Loop: Header=BB0_8 Depth=2
	sltiu x15 ,  x26 ,  10
	beq x0, x15, .LBB0_154
.LBB0_169:                              //  %if.then453
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x26 ,  48
.LBB0_170:                              //  %if.end510
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x25 ,  x2 ,  452
	sw x15 ,  452 ( x2 )
	jal x0, .LBB0_190
.LBB0_121:                              //  %cond.true214
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  536 ( x2 )
	lw x27 ,  4 ( x15 )
	andi x20 ,  x20 ,  -1025
	add x15 ,  x0 ,  x8
	sw x0 ,  532 ( x2 )
	blt x25, x24, .LBB0_142
	jal x0, .LBB0_143
.LBB0_122:                              //  %cond.true342
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  536 ( x2 )
	lw x27 ,  4 ( x15 )
	slti x15 ,  x0 ,  1
	sw x0 ,  532 ( x2 )
	blt x25, x24, .LBB0_142
	jal x0, .LBB0_143
.LBB0_123:                              //  %cond.true383
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x26 ,  0 ( x15 )
	add x27 ,  x0 ,  x8
	andi x15 ,  x20 ,  1
	bltu x0, x15, .LBB0_83
	jal x0, .LBB0_85
.LBB0_189:                              //    in Loop: Header=BB0_8 Depth=2
	add x25 ,  x0 ,  x14
	jal x0, .LBB0_190
.LBB0_171:                              //  %do.body458.preheader5
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	add x20 ,  x0 ,  x8
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB0_173
.LBB0_172:                              //  %if.end485
                                        //    in Loop: Header=BB0_173 Depth=3
	sltu x15 ,  x0 ,  x27
	add x26 ,  x0 ,  x9
	add x27 ,  x0 ,  x24
	beq x0, x15, .LBB0_185
.LBB0_173:                              //  %do.body458
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	call __udivdi3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x8
	add x9 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __muldi3
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x26 ,  x10
	addi x20 ,  x20 ,  1
	ori x15 ,  x15 ,  48
	sw x15 ,  -4 ( x25 )
	addi x15 ,  x25 ,  -4
	lb x14 ,  0 ( x14 )
	bne x20, x14, .LBB0_177
.LBB0_174:                              //  %land.lhs.true469
                                        //    in Loop: Header=BB0_173 Depth=3
	beq x27, x8, .LBB0_178
.LBB0_175:                              //  %land.lhs.true469
                                        //    in Loop: Header=BB0_173 Depth=3
	add x13 ,  x0 ,  x8
	bltu x0, x13, .LBB0_177
.LBB0_179:                              //  %land.lhs.true469
                                        //    in Loop: Header=BB0_173 Depth=3
	andi x14 ,  x14 ,  255
	xori x14 ,  x14 ,  127
	beq x0, x14, .LBB0_177
.LBB0_180:                              //  %if.then476
                                        //    in Loop: Header=BB0_173 Depth=3
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  -8 ( x25 )
	lbu x15 ,  1 ( x14 )
	beq x15, x8, .LBB0_182
.LBB0_181:                              //  %if.then476
                                        //    in Loop: Header=BB0_173 Depth=3
	addi x14 ,  x14 ,  1
	sw x14 ,  20 ( x2 )             //  4-byte Folded Spill
.LBB0_182:                              //  %if.then476
                                        //    in Loop: Header=BB0_173 Depth=3
	addi x25 ,  x25 ,  -8
	add x20 ,  x0 ,  x8
	bne x27, x8, .LBB0_172
	jal x0, .LBB0_184
.LBB0_178:                              //    in Loop: Header=BB0_173 Depth=3
	sltiu x13 ,  x26 ,  10
	beq x0, x13, .LBB0_179
.LBB0_177:                              //    in Loop: Header=BB0_173 Depth=3
	add x25 ,  x0 ,  x15
	bne x27, x8, .LBB0_172
.LBB0_184:                              //    in Loop: Header=BB0_173 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x26
	add x26 ,  x0 ,  x9
	add x27 ,  x0 ,  x24
	bltu x0, x15, .LBB0_173
.LBB0_185:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_187
.LBB0_186:                              //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x0 ,  x20
.LBB0_187:                              //  %if.end510
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
.LBB0_190:                              //  %if.end510
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sub x15 ,  x15 ,  x25
	srai x10 ,  x15 ,  2&31
	add x15 ,  x0 ,  x24
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x10, x24, .LBB0_192
.LBB0_191:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x10
.LBB0_192:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  532 ( x2 )
	andi x24 ,  x20 ,  2
	sw x10 ,  28 ( x2 )             //  4-byte Folded Spill
	sltu x14 ,  x0 ,  x14
	add x9 ,  x14 ,  x15
	srli x15 ,  x24 ,  1&31
	beq x0, x15, .LBB0_194
.LBB0_193:                              //    in Loop: Header=BB0_8 Depth=2
	addi x9 ,  x9 ,  2
.LBB0_194:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x26 ,  x20 ,  132
	beq x0, x26, .LBB0_198
.LBB0_195:                              //  %if.end588
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  532 ( x2 )
	beq x0, x15, .LBB0_205
.LBB0_196:                              //  %if.then590
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x18 )
	addi x15 ,  x2 ,  532
	sw x15 ,  0 ( x18 )
	lw x15 ,  524 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_204
.LBB0_197:                              //  %if.then600
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	lw x11 ,  32 ( x2 )             //  4-byte Folded Reload
	call __ssprint_r
	addi x18 ,  x2 ,  456
	beq x0, x10, .LBB0_205
	jal x0, .LBB0_263
.LBB0_198:                              //  %if.then542
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27 ,  x0 ,  x20
	sub x20 ,  x23 ,  x9
	bge x0, x20, .LBB0_223
.LBB0_199:                              //  %while.cond547.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfiwprintf_r.blanks&4095
	lui x15 ,  (_svfiwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	slti x15 ,  x20 ,  17
	beq x0, x15, .LBB0_202
	jal x0, .LBB0_221
.LBB0_200:                              //    in Loop: Header=BB0_202 Depth=3
	addi x18 ,  x18 ,  8
.LBB0_201:                              //  %if.end566
                                        //    in Loop: Header=BB0_202 Depth=3
	lui x30 ,  _svfiwprintf_r.blanks&4095
	lui x15 ,  (_svfiwprintf_r.blanks>>12)&1048575
	addi x20 ,  x20 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  16
	bge x15, x20, .LBB0_221
.LBB0_202:                              //  %while.body550
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x18 )
	lw x15 ,  524 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_200
.LBB0_203:                              //  %if.then560
                                        //    in Loop: Header=BB0_202 Depth=3
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	lw x11 ,  32 ( x2 )             //  4-byte Folded Reload
	call __ssprint_r
	addi x18 ,  x2 ,  456
	beq x0, x10, .LBB0_201
	jal x0, .LBB0_263
.LBB0_204:                              //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x18 ,  8
.LBB0_205:                              //  %if.end607
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x24, .LBB0_219
.LBB0_206:                              //  %if.then610
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  8
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  8
	sw x15 ,  4 ( x18 )
	addi x15 ,  x2 ,  48
	sw x15 ,  0 ( x18 )
	lw x15 ,  524 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_218
.LBB0_207:                              //  %if.then621
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	lw x11 ,  32 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x24
	call __ssprint_r
	addi x18 ,  x2 ,  456
	bltu x0, x10, .LBB0_265
.LBB0_208:                              //  %if.end628
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27 ,  x0 ,  x20
	xori x15 ,  x26 ,  128
	bltu x0, x15, .LBB0_220
.LBB0_209:                              //  %if.then632
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	sub x20 ,  x23 ,  x9
	bge x0, x20, .LBB0_217
.LBB0_210:                              //  %while.cond637.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfiwprintf_r.zeroes&4095
	lui x15 ,  (_svfiwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	slti x15 ,  x20 ,  17
	beq x0, x15, .LBB0_213
	jal x0, .LBB0_215
.LBB0_211:                              //    in Loop: Header=BB0_213 Depth=3
	addi x18 ,  x18 ,  8
.LBB0_212:                              //  %if.end656
                                        //    in Loop: Header=BB0_213 Depth=3
	lui x30 ,  _svfiwprintf_r.zeroes&4095
	lui x15 ,  (_svfiwprintf_r.zeroes>>12)&1048575
	addi x20 ,  x20 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  16
	bge x15, x20, .LBB0_215
.LBB0_213:                              //  %while.body640
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x18 )
	lw x15 ,  524 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_211
.LBB0_214:                              //  %if.then650
                                        //    in Loop: Header=BB0_213 Depth=3
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	addi x18 ,  x2 ,  456
	beq x0, x10, .LBB0_212
	jal x0, .LBB0_253
.LBB0_215:                              //  %while.end658
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x19 )
	slli x15 ,  x20 ,  2&31
	sw x15 ,  4 ( x18 )
	add x14 ,  x15 ,  x14
	lw x15 ,  524 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_224
.LBB0_216:                              //  %if.then670
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	addi x18 ,  x2 ,  456
	bltu x0, x10, .LBB0_253
.LBB0_217:                              //  %if.end678
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  28 ( x2 )             //  4-byte Folded Reload
	sub x20 ,  x15 ,  x14
	blt x0, x20, .LBB0_225
	jal x0, .LBB0_233
.LBB0_218:                              //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x18 ,  8
.LBB0_219:                              //  %if.end628
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x20
	xori x15 ,  x26 ,  128
	beq x0, x15, .LBB0_209
.LBB0_220:                              //    in Loop: Header=BB0_8 Depth=2
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  28 ( x2 )             //  4-byte Folded Reload
	sub x20 ,  x15 ,  x14
	blt x0, x20, .LBB0_225
	jal x0, .LBB0_233
.LBB0_221:                              //  %while.end568
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x19 )
	slli x15 ,  x20 ,  2&31
	sw x15 ,  4 ( x18 )
	add x14 ,  x15 ,  x14
	lw x15 ,  524 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_252
.LBB0_222:                              //  %if.then580
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	lw x11 ,  32 ( x2 )             //  4-byte Folded Reload
	call __ssprint_r
	addi x18 ,  x2 ,  456
	add x20 ,  x0 ,  x27
	beq x0, x10, .LBB0_195
	jal x0, .LBB0_263
.LBB0_223:                              //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x27
	lw x15 ,  532 ( x2 )
	bltu x0, x15, .LBB0_196
	jal x0, .LBB0_205
.LBB0_224:                              //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x18 ,  8
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  28 ( x2 )             //  4-byte Folded Reload
	sub x20 ,  x15 ,  x14
	bge x0, x20, .LBB0_233
.LBB0_225:                              //  %while.cond683.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfiwprintf_r.zeroes&4095
	lui x15 ,  (_svfiwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	slti x15 ,  x20 ,  17
	beq x0, x15, .LBB0_228
	jal x0, .LBB0_230
.LBB0_226:                              //    in Loop: Header=BB0_228 Depth=3
	addi x18 ,  x18 ,  8
.LBB0_227:                              //  %if.end702
                                        //    in Loop: Header=BB0_228 Depth=3
	lui x30 ,  _svfiwprintf_r.zeroes&4095
	lui x15 ,  (_svfiwprintf_r.zeroes>>12)&1048575
	addi x20 ,  x20 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  16
	bge x15, x20, .LBB0_230
.LBB0_228:                              //  %while.body686
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x19 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x19 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x18 )
	lw x15 ,  524 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_226
.LBB0_229:                              //  %if.then696
                                        //    in Loop: Header=BB0_228 Depth=3
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	addi x18 ,  x2 ,  456
	beq x0, x10, .LBB0_227
	jal x0, .LBB0_253
.LBB0_230:                              //  %while.end704
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x19 )
	slli x15 ,  x20 ,  2&31
	sw x15 ,  4 ( x18 )
	add x14 ,  x15 ,  x14
	lw x15 ,  524 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_232
.LBB0_231:                              //  %if.then716
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	addi x18 ,  x2 ,  456
	beq x0, x10, .LBB0_233
	jal x0, .LBB0_253
.LBB0_232:                              //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x18 ,  8
.LBB0_233:                              //  %if.end723
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	sw x25 ,  0 ( x18 )
	lw x14 ,  8 ( x19 )
	slli x15 ,  x15 ,  2&31
	add x14 ,  x15 ,  x14
	sw x15 ,  4 ( x18 )
	lw x15 ,  524 ( x2 )
	sw x14 ,  8 ( x19 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  524 ( x2 )
	bltu x0, x15, .LBB0_242
.LBB0_234:                              //  %if.then735
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  456
	addi x25 ,  x0 ,  -1
	bltu x0, x10, .LBB0_254
.LBB0_235:                              //  %if.end741
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x14 ,  x27 ,  4
	beq x0, x14, .LBB0_245
.LBB0_236:                              //  %if.then744
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x18 ,  x23 ,  x9
	bge x0, x18, .LBB0_245
.LBB0_237:                              //  %while.cond749.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfiwprintf_r.blanks&4095
	lui x14 ,  (_svfiwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	slti x14 ,  x18 ,  17
	beq x0, x14, .LBB0_240
	jal x0, .LBB0_243
.LBB0_238:                              //    in Loop: Header=BB0_240 Depth=3
	addi x15 ,  x15 ,  8
.LBB0_239:                              //  %if.end768
                                        //    in Loop: Header=BB0_240 Depth=3
	lui x30 ,  _svfiwprintf_r.blanks&4095
	lui x14 ,  (_svfiwprintf_r.blanks>>12)&1048575
	addi x18 ,  x18 ,  -16
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	addi x14 ,  x0 ,  16
	bge x14, x18, .LBB0_243
.LBB0_240:                              //  %while.body752
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  8 ( x19 )
	addi x14 ,  x14 ,  64
	sw x14 ,  8 ( x19 )
	addi x14 ,  x0 ,  64
	sw x14 ,  4 ( x15 )
	lw x14 ,  524 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  524 ( x2 )
	bltu x0, x14, .LBB0_238
.LBB0_241:                              //  %if.then762
                                        //    in Loop: Header=BB0_240 Depth=3
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	addi x15 ,  x2 ,  456
	beq x0, x10, .LBB0_239
	jal x0, .LBB0_254
.LBB0_242:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x18 ,  8
	addi x25 ,  x0 ,  -1
	andi x14 ,  x27 ,  4
	bltu x0, x14, .LBB0_236
	jal x0, .LBB0_245
.LBB0_243:                              //  %while.end770
                                        //    in Loop: Header=BB0_8 Depth=2
	slli x14 ,  x18 ,  2&31
	sw x14 ,  4 ( x15 )
	lw x15 ,  8 ( x19 )
	add x15 ,  x14 ,  x15
	lw x14 ,  524 ( x2 )
	sw x15 ,  8 ( x19 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  524 ( x2 )
	bltu x0, x14, .LBB0_246
.LBB0_244:                              //  %if.then782
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	bltu x0, x10, .LBB0_254
.LBB0_245:                              //  %if.end790thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  528 ( x2 )
.LBB0_246:                              //  %if.end790
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x9, x23, .LBB0_248
.LBB0_247:                              //  %if.end790
                                        //    in Loop: Header=BB0_8 Depth=2
	add x23 ,  x0 ,  x9
.LBB0_248:                              //  %if.end790
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x20 ,  x23
	beq x0, x15, .LBB0_250
.LBB0_249:                              //  %land.lhs.true800
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call __ssprint_r
	bltu x0, x10, .LBB0_254
.LBB0_250:                              //  %if.end804
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x0 ,  524 ( x2 )
	beq x0, x15, .LBB0_5
.LBB0_251:                              //  %if.then809
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x24
	call _free_r
	addi x18 ,  x2 ,  456
	add x9 ,  x0 ,  x22
	lw x15 ,  0 ( x9 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_252:                              //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x18 ,  8
	add x20 ,  x0 ,  x27
	lw x15 ,  532 ( x2 )
	bltu x0, x15, .LBB0_196
	jal x0, .LBB0_205
.LBB0_124:                              //  %cond.true155
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x26 ,  x15 ,  16&31
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	bge x27, x0, .LBB0_106
	jal x0, .LBB0_118
.LBB0_125:                              //  %cond.true219
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x26 ,  0 ( x15 )
	jal x0, .LBB0_139
.LBB0_126:                              //  %cond.true347
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lw x26 ,  0 ( x15 )
	jal x0, .LBB0_141
.LBB0_127:                              //  %cond.true388
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lhu x26 ,  0 ( x15 )
	add x27 ,  x0 ,  x8
	andi x15 ,  x20 ,  1
	bltu x0, x15, .LBB0_83
	jal x0, .LBB0_85
.LBB0_128:                              //  %if.else283
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	call strlen
	add x24 ,  x0 ,  x10
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	sltiu x15 ,  x24 ,  100
	slli x20 ,  x24 ,  2&31
	beq x0, x15, .LBB0_74
.LBB0_129:                              //  %if.end302
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x25 ,  x2 ,  56
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	beq x0, x24, .LBB0_132
.LBB0_130:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x25
	add x14 ,  x0 ,  x24
.LBB0_131:                              //  %for.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x13 ,  0 ( x9 )
	addi x9 ,  x9 ,  1
	addi x14 ,  x14 ,  -1
	sw x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB0_131
.LBB0_132:                              //  %cleanup311.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x20 ,  x25
	add x10 ,  x0 ,  x24
	add x24 ,  x0 ,  x8
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	add x20 ,  x0 ,  x27
	sw x0 ,  0 ( x15 )
	add x15 ,  x0 ,  x24
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x24, .LBB0_191
	jal x0, .LBB0_192
.LBB0_133:                              //  %if.else334
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	call wcslen
.LBB0_134:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	add x24 ,  x0 ,  x8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB0_136
.LBB0_135:                              //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x8
.LBB0_136:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	add x25 ,  x0 ,  x9
.LBB0_137:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x0 ,  x24
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x24, .LBB0_191
	jal x0, .LBB0_192
.LBB0_138:                              //  %cond.true224
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lhu x26 ,  0 ( x15 )
.LBB0_139:                              //  %cond.false228
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	add x27 ,  x0 ,  x8
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x20 ,  x20 ,  -1025
	add x15 ,  x0 ,  x8
	sw x0 ,  532 ( x2 )
	blt x25, x24, .LBB0_142
	jal x0, .LBB0_143
.LBB0_140:                              //  %cond.true352
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  536 ( x2 )
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  536 ( x2 )
	lhu x26 ,  0 ( x15 )
.LBB0_141:                              //  %cond.false356
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x0 ,  1
	add x27 ,  x0 ,  x8
	sw x0 ,  532 ( x2 )
	bge x25, x24, .LBB0_143
	jal x0, .LBB0_142
.LBB0_253:
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB0_254:                              //  %error
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_260
.LBB0_255:                              //  %if.then822
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x24
	call _free_r
	lbu x15 ,  12 ( x26 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB0_261
	jal x0, .LBB0_262
.LBB0_256:                              //  %done
	lw x15 ,  528 ( x2 )
	beq x0, x15, .LBB0_258
.LBB0_257:                              //  %land.lhs.true813
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  520
	add x11 ,  x0 ,  x26
	call __ssprint_r
	bltu x0, x10, .LBB0_259
.LBB0_258:                              //  %if.end817
	sw x0 ,  524 ( x2 )
.LBB0_259:                              //  %if.end823
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB0_260:                              //  %if.end823
	lbu x15 ,  12 ( x26 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB0_262
.LBB0_261:                              //  %if.end823
	addi x20 ,  x0 ,  -1
.LBB0_262:                              //  %cleanup833
	add x10 ,  x0 ,  x20
	lw x8 ,  540 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  544 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  548 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  552 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  556 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  560 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  564 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  568 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  572 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  576 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  580 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  584 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  588 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  592
	.cfi_def_cfa 2, 0
	ret
.LBB0_263:
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_255
	jal x0, .LBB0_260
.LBB0_264:                              //  %if.then6
	addi x15 ,  x0 ,  12
	addi x20 ,  x0 ,  -1
	sw x15 ,  0 ( x24 )
	jal x0, .LBB0_262
.LBB0_265:
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_255
	jal x0, .LBB0_260
.LBB0_266:                              //  %cleanup
	lh x15 ,  12 ( x26 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x26 )
	jal x0, .LBB0_259
.Lfunc_end0:
	.size	_svfiwprintf_r, .Lfunc_end0-_svfiwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_256
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_27
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_29
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_30
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_35
	.long	.LBB0_37
	.long	.LBB0_107
	.long	.LBB0_40
	.long	.LBB0_21
	.long	.LBB0_107
	.long	.LBB0_41
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_64
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_67
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_81
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_64
	.long	.LBB0_76
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_43
	.long	.LBB0_76
	.long	.LBB0_26
	.long	.LBB0_107
	.long	.LBB0_45
	.long	.LBB0_107
	.long	.LBB0_54
	.long	.LBB0_86
	.long	.LBB0_91
	.long	.LBB0_26
	.long	.LBB0_107
	.long	.LBB0_67
	.long	.LBB0_39
	.long	.LBB0_92
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_97
	.long	.LBB0_107
	.long	.LBB0_39
                                        //  -- End function
	.address_space	0
	.type	_svfiwprintf_r.blanks,@object //  @_svfiwprintf_r.blanks
	.p2align	2
_svfiwprintf_r.blanks:
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
	.size	_svfiwprintf_r.blanks, 64

	.address_space	0
	.type	_svfiwprintf_r.zeroes,@object //  @_svfiwprintf_r.zeroes
	.p2align	2
_svfiwprintf_r.zeroes:
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
	.size	_svfiwprintf_r.zeroes, 64

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
