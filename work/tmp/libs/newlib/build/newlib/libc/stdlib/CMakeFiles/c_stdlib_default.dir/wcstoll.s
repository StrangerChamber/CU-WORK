	.text
	.file	"wcstoll.c"
	.globl	_wcstoll_l              //  -- Begin function _wcstoll_l
	.type	_wcstoll_l,@function
_wcstoll_l:                             //  @_wcstoll_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x19 ,  x0 ,  x14
	add x20 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x21 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x11 ,  20 ( x2 )             //  4-byte Folded Spill
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x22 ,  0 ( x8 )
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x22
	call iswspace_l
	addi x8 ,  x8 ,  4
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %do.end
	xori x15 ,  x22 ,  43
	beq x0, x15, .LBB0_6
.LBB0_3:                                //  %do.end
	xori x15 ,  x22 ,  45
	bltu x0, x15, .LBB0_5
.LBB0_4:
	slti x13 ,  x0 ,  1
	jal x0, .LBB0_7
.LBB0_6:                                //  %if.then3
	add x13 ,  x0 ,  x0
.LBB0_7:                                //  %if.end5.sink.split
	lw x22 ,  0 ( x8 )
	addi x9 ,  x8 ,  4
	jal x0, .LBB0_8
.LBB0_5:                                //  %do.end.if.end5_crit_edge
	add x13 ,  x0 ,  x0
	add x9 ,  x0 ,  x8
.LBB0_8:                                //  %if.end5
	andi x15 ,  x20 ,  -17
	xori x14 ,  x22 ,  48
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  12 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_14
.LBB0_9:                                //  %if.end5
	bltu x0, x14, .LBB0_14
