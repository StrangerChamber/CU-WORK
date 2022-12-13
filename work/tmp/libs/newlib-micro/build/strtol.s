	.text
	.file	"strtol.c"
	.globl	_strtol_r               //  -- Begin function _strtol_r
	.type	_strtol_r,@function
_strtol_r:                              //  @_strtol_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, _strtol_l
.Lfunc_end0:
	.size	_strtol_r, .Lfunc_end0-_strtol_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtol_l,@function     //  -- Begin function _strtol_l
_strtol_l:                              //  @_strtol_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	addi x15 ,  x0 ,  36
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
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
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	bltu x15, x13, .LBB1_46
.LBB1_1:                                //  %entry
	xori x15 ,  x13 ,  1
	beq x0, x15, .LBB1_46
.LBB1_2:
	lui x14 ,  (_ctype_>>12)&1048575
	add x15 ,  x0 ,  x9
.LBB1_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x23 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	addi x15 ,  x15 ,  1
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x11 ,  x23 ,  x11
	lbu x11 ,  1 ( x11 )
	andi x11 ,  x11 ,  8
	bltu x0, x11, .LBB1_3
.LBB1_4:                                //  %do.end
	xori x14 ,  x23 ,  43
	beq x0, x14, .LBB1_8
.LBB1_5:                                //  %do.end
	xori x14 ,  x23 ,  45
	bltu x0, x14, .LBB1_7
.LBB1_6:
	slti x11 ,  x0 ,  1
	jal x0, .LBB1_9
.LBB1_46:                               //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	add x20 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
	jal x0, .LBB1_45
.LBB1_8:                                //  %if.then13
	add x11 ,  x0 ,  x0
.LBB1_9:                                //  %if.end17.sink.split
	lbu x23 ,  0 ( x15 )
	addi x24 ,  x15 ,  1
	jal x0, .LBB1_10
.LBB1_7:                                //  %do.end.if.end17_crit_edge
	add x11 ,  x0 ,  x0
	add x24 ,  x0 ,  x15
.LBB1_10:                               //  %if.end17
	andi x15 ,  x13 ,  -17
	xori x14 ,  x23 ,  48
	sw x12 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB1_16
.LBB1_11:                               //  %if.end17
	bltu x0, x14, .LBB1_16
