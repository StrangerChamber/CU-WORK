	.text
	.file	"fvwrite.c"
	.globl	__sfvwrite_r            //  -- Begin function __sfvwrite_r
	.type	__sfvwrite_r,@function
__sfvwrite_r:                           //  @__sfvwrite_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x12
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x15 ,  8 ( x18 )
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	andi x14 ,  x15 ,  8
	beq x0, x14, .LBB0_4
.LBB0_3:                                //  %lor.lhs.false
	lw x14 ,  16 ( x8 )
	bltu x0, x14, .LBB0_6
.LBB0_4:                                //  %land.lhs.true
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __swsetup_r
	bltu x0, x10, .LBB0_63
.LBB0_5:                                //  %land.lhs.true.if.end6_crit_edge
	lhu x15 ,  12 ( x8 )
.LBB0_6:                                //  %if.end6
	lw x25 ,  0 ( x18 )
	slli x15 ,  x15 ,  16&31
	add x26 ,  x0 ,  x0
	srai x15 ,  x15 ,  16&31
	andi x14 ,  x15 ,  2
	bltu x0, x14, .LBB0_7
.LBB0_15:                               //  %if.else
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_16
.LBB0_20:                               //  %do.body31.preheader
	add x22 ,  x0 ,  x26
	lui x19 ,  (65535>>12)&1048575
	addi x20 ,  x0 ,  3
	add x21 ,  x0 ,  x26
	bltu x0, x22, .LBB0_24
	jal x0, .LBB0_22
.LBB0_39:                               //  %if.end105
                                        //    in Loop: Header=BB0_24 Depth=1
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x23
	call memmove
	lw x15 ,  8 ( x8 )
	sub x15 ,  x15 ,  x23
	sw x15 ,  8 ( x8 )
	lw x15 ,  0 ( x8 )
	add x15 ,  x23 ,  x15
	add x23 ,  x0 ,  x22
	sw x15 ,  0 ( x8 )
.LBB0_49:                               //  %if.end169
                                        //    in Loop: Header=BB0_24 Depth=1
	lw x15 ,  8 ( x18 )
	sub x22 ,  x22 ,  x23
	add x21 ,  x23 ,  x21
	sub x15 ,  x15 ,  x23
	sw x15 ,  8 ( x18 )
	beq x0, x15, .LBB0_68
.LBB0_21:                               //  %do.body31
                                        //    in Loop: Header=BB0_24 Depth=1
	bltu x0, x22, .LBB0_24
.LBB0_22:                               //  %while.body35
                                        //  =>This Inner Loop Header: Depth=1
	lw x22 ,  4 ( x25 )
	addi x25 ,  x25 ,  8
	beq x0, x22, .LBB0_22
.LBB0_23:                               //  %while.cond32.while.end39_crit_edge
	lw x21 ,  -8 ( x25 )
.LBB0_24:                               //  %while.end39
                                        //  =>This Inner Loop Header: Depth=1
	lh x14 ,  12 ( x8 )
	lui x30 ,  65535&4095
	lw x15 ,  8 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x19 ,  x30
	andi x12 ,  x14 ,  512
	bltu x0, x12, .LBB0_25
.LBB0_40:                               //  %if.else116
                                        //    in Loop: Header=BB0_24 Depth=1
	lw x10 ,  0 ( x8 )
	lw x14 ,  16 ( x8 )
	bltu x14, x10, .LBB0_42
.LBB0_41:                               //  %lor.lhs.false122
                                        //    in Loop: Header=BB0_24 Depth=1
	lw x11 ,  20 ( x8 )
	bgeu x22, x11, .LBB0_46
.LBB0_42:                               //  %if.then127
                                        //    in Loop: Header=BB0_24 Depth=1
	add x23 ,  x0 ,  x22
	bltu x22, x15, .LBB0_44
.LBB0_43:                               //  %if.then127
                                        //    in Loop: Header=BB0_24 Depth=1
	add x23 ,  x0 ,  x15
.LBB0_44:                               //  %if.then127
                                        //    in Loop: Header=BB0_24 Depth=1
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x23
	call memmove
	lw x15 ,  0 ( x8 )
	add x15 ,  x23 ,  x15
	sw x15 ,  0 ( x8 )
	lw x15 ,  8 ( x8 )
	sub x15 ,  x15 ,  x23
	sw x15 ,  8 ( x8 )
	bltu x0, x15, .LBB0_49
.LBB0_45:                               //  %land.lhs.true143
                                        //    in Loop: Header=BB0_24 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	beq x0, x10, .LBB0_49
	jal x0, .LBB0_62
.LBB0_25:                               //  %if.then44
                                        //    in Loop: Header=BB0_24 Depth=1
	bltu x22, x15, .LBB0_27
.LBB0_26:                               //  %if.then44
                                        //    in Loop: Header=BB0_24 Depth=1
	andi x12 ,  x14 ,  1152
	beq x0, x12, .LBB0_27
