	.text
	.file	"ecvtbuf.c"
	.globl	fcvtbuf                 //  -- Begin function fcvtbuf
	.type	fcvtbuf,@function
fcvtbuf:                                //  @fcvtbuf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  _impure_ptr&4095
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x15
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x19 ,  x0 ,  x14
	add x18 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x21 ,  x0 ,  x10
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x22 ,  0 ( x15 )
	bltu x0, x8, .LBB0_5
.LBB0_1:                                //  %if.then
	lw x8 ,  84 ( x22 )
	addi x14 ,  x9 ,  35
	lw x15 ,  80 ( x22 )
	blt x14, x15, .LBB0_5
.LBB0_2:                                //  %if.then2
	addi x23 ,  x9 ,  36
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x23
	call _realloc_r
	add x8 ,  x0 ,  x10
	beq x0, x8, .LBB0_3
.LBB0_4:                                //  %if.end
	sw x8 ,  84 ( x22 )
	sw x23 ,  80 ( x22 )
.LBB0_5:                                //  %if.end11
	addi x13 ,  x0 ,  3
	addi x17 ,  x2 ,  8
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x20
	add x14 ,  x0 ,  x9
	add x15 ,  x0 ,  x18
	add x16 ,  x0 ,  x19
	call _dtoa_r
	lw x15 ,  0 ( x18 )
	sub x14 ,  x0 ,  x15
	lw x15 ,  8 ( x2 )
	bgeu x10, x15, .LBB0_6
.LBB0_12:
	add x15 ,  x0 ,  x8
.LBB0_13:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x13 ,  0 ( x10 )
	addi x14 ,  x14 ,  1
	addi x10 ,  x10 ,  1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	lw x13 ,  8 ( x2 )
	bltu x10, x13, .LBB0_13
.LBB0_7:                                //  %while.cond15.preheader
	blt x14, x9, .LBB0_8
	jal x0, .LBB0_10
.LBB0_6:
	add x15 ,  x0 ,  x8
	bge x14, x9, .LBB0_10
.LBB0_8:                                //  %while.body17.preheader
	sub x14 ,  x9 ,  x14
	addi x13 ,  x0 ,  48
.LBB0_9:                                //  %while.body17
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  -1
	bltu x0, x14, .LBB0_9
.LBB0_10:                               //  %while.end20
	sb x0 ,  0 ( x15 )
.LBB0_11:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:
	add x8 ,  x0 ,  x0
	jal x0, .LBB0_11
.Lfunc_end0:
	.size	fcvtbuf, .Lfunc_end0-fcvtbuf
	.cfi_endproc
                                        //  -- End function
	.globl	ecvtbuf                 //  -- Begin function ecvtbuf
	.type	ecvtbuf,@function
ecvtbuf:                                //  @ecvtbuf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  _impure_ptr&4095
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x15
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x18 ,  x0 ,  x14
	add x19 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x21 ,  x0 ,  x10
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x22 ,  0 ( x15 )
	bltu x0, x8, .LBB1_5
.LBB1_1:                                //  %if.then
	lw x8 ,  84 ( x22 )
	lw x15 ,  80 ( x22 )
	blt x9, x15, .LBB1_5
.LBB1_2:                                //  %if.then2
	addi x23 ,  x9 ,  1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x23
	call _realloc_r
	add x8 ,  x0 ,  x10
	beq x0, x8, .LBB1_3
.LBB1_4:                                //  %if.end
	sw x8 ,  84 ( x22 )
	sw x23 ,  80 ( x22 )
.LBB1_5:                                //  %if.end10
	addi x13 ,  x0 ,  2
	addi x17 ,  x2 ,  8
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x20
	add x14 ,  x0 ,  x9
	add x15 ,  x0 ,  x19
	add x16 ,  x0 ,  x18
	call _dtoa_r
	lw x15 ,  8 ( x2 )
	bgeu x10, x15, .LBB1_6
.LBB1_13:                               //  %while.body.preheader
	add x14 ,  x0 ,  x0
