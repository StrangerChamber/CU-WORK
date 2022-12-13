	.text
	.file	"mktemp.c"
	.globl	_mkstemp_r              //  -- Begin function _mkstemp_r
	.type	_mkstemp_r,@function
_mkstemp_r:                             //  @_mkstemp_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	addi x12 ,  x2 ,  4
	lui x15 ,  (65536>>12)&1048575
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x14 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	call _gettemp
	beq x10, x8, .LBB0_1
.LBB0_2:                                //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_mkstemp_r, .Lfunc_end0-_mkstemp_r
	.cfi_endproc
                                        //  -- End function
	.type	_gettemp,@function      //  -- Begin function _gettemp
_gettemp:                               //  @_gettemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -136
	.cfi_adjust_cfa_offset 136
	sw x9 ,  128 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x1 ,  132 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x23 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x20 ,  x0 ,  x15
	add x21 ,  x0 ,  x14
	add x22 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call _getpid_r
	add x19 ,  x0 ,  x10
	xori x15 ,  x21 ,  -1
	add x26 ,  x0 ,  x9
.LBB1_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x26 )
	addi x26 ,  x26 ,  1
	bltu x0, x14, .LBB1_1
.LBB1_2:                                //  %for.end
	addi x25 ,  x26 ,  -1
	sub x14 ,  x25 ,  x9
	bltu x14, x21, .LBB1_8
.LBB1_3:                                //  %if.end
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	add x18 ,  x15 ,  x26
	add x27 ,  x0 ,  x18
	bgeu x9, x18, .LBB1_7
.LBB1_4:                                //  %land.rhs.preheader
	sub x15 ,  x26 ,  x21
	addi x23 ,  x0 ,  10
	addi x15 ,  x15 ,  -2
.LBB1_5:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x27 ,  x0 ,  x15
	lbu x15 ,  0 ( x27 )
	xori x15 ,  x15 ,  88
	bltu x0, x15, .LBB1_7
.LBB1_6:                                //  %while.body
                                        //    in Loop: Header=BB1_5 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	call __udivsi3
	add x11 ,  x0 ,  x23
	add x24 ,  x0 ,  x10
	call __mulsi3
	sub x15 ,  x19 ,  x10
	add x19 ,  x0 ,  x24
	ori x15 ,  x15 ,  48
	sb x15 ,  0 ( x27 )
	addi x15 ,  x27 ,  -1
	bltu x9, x27, .LBB1_5
.LBB1_7:                                //  %while.end
	sub x15 ,  x18 ,  x27
	slti x15 ,  x15 ,  6
	beq x0, x15, .LBB1_11
.LBB1_8:                                //  %if.then
	addi x15 ,  x0 ,  22
.LBB1_9:                                //  %cleanup
	sw x15 ,  0 ( x8 )
	add x19 ,  x0 ,  x0
.LBB1_10:                               //  %cleanup
	add x10 ,  x0 ,  x19
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  128 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  132 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  136
	.cfi_def_cfa 2, 0
	ret
.LBB1_11:                               //  %for.cond15.preheader
	bgeu x9, x27, .LBB1_15
.LBB1_12:
	add x18 ,  x0 ,  x27
.LBB1_13:                               //  %if.end19
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  0 ( x18 )
	xori x15 ,  x15 ,  47
	beq x0, x15, .LBB1_17
.LBB1_14:                               //  %for.inc33
                                        //    in Loop: Header=BB1_13 Depth=1
	addi x18 ,  x18 ,  -1
	bltu x9, x18, .LBB1_13
.LBB1_15:                               //  %for.end35
	beq x0, x22, .LBB1_21
.LBB1_16:                               //  %if.then38
	addi x15 ,  x0 ,  88
	jal x0, .LBB1_9
.LBB1_17:                               //  %if.then23
	addi x12 ,  x2 ,  12
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	sb x0 ,  0 ( x18 )
	call _stat_r
	add x19 ,  x0 ,  x0
	bltu x0, x10, .LBB1_10
.LBB1_18:                               //  %if.end27
	lbu x15 ,  17 ( x2 )
	andi x15 ,  x15 ,  64
	bltu x0, x15, .LBB1_20
.LBB1_19:                               //  %if.then29
	addi x15 ,  x0 ,  20
	sw x15 ,  0 ( x8 )
	jal x0, .LBB1_10