.LBB0_10:                               //  %land.lhs.true9
	lw x15 ,  0 ( x9 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB0_11
.LBB0_13:                               //  %if.end14.thread
	addi x15 ,  x9 ,  8
	addi x19 ,  x0 ,  16
	lw x22 ,  4 ( x9 )
	add x9 ,  x0 ,  x15
	jal x0, .LBB0_18
.LBB0_14:                               //  %if.end14
	xori x15 ,  x20 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x14, .LBB0_12
.LBB0_15:
	addi x19 ,  x0 ,  10
	beq x0, x15, .LBB0_17
	jal x0, .LBB0_18
.LBB0_11:                               //  %if.end14.thread153
	xori x15 ,  x20 ,  0
	sltiu x15 ,  x15 ,  1
.LBB0_12:
	addi x19 ,  x0 ,  8
	addi x22 ,  x0 ,  48
	bltu x0, x15, .LBB0_18
.LBB0_17:
	add x19 ,  x0 ,  x20
.LBB0_18:
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x24 ,  x0 ,  x0
	lui x14 ,  (-2147483648>>12)&1048575
	addi x27 ,  x0 ,  -1
	sw x13 ,  16 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	add x8 ,  x0 ,  x24
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	bne x13, x24, .LBB0_20
.LBB0_19:
	add x8 ,  x0 ,  x27
	add x11 ,  x0 ,  x15
.LBB0_20:
	srai x23 ,  x19 ,  31&31
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	add x13 ,  x0 ,  x23
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x23
	add x20 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	call __muldi3
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	sub x8 ,  x8 ,  x10
	addi x13 ,  x9 ,  -4
	slti x18 ,  x0 ,  1
	addi x26 ,  x0 ,  25
	add x14 ,  x0 ,  x24
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_21
.LBB0_31:                               //    in Loop: Header=BB0_21 Depth=1
	add x24 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	add x15 ,  x0 ,  x27
.LBB0_36:                               //  %for.inc
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x13 ,  x9 ,  4
	lw x22 ,  4 ( x9 )
.LBB0_21:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x21 ,  x22 ,  -48
	add x11 ,  x0 ,  x14
	add x10 ,  x0 ,  x24
	add x9 ,  x0 ,  x13
	sltiu x14 ,  x21 ,  10
	bltu x0, x14, .LBB0_26
.LBB0_22:                               //  %if.else29
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x14 ,  x22 ,  -65
	bltu x26, x14, .LBB0_24
.LBB0_23:                               //  %if.then35
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x21 ,  x22 ,  -55
.LBB0_26:                               //  %if.end48
                                        //    in Loop: Header=BB0_21 Depth=1
	bge x21, x19, .LBB0_37
.LBB0_27:                               //  %if.end52
                                        //    in Loop: Header=BB0_21 Depth=1
	beq x11, x25, .LBB0_28
.LBB0_29:                               //  %if.end52
                                        //    in Loop: Header=BB0_21 Depth=1
	sltu x14 ,  x25 ,  x11
	bltu x0, x14, .LBB0_31
.LBB0_32:                               //  %if.end52
                                        //    in Loop: Header=BB0_21 Depth=1
	blt x15, x0, .LBB0_31
.LBB0_33:                               //  %lor.lhs.false58
                                        //    in Loop: Header=BB0_21 Depth=1
	xor x15 ,  x20 ,  x10
	xor x14 ,  x25 ,  x11
	or x15 ,  x14 ,  x15
	bltu x0, x15, .LBB0_35
.LBB0_34:                               //  %lor.lhs.false58
                                        //    in Loop: Header=BB0_21 Depth=1
	add x24 ,  x0 ,  x20
	add x14 ,  x0 ,  x25
	add x15 ,  x0 ,  x27
	blt x8, x21, .LBB0_36
.LBB0_35:                               //  %if.else65
                                        //    in Loop: Header=BB0_21 Depth=1
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x23
	call __muldi3
	srai x15 ,  x21 ,  31&31
	add x24 ,  x21 ,  x10
	add x15 ,  x15 ,  x11
	sltu x14 ,  x24 ,  x10
	add x14 ,  x14 ,  x15
	add x15 ,  x0 ,  x18
	jal x0, .LBB0_36
.LBB0_28:                               //    in Loop: Header=BB0_21 Depth=1
	sltu x14 ,  x20 ,  x10
	beq x0, x14, .LBB0_32
	jal x0, .LBB0_31
.LBB0_24:                               //  %if.else37
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x14 ,  x22 ,  -97
	bltu x26, x14, .LBB0_37
.LBB0_25:                               //  %if.then43
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x21 ,  x22 ,  -87
	blt x21, x19, .LBB0_27
.LBB0_37:                               //  %for.end
	blt x15, x0, .LBB0_38
.LBB0_39:                               //  %if.else75
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	bne x13, x14, .LBB0_40
.LBB0_41:                               //  %if.else75
	add x12 ,  x0 ,  x10
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB0_44
	jal x0, .LBB0_47
.LBB0_38:                               //  %if.then72
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  34
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x12 ,  4 ( x2 )              //  4-byte Folded Reload
	sw x14 ,  0 ( x13 )
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	beq x0, x13, .LBB0_47
.LBB0_44:                               //  %if.then83
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB0_46
.LBB0_45:                               //  %if.then83
	sw x9 ,  20 ( x2 )              //  4-byte Folded Spill
.LBB0_46:                               //  %if.then83
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x13 )
	jal x0, .LBB0_47
.LBB0_40:
	sltu x14 ,  x0 ,  x10
	sub x12 ,  x0 ,  x10
	add x14 ,  x14 ,  x11
	sub x11 ,  x0 ,  x14
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB0_44
.LBB0_47:                               //  %if.end87
	add x10 ,  x0 ,  x12
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wcstoll_l, .Lfunc_end0-_wcstoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstoll_r              //  -- Begin function _wcstoll_r
	.type	_wcstoll_r,@function
_wcstoll_r:                             //  @_wcstoll_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	jal x0, _wcstoll_l
.Lfunc_end1:
	.size	_wcstoll_r, .Lfunc_end1-_wcstoll_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoll_l               //  -- Begin function wcstoll_l
	.type	wcstoll_l,@function
wcstoll_l:                              //  @wcstoll_l
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
	jal x0, _wcstoll_l
.Lfunc_end2:
	.size	wcstoll_l, .Lfunc_end2-wcstoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoll                 //  -- Begin function wcstoll
	.type	wcstoll,@function
wcstoll:                                //  @wcstoll
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
	jal x0, _wcstoll_l
.Lfunc_end3:
	.size	wcstoll, .Lfunc_end3-wcstoll
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