.LBB1_14:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x14 ,  x10
	add x15 ,  x14 ,  x8
	addi x14 ,  x14 ,  1
	lb x13 ,  0 ( x13 )
	sb x13 ,  0 ( x15 )
	add x15 ,  x14 ,  x10
	lw x13 ,  8 ( x2 )
	bltu x15, x13, .LBB1_14
.LBB1_7:                                //  %while.cond14.preheader.loopexit
	add x15 ,  x14 ,  x8
	blt x14, x9, .LBB1_9
	jal x0, .LBB1_11
.LBB1_6:
	add x14 ,  x0 ,  x0
	add x15 ,  x0 ,  x8
	bge x14, x9, .LBB1_11
.LBB1_9:                                //  %while.body16.preheader
	sub x14 ,  x9 ,  x14
	addi x13 ,  x0 ,  48
.LBB1_10:                               //  %while.body16
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  -1
	bltu x0, x14, .LBB1_10
.LBB1_11:                               //  %while.end19
	sb x0 ,  0 ( x15 )
.LBB1_12:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.LBB1_3:
	add x8 ,  x0 ,  x0
	jal x0, .LBB1_12
.Lfunc_end1:
	.size	ecvtbuf, .Lfunc_end1-ecvtbuf
	.cfi_endproc
                                        //  -- End function
	.globl	_gcvt                   //  -- Begin function _gcvt
	.type	_gcvt,@function
_gcvt:                                  //  @_gcvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x23 ,  x0 ,  x0
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x9 ,  x0 ,  x13
	add x22 ,  x0 ,  x10
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x18 ,  x0 ,  x16
	add x21 ,  x0 ,  x15
	add x8 ,  x0 ,  x14
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x23
	call __ltdf2
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x10, x23, .LBB2_2
.LBB2_1:
	xor x19 ,  x15 ,  x19
.LBB2_2:                                //  %entry
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x23
	call __nedf2
	bltu x0, x10, .LBB2_4
.LBB2_3:                                //  %if.then2
	addi x15 ,  x0 ,  48
	sb x0 ,  1 ( x8 )
	sb x15 ,  0 ( x8 )
	jal x0, .LBB2_37
