	.text
	.file	"wcstoul.c"
	.globl	_wcstoul_l              //  -- Begin function _wcstoul_l
	.type	_wcstoul_l,@function
_wcstoul_l:                             //  @_wcstoul_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x19 ,  x0 ,  x14
	add x21 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	add x18 ,  x0 ,  x10
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x22 ,  x0 ,  x9
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x20 ,  0 ( x22 )
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call iswspace_l
	addi x22 ,  x22 ,  4
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %do.end
	xori x15 ,  x20 ,  43
	beq x0, x15, .LBB0_6
.LBB0_3:                                //  %do.end
	xori x15 ,  x20 ,  45
	bltu x0, x15, .LBB0_5
.LBB0_4:
	slti x23 ,  x0 ,  1
	jal x0, .LBB0_7
.LBB0_6:                                //  %if.then3
	add x23 ,  x0 ,  x0
.LBB0_7:                                //  %if.end5.sink.split
	lw x20 ,  0 ( x22 )
	addi x24 ,  x22 ,  4
	andi x15 ,  x21 ,  -17
	xori x14 ,  x20 ,  48
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB0_14
.LBB0_9:                                //  %if.end5
	bltu x0, x14, .LBB0_14
.LBB0_10:                               //  %land.lhs.true9
	lw x15 ,  0 ( x24 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB0_11
.LBB0_13:                               //  %if.end14.thread
	addi x15 ,  x24 ,  8
	addi x19 ,  x0 ,  16
	lw x20 ,  4 ( x24 )
	add x24 ,  x0 ,  x15
	jal x0, .LBB0_18
.LBB0_5:                                //  %do.end.if.end5_crit_edge
	add x23 ,  x0 ,  x0
	add x24 ,  x0 ,  x22
	andi x15 ,  x21 ,  -17
	xori x14 ,  x20 ,  48
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	beq x0, x15, .LBB0_9
.LBB0_14:                               //  %if.end14
	xori x15 ,  x21 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x14, .LBB0_12
.LBB0_15:
	addi x19 ,  x0 ,  10
	beq x0, x15, .LBB0_17
	jal x0, .LBB0_18
.LBB0_11:                               //  %if.end14.thread129
	xori x15 ,  x21 ,  0
	sltiu x15 ,  x15 ,  1
.LBB0_12:
	addi x19 ,  x0 ,  8
	addi x20 ,  x0 ,  48
	bltu x0, x15, .LBB0_18
.LBB0_17:
	add x19 ,  x0 ,  x21
.LBB0_18:
	addi x21 ,  x0 ,  -1
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x21
	call __udivsi3
	add x11 ,  x0 ,  x19
	add x22 ,  x0 ,  x10
	call __mulsi3
	add x14 ,  x0 ,  x0
	addi x13 ,  x24 ,  -4
	xori x25 ,  x10 ,  -1
	slti x26 ,  x0 ,  1
	addi x27 ,  x0 ,  25
	add x15 ,  x0 ,  x14
	jal x0, .LBB0_19
.LBB0_26:                               //    in Loop: Header=BB0_19 Depth=1
	add x14 ,  x0 ,  x10
	add x15 ,  x0 ,  x21
.LBB0_31:                               //  %for.inc
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x13 ,  x24 ,  4
	lw x20 ,  4 ( x24 )
.LBB0_19:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x18 ,  x20 ,  -48
	add x10 ,  x0 ,  x14
	add x24 ,  x0 ,  x13
	sltiu x14 ,  x18 ,  10
	bltu x0, x14, .LBB0_24
.LBB0_20:                               //  %if.else23
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x14 ,  x20 ,  -65
	bltu x27, x14, .LBB0_22
.LBB0_21:                               //  %if.then27
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x18 ,  x20 ,  -55
.LBB0_24:                               //  %if.end38
                                        //    in Loop: Header=BB0_19 Depth=1
	bge x18, x19, .LBB0_32
.LBB0_25:                               //  %if.end41
                                        //    in Loop: Header=BB0_19 Depth=1
	bltu x22, x10, .LBB0_26
.LBB0_27:                               //  %if.end41
                                        //    in Loop: Header=BB0_19 Depth=1
	blt x15, x0, .LBB0_26
.LBB0_28:                               //  %lor.lhs.false45
                                        //    in Loop: Header=BB0_19 Depth=1
	bne x10, x22, .LBB0_30
.LBB0_29:                               //  %lor.lhs.false45
                                        //    in Loop: Header=BB0_19 Depth=1
	add x14 ,  x0 ,  x22
	add x15 ,  x0 ,  x21
	blt x25, x18, .LBB0_31
.LBB0_30:                               //  %if.else50
                                        //    in Loop: Header=BB0_19 Depth=1
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x14 ,  x10 ,  x18
	add x15 ,  x0 ,  x26
	jal x0, .LBB0_31
.LBB0_22:                               //  %if.else29
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x14 ,  x20 ,  -97
	bltu x27, x14, .LBB0_32
.LBB0_23:                               //  %if.then33
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x18 ,  x20 ,  -87
	blt x18, x19, .LBB0_25
.LBB0_32:                               //  %for.end
	blt x15, x0, .LBB0_33
.LBB0_34:                               //  %if.else55
	add x14 ,  x0 ,  x0
	beq x23, x14, .LBB0_36
.LBB0_35:                               //  %if.else55
	sub x10 ,  x0 ,  x10
.LBB0_36:                               //  %if.end60
	beq x0, x8, .LBB0_40
.LBB0_37:                               //  %if.then62
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB0_39
.LBB0_38:                               //  %if.then62
	add x9 ,  x0 ,  x24
.LBB0_39:                               //  %if.then62
	sw x9 ,  0 ( x8 )
.LBB0_40:                               //  %if.end66
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
.LBB0_33:                               //  %if.then54
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x0 ,  34
	addi x10 ,  x0 ,  -1
	sw x14 ,  0 ( x13 )
	bltu x0, x8, .LBB0_37
	jal x0, .LBB0_40
.Lfunc_end0:
	.size	_wcstoul_l, .Lfunc_end0-_wcstoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstoul_r              //  -- Begin function _wcstoul_r
	.type	_wcstoul_r,@function
_wcstoul_r:                             //  @_wcstoul_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	jal x0, _wcstoul_l
.Lfunc_end1:
	.size	_wcstoul_r, .Lfunc_end1-_wcstoul_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoul_l               //  -- Begin function wcstoul_l
	.type	wcstoul_l,@function
wcstoul_l:                              //  @wcstoul_l
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
	jal x0, _wcstoul_l
.Lfunc_end2:
	.size	wcstoul_l, .Lfunc_end2-wcstoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoul                 //  -- Begin function wcstoul
	.type	wcstoul,@function
wcstoul:                                //  @wcstoul
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
	jal x0, _wcstoul_l
.Lfunc_end3:
	.size	wcstoul, .Lfunc_end3-wcstoul
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