.LBB1_20:                               //  %if.end31
	addi x15 ,  x0 ,  47
	sb x15 ,  0 ( x18 )
	bltu x0, x22, .LBB1_16
.LBB1_21:                               //  %if.else.lr.ph
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lui x30 ,  2562&4095
	add x18 ,  x27 ,  x21
	lui x15 ,  (2562>>12)&1048575
	addi x22 ,  x27 ,  1
	srli x30 ,  x30 ,  12&31
	addi x21 ,  x18 ,  2
	or x15 ,  x15 ,  x30
	beq x0, x19, .LBB1_32
.LBB1_22:                               //  %if.else.lr.ph.split
	or x20 ,  x15 ,  x20
	addi x13 ,  x0 ,  384
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x20
	call _open_r
	sw x10 ,  0 ( x19 )
	beq x21, x26, .LBB1_34
.LBB1_23:                               //  %if.else.preheader
	slti x19 ,  x0 ,  1
	bge x10, x0, .LBB1_10
.LBB1_24:                               //  %if.end46.preheader
	addi x24 ,  x18 ,  1
	add x23 ,  x0 ,  x0
	addi x26 ,  x0 ,  97
	lui x27 ,  (_ctype_>>12)&1048575
	addi x21 ,  x0 ,  384
.LBB1_25:                               //  %if.end46
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_26 Depth 2
	lw x15 ,  0 ( x8 )
	add x14 ,  x0 ,  x24
	xori x13 ,  x15 ,  17
	add x15 ,  x0 ,  x22
	bltu x0, x13, .LBB1_45
.LBB1_26:                               //  %if.end66
                                        //    Parent Loop BB1_25 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x13 ,  0 ( x15 )
	xori x12 ,  x13 ,  122
	bltu x0, x12, .LBB1_28
.LBB1_27:                               //  %if.then70
                                        //    in Loop: Header=BB1_26 Depth=2
	sb x26 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  1
	bne x25, x14, .LBB1_26
	jal x0, .LBB1_45
.LBB1_28:                               //  %if.else72
                                        //    in Loop: Header=BB1_25 Depth=1
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x27 ,  x30
	add x14 ,  x13 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  4
	beq x14, x23, .LBB1_30
.LBB1_29:                               //  %if.else72
                                        //    in Loop: Header=BB1_25 Depth=1
	add x14 ,  x0 ,  x26
	jal x0, .LBB1_31
.LBB1_30:                               //    in Loop: Header=BB1_25 Depth=1
	addi x14 ,  x13 ,  1
.LBB1_31:                               //  %if.else72
                                        //    in Loop: Header=BB1_25 Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	sb x14 ,  0 ( x15 )
	call _open_r
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
	blt x10, x0, .LBB1_25
	jal x0, .LBB1_10
.LBB1_32:                               //  %if.else.us.preheader
	addi x12 ,  x2 ,  12
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call _stat_r
	beq x0, x10, .LBB1_35
.LBB1_33:                               //  %if.then55
	lw x15 ,  0 ( x8 )
	xori x15 ,  x15 ,  2
	sltiu x19 ,  x15 ,  1
	jal x0, .LBB1_10
.LBB1_34:                               //  %if.then41.us131
	xori x15 ,  x10 ,  -1
	slt x19 ,  x15 ,  x0
	jal x0, .LBB1_10
.LBB1_45:
	add x19 ,  x0 ,  x23
	jal x0, .LBB1_10
.LBB1_35:                               //  %if.end61.us.preheader
	addi x20 ,  x18 ,  1
	add x19 ,  x0 ,  x0
	addi x23 ,  x0 ,  97
	lui x24 ,  (_ctype_>>12)&1048575
	addi x18 ,  x2 ,  12
.LBB1_36:                               //  %if.end61.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_38 Depth 2
	beq x21, x26, .LBB1_10
.LBB1_37:                               //  %if.end66.us.preheader
                                        //    in Loop: Header=BB1_36 Depth=1
	add x14 ,  x0 ,  x20
	add x15 ,  x0 ,  x22
.LBB1_38:                               //  %if.end66.us
                                        //    Parent Loop BB1_36 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x13 ,  0 ( x15 )
	xori x12 ,  x13 ,  122
	bltu x0, x12, .LBB1_40
.LBB1_39:                               //  %if.then70.us
                                        //    in Loop: Header=BB1_38 Depth=2
	sb x23 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  1
	bne x25, x14, .LBB1_38
	jal x0, .LBB1_10
