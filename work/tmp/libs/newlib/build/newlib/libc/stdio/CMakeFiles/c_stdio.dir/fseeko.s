	.text
	.file	"fseeko.c"
	.globl	_fseeko_r               //  -- Begin function _fseeko_r
	.type	_fseeko_r,@function
_fseeko_r:                              //  @_fseeko_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	sw x9 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x19 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	beq x0, x9, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB0_14
.LBB0_2:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  264
	xori x15 ,  x15 ,  264
	bltu x0, x15, .LBB0_4
.LBB0_3:                                //  %if.then16
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
.LBB0_4:                                //  %if.end17
	lw x22 ,  40 ( x8 )
	beq x0, x22, .LBB0_13
.LBB0_5:                                //  %if.end32
	add x20 ,  x0 ,  x0
	beq x0, x19, .LBB0_16
.LBB0_6:                                //  %if.end32
	xori x15 ,  x19 ,  2
	beq x0, x15, .LBB0_16
.LBB0_7:                                //  %if.end32
	xori x15 ,  x19 ,  1
	bltu x0, x15, .LBB0_22
.LBB0_8:                                //  %sw.bb
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (4096>>12)&1048575
	and x14 ,  x14 ,  x15
	bltu x0, x14, .LBB0_24
.LBB0_9:                                //  %if.else
	lw x11 ,  28 ( x8 )
	add x12 ,  x0 ,  x0
	slti x13 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x22 )
	add x20 ,  x0 ,  x10
	xori x15 ,  x20 ,  -1
	beq x0, x15, .LBB0_38
.LBB0_10:                               //  %if.else.if.end56_crit_edge
	lhu x15 ,  12 ( x8 )
	slli x15 ,  x15 ,  16&31
	srai x15 ,  x15 ,  16&31
	andi x14 ,  x15 ,  4
	beq x0, x14, .LBB0_25
.LBB0_11:                               //  %if.then61
	lw x15 ,  4 ( x8 )
	sub x20 ,  x20 ,  x15
	lw x15 ,  48 ( x8 )
	beq x0, x15, .LBB0_28
.LBB0_12:                               //  %if.then64
	lw x15 ,  60 ( x8 )
	sub x20 ,  x20 ,  x15
	jal x0, .LBB0_28
.LBB0_13:                               //  %if.then19
	addi x15 ,  x0 ,  29
	jal x0, .LBB0_23
.LBB0_16:
	add x21 ,  x0 ,  x20
	lw x15 ,  16 ( x8 )
	bltu x0, x15, .LBB0_18
