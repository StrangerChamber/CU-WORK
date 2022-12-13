	.text
	.file	"refill.c"
	.globl	__srefill_r             //  -- Begin function __srefill_r
	.type	__srefill_r,@function
__srefill_r:                            //  @__srefill_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_5
.LBB0_4:                                //  %if.then4
	lw x13 ,  100 ( x8 )
	lui x30 ,  -8193&4095
	lui x12 ,  (-8193>>12)&1048575
	or x15 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	sh x15 ,  12 ( x8 )
	or x12 ,  x12 ,  x30
	and x13 ,  x12 ,  x13
	sw x13 ,  100 ( x8 )
.LBB0_5:                                //  %do.end10
	slli x14 ,  x15 ,  16&31
	addi x9 ,  x0 ,  -1
	sw x0 ,  4 ( x8 )
	srai x14 ,  x14 ,  16&31
	andi x13 ,  x14 ,  32
	bltu x0, x13, .LBB0_29
.LBB0_6:                                //  %if.end16
	andi x13 ,  x14 ,  4
	bltu x0, x13, .LBB0_20
.LBB0_7:                                //  %if.then21
	andi x13 ,  x14 ,  16
	bltu x0, x13, .LBB0_9
.LBB0_8:                                //  %if.then27
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
	addi x15 ,  x0 ,  9
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_29
.LBB0_20:                               //  %if.else
	lw x11 ,  48 ( x8 )
	beq x0, x11, .LBB0_13
.LBB0_21:                               //  %if.then52
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_23
.LBB0_22:                               //  %if.then57
	add x10 ,  x0 ,  x18
	call _free_r
.LBB0_23:                               //  %if.end60
	lw x15 ,  60 ( x8 )
	sw x0 ,  48 ( x8 )
	sw x15 ,  4 ( x8 )
	beq x0, x15, .LBB0_13
.LBB0_24:                               //  %if.then66
	lw x15 ,  56 ( x8 )
	add x9 ,  x0 ,  x0
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_29
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB0_4
	jal x0, .LBB0_5
.LBB0_9:                                //  %if.end32
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB0_12
.LBB0_10:                               //  %if.then37
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call _fflush_r
	bltu x0, x10, .LBB0_29
.LBB0_11:                               //  %if.end40
	lh x15 ,  12 ( x8 )
	sw x0 ,  24 ( x8 )
	sw x0 ,  8 ( x8 )
	andi x15 ,  x15 ,  -9
	sh x15 ,  12 ( x8 )
.LBB0_12:                               //  %if.end45
	ori x15 ,  x15 ,  4
	sh x15 ,  12 ( x8 )
.LBB0_13:                               //  %if.end69
	lw x15 ,  16 ( x8 )
	bltu x0, x15, .LBB0_15
.LBB0_14:                               //  %if.then73
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __smakebuf_r
.LBB0_15:                               //  %if.end74
	lh x19 ,  12 ( x8 )
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	andi x14 ,  x19 ,  3
	beq x0, x14, .LBB0_18
.LBB0_16:                               //  %if.then79
	lui x30 ,  _global_impure_ptr&4095
	and x20 ,  x15 ,  x19
	slti x15 ,  x0 ,  1
	sh x15 ,  12 ( x8 )
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  lflush&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (lflush>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call _fwalk
	andi x15 ,  x19 ,  9
	sh x20 ,  12 ( x8 )
	xori x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_18
.LBB0_17:                               //  %if.then89
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __sflush_r
.LBB0_18:                               //  %if.end92
	lw x12 ,  16 ( x8 )
	add x10 ,  x0 ,  x18
	lw x15 ,  32 ( x8 )
	lw x11 ,  28 ( x8 )
	lw x13 ,  20 ( x8 )
	sw x12 ,  0 ( x8 )
	call_reg, 0 ( x15 )
	sw x10 ,  4 ( x8 )
	bge x0, x10, .LBB0_25
.LBB0_19:
	add x9 ,  x0 ,  x0
	jal x0, .LBB0_29
.LBB0_25:                               //  %if.then103
	beq x0, x10, .LBB0_26
.LBB0_27:                               //  %if.else112
	addi x15 ,  x0 ,  64
	sw x0 ,  4 ( x8 )
	jal x0, .LBB0_28
.LBB0_26:
	addi x15 ,  x0 ,  32
.LBB0_28:                               //  %if.end118
	lh x14 ,  12 ( x8 )
	or x15 ,  x15 ,  x14
	sh x15 ,  12 ( x8 )
.LBB0_29:                               //  %return
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__srefill_r, .Lfunc_end0-__srefill_r
	.cfi_endproc
                                        //  -- End function
	.type	lflush,@function        //  -- Begin function lflush
lflush:                                 //  @lflush
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lhu x15 ,  12 ( x10 )
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	andi x15 ,  x15 ,  9
	xori x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_1
.LBB1_2:                                //  %if.then
	call fflush
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB1_1:
	add x10 ,  x0 ,  x0
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	lflush, .Lfunc_end1-lflush
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