.LBB0_28:                               //  %if.then52
                                        //    in Loop: Header=BB0_24 Depth=1
	lw x10 ,  20 ( x8 )
	add x11 ,  x0 ,  x20
	and x24 ,  x13 ,  x14
	call __mulsi3
	lw x11 ,  16 ( x8 )
	slt x15 ,  x10 ,  x0
	lw x14 ,  0 ( x8 )
	add x15 ,  x15 ,  x10
	srai x15 ,  x15 ,  1&31
	sub x27 ,  x14 ,  x11
	add x14 ,  x27 ,  x22
	addi x23 ,  x14 ,  1
	bltu x15, x23, .LBB0_30
.LBB0_29:                               //  %if.then52
                                        //    in Loop: Header=BB0_24 Depth=1
	add x23 ,  x0 ,  x15
.LBB0_30:                               //  %if.then52
                                        //    in Loop: Header=BB0_24 Depth=1
	add x10 ,  x0 ,  x9
	andi x15 ,  x24 ,  1024
	bltu x0, x15, .LBB0_31
.LBB0_33:                               //  %if.else80
                                        //    in Loop: Header=BB0_24 Depth=1
	add x12 ,  x0 ,  x23
	call _realloc_r
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB0_36
	jal x0, .LBB0_34
.LBB0_27:                               //  %if.then44.if.end105_crit_edge
                                        //    in Loop: Header=BB0_24 Depth=1
	lw x10 ,  0 ( x8 )
	add x23 ,  x0 ,  x22
	bltu x22, x15, .LBB0_39
	jal x0, .LBB0_38
.LBB0_46:                               //  %if.else148
                                        //    in Loop: Header=BB0_24 Depth=1
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x23 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x22, x15, .LBB0_48
.LBB0_47:                               //  %if.else148
                                        //    in Loop: Header=BB0_24 Depth=1
	add x23 ,  x0 ,  x15
.LBB0_48:                               //  %if.else148
                                        //    in Loop: Header=BB0_24 Depth=1
	add x10 ,  x0 ,  x23
	call __modsi3
	lw x11 ,  28 ( x8 )
	sub x13 ,  x23 ,  x10
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x21
	lw x15 ,  36 ( x8 )
	call_reg, 0 ( x15 )
	add x23 ,  x0 ,  x10
	blt x0, x23, .LBB0_49
	jal x0, .LBB0_62
.LBB0_31:                               //  %if.then67
                                        //    in Loop: Header=BB0_24 Depth=1
	add x11 ,  x0 ,  x23
	call _malloc_r
	add x24 ,  x0 ,  x10
	beq x0, x24, .LBB0_32
