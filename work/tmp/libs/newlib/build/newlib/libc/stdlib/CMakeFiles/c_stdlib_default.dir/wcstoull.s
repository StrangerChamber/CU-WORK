	.text
	.file	"wcstoull.c"
	.globl	_wcstoull_l             //  -- Begin function _wcstoull_l
	.type	_wcstoull_l,@function
_wcstoull_l:                            //  @_wcstoull_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x19 ,  x0 ,  x14
	add x21 ,  x0 ,  x13
	add x22 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x23 ,  x0 ,  x10
	addi x15 ,  x0 ,  36
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	bltu x15, x21, .LBB0_47
.LBB0_1:                                //  %entry
	xori x15 ,  x21 ,  1
	beq x0, x15, .LBB0_47
.LBB0_2:
	add x18 ,  x0 ,  x9
.LBB0_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x20 ,  0 ( x18 )
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call iswspace_l
	addi x18 ,  x18 ,  4
	bltu x0, x10, .LBB0_3
.LBB0_4:                                //  %do.end
	xori x15 ,  x20 ,  43
	beq x0, x15, .LBB0_8
.LBB0_5:                                //  %do.end
	xori x15 ,  x20 ,  45
	bltu x0, x15, .LBB0_7
.LBB0_6:
	slti x13 ,  x0 ,  1
	jal x0, .LBB0_9
.LBB0_47:                               //  %if.then
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x23 )
	add x15 ,  x0 ,  x0
	add x11 ,  x0 ,  x15
	jal x0, .LBB0_46
.LBB0_8:                                //  %if.then8
	add x13 ,  x0 ,  x0
.LBB0_9:                                //  %if.end11.sink.split
	lw x20 ,  0 ( x18 )
	addi x8 ,  x18 ,  4
	jal x0, .LBB0_10
.LBB0_7:                                //  %do.end.if.end11_crit_edge
	add x13 ,  x0 ,  x0
	add x8 ,  x0 ,  x18
.LBB0_10:                               //  %if.end11
	andi x15 ,  x21 ,  -17
	xori x14 ,  x20 ,  48
	sw x22 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x13 ,  12 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_16
.LBB0_11:                               //  %if.end11
	bltu x0, x14, .LBB0_16