.LBB2_4:                                //  %if.else
	lui x30 ,  -350469331&4095
	lui x15 ,  (-350469331>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058682594&4095
	lui x15 ,  (1058682594>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ledf2
	bge x0, x10, .LBB2_6
.LBB2_5:                                //  %lor.lhs.false
	add x10 ,  x0 ,  x9
	call _mprec_log10
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __gedf2
	bge x10, x0, .LBB2_6
.LBB2_7:                                //  %if.else7
	addi x13 ,  x0 ,  2
	addi x15 ,  x2 ,  16
	addi x16 ,  x2 ,  12
	addi x17 ,  x2 ,  8
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	add x14 ,  x0 ,  x9
	call _dtoa_r
	lw x13 ,  16 ( x2 )
	lui x30 ,  9999&4095
	lui x15 ,  (9999>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x13, x15, .LBB2_8
.LBB2_36:                               //  %if.then10
	add x10 ,  x0 ,  x8
	call strcpy
	jal x0, .LBB2_37
.LBB2_6:                                //  %if.then5
	addi x14 ,  x9 ,  -1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	add x15 ,  x0 ,  x21
	add x16 ,  x0 ,  x18
	call print_e
.LBB2_37:                               //  %cleanup76
	add x10 ,  x0 ,  x8
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
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
.LBB2_8:                                //  %while.cond.preheader
	lbu x12 ,  0 ( x11 )
	beq x0, x12, .LBB2_9
.LBB2_32:                               //  %while.cond.preheader
	bge x0, x13, .LBB2_9
.LBB2_33:
	add x15 ,  x0 ,  x8
.LBB2_34:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sb x12 ,  0 ( x15 )
	addi x9 ,  x9 ,  -1
	addi x15 ,  x15 ,  1
	addi x14 ,  x11 ,  1
	lw x13 ,  16 ( x2 )
	addi x13 ,  x13 ,  -1
	sw x13 ,  16 ( x2 )
	lbu x12 ,  1 ( x11 )
	beq x0, x12, .LBB2_10
.LBB2_35:                               //  %while.body
                                        //    in Loop: Header=BB2_34 Depth=1
	add x11 ,  x0 ,  x14
	blt x0, x13, .LBB2_34
	jal x0, .LBB2_10
.LBB2_9:
	add x15 ,  x0 ,  x8
	add x14 ,  x0 ,  x11
.LBB2_10:                               //  %while.cond18.preheader
	bge x0, x9, .LBB2_15
.LBB2_11:                               //  %while.cond18.preheader
	bge x0, x13, .LBB2_15
.LBB2_12:
	addi x13 ,  x0 ,  48
.LBB2_13:                               //  %while.body25
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x9 ,  x9 ,  -1
	lw x12 ,  16 ( x2 )
	addi x12 ,  x12 ,  -1
	sw x12 ,  16 ( x2 )
	bge x0, x9, .LBB2_15
.LBB2_14:                               //  %while.body25
                                        //    in Loop: Header=BB2_13 Depth=1
	blt x0, x12, .LBB2_13
.LBB2_15:                               //  %while.end29
	bltu x0, x18, .LBB2_17
.LBB2_16:                               //  %lor.lhs.false31
	lbu x13 ,  0 ( x14 )
	beq x0, x13, .LBB2_31
.LBB2_17:                               //  %if.then34
	bne x15, x8, .LBB2_19
.LBB2_18:                               //  %if.then37
	addi x15 ,  x0 ,  48
	sb x15 ,  0 ( x8 )
	addi x15 ,  x8 ,  1
.LBB2_19:                               //  %if.end39
	addi x13 ,  x0 ,  46
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	lw x13 ,  16 ( x2 )
	bge x13, x0, .LBB2_22
.LBB2_20:
	addi x13 ,  x0 ,  48
.LBB2_21:                               //  %while.body44
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	lw x12 ,  16 ( x2 )
	addi x12 ,  x12 ,  1
	sw x12 ,  16 ( x2 )
	blt x12, x0, .LBB2_21
.LBB2_22:                               //  %while.cond47.preheader
	bge x0, x9, .LBB2_27
.LBB2_23:                               //  %while.cond47.preheader
	lbu x13 ,  0 ( x14 )
	beq x0, x13, .LBB2_27
.LBB2_24:                               //  %while.body54.preheader
	addi x14 ,  x14 ,  1
.LBB2_25:                               //  %while.body54
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x9 ,  x9 ,  -1
	bge x0, x9, .LBB2_27
.LBB2_26:                               //  %while.body54
                                        //    in Loop: Header=BB2_25 Depth=1
	lbu x13 ,  0 ( x14 )
	addi x12 ,  x14 ,  1
	add x14 ,  x0 ,  x12
	bltu x0, x13, .LBB2_25
.LBB2_27:                               //  %while.end58
	beq x0, x18, .LBB2_31
.LBB2_28:                               //  %while.end58
	bge x0, x9, .LBB2_31
.LBB2_29:                               //  %while.body64.preheader
	addi x14 ,  x0 ,  48
.LBB2_30:                               //  %while.body64
                                        //  =>This Inner Loop Header: Depth=1
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x9 ,  x9 ,  -1
	blt x0, x9, .LBB2_30
.LBB2_31:                               //  %if.end69
	sb x0 ,  0 ( x15 )
	jal x0, .LBB2_37
.Lfunc_end2:
	.size	_gcvt, .Lfunc_end2-_gcvt
	.cfi_endproc
                                        //  -- End function
	.type	print_e,@function       //  -- Begin function print_e
print_e:                                //  @print_e
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x14
	add x5 ,  x0 ,  x13
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x18 ,  x0 ,  x16
	add x8 ,  x0 ,  x15
	add x19 ,  x0 ,  x11
	add x11 ,  x0 ,  x12
	addi x13 ,  x0 ,  2
	addi x15 ,  x2 ,  4
	addi x16 ,  x2 ,  12
	addi x17 ,  x2 ,  8
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	addi x14 ,  x9 ,  1
	add x12 ,  x0 ,  x5
	call _dtoa_r
	lw x15 ,  4 ( x2 )
	lui x30 ,  9999&4095
	lui x14 ,  (9999>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bne x15, x14, .LBB3_2
.LBB3_1:                                //  %if.then
	add x10 ,  x0 ,  x19
	call strcpy
	jal x0, .LBB3_29
.LBB3_2:                                //  %if.end
	add x15 ,  x0 ,  x0
	bge x15, x9, .LBB3_4
.LBB3_3:
	slti x18 ,  x0 ,  1
.LBB3_4:                                //  %if.end
	lb x14 ,  0 ( x11 )
	addi x20 ,  x19 ,  1
	sb x14 ,  0 ( x19 )
	bge x0, x9, .LBB3_14
.LBB3_5:                                //  %if.end
	lbu x14 ,  1 ( x11 )
	beq x0, x14, .LBB3_14
.LBB3_6:                                //  %while.body.preheader
	beq x0, x18, .LBB3_8
.LBB3_7:                                //  %if.then9.peel
	addi x14 ,  x0 ,  46
	addi x20 ,  x19 ,  2
	sb x14 ,  1 ( x19 )
	lbu x14 ,  1 ( x11 )
.LBB3_8:                                //  %if.end11.peel
	sb x14 ,  0 ( x20 )
	addi x20 ,  x20 ,  1
	addi x9 ,  x9 ,  -1
	bge x0, x9, .LBB3_13
.LBB3_9:                                //  %if.end11.peel
	lbu x13 ,  2 ( x11 )
	beq x0, x13, .LBB3_13
.LBB3_10:                               //  %while.body.preheader1
	addi x14 ,  x11 ,  3
.LBB3_11:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x20 )
	addi x20 ,  x20 ,  1
	addi x9 ,  x9 ,  -1
	bge x0, x9, .LBB3_13
.LBB3_12:                               //  %while.body
                                        //    in Loop: Header=BB3_11 Depth=1
	lbu x13 ,  0 ( x14 )
	addi x12 ,  x14 ,  1
	add x14 ,  x0 ,  x12
	bltu x0, x13, .LBB3_11
.LBB3_13:
	add x18 ,  x0 ,  x15
.LBB3_14:                               //  %while.end
	xori x15 ,  x8 ,  71
	beq x0, x15, .LBB3_30
.LBB3_15:                               //  %while.end
	xori x15 ,  x8 ,  103
	bltu x0, x15, .LBB3_17
.LBB3_16:
	addi x8 ,  x0 ,  101
	jal x0, .LBB3_22
.LBB3_30:                               //  %if.then21
	addi x8 ,  x0 ,  69
	jal x0, .LBB3_22
.LBB3_17:                               //  %while.cond23.preheader
	bge x0, x9, .LBB3_22
.LBB3_18:                               //  %while.body26.peel
	beq x0, x18, .LBB3_20
.LBB3_19:                               //  %if.then28.peel
	addi x15 ,  x0 ,  46
	sb x15 ,  0 ( x20 )
	addi x20 ,  x20 ,  1
.LBB3_20:                               //  %if.end30.peel
	addi x15 ,  x0 ,  48
	addi x14 ,  x9 ,  -1
	sb x15 ,  0 ( x20 )
	addi x20 ,  x20 ,  1
	bge x0, x14, .LBB3_22
.LBB3_21:                               //  %while.body26
                                        //  =>This Inner Loop Header: Depth=1
	sb x15 ,  0 ( x20 )
	addi x20 ,  x20 ,  1
	addi x14 ,  x14 ,  -1
	blt x0, x14, .LBB3_21
.LBB3_22:                               //  %if.end35
	sb x8 ,  0 ( x20 )
	lw x15 ,  4 ( x2 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x2 )
	bge x0, x15, .LBB3_23
.LBB3_24:                               //  %if.else42
	addi x15 ,  x0 ,  43
	sb x15 ,  1 ( x20 )
	lw x10 ,  4 ( x2 )
	slti x15 ,  x10 ,  100
	bltu x0, x15, .LBB3_26
.LBB3_27:                               //  %if.then47
	addi x11 ,  x0 ,  100
	call __udivsi3
	addi x15 ,  x10 ,  48
	addi x11 ,  x0 ,  -100
	sb x15 ,  2 ( x20 )
	call __mulsi3
	lw x15 ,  4 ( x2 )
	addi x8 ,  x20 ,  3
	add x10 ,  x10 ,  x15
	sw x10 ,  4 ( x2 )
	jal x0, .LBB3_28
.LBB3_23:                               //  %if.then40
	addi x15 ,  x0 ,  45
	sb x15 ,  1 ( x20 )
	lw x15 ,  4 ( x2 )
	sub x10 ,  x0 ,  x15
	sw x10 ,  4 ( x2 )
	slti x15 ,  x10 ,  100
	beq x0, x15, .LBB3_27
.LBB3_26:
	addi x8 ,  x20 ,  2
.LBB3_28:                               //  %if.end53
	addi x11 ,  x0 ,  10
	call __divsi3
	addi x15 ,  x10 ,  48
	addi x11 ,  x0 ,  -10
	sb x15 ,  0 ( x8 )
	call __mulsi3
	lw x15 ,  4 ( x2 )
	add x15 ,  x10 ,  x15
	sw x15 ,  4 ( x2 )
	addi x15 ,  x15 ,  48
	sb x0 ,  2 ( x8 )
	sb x15 ,  1 ( x8 )
.LBB3_29:                               //  %cleanup
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	print_e, .Lfunc_end3-print_e
	.cfi_endproc
                                        //  -- End function
	.globl	_dcvt                   //  -- Begin function _dcvt
	.type	_dcvt,@function
_dcvt:                                  //  @_dcvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x9 ,  x0 ,  x14
	add x18 ,  x0 ,  x17
	add x8 ,  x0 ,  x11
	addi x15 ,  x16 ,  -69
	addi x14 ,  x0 ,  34
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x14, x15, .LBB4_37
.LBB4_1:                                //  %entry
	lui x30 ,  JTI4_0&4095
	lui x14 ,  (JTI4_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB4_36:                               //  %sw.bb5
	add x15 ,  x0 ,  x16
	add x11 ,  x0 ,  x8
	add x14 ,  x0 ,  x9
	add x16 ,  x0 ,  x18
	call print_e
	jal x0, .LBB4_37
.LBB4_2:                                //  %sw.bb
	addi x14 ,  x0 ,  3
	add x11 ,  x0 ,  x12
	add x12 ,  x0 ,  x13
	addi x15 ,  x2 ,  12
	addi x16 ,  x2 ,  8
	addi x17 ,  x2 ,  4
	add x13 ,  x0 ,  x14
	add x14 ,  x0 ,  x9
	call _dtoa_r
	lw x13 ,  12 ( x2 )
	lui x30 ,  9999&4095
	lui x15 ,  (9999>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x13, x15, .LBB4_3
.LBB4_32:                               //  %if.then.i
	add x10 ,  x0 ,  x8
	call strcpy
	jal x0, .LBB4_37
.LBB4_33:                               //  %sw.bb2
	add x15 ,  x0 ,  x0
	bne x9, x15, .LBB4_35
.LBB4_34:
	slti x9 ,  x0 ,  1
.LBB4_35:                               //  %sw.bb2
	add x11 ,  x0 ,  x12
	add x12 ,  x0 ,  x13
	add x15 ,  x0 ,  x16
	add x13 ,  x0 ,  x9
	add x14 ,  x0 ,  x8
	add x16 ,  x0 ,  x18
	call _gcvt
	jal x0, .LBB4_37
.LBB4_3:                                //  %while.cond.preheader.i
	bge x0, x13, .LBB4_4
.LBB4_28:                               //  %while.cond.preheader.i
	lbu x12 ,  0 ( x11 )
	add x14 ,  x0 ,  x11
	add x15 ,  x0 ,  x8
	beq x0, x12, .LBB4_5
.LBB4_29:
	add x15 ,  x0 ,  x8
	add x10 ,  x0 ,  x11
.LBB4_30:                               //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x12 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x14 ,  x10 ,  1
	lw x13 ,  12 ( x2 )
	addi x13 ,  x13 ,  -1
	sw x13 ,  12 ( x2 )
	bge x0, x13, .LBB4_5
.LBB4_31:                               //  %while.body.i
                                        //    in Loop: Header=BB4_30 Depth=1
	lbu x12 ,  1 ( x10 )
	add x10 ,  x0 ,  x14
	bltu x0, x12, .LBB4_30
	jal x0, .LBB4_5
.LBB4_4:
	add x14 ,  x0 ,  x11
	add x15 ,  x0 ,  x8
.LBB4_5:                                //  %while.cond5.preheader.i
	bge x0, x13, .LBB4_8
.LBB4_6:
	addi x12 ,  x0 ,  48
.LBB4_7:                                //  %while.body8.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x12 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	lw x13 ,  12 ( x2 )
	addi x13 ,  x13 ,  -1
	sw x13 ,  12 ( x2 )
	blt x0, x13, .LBB4_7
.LBB4_8:                                //  %while.end11.i
	or x12 ,  x9 ,  x18
	bltu x0, x12, .LBB4_10
.LBB4_9:                                //  %lor.lhs.false.i
	lbu x12 ,  0 ( x14 )
	beq x0, x12, .LBB4_27
.LBB4_10:                               //  %if.then15.i
	bne x14, x11, .LBB4_12
.LBB4_11:                               //  %if.then18.i
	addi x13 ,  x0 ,  48
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	lw x13 ,  12 ( x2 )
.LBB4_12:                               //  %if.end20.i
	bge x0, x9, .LBB4_15
.LBB4_13:                               //  %if.end20.i
	bge x13, x0, .LBB4_15
.LBB4_14:                               //  %if.then25.i
	addi x13 ,  x0 ,  46
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	lw x13 ,  12 ( x2 )
.LBB4_15:                               //  %if.end27.i
	bge x0, x9, .LBB4_20
.LBB4_16:                               //  %if.end27.i
	bge x13, x0, .LBB4_20
.LBB4_17:
	addi x13 ,  x0 ,  48
.LBB4_18:                               //  %while.body35.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x9 ,  x9 ,  -1
	lw x12 ,  12 ( x2 )
	addi x12 ,  x12 ,  1
	sw x12 ,  12 ( x2 )
	bge x0, x9, .LBB4_20
.LBB4_19:                               //  %while.body35.i
                                        //    in Loop: Header=BB4_18 Depth=1
	blt x12, x0, .LBB4_18
.LBB4_20:                               //  %while.cond39.preheader.i
	bge x0, x9, .LBB4_24
.LBB4_21:                               //  %while.cond39.preheader.i
	lbu x13 ,  0 ( x14 )
	beq x0, x13, .LBB4_24
.LBB4_22:                               //  %while.body46.i.preheader
	addi x14 ,  x14 ,  1
.LBB4_23:                               //  %while.body46.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x9 ,  x9 ,  -1
	bge x0, x9, .LBB4_24
.LBB4_38:                               //  %while.body46.i
                                        //    in Loop: Header=BB4_23 Depth=1
	lbu x13 ,  0 ( x14 )
	addi x12 ,  x14 ,  1
	add x14 ,  x0 ,  x12
	bltu x0, x13, .LBB4_23
.LBB4_24:                               //  %while.cond51.preheader.i
	bge x0, x9, .LBB4_27
.LBB4_25:
	addi x14 ,  x0 ,  48
.LBB4_26:                               //  %while.body54.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x9 ,  x9 ,  -1
	blt x0, x9, .LBB4_26
.LBB4_27:                               //  %if.end58.i
	sb x0 ,  0 ( x15 )
.LBB4_37:                               //  %sw.epilog
	add x10 ,  x0 ,  x8
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	_dcvt, .Lfunc_end4-_dcvt
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI4_0:
	.long	.LBB4_36
	.long	.LBB4_2
	.long	.LBB4_33
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_36
	.long	.LBB4_2
	.long	.LBB4_33
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