.LBB1_12:                               //  %land.lhs.true25
	lbu x15 ,  0 ( x24 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB1_13
.LBB1_15:                               //  %if.end37.thread
	addi x15 ,  x24 ,  2
	addi x19 ,  x0 ,  16
	lbu x23 ,  1 ( x24 )
	add x24 ,  x0 ,  x15
	jal x0, .LBB1_20
.LBB1_16:                               //  %if.end37
	xori x15 ,  x13 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x14, .LBB1_14
.LBB1_17:
	addi x19 ,  x0 ,  10
	beq x0, x15, .LBB1_19
	jal x0, .LBB1_20
.LBB1_13:                               //  %if.end37.thread14
	xori x15 ,  x13 ,  0
	sltiu x15 ,  x15 ,  1
.LBB1_14:
	addi x19 ,  x0 ,  8
	addi x23 ,  x0 ,  48
	bltu x0, x15, .LBB1_20
.LBB1_19:
	add x19 ,  x0 ,  x13
.LBB1_20:
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	lui x14 ,  (-2147483648>>12)&1048575
	add x21 ,  x0 ,  x0
	sw x11 ,  12 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x20 ,  x14 ,  x30
	bne x11, x21, .LBB1_22
.LBB1_21:
	add x20 ,  x0 ,  x15
.LBB1_22:
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __udivsi3
	add x11 ,  x0 ,  x19
	add x22 ,  x0 ,  x10
	call __mulsi3
	addi x14 ,  x24 ,  -1
	sub x25 ,  x20 ,  x10
	addi x26 ,  x0 ,  -1
	slti x27 ,  x0 ,  1
	addi x18 ,  x0 ,  25
	add x15 ,  x0 ,  x21
	jal x0, .LBB1_23
.LBB1_30:                               //    in Loop: Header=BB1_23 Depth=1
	add x21 ,  x0 ,  x10
	add x15 ,  x0 ,  x26
.LBB1_35:                               //  %for.inc
                                        //    in Loop: Header=BB1_23 Depth=1
	addi x14 ,  x24 ,  1
	lbu x23 ,  1 ( x24 )
.LBB1_23:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x8 ,  x23 ,  -48
	add x10 ,  x0 ,  x21
	add x24 ,  x0 ,  x14
	sltiu x14 ,  x8 ,  10
	bltu x0, x14, .LBB1_28
.LBB1_24:                               //  %if.else52
                                        //    in Loop: Header=BB1_23 Depth=1
	addi x14 ,  x23 ,  -65
	bltu x18, x14, .LBB1_26
.LBB1_25:                               //  %if.then58
                                        //    in Loop: Header=BB1_23 Depth=1
	addi x8 ,  x23 ,  -55
.LBB1_28:                               //  %if.end71
                                        //    in Loop: Header=BB1_23 Depth=1
	bge x8, x19, .LBB1_36
.LBB1_29:                               //  %if.end75
                                        //    in Loop: Header=BB1_23 Depth=1
	bltu x22, x10, .LBB1_30
.LBB1_31:                               //  %if.end75
                                        //    in Loop: Header=BB1_23 Depth=1
	blt x15, x0, .LBB1_30
.LBB1_32:                               //  %lor.lhs.false81
                                        //    in Loop: Header=BB1_23 Depth=1
	bne x10, x22, .LBB1_34
.LBB1_33:                               //  %lor.lhs.false81
                                        //    in Loop: Header=BB1_23 Depth=1
	add x21 ,  x0 ,  x22
	add x15 ,  x0 ,  x26
	blt x25, x8, .LBB1_35
.LBB1_34:                               //  %if.else88
                                        //    in Loop: Header=BB1_23 Depth=1
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x21 ,  x10 ,  x8
	add x15 ,  x0 ,  x27
	jal x0, .LBB1_35
.LBB1_26:                               //  %if.else60
                                        //    in Loop: Header=BB1_23 Depth=1
	addi x14 ,  x23 ,  -97
	bltu x18, x14, .LBB1_36
.LBB1_27:                               //  %if.then66
                                        //    in Loop: Header=BB1_23 Depth=1
	addi x8 ,  x23 ,  -87
	blt x8, x19, .LBB1_29
.LBB1_36:                               //  %for.end
	blt x15, x0, .LBB1_37
.LBB1_38:                               //  %if.else97
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	bne x13, x14, .LBB1_39
.LBB1_40:                               //  %if.else97
	add x20 ,  x0 ,  x10
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x13, .LBB1_45
.LBB1_42:                               //  %if.then105
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB1_44
.LBB1_43:                               //  %if.then105
	add x9 ,  x0 ,  x24
.LBB1_44:                               //  %if.then105
	sw x9 ,  0 ( x13 )
.LBB1_45:                               //  %cleanup
	add x10 ,  x0 ,  x20
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.LBB1_37:                               //  %if.then94
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x0 ,  34
	sw x14 ,  0 ( x13 )
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB1_42
	jal x0, .LBB1_45
.LBB1_39:
	sub x20 ,  x0 ,  x10
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB1_42
	jal x0, .LBB1_45
.Lfunc_end1:
	.size	_strtol_l, .Lfunc_end1-_strtol_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtol_l                //  -- Begin function strtol_l
	.type	strtol_l,@function
strtol_l:                               //  @strtol_l
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
	jal x0, _strtol_l
.Lfunc_end2:
	.size	strtol_l, .Lfunc_end2-strtol_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtol                  //  -- Begin function strtol
	.type	strtol,@function
strtol:                                 //  @strtol
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
	jal x0, _strtol_l
.Lfunc_end3:
	.size	strtol, .Lfunc_end3-strtol
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
