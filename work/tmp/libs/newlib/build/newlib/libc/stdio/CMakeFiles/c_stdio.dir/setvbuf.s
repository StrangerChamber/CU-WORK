	.text
	.file	"setvbuf.c"
	.globl	setvbuf                 //  -- Begin function setvbuf
	.type	setvbuf,@function
setvbuf:                                //  @setvbuf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x19 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	beq x0, x18, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %if.end
	xori x21 ,  x9 ,  2
	beq x0, x21, .LBB0_6
.LBB0_3:                                //  %if.then2
	addi x22 ,  x0 ,  -1
	slti x15 ,  x0 ,  1
	bltu x15, x9, .LBB0_33
.LBB0_4:                                //  %if.then2
	bge x19, x0, .LBB0_6
	jal x0, .LBB0_33
.LBB0_5:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
	xori x21 ,  x9 ,  2
	bltu x0, x21, .LBB0_3
.LBB0_6:                                //  %if.end9
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call _fflush_r
	lw x11 ,  48 ( x8 )
	beq x0, x11, .LBB0_10
.LBB0_7:                                //  %if.then17
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_9
.LBB0_8:                                //  %if.then22
	add x10 ,  x0 ,  x18
	call _free_r
.LBB0_9:                                //  %if.end25
	sw x0 ,  48 ( x8 )
.LBB0_10:                               //  %if.end28
	lhu x15 ,  12 ( x8 )
	sw x0 ,  4 ( x8 )
	sw x0 ,  24 ( x8 )
	andi x14 ,  x15 ,  128
	beq x0, x14, .LBB0_12
.LBB0_11:                               //  %if.then33
	lw x11 ,  16 ( x8 )
	add x10 ,  x0 ,  x18
	call _free_r
	lhu x15 ,  12 ( x8 )
.LBB0_12:                               //  %if.end35
	lui x30 ,  62300&4095
	lui x14 ,  (62300>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	bltu x0, x21, .LBB0_15
.LBB0_13:
	add x22 ,  x0 ,  x0
.LBB0_14:                               //  %nbf
	slti x15 ,  x0 ,  1
	sw x0 ,  8 ( x8 )
	sw x15 ,  20 ( x8 )
	addi x15 ,  x8 ,  67
	sw x15 ,  16 ( x8 )
	sw x15 ,  0 ( x8 )
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  2
	sh x15 ,  12 ( x8 )
	jal x0, .LBB0_33
.LBB0_15:                               //  %if.end43
	addi x12 ,  x2 ,  12
	addi x13 ,  x2 ,  8
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __swhatbuf_r
	lh x15 ,  12 ( x8 )
	add x21 ,  x0 ,  x0
	or x15 ,  x10 ,  x15
	sh x15 ,  12 ( x8 )
	beq x19, x21, .LBB0_25
.LBB0_16:                               //  %if.end43
	add x21 ,  x0 ,  x20
	beq x0, x21, .LBB0_26
.LBB0_17:
	add x20 ,  x0 ,  x19
	lw x15 ,  56 ( x18 )
	beq x0, x15, .LBB0_18
.LBB0_19:                               //  %if.end97
	lw x15 ,  12 ( x2 )
	bne x20, x15, .LBB0_29
.LBB0_20:                               //  %if.end105
	lhu x15 ,  12 ( x8 )
	xori x14 ,  x9 ,  1
	bltu x0, x14, .LBB0_22
.LBB0_21:                               //  %if.then108
	ori x15 ,  x15 ,  1
	sh x15 ,  12 ( x8 )
.LBB0_22:                               //  %if.end113
	slli x15 ,  x15 ,  16&31
	sw x20 ,  20 ( x8 )
	sw x21 ,  16 ( x8 )
	sw x21 ,  0 ( x8 )
	srai x15 ,  x15 ,  16&31
	andi x14 ,  x15 ,  8
	beq x0, x14, .LBB0_31
.LBB0_23:                               //  %if.then123
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_30
.LBB0_24:                               //  %if.else
	sw x20 ,  8 ( x8 )
	jal x0, .LBB0_32
.LBB0_25:
	lw x19 ,  12 ( x2 )
	bltu x0, x21, .LBB0_17
.LBB0_26:                               //  %if.then54
	add x10 ,  x0 ,  x19
	call malloc
	add x21 ,  x0 ,  x10
	beq x0, x21, .LBB0_34
.LBB0_27:
	add x20 ,  x0 ,  x19
.LBB0_28:                               //  %if.end88
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  128
	sh x15 ,  12 ( x8 )
	lw x15 ,  56 ( x18 )
	bltu x0, x15, .LBB0_19
.LBB0_18:                               //  %if.then96
	add x10 ,  x0 ,  x18
	call __sinit
	lw x15 ,  12 ( x2 )
	beq x20, x15, .LBB0_20
.LBB0_29:                               //  %if.then100
	lh x15 ,  12 ( x8 )
	lui x30 ,  2048&4095
	lui x14 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	or x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	lhu x15 ,  12 ( x8 )
	xori x14 ,  x9 ,  1
	beq x0, x14, .LBB0_21
	jal x0, .LBB0_22
.LBB0_30:                               //  %if.then128
	sub x15 ,  x0 ,  x20
	sw x15 ,  24 ( x8 )
.LBB0_31:                               //  %if.else135
	sw x0 ,  8 ( x8 )
.LBB0_32:                               //  %cleanup
	add x22 ,  x0 ,  x0
.LBB0_33:                               //  %cleanup
	add x10 ,  x0 ,  x22
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
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
.LBB0_34:                               //  %if.then58
	lw x20 ,  12 ( x2 )
	addi x22 ,  x0 ,  -1
	beq x19, x20, .LBB0_14
.LBB0_35:                               //  %if.end64
	add x10 ,  x0 ,  x20
	call malloc
	add x21 ,  x0 ,  x10
	bltu x0, x21, .LBB0_28
	jal x0, .LBB0_14
.Lfunc_end0:
	.size	setvbuf, .Lfunc_end0-setvbuf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