.LBB0_35:                               //  %if.end71
                                        //    in Loop: Header=BB0_24 Depth=1
	lw x11 ,  16 ( x8 )
	add x10 ,  x0 ,  x24
	add x12 ,  x0 ,  x27
	call memcpy
	lhu x15 ,  12 ( x8 )
	lui x30 ,  64383&4095
	lui x14 ,  (64383>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	ori x15 ,  x15 ,  128
	sh x15 ,  12 ( x8 )
.LBB0_36:                               //  %cleanup
                                        //    in Loop: Header=BB0_24 Depth=1
	sub x15 ,  x23 ,  x27
	add x10 ,  x27 ,  x24
	sw x23 ,  20 ( x8 )
	sw x24 ,  16 ( x8 )
	sw x15 ,  8 ( x8 )
	add x15 ,  x0 ,  x22
	sw x10 ,  0 ( x8 )
	add x23 ,  x0 ,  x22
	bltu x22, x15, .LBB0_39
.LBB0_38:                               //  %if.end105
                                        //    in Loop: Header=BB0_24 Depth=1
	add x23 ,  x0 ,  x15
	jal x0, .LBB0_39
.LBB0_1:
	add x26 ,  x0 ,  x0
	jal x0, .LBB0_68
.LBB0_7:                                //  %do.body.preheader
	add x21 ,  x0 ,  x26
	lui x19 ,  (2147482624>>12)&1048575
	add x20 ,  x0 ,  x26
.LBB0_8:                                //  %do.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_9 Depth 2
	bltu x0, x21, .LBB0_11
.LBB0_9:                                //  %while.body
                                        //    Parent Loop BB0_8 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x21 ,  4 ( x25 )
	addi x25 ,  x25 ,  8
	beq x0, x21, .LBB0_9
.LBB0_10:                               //  %while.cond.while.end_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x20 ,  -8 ( x25 )
.LBB0_11:                               //  %while.end
                                        //    in Loop: Header=BB0_8 Depth=1
	lui x30 ,  2147482624&4095
	add x13 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	bltu x21, x15, .LBB0_13
.LBB0_12:                               //  %while.end
                                        //    in Loop: Header=BB0_8 Depth=1
	add x13 ,  x0 ,  x15
.LBB0_13:                               //  %while.end
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x11 ,  28 ( x8 )
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x20
	lw x15 ,  36 ( x8 )
	call_reg, 0 ( x15 )
	bge x0, x10, .LBB0_62
.LBB0_14:                               //  %if.end20
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x15 ,  8 ( x18 )
	sub x21 ,  x21 ,  x10
	add x20 ,  x10 ,  x20
	sub x15 ,  x15 ,  x10
	sw x15 ,  8 ( x18 )
	bltu x0, x15, .LBB0_8
	jal x0, .LBB0_68
.LBB0_16:                               //  %do.body179.preheader
	add x27 ,  x0 ,  x26
	add x19 ,  x0 ,  x26
	add x21 ,  x0 ,  x26
	slti x20 ,  x0 ,  1
	add x22 ,  x0 ,  x26
	bltu x0, x21, .LBB0_50
	jal x0, .LBB0_18
.LBB0_67:                               //  %if.end259
	lw x15 ,  8 ( x18 )
	sub x21 ,  x21 ,  x23
	add x22 ,  x23 ,  x22
	sub x15 ,  x15 ,  x23
	sw x15 ,  8 ( x18 )
	beq x0, x15, .LBB0_68
.LBB0_17:                               //  %do.body179
	beq x0, x21, .LBB0_18
.LBB0_50:                               //  %while.end187
	beq x0, x19, .LBB0_51
.LBB0_55:                               //  %if.end201
	add x24 ,  x0 ,  x21
	bltu x21, x27, .LBB0_57
.LBB0_56:                               //  %if.end201
	add x24 ,  x0 ,  x27
.LBB0_57:                               //  %if.end201
	lw x15 ,  8 ( x8 )
	lw x13 ,  20 ( x8 )
	lw x10 ,  0 ( x8 )
	add x23 ,  x15 ,  x13
	bge x23, x24, .LBB0_60
.LBB0_58:                               //  %if.end201
	lw x15 ,  16 ( x8 )
	bgeu x15, x10, .LBB0_60
.LBB0_59:                               //  %if.then220
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	call memmove
	lw x15 ,  0 ( x8 )
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x15 ,  x23 ,  x15
	sw x15 ,  0 ( x8 )
	call _fflush_r
	bltu x0, x10, .LBB0_62
.LBB0_65:                               //  %if.end250
	sub x27 ,  x27 ,  x23
	bltu x0, x27, .LBB0_67
	jal x0, .LBB0_66
.LBB0_18:                               //  %while.body183
                                        //  =>This Inner Loop Header: Depth=1
	lw x21 ,  4 ( x25 )
	addi x25 ,  x25 ,  8
	beq x0, x21, .LBB0_18
.LBB0_19:                               //  %while.end187.thread
	lw x22 ,  -8 ( x25 )
.LBB0_51:                               //  %if.then189
	add x10 ,  x0 ,  x22
	addi x11 ,  x0 ,  10
	add x12 ,  x0 ,  x21
	call memchr
	beq x10, x26, .LBB0_52
.LBB0_53:                               //  %if.then189
	sub x15 ,  x10 ,  x22
	addi x27 ,  x15 ,  1
	add x19 ,  x0 ,  x20
	add x24 ,  x0 ,  x21
	bgeu x21, x27, .LBB0_56
	jal x0, .LBB0_57
.LBB0_60:                               //  %if.else229
	bge x24, x13, .LBB0_61
.LBB0_64:                               //  %if.else242
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x24
	call memmove
	lw x15 ,  8 ( x8 )
	add x23 ,  x0 ,  x24
	sub x15 ,  x15 ,  x24
	sw x15 ,  8 ( x8 )
	lw x15 ,  0 ( x8 )
	add x15 ,  x24 ,  x15
	sw x15 ,  0 ( x8 )
	sub x27 ,  x27 ,  x23
	bltu x0, x27, .LBB0_67
.LBB0_66:                               //  %if.then254
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	add x19 ,  x0 ,  x26
	beq x0, x10, .LBB0_67
	jal x0, .LBB0_62
.LBB0_52:
	addi x27 ,  x21 ,  1
	add x19 ,  x0 ,  x20
	add x24 ,  x0 ,  x21
	bgeu x21, x27, .LBB0_56
	jal x0, .LBB0_57
.LBB0_61:                               //  %if.then234
	lw x11 ,  28 ( x8 )
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x22
	lw x15 ,  36 ( x8 )
	call_reg, 0 ( x15 )
	add x23 ,  x0 ,  x10
	blt x0, x23, .LBB0_65
	jal x0, .LBB0_62
.LBB0_34:                               //  %if.then85
	lw x11 ,  16 ( x8 )
	add x10 ,  x0 ,  x9
	call _free_r
	addi x15 ,  x0 ,  12
	lui x30 ,  65407&4095
	lui x14 ,  (65407>>12)&1048575
	sw x15 ,  0 ( x9 )
	lhu x15 ,  12 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	jal x0, .LBB0_62
.LBB0_32:                               //  %if.then70
	addi x15 ,  x0 ,  12
	sw x15 ,  0 ( x9 )
.LBB0_62:                               //  %err
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
.LBB0_63:                               //  %cleanup274
	addi x26 ,  x0 ,  -1
.LBB0_68:                               //  %cleanup274
	add x10 ,  x0 ,  x26
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x27 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  20 ( x2 )             //  4-byte Folded Reload
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
.Lfunc_end0:
	.size	__sfvwrite_r, .Lfunc_end0-__sfvwrite_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