.LBB1_40:                               //  %if.else72.us
                                        //    in Loop: Header=BB1_36 Depth=1
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x24 ,  x30
	add x14 ,  x13 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  4
	beq x14, x19, .LBB1_42
.LBB1_41:                               //  %if.else72.us
                                        //    in Loop: Header=BB1_36 Depth=1
	add x14 ,  x0 ,  x23
	jal x0, .LBB1_43
.LBB1_42:                               //    in Loop: Header=BB1_36 Depth=1
	addi x14 ,  x13 ,  1
.LBB1_43:                               //  %if.else72.us
                                        //    in Loop: Header=BB1_36 Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	sb x14 ,  0 ( x15 )
	call _stat_r
	beq x0, x10, .LBB1_36
	jal x0, .LBB1_33
.Lfunc_end1:
	.size	_gettemp, .Lfunc_end1-_gettemp
	.cfi_endproc
                                        //  -- End function
	.globl	_mkdtemp_r              //  -- Begin function _mkdtemp_r
	.type	_mkdtemp_r,@function
_mkdtemp_r:                             //  @_mkdtemp_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -112
	.cfi_adjust_cfa_offset 112
	sw x9 ,  104 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x1 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call _getpid_r
	add x18 ,  x0 ,  x10
	addi x22 ,  x9 ,  -1
.LBB2_1:                                //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  1 ( x22 )
	addi x22 ,  x22 ,  1
	bltu x0, x15, .LBB2_1
.LBB2_2:                                //  %for.end.i
	bgeu x9, x22, .LBB2_3
.LBB2_4:                                //  %land.rhs.i.preheader
	addi x14 ,  x22 ,  -1
	addi x19 ,  x0 ,  10
.LBB2_5:                                //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	add x21 ,  x0 ,  x14
	lbu x15 ,  0 ( x21 )
	xori x14 ,  x15 ,  88
	bltu x0, x14, .LBB2_7
.LBB2_6:                                //  %while.body.i
                                        //    in Loop: Header=BB2_5 Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __udivsi3
	add x11 ,  x0 ,  x19
	add x20 ,  x0 ,  x10
	call __mulsi3
	sub x15 ,  x18 ,  x10
	addi x14 ,  x21 ,  -1
	add x18 ,  x0 ,  x20
	ori x15 ,  x15 ,  48
	sb x15 ,  0 ( x21 )
	bltu x9, x21, .LBB2_5
.LBB2_7:                                //  %while.end.i
	sub x14 ,  x22 ,  x21
	slti x14 ,  x14 ,  6
	beq x0, x14, .LBB2_9
.LBB2_8:
	addi x18 ,  x0 ,  22
	jal x0, .LBB2_19
.LBB2_3:
	add x15 ,  x0 ,  x0
	add x21 ,  x0 ,  x22
	sub x14 ,  x22 ,  x21
	slti x14 ,  x14 ,  6
	bltu x0, x14, .LBB2_8
.LBB2_9:                                //  %for.cond15.preheader.i
	addi x18 ,  x0 ,  88
	bgeu x9, x21, .LBB2_19
.LBB2_10:                               //  %if.end19.i.preheader
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  47
	beq x0, x15, .LBB2_15
.LBB2_11:                               //  %for.inc33.i.preheader
	addi x15 ,  x21 ,  -1
.LBB2_12:                               //  %for.inc33.i
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x9, x15, .LBB2_19
.LBB2_13:                               //  %for.inc33.i.if.end19.i_crit_edge
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  -1
	xori x14 ,  x14 ,  47
	bltu x0, x14, .LBB2_12
.LBB2_14:                               //  %if.then23.i.loopexit
	addi x21 ,  x15 ,  1
.LBB2_15:                               //  %if.then23.i
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	sb x0 ,  0 ( x21 )
	call _stat_r
	bltu x0, x10, .LBB2_20
.LBB2_16:                               //  %if.end27.i
	lbu x15 ,  13 ( x2 )
	andi x15 ,  x15 ,  64
	bltu x0, x15, .LBB2_18
.LBB2_17:
	addi x18 ,  x0 ,  20
	jal x0, .LBB2_19
.LBB2_18:                               //  %if.end31.i
	addi x15 ,  x0 ,  47
	sb x15 ,  0 ( x21 )
.LBB2_19:                               //  %_gettemp.exit.sink.split
	sw x18 ,  0 ( x8 )