.LBB0_17:                               //  %if.then99
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __smakebuf_r
.LBB0_18:                               //  %if.end100
	lh x15 ,  12 ( x8 )
	lui x30 ,  2074&4095
	lui x14 ,  (2074>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x15
	bltu x0, x14, .LBB0_61
.LBB0_19:                               //  %if.end106
	andi x15 ,  x15 ,  1024
	bltu x0, x15, .LBB0_33
.LBB0_20:                               //  %if.then112
	lui x30 ,  __sseek&4095
	lui x15 ,  (__sseek>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x22, x15, .LBB0_29
.LBB0_21:                               //  %if.then127
	lh x15 ,  12 ( x8 )
	lui x30 ,  2048&4095
	lui x14 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	or x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	jal x0, .LBB0_61
.LBB0_14:                               //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	lhu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  264
	xori x15 ,  x15 ,  264
	beq x0, x15, .LBB0_3
	jal x0, .LBB0_4
.LBB0_22:                               //  %sw.default
	addi x15 ,  x0 ,  22
.LBB0_23:                               //  %cleanup
	sw x15 ,  0 ( x9 )
	addi x20 ,  x0 ,  -1
	jal x0, .LBB0_71
.LBB0_24:                               //  %if.then38
	lw x20 ,  80 ( x8 )
	slli x15 ,  x15 ,  16&31
	srai x15 ,  x15 ,  16&31
	andi x14 ,  x15 ,  4
	bltu x0, x14, .LBB0_11
.LBB0_25:                               //  %if.else67
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB0_28
.LBB0_26:                               //  %land.lhs.true72
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_28
.LBB0_27:                               //  %if.then75
	lw x14 ,  16 ( x8 )
	add x15 ,  x15 ,  x20
	sub x20 ,  x15 ,  x14
.LBB0_28:                               //  %if.end79
	add x18 ,  x18 ,  x20
	slti x21 ,  x0 ,  1
	add x19 ,  x0 ,  x0
	lw x15 ,  16 ( x8 )
	bltu x0, x15, .LBB0_18
	jal x0, .LBB0_17
.LBB0_29:                               //  %lor.lhs.false
	lh x11 ,  14 ( x8 )
	blt x11, x0, .LBB0_21
.LBB0_30:                               //  %lor.lhs.false118
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x9
	call _fstat_r
	bltu x0, x10, .LBB0_21
.LBB0_31:                               //  %lor.lhs.false123
	lw x15 ,  12 ( x2 )
	lui x14 ,  (61440>>12)&1048575
	and x15 ,  x14 ,  x15
	lui x14 ,  (32768>>12)&1048575
	bne x15, x14, .LBB0_21
.LBB0_32:                               //  %if.end131
	addi x15 ,  x0 ,  1024
	sw x15 ,  76 ( x8 )
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  1024
	sh x15 ,  12 ( x8 )
.LBB0_33:                               //  %if.end136
	add x23 ,  x0 ,  x18
	beq x0, x19, .LBB0_36
.LBB0_34:                               //  %if.else140
	lh x11 ,  14 ( x8 )
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x9
	call _fstat_r
	bltu x0, x10, .LBB0_61
.LBB0_35:                               //  %if.end146
	lw x15 ,  24 ( x2 )
	add x23 ,  x18 ,  x15
.LBB0_36:                               //  %if.end148
	beq x0, x21, .LBB0_39
.LBB0_37:                               //  %if.end175
	lw x11 ,  48 ( x8 )
	addi x24 ,  x8 ,  48
	bltu x0, x11, .LBB0_44
	jal x0, .LBB0_46
.LBB0_38:
	addi x20 ,  x0 ,  -1
	jal x0, .LBB0_71
.LBB0_39:                               //  %if.then150
	lbu x15 ,  13 ( x8 )
	andi x15 ,  x15 ,  16
	bltu x0, x15, .LBB0_41
.LBB0_40:                               //  %if.else157
	lw x11 ,  28 ( x8 )
	add x12 ,  x0 ,  x0
	slti x13 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x22 )
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_42
	jal x0, .LBB0_61
.LBB0_41:                               //  %if.then155
	lw x10 ,  80 ( x8 )
.LBB0_42:                               //  %if.end164
	lw x15 ,  4 ( x8 )
	lw x11 ,  48 ( x8 )
	sub x20 ,  x10 ,  x15
	beq x0, x11, .LBB0_45
.LBB0_43:                               //  %if.end175.thread548
	lw x15 ,  60 ( x8 )
	addi x24 ,  x8 ,  48
	sub x20 ,  x20 ,  x15
.LBB0_44:                               //  %if.then180
	lw x15 ,  4 ( x8 )
	addi x13 ,  x8 ,  60
	lw x14 ,  16 ( x8 )
	lw x10 ,  56 ( x8 )
	add x12 ,  x20 ,  x15
	add x15 ,  x0 ,  x0
	sub x10 ,  x10 ,  x14
	sub x12 ,  x12 ,  x10
	bge x23, x12, .LBB0_47
	jal x0, .LBB0_53
.LBB0_45:                               //  %if.end175.thread
	addi x24 ,  x8 ,  48
.LBB0_46:                               //  %if.else191
	lw x14 ,  16 ( x8 )
	add x11 ,  x0 ,  x0
	slti x15 ,  x0 ,  1
	addi x13 ,  x8 ,  4
	lw x12 ,  0 ( x8 )
	sub x10 ,  x12 ,  x14
	sub x12 ,  x20 ,  x10
	blt x23, x12, .LBB0_53
.LBB0_47:                               //  %if.end201
	lw x13 ,  0 ( x13 )
	add x13 ,  x13 ,  x10
	add x10 ,  x12 ,  x13
	bgeu x23, x10, .LBB0_53
.LBB0_48:                               //  %if.then208
	sub x12 ,  x23 ,  x12
	sub x13 ,  x13 ,  x12
	add x14 ,  x12 ,  x14
	sw x13 ,  4 ( x8 )
	sw x14 ,  0 ( x8 )
	bltu x0, x15, .LBB0_52
.LBB0_49:                               //  %if.then219
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_51
.LBB0_50:                               //  %if.then224
	add x10 ,  x0 ,  x9
	call _free_r
.LBB0_51:                               //  %if.end227
	sw x0 ,  0 ( x24 )
.LBB0_52:                               //  %if.end230
	lhu x15 ,  12 ( x8 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	jal x0, .LBB0_68
.LBB0_53:                               //  %if.end248
	lw x15 ,  76 ( x8 )
	add x20 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	lw x11 ,  28 ( x8 )
	add x13 ,  x0 ,  x20
	sub x15 ,  x0 ,  x15
	and x21 ,  x15 ,  x23
	add x12 ,  x0 ,  x21
	call_reg, 0 ( x22 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_61
.LBB0_54:                               //  %if.end257
	lw x15 ,  16 ( x8 )
	sw x0 ,  4 ( x8 )
	lw x11 ,  48 ( x8 )
	sw x15 ,  0 ( x8 )
	beq x0, x11, .LBB0_58
.LBB0_55:                               //  %if.then266
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_57
.LBB0_56:                               //  %if.then273
	add x10 ,  x0 ,  x9
	call _free_r
.LBB0_57:                               //  %if.end276
	sw x0 ,  0 ( x24 )
.LBB0_58:                               //  %if.end279
	lhu x15 ,  12 ( x8 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	sub x21 ,  x23 ,  x21
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	beq x0, x21, .LBB0_73
.LBB0_59:                               //  %if.then286
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srefill_r
	bltu x0, x10, .LBB0_61
.LBB0_60:                               //  %lor.lhs.false289
	lw x15 ,  4 ( x8 )
	bgeu x15, x21, .LBB0_72
.LBB0_61:                               //  %dumb
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	addi x20 ,  x0 ,  -1
	bltu x0, x10, .LBB0_71
.LBB0_62:                               //  %lor.lhs.false316
	lw x11 ,  28 ( x8 )
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call_reg, 0 ( x22 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_71
.LBB0_63:                               //  %if.end334
	lw x11 ,  48 ( x8 )
	beq x0, x11, .LBB0_67
.LBB0_64:                               //  %if.then339
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_66
.LBB0_65:                               //  %if.then346
	add x10 ,  x0 ,  x9
	call _free_r
.LBB0_66:                               //  %if.end349
	sw x0 ,  48 ( x8 )
.LBB0_67:                               //  %if.end352
	lw x15 ,  16 ( x8 )
	lui x30 ,  63455&4095
	lui x14 ,  (63455>>12)&1048575
	sw x0 ,  4 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x8 )
	lhu x15 ,  12 ( x8 )
.LBB0_68:                               //  %cleanup
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	addi x10 ,  x8 ,  92
	add x20 ,  x0 ,  x0
.LBB0_70:                               //  %cleanup
	addi x12 ,  x0 ,  8
	add x11 ,  x0 ,  x20
	call memset
.LBB0_71:                               //  %cleanup
	add x10 ,  x0 ,  x20
	lw x8 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.LBB0_72:                               //  %if.end294
	sub x15 ,  x15 ,  x21
	sw x15 ,  4 ( x8 )
	lw x15 ,  0 ( x8 )
	add x15 ,  x21 ,  x15
	sw x15 ,  0 ( x8 )
.LBB0_73:                               //  %if.end299
	addi x10 ,  x8 ,  92
	jal x0, .LBB0_70
.Lfunc_end0:
	.size	_fseeko_r, .Lfunc_end0-_fseeko_r
	.cfi_endproc
                                        //  -- End function
	.globl	fseeko                  //  -- Begin function fseeko
	.type	fseeko,@function
fseeko:                                 //  @fseeko
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
	jal x0, _fseeko_r
.Lfunc_end1:
	.size	fseeko, .Lfunc_end1-fseeko
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
