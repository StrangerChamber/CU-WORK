	.text
	.file	"wcstol.c"
	.globl	_wcstol_r               //  -- Begin function _wcstol_r
	.type	_wcstol_r,@function
_wcstol_r:                              //  @_wcstol_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	jal x0, _wcstol_l
.Lfunc_end0:
	.size	_wcstol_r, .Lfunc_end0-_wcstol_r
	.cfi_endproc
                                        //  -- End function
	.type	_wcstol_l,@function     //  -- Begin function _wcstol_l
_wcstol_l:                              //  @_wcstol_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x19 ,  x0 ,  x14
	add x21 ,  x0 ,  x13
	add x8 ,  x0 ,  x11
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	sw x12 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x11 ,  12 ( x2 )             //  4-byte Folded Spill
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x20 ,  0 ( x8 )
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call iswspace_l
	addi x8 ,  x8 ,  4
	bltu x0, x10, .LBB1_1
.LBB1_2:                                //  %do.end
	xori x15 ,  x20 ,  43
	beq x0, x15, .LBB1_6
.LBB1_3:                                //  %do.end
	xori x15 ,  x20 ,  45
	bltu x0, x15, .LBB1_5
.LBB1_4:
	slti x23 ,  x0 ,  1
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then3
	add x23 ,  x0 ,  x0
.LBB1_7:                                //  %if.end5.sink.split
	lw x20 ,  0 ( x8 )
	addi x24 ,  x8 ,  4
	andi x15 ,  x21 ,  -17
	xori x14 ,  x20 ,  48
	bltu x0, x15, .LBB1_14
.LBB1_9:                                //  %if.end5
	bltu x0, x14, .LBB1_14
.LBB1_10:                               //  %land.lhs.true9
	lw x15 ,  0 ( x24 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB1_11
.LBB1_13:                               //  %if.end14.thread
	addi x15 ,  x24 ,  8
	addi x19 ,  x0 ,  16
	lw x20 ,  4 ( x24 )
	add x24 ,  x0 ,  x15
	jal x0, .LBB1_18
.LBB1_5:                                //  %do.end.if.end5_crit_edge
	add x23 ,  x0 ,  x0
	add x24 ,  x0 ,  x8
	andi x15 ,  x21 ,  -17
	xori x14 ,  x20 ,  48
	beq x0, x15, .LBB1_9
.LBB1_14:                               //  %if.end14
	xori x15 ,  x21 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x14, .LBB1_12
.LBB1_15:
	addi x19 ,  x0 ,  10
	beq x0, x15, .LBB1_17
	jal x0, .LBB1_18
.LBB1_11:                               //  %if.end14.thread136
	xori x15 ,  x21 ,  0
	sltiu x15 ,  x15 ,  1
.LBB1_12:
	addi x19 ,  x0 ,  8
	addi x20 ,  x0 ,  48
	bltu x0, x15, .LBB1_18
.LBB1_17:
	add x19 ,  x0 ,  x21
.LBB1_18:
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	lui x14 ,  (-2147483648>>12)&1048575
	add x22 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x21 ,  x14 ,  x30
	bne x23, x22, .LBB1_20
.LBB1_19:
	add x21 ,  x0 ,  x15
.LBB1_20:
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
	call __udivsi3
	add x11 ,  x0 ,  x19
	add x8 ,  x0 ,  x10
	call __mulsi3
	addi x14 ,  x24 ,  -4
	sub x25 ,  x21 ,  x10
	addi x26 ,  x0 ,  -1
	slti x27 ,  x0 ,  1
	addi x18 ,  x0 ,  25
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_21
.LBB1_28:                               //    in Loop: Header=BB1_21 Depth=1
	add x22 ,  x0 ,  x10
	add x15 ,  x0 ,  x26
.LBB1_33:                               //  %for.inc
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x14 ,  x24 ,  4
	lw x20 ,  4 ( x24 )
.LBB1_21:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x9 ,  x20 ,  -48
	add x10 ,  x0 ,  x22
	add x24 ,  x0 ,  x14
	sltiu x14 ,  x9 ,  10
	bltu x0, x14, .LBB1_26
.LBB1_22:                               //  %if.else25
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x14 ,  x20 ,  -65
	bltu x18, x14, .LBB1_24
.LBB1_23:                               //  %if.then29
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x9 ,  x20 ,  -55
.LBB1_26:                               //  %if.end40
                                        //    in Loop: Header=BB1_21 Depth=1
	bge x9, x19, .LBB1_34
.LBB1_27:                               //  %if.end43
                                        //    in Loop: Header=BB1_21 Depth=1
	bltu x8, x10, .LBB1_28
.LBB1_29:                               //  %if.end43
                                        //    in Loop: Header=BB1_21 Depth=1
	blt x15, x0, .LBB1_28
.LBB1_30:                               //  %lor.lhs.false47
                                        //    in Loop: Header=BB1_21 Depth=1
	bne x10, x8, .LBB1_32
.LBB1_31:                               //  %lor.lhs.false47
                                        //    in Loop: Header=BB1_21 Depth=1
	add x22 ,  x0 ,  x8
	add x15 ,  x0 ,  x26
	blt x25, x9, .LBB1_33
.LBB1_32:                               //  %if.else52
                                        //    in Loop: Header=BB1_21 Depth=1
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x22 ,  x10 ,  x9
	add x15 ,  x0 ,  x27
	jal x0, .LBB1_33
.LBB1_24:                               //  %if.else31
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x14 ,  x20 ,  -97
	bltu x18, x14, .LBB1_34
.LBB1_25:                               //  %if.then35
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x9 ,  x20 ,  -87
	blt x9, x19, .LBB1_27
.LBB1_34:                               //  %for.end
	blt x15, x0, .LBB1_35
.LBB1_36:                               //  %if.else59
	add x14 ,  x0 ,  x0
	bne x23, x14, .LBB1_37
.LBB1_38:                               //  %if.else59
	add x21 ,  x0 ,  x10
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x13, .LBB1_43
.LBB1_40:                               //  %if.then66
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB1_42
.LBB1_41:                               //  %if.then66
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
.LBB1_42:                               //  %if.then66
	lw x15 ,  12 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x13 )
.LBB1_43:                               //  %if.end70
	add x10 ,  x0 ,  x21
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
.LBB1_35:                               //  %if.then56
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x0 ,  34
	sw x14 ,  0 ( x13 )
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB1_40
	jal x0, .LBB1_43
.LBB1_37:
	sub x21 ,  x0 ,  x10
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB1_40
	jal x0, .LBB1_43
.Lfunc_end1:
	.size	_wcstol_l, .Lfunc_end1-_wcstol_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstol_l                //  -- Begin function wcstol_l
	.type	wcstol_l,@function
wcstol_l:                               //  @wcstol_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x14 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _wcstol_l
.Lfunc_end2:
	.size	wcstol_l, .Lfunc_end2-wcstol_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstol                  //  -- Begin function wcstol
	.type	wcstol,@function
wcstol:                                 //  @wcstol
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
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	jal x0, _wcstol_l
.Lfunc_end3:
	.size	wcstol, .Lfunc_end3-wcstol
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