.LBB2_20:                               //  %_gettemp.exit
	add x10 ,  x0 ,  x0
	lw x8 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  104 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  108 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  112
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_mkdtemp_r, .Lfunc_end2-_mkdtemp_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mkstemps_r             //  -- Begin function _mkstemps_r
	.type	_mkstemps_r,@function
_mkstemps_r:                            //  @_mkstemps_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	add x14 ,  x0 ,  x12
	addi x12 ,  x2 ,  4
	lui x15 ,  (65536>>12)&1048575
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x13 ,  x0 ,  x8
	call _gettemp
	beq x10, x8, .LBB3_1
.LBB3_2:                                //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB3_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	_mkstemps_r, .Lfunc_end3-_mkstemps_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mkostemp_r             //  -- Begin function _mkostemp_r
	.type	_mkostemp_r,@function
_mkostemp_r:                            //  @_mkostemp_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	andi x15 ,  x12 ,  -4
	addi x12 ,  x2 ,  4
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x14 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	call _gettemp
	beq x10, x8, .LBB4_1
.LBB4_2:                                //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB4_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	_mkostemp_r, .Lfunc_end4-_mkostemp_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mkostemps_r            //  -- Begin function _mkostemps_r
	.type	_mkostemps_r,@function
_mkostemps_r:                           //  @_mkostemps_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	add x14 ,  x0 ,  x12
	andi x15 ,  x13 ,  -4
	addi x12 ,  x2 ,  4
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x13 ,  x0 ,  x8
	call _gettemp
	beq x10, x8, .LBB5_1
.LBB5_2:                                //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB5_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end5:
	.size	_mkostemps_r, .Lfunc_end5-_mkostemps_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mktemp_r               //  -- Begin function _mktemp_r
	.type	_mktemp_r,@function
_mktemp_r:                              //  @_mktemp_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x0
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x11
	add x14 ,  x0 ,  x9
	add x13 ,  x0 ,  x9
	add x12 ,  x0 ,  x9
	add x15 ,  x0 ,  x9
	call _gettemp
	beq x10, x9, .LBB6_2
.LBB6_1:                                //  %entry
	add x9 ,  x0 ,  x8
.LBB6_2:                                //  %entry
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end6:
	.size	_mktemp_r, .Lfunc_end6-_mktemp_r
	.cfi_endproc
                                        //  -- End function
	.globl	mkstemp                 //  -- Begin function mkstemp
	.type	mkstemp,@function
mkstemp:                                //  @mkstemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x11 ,  x0 ,  x10
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	addi x12 ,  x2 ,  4
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x14 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	lui x15 ,  (65536>>12)&1048575
	call _gettemp
	beq x10, x8, .LBB7_1
.LBB7_2:                                //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB7_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end7:
	.size	mkstemp, .Lfunc_end7-mkstemp
	.cfi_endproc
                                        //  -- End function
	.globl	mkdtemp                 //  -- Begin function mkdtemp
	.type	mkdtemp,@function
mkdtemp:                                //  @mkdtemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -112
	.cfi_adjust_cfa_offset 112
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x9 ,  104 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x8 ,  0 ( x15 )
	add x10 ,  x0 ,  x8
	call _getpid_r
	add x18 ,  x0 ,  x10
	addi x22 ,  x9 ,  -1
.LBB8_1:                                //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  1 ( x22 )
	addi x22 ,  x22 ,  1
	bltu x0, x15, .LBB8_1
.LBB8_2:                                //  %for.end.i
	bgeu x9, x22, .LBB8_3
.LBB8_4:                                //  %land.rhs.i.preheader
	addi x14 ,  x22 ,  -1
	addi x19 ,  x0 ,  10
.LBB8_5:                                //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	add x21 ,  x0 ,  x14
	lbu x15 ,  0 ( x21 )
	xori x14 ,  x15 ,  88
	bltu x0, x14, .LBB8_7
.LBB8_6:                                //  %while.body.i
                                        //    in Loop: Header=BB8_5 Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __udivsi3
	add x11 ,  x0 ,  x19
	add x20 ,  x0 ,  x10
	call __mulsi3
	sub x15 ,  x18 ,  x10
	addi x14 ,  x21 ,  -1
	add x18 ,  x0 ,  x20
	ori x15 ,  x15 ,  48
	sb x15 ,  0 ( x21 )
	bltu x9, x21, .LBB8_5
