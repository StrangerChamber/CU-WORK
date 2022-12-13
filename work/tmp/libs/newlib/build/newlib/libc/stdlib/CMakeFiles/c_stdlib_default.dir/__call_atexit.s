	.text
	.file	"__call_atexit.c"
	.globl	__call_exitprocs        //  -- Begin function __call_exitprocs
	.type	__call_exitprocs,@function
__call_exitprocs:                       //  @__call_exitprocs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  _global_impure_ptr&4095
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	lw x15 ,  328 ( x18 )
	beq x0, x15, .LBB0_33
.LBB0_1:                                //  %while.body.lr.ph
	slti x19 ,  x0 ,  1
.LBB0_2:                                //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_30 Depth 2
	add x20 ,  x0 ,  x15
	lw x21 ,  4 ( x20 )
	bge x0, x21, .LBB0_33
.LBB0_3:                                //  %for.body.lr.ph
                                        //    in Loop: Header=BB0_2 Depth=1
	slli x15 ,  x21 ,  2&31
	beq x0, x8, .LBB0_8
.LBB0_4:                                //  %for.body.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x15 ,  x15 ,  x20
	add x23 ,  x0 ,  x21
	addi x22 ,  x15 ,  132
	lw x15 ,  128 ( x22 )
	add x14 ,  x0 ,  x21
	addi x21 ,  x14 ,  -1
	beq x15, x8, .LBB0_6
.LBB0_30:                               //  %for.inc
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x22 ,  x22 ,  -4
	bge x0, x21, .LBB0_33
.LBB0_5:                                //  %for.body
                                        //    in Loop: Header=BB0_30 Depth=2
	lw x15 ,  128 ( x22 )
	add x14 ,  x0 ,  x21
	addi x21 ,  x14 ,  -1
	bne x15, x8, .LBB0_30
.LBB0_6:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  -128 ( x22 )
	bne x14, x23, .LBB0_21
.LBB0_7:                                //  %if.then9
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x23 ,  x23 ,  -1
	sw x23 ,  4 ( x20 )
	beq x0, x15, .LBB0_30
.LBB0_23:                               //  %if.end16
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x13 ,  392 ( x20 )
	sll x14 ,  x19 ,  x21
	and x13 ,  x14 ,  x13
	beq x0, x13, .LBB0_24
.LBB0_25:                               //  %if.else22
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x13 ,  396 ( x20 )
	and x14 ,  x14 ,  x13
	beq x0, x14, .LBB0_26
.LBB0_27:                               //  %if.else27
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10 ,  0 ( x22 )
	call_reg, 0 ( x15 )
	lw x15 ,  4 ( x20 )
	bne x23, x15, .LBB0_31
.LBB0_29:                               //  %lor.lhs.false34
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  328 ( x18 )
	beq x15, x20, .LBB0_30
	jal x0, .LBB0_32
.LBB0_21:                               //  %if.else
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x0 ,  -128 ( x22 )
	bltu x0, x15, .LBB0_23
	jal x0, .LBB0_30
.LBB0_24:                               //  %if.then21
                                        //    in Loop: Header=BB0_2 Depth=1
	call_reg, 0 ( x15 )
	lw x15 ,  4 ( x20 )
	beq x23, x15, .LBB0_29
	jal x0, .LBB0_31
.LBB0_26:                               //  %if.then25
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11 ,  0 ( x22 )
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x15 )
	lw x15 ,  4 ( x20 )
	beq x23, x15, .LBB0_29
	jal x0, .LBB0_31
.LBB0_8:                                //  %for.body.us.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x15 ,  x15 ,  x20
	addi x14 ,  x21 ,  -1
	addi x22 ,  x15 ,  132
	lw x15 ,  -128 ( x22 )
	addi x23 ,  x14 ,  1
	beq x23, x21, .LBB0_11
	jal x0, .LBB0_10
.LBB0_20:                               //  %for.inc.us
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x23 ,  -2
	addi x22 ,  x22 ,  -4
	addi x15 ,  x23 ,  -1
	bge x0, x15, .LBB0_33
.LBB0_9:                                //  %for.body.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  -128 ( x22 )
	addi x23 ,  x14 ,  1
	bne x23, x21, .LBB0_10
.LBB0_11:                               //  %if.then9.us
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x21 ,  x21 ,  -1
	sw x21 ,  4 ( x20 )
	beq x0, x15, .LBB0_20
.LBB0_13:                               //  %if.end16.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x13 ,  392 ( x20 )
	sll x14 ,  x19 ,  x14
	and x13 ,  x14 ,  x13
	beq x0, x13, .LBB0_17
.LBB0_14:                               //  %if.else22.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x13 ,  396 ( x20 )
	and x14 ,  x14 ,  x13
	beq x0, x14, .LBB0_16
.LBB0_15:                               //  %if.else27.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10 ,  0 ( x22 )
	call_reg, 0 ( x15 )
	lw x15 ,  4 ( x20 )
	bne x21, x15, .LBB0_31
.LBB0_19:                               //  %lor.lhs.false34.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  328 ( x18 )
	beq x15, x20, .LBB0_20
	jal x0, .LBB0_32
.LBB0_10:                               //  %if.else.us
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x0 ,  -128 ( x22 )
	bltu x0, x15, .LBB0_13
	jal x0, .LBB0_20
.LBB0_17:                               //  %if.then21.us
                                        //    in Loop: Header=BB0_2 Depth=1
	call_reg, 0 ( x15 )
	lw x15 ,  4 ( x20 )
	beq x21, x15, .LBB0_19
	jal x0, .LBB0_31
.LBB0_16:                               //  %if.then25.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11 ,  0 ( x22 )
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x15 )
	lw x15 ,  4 ( x20 )
	beq x21, x15, .LBB0_19
.LBB0_31:                               //  %cleanupthread-pre-split
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  328 ( x18 )
.LBB0_32:                               //  %cleanup
                                        //    in Loop: Header=BB0_2 Depth=1
	bltu x0, x15, .LBB0_2
.LBB0_33:                               //  %while.end
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__call_exitprocs, .Lfunc_end0-__call_exitprocs
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