.LBB0_12:                               //  %land.lhs.true16
	lw x15 ,  0 ( x8 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB0_13
.LBB0_15:                               //  %if.end21.thread
	addi x15 ,  x8 ,  8
	addi x19 ,  x0 ,  16
	lw x20 ,  4 ( x8 )
	add x8 ,  x0 ,  x15
	jal x0, .LBB0_20
.LBB0_16:                               //  %if.end21
	xori x15 ,  x21 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x14, .LBB0_14
.LBB0_17:
	addi x19 ,  x0 ,  10
	beq x0, x15, .LBB0_19
	jal x0, .LBB0_20
.LBB0_13:                               //  %if.end21.thread166
	xori x15 ,  x21 ,  0
	sltiu x15 ,  x15 ,  1
.LBB0_14:
	addi x19 ,  x0 ,  8
	addi x20 ,  x0 ,  48
	bltu x0, x15, .LBB0_20
.LBB0_19:
	add x19 ,  x0 ,  x21
.LBB0_20:
	addi x21 ,  x0 ,  -1
	srai x22 ,  x19 ,  31&31
	add x12 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x10 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __muldi3
	add x15 ,  x0 ,  x0
	addi x12 ,  x8 ,  -4
	xori x27 ,  x10 ,  -1
	slti x25 ,  x0 ,  1
	addi x8 ,  x0 ,  25
	add x13 ,  x0 ,  x15
	add x14 ,  x0 ,  x15
	jal x0, .LBB0_21
.LBB0_31:                               //    in Loop: Header=BB0_21 Depth=1
	add x15 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x14 ,  x0 ,  x21
.LBB0_36:                               //  %for.inc
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x12 ,  x26 ,  4
	lw x20 ,  4 ( x26 )
.LBB0_21:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x18 ,  x20 ,  -48
	add x11 ,  x0 ,  x13
	add x10 ,  x0 ,  x15
	add x26 ,  x0 ,  x12
	sltiu x15 ,  x18 ,  10
	bltu x0, x15, .LBB0_26
.LBB0_22:                               //  %if.else34
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x15 ,  x20 ,  -65
	bltu x8, x15, .LBB0_24
.LBB0_23:                               //  %if.then40
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x18 ,  x20 ,  -55
.LBB0_26:                               //  %if.end53
                                        //    in Loop: Header=BB0_21 Depth=1
	bge x18, x19, .LBB0_37
.LBB0_27:                               //  %if.end57
                                        //    in Loop: Header=BB0_21 Depth=1
	beq x11, x24, .LBB0_28
.LBB0_29:                               //  %if.end57
                                        //    in Loop: Header=BB0_21 Depth=1
	sltu x15 ,  x24 ,  x11
	bltu x0, x15, .LBB0_31
.LBB0_32:                               //  %if.end57
                                        //    in Loop: Header=BB0_21 Depth=1
	blt x14, x0, .LBB0_31
.LBB0_33:                               //  %lor.lhs.false63
                                        //    in Loop: Header=BB0_21 Depth=1
	xor x15 ,  x23 ,  x10
	xor x14 ,  x24 ,  x11
	or x15 ,  x14 ,  x15
	bltu x0, x15, .LBB0_35
.LBB0_34:                               //  %lor.lhs.false63
                                        //    in Loop: Header=BB0_21 Depth=1
	add x15 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	add x14 ,  x0 ,  x21
	blt x27, x18, .LBB0_36
.LBB0_35:                               //  %if.else70
                                        //    in Loop: Header=BB0_21 Depth=1
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	call __muldi3
	srai x15 ,  x18 ,  31&31
	add x14 ,  x15 ,  x11
	add x15 ,  x18 ,  x10
	sltu x13 ,  x15 ,  x10
	add x13 ,  x13 ,  x14
	add x14 ,  x0 ,  x25
	jal x0, .LBB0_36
.LBB0_28:                               //    in Loop: Header=BB0_21 Depth=1
	sltu x15 ,  x23 ,  x10
	beq x0, x15, .LBB0_32
	jal x0, .LBB0_31
.LBB0_24:                               //  %if.else42
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x15 ,  x20 ,  -97
	bltu x8, x15, .LBB0_37
.LBB0_25:                               //  %if.then48
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x18 ,  x20 ,  -87
	blt x18, x19, .LBB0_27
.LBB0_37:                               //  %for.end
	blt x14, x0, .LBB0_38
.LBB0_39:                               //  %if.else79
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	beq x13, x15, .LBB0_40
.LBB0_41:                               //  %if.else79
	sltu x13 ,  x0 ,  x10
	sub x15 ,  x0 ,  x10
	add x13 ,  x13 ,  x11
	sub x11 ,  x0 ,  x13
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x12, .LBB0_46
.LBB0_43:                               //  %if.then87
	add x13 ,  x0 ,  x0
	beq x14, x13, .LBB0_45
.LBB0_44:                               //  %if.then87
	add x9 ,  x0 ,  x26
.LBB0_45:                               //  %if.then87
	sw x9 ,  0 ( x12 )
.LBB0_46:                               //  %cleanup
	add x10 ,  x0 ,  x15
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
.LBB0_38:                               //  %if.then77
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x13 )
	addi x15 ,  x0 ,  -1
	add x11 ,  x0 ,  x15
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x12, .LBB0_43
	jal x0, .LBB0_46
.LBB0_40:
	add x15 ,  x0 ,  x10
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x12, .LBB0_43
	jal x0, .LBB0_46
.Lfunc_end0:
	.size	_wcstoull_l, .Lfunc_end0-_wcstoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstoull_r             //  -- Begin function _wcstoull_r
	.type	_wcstoull_r,@function
_wcstoull_r:                            //  @_wcstoull_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	jal x0, _wcstoull_l
.Lfunc_end1:
	.size	_wcstoull_r, .Lfunc_end1-_wcstoull_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoull_l              //  -- Begin function wcstoull_l
	.type	wcstoull_l,@function
wcstoull_l:                             //  @wcstoull_l
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
	jal x0, _wcstoull_l
.Lfunc_end2:
	.size	wcstoull_l, .Lfunc_end2-wcstoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoull                //  -- Begin function wcstoull
	.type	wcstoull,@function
wcstoull:                               //  @wcstoull
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
	jal x0, _wcstoull_l
.Lfunc_end3:
	.size	wcstoull, .Lfunc_end3-wcstoull
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