.LBB8_7:                                //  %while.end.i
	sub x14 ,  x22 ,  x21
	slti x14 ,  x14 ,  6
	beq x0, x14, .LBB8_9
.LBB8_8:
	addi x18 ,  x0 ,  22
	jal x0, .LBB8_19
.LBB8_3:
	add x15 ,  x0 ,  x0
	add x21 ,  x0 ,  x22
	sub x14 ,  x22 ,  x21
	slti x14 ,  x14 ,  6
	bltu x0, x14, .LBB8_8
.LBB8_9:                                //  %for.cond15.preheader.i
	addi x18 ,  x0 ,  88
	bgeu x9, x21, .LBB8_19
.LBB8_10:                               //  %if.end19.i.preheader
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  47
	beq x0, x15, .LBB8_15
.LBB8_11:                               //  %for.inc33.i.preheader
	addi x15 ,  x21 ,  -1
.LBB8_12:                               //  %for.inc33.i
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x9, x15, .LBB8_19
.LBB8_13:                               //  %for.inc33.i.if.end19.i_crit_edge
                                        //    in Loop: Header=BB8_12 Depth=1
	lbu x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  -1
	xori x14 ,  x14 ,  47
	bltu x0, x14, .LBB8_12
.LBB8_14:                               //  %if.then23.i.loopexit
	addi x21 ,  x15 ,  1
.LBB8_15:                               //  %if.then23.i
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	sb x0 ,  0 ( x21 )
	call _stat_r
	bltu x0, x10, .LBB8_20
.LBB8_16:                               //  %if.end27.i
	lbu x15 ,  13 ( x2 )
	andi x15 ,  x15 ,  64
	bltu x0, x15, .LBB8_18
.LBB8_17:
	addi x18 ,  x0 ,  20
	jal x0, .LBB8_19
.LBB8_18:                               //  %if.end31.i
	addi x15 ,  x0 ,  47
	sb x15 ,  0 ( x21 )
.LBB8_19:                               //  %_gettemp.exit.sink.split
	sw x18 ,  0 ( x8 )
.LBB8_20:                               //  %_gettemp.exit
	add x10 ,  x0 ,  x0
	lw x8 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  104 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  108 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  112
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end8:
	.size	mkdtemp, .Lfunc_end8-mkdtemp
	.cfi_endproc
                                        //  -- End function
	.globl	mkstemps                //  -- Begin function mkstemps
	.type	mkstemps,@function
mkstemps:                               //  @mkstemps
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x14 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	addi x12 ,  x2 ,  4
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x13 ,  x0 ,  x8
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	lui x15 ,  (65536>>12)&1048575
	call _gettemp
	beq x10, x8, .LBB9_1
.LBB9_2:                                //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB9_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end9:
	.size	mkstemps, .Lfunc_end9-mkstemps
	.cfi_endproc
                                        //  -- End function
	.globl	mkostemp                //  -- Begin function mkostemp
	.type	mkostemp,@function
mkostemp:                               //  @mkostemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x10
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	addi x12 ,  x2 ,  4
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x14 ,  x0 ,  x8
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	andi x15 ,  x11 ,  -4
	add x11 ,  x0 ,  x13
	add x13 ,  x0 ,  x8
	call _gettemp
	beq x10, x8, .LBB10_1
.LBB10_2:                               //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB10_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end10:
	.size	mkostemp, .Lfunc_end10-mkostemp
	.cfi_endproc
                                        //  -- End function
	.globl	mkostemps               //  -- Begin function mkostemps
	.type	mkostemps,@function
mkostemps:                              //  @mkostemps
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x14 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x13 ,  x0 ,  x8
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	andi x15 ,  x12 ,  -4
	addi x12 ,  x2 ,  4
	call _gettemp
	beq x10, x8, .LBB11_1
.LBB11_2:                               //  %entry
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB11_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end11:
	.size	mkostemps, .Lfunc_end11-mkostemps
	.cfi_endproc
                                        //  -- End function
	.globl	mktemp                  //  -- Begin function mktemp
	.type	mktemp,@function
mktemp:                                 //  @mktemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x14 ,  x0 ,  x9
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	add x15 ,  x0 ,  x9
	call _gettemp
	beq x10, x9, .LBB12_2
.LBB12_1:                               //  %entry
	add x9 ,  x0 ,  x8
.LBB12_2:                               //  %entry
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end12:
	.size	mktemp, .Lfunc_end12-mktemp
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
