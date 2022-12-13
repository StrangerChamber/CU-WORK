	.text
	.file	"wsetup.c"
	.globl	__swsetup_r             //  -- Begin function __swsetup_r
	.type	__swsetup_r,@function
__swsetup_r:                            //  @__swsetup_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x10 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	call __sinit
.LBB0_3:                                //  %if.end
	lh x14 ,  12 ( x8 )
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x14
	andi x13 ,  x14 ,  8
	bltu x0, x13, .LBB0_13
.LBB0_4:                                //  %if.then3
	andi x13 ,  x14 ,  16
	bltu x0, x13, .LBB0_6
.LBB0_5:                                //  %if.then9
	addi x14 ,  x0 ,  9
	sw x14 ,  0 ( x9 )
	jal x0, .LBB0_24
.LBB0_6:                                //  %if.end13
	andi x14 ,  x14 ,  4
	beq x0, x14, .LBB0_12
.LBB0_7:                                //  %if.then18
	lw x11 ,  48 ( x8 )
	beq x0, x11, .LBB0_11
.LBB0_8:                                //  %if.then21
	addi x14 ,  x8 ,  64
	beq x11, x14, .LBB0_10
.LBB0_9:                                //  %if.then26
	add x10 ,  x0 ,  x9
	call _free_r
	lhu x15 ,  12 ( x8 )
.LBB0_10:                               //  %if.end29
	sw x0 ,  48 ( x8 )
.LBB0_11:                               //  %if.end32
	lw x14 ,  16 ( x8 )
	lui x30 ,  65499&4095
	sw x0 ,  4 ( x8 )
	srli x30 ,  x30 ,  12&31
	sw x14 ,  0 ( x8 )
	lui x14 ,  (65499>>12)&1048575
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
.LBB0_12:                               //  %if.end38
	ori x15 ,  x15 ,  8
	sh x15 ,  12 ( x8 )
.LBB0_13:                               //  %if.end43
	lw x14 ,  16 ( x8 )
	bltu x0, x14, .LBB0_16
.LBB0_14:                               //  %if.end43
	andi x14 ,  x15 ,  640
	xori x14 ,  x14 ,  512
	beq x0, x14, .LBB0_16
.LBB0_15:                               //  %if.then57
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __smakebuf_r
	lhu x15 ,  12 ( x8 )
.LBB0_16:                               //  %if.end58
	slli x14 ,  x15 ,  16&31
	srai x14 ,  x14 ,  16&31
	andi x13 ,  x14 ,  1
	bltu x0, x13, .LBB0_17
.LBB0_18:                               //  %if.else
	andi x14 ,  x14 ,  2
	bltu x0, x14, .LBB0_19
.LBB0_20:                               //  %cond.false
	lw x14 ,  20 ( x8 )
	sw x14 ,  8 ( x8 )
	add x10 ,  x0 ,  x0
	andi x14 ,  x15 ,  128
	bltu x0, x14, .LBB0_23
	jal x0, .LBB0_25
.LBB0_17:                               //  %if.then63
	lw x14 ,  20 ( x8 )
	sw x0 ,  8 ( x8 )
	sub x14 ,  x0 ,  x14
	sw x14 ,  24 ( x8 )
	add x10 ,  x0 ,  x0
	andi x14 ,  x15 ,  128
	beq x0, x14, .LBB0_25
.LBB0_23:                               //  %if.end72
	lw x14 ,  16 ( x8 )
	bltu x0, x14, .LBB0_25
.LBB0_24:                               //  %return.sink.split
	ori x15 ,  x15 ,  64
	addi x10 ,  x0 ,  -1
	sh x15 ,  12 ( x8 )
.LBB0_25:                               //  %return
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_19:
	add x14 ,  x0 ,  x0
	sw x14 ,  8 ( x8 )
	add x10 ,  x0 ,  x0
	andi x14 ,  x15 ,  128
	bltu x0, x14, .LBB0_23
	jal x0, .LBB0_25
.Lfunc_end0:
	.size	__swsetup_r, .Lfunc_end0-__swsetup_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
