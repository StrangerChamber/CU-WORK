	.text
	.file	"hash_bigkey.c"
	.globl	__big_insert            //  -- Begin function __big_insert
	.type	__big_insert,@function
__big_insert:                           //  @__big_insert
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x11
	sw x27 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x23 ,  x0 ,  x13
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	lw x9 ,  4 ( x12 )
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x25 ,  x0 ,  x10
	lui x24 ,  (65535>>12)&1048575
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	lw x27 ,  16 ( x20 )
	lw x26 ,  4 ( x23 )
	lw x19 ,  0 ( x23 )
	lhu x15 ,  0 ( x27 )
	addi x14 ,  x15 ,  1
	beq x0, x9, .LBB0_13
.LBB0_1:                                //  %for.body.preheader
	lw x21 ,  0 ( x12 )
	slli x14 ,  x14 ,  1&31
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x23 ,  4 ( x2 )              //  4-byte Folded Spill
	add x13 ,  x14 ,  x27
	jal x0, .LBB0_5
.LBB0_2:                                //  %if.then54
                                        //    in Loop: Header=BB0_5 Depth=1
	lh x15 ,  4 ( x18 )
	lui x30 ,  65535&4095
	add x25 ,  x0 ,  x13
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	sub x8 ,  x15 ,  x24
	or x15 ,  x25 ,  x30
	and x14 ,  x15 ,  x8
	and x23 ,  x15 ,  x24
	sh x8 ,  0 ( x18 )
	add x10 ,  x14 ,  x27
	add x12 ,  x0 ,  x23
	call memmove
	addi x15 ,  x0 ,  3
	sub x26 ,  x26 ,  x23
	add x19 ,  x23 ,  x19
	lw x23 ,  4 ( x2 )              //  4-byte Folded Reload
	sh x15 ,  -4 ( x18 )
	lhu x15 ,  0 ( x27 )
	slli x14 ,  x15 ,  1&31
	addi x15 ,  x15 ,  2
	add x14 ,  x27 ,  x14
	lh x13 ,  2 ( x14 )
	sub x13 ,  x13 ,  x24
	add x24 ,  x0 ,  x25
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	sh x13 ,  2 ( x14 )
.LBB0_3:                                //  %if.end110.sink.split
                                        //    in Loop: Header=BB0_5 Depth=1
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x27
	sh x8 ,  0 ( x15 )
.LBB0_4:                                //  %if.end110
                                        //    in Loop: Header=BB0_5 Depth=1
	lb x15 ,  20 ( x20 )
	add x21 ,  x22 ,  x21
	lw x27 ,  16 ( x20 )
	ori x15 ,  x15 ,  1
	sb x15 ,  20 ( x20 )
	lhu x15 ,  0 ( x27 )
	addi x14 ,  x15 ,  1
	slli x13 ,  x14 ,  1&31
	add x13 ,  x13 ,  x27
	beq x0, x9, .LBB0_13
.LBB0_5:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lh x14 ,  0 ( x13 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x8 ,  x24 ,  x30
	addi x14 ,  x14 ,  -8
	and x14 ,  x8 ,  x14
	blt x14, x9, .LBB0_7
.LBB0_6:                                //  %for.body
                                        //    in Loop: Header=BB0_5 Depth=1
	add x14 ,  x0 ,  x9
.LBB0_7:                                //  %for.body
                                        //    in Loop: Header=BB0_5 Depth=1
	and x15 ,  x8 ,  x15
	and x22 ,  x8 ,  x14
	add x11 ,  x0 ,  x21
	slli x15 ,  x15 ,  1&31
	add x12 ,  x0 ,  x22
	add x15 ,  x27 ,  x15
	lh x15 ,  4 ( x15 )
	sub x18 ,  x15 ,  x14
	and x15 ,  x8 ,  x18
	add x10 ,  x15 ,  x27
	call memmove
	lhu x15 ,  0 ( x27 )
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x20
	slli x14 ,  x15 ,  1&31
	addi x15 ,  x15 ,  2
	add x13 ,  x27 ,  x14
	sub x14 ,  x18 ,  x14
	sh x15 ,  0 ( x27 )
	sh x18 ,  2 ( x13 )
	and x13 ,  x8 ,  x15
	slli x15 ,  x15 ,  1&31
	addi x14 ,  x14 ,  -10
	slli x13 ,  x13 ,  1&31
	add x15 ,  x15 ,  x27
	add x13 ,  x27 ,  x13
	sh x14 ,  2 ( x13 )
	slti x14 ,  x0 ,  1
	sh x18 ,  4 ( x13 )
	sh x14 ,  0 ( x15 )
	call __add_ovflpage
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB0_27
.LBB0_8:                                //  %if.end
                                        //    in Loop: Header=BB0_5 Depth=1
	sub x9 ,  x9 ,  x22
	bltu x0, x9, .LBB0_4
.LBB0_9:                                //  %if.then48
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x15 ,  0 ( x27 )
	add x13 ,  x0 ,  x24
	slli x14 ,  x15 ,  1&31
	add x18 ,  x27 ,  x14
	lhu x24 ,  2 ( x18 )
	beq x0, x24, .LBB0_12
.LBB0_10:                               //  %if.then54
                                        //    in Loop: Header=BB0_5 Depth=1
	blt x24, x26, .LBB0_2
.LBB0_11:                               //  %if.then54
                                        //    in Loop: Header=BB0_5 Depth=1
	add x24 ,  x0 ,  x26
	jal x0, .LBB0_2
.LBB0_12:                               //  %if.else
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x15 ,  x15 ,  -2
	addi x8 ,  x0 ,  2
	add x24 ,  x0 ,  x13
	jal x0, .LBB0_3
.LBB0_13:                               //  %for.end
	add x9 ,  x0 ,  x0
	beq x0, x26, .LBB0_25
.LBB0_14:                               //  %for.body131.preheader
	slli x14 ,  x14 ,  1&31
	addi x22 ,  x0 ,  2
	add x14 ,  x14 ,  x27
	jal x0, .LBB0_17
.LBB0_15:                               //  %if.else193
                                        //    in Loop: Header=BB0_17 Depth=1
	addi x13 ,  x0 ,  3
	sh x13 ,  0 ( x14 )
.LBB0_16:                               //  %if.end195
                                        //    in Loop: Header=BB0_17 Depth=1
	lb x14 ,  20 ( x20 )
	lui x30 ,  65535&4095
	add x19 ,  x21 ,  x19
	srli x30 ,  x30 ,  12&31
	ori x14 ,  x14 ,  1
	sb x14 ,  20 ( x20 )
	or x14 ,  x24 ,  x30
	and x14 ,  x14 ,  x15
	slli x14 ,  x14 ,  1&31
	add x14 ,  x27 ,  x14
	addi x14 ,  x14 ,  2
	beq x0, x26, .LBB0_25
.LBB0_17:                               //  %for.body131
                                        //  =>This Inner Loop Header: Depth=1
	lh x14 ,  0 ( x14 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x24 ,  x30
	addi x14 ,  x14 ,  -8
	and x13 ,  x13 ,  x14
	add x14 ,  x0 ,  x13
	blt x13, x26, .LBB0_19
.LBB0_18:                               //  %for.body131
                                        //    in Loop: Header=BB0_17 Depth=1
	add x14 ,  x0 ,  x26
.LBB0_19:                               //  %for.body131
                                        //    in Loop: Header=BB0_17 Depth=1
	bne x26, x13, .LBB0_22
.LBB0_20:                               //  %land.lhs.true
                                        //    in Loop: Header=BB0_17 Depth=1
	lw x12 ,  4 ( x23 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x24 ,  x30
	bne x26, x12, .LBB0_22
.LBB0_21:                               //    in Loop: Header=BB0_17 Depth=1
	add x14 ,  x13 ,  x14
.LBB0_22:                               //  %if.end148
                                        //    in Loop: Header=BB0_17 Depth=1
	lui x30 ,  65535&4095
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x8 ,  x24 ,  x30
	and x15 ,  x8 ,  x15
	and x21 ,  x8 ,  x14
	slli x15 ,  x15 ,  1&31
	add x12 ,  x0 ,  x21
	add x15 ,  x27 ,  x15
	lh x15 ,  4 ( x15 )
	sub x18 ,  x15 ,  x14
	and x15 ,  x8 ,  x18
	add x10 ,  x15 ,  x27
	call memmove
	lhu x15 ,  0 ( x27 )
	sub x26 ,  x26 ,  x21
	slli x14 ,  x15 ,  1&31
	addi x15 ,  x15 ,  2
	add x13 ,  x27 ,  x14
	sub x14 ,  x18 ,  x14
	sh x15 ,  0 ( x27 )
	sh x18 ,  2 ( x13 )
	and x13 ,  x8 ,  x15
	addi x14 ,  x14 ,  -10
	slli x13 ,  x13 ,  1&31
	add x13 ,  x27 ,  x13
	sh x14 ,  2 ( x13 )
	slli x14 ,  x15 ,  1&31
	sh x18 ,  4 ( x13 )
	add x14 ,  x14 ,  x27
	beq x0, x26, .LBB0_15
.LBB0_23:                               //  %if.then186
                                        //    in Loop: Header=BB0_17 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x20
	sh x22 ,  0 ( x14 )
	call __add_ovflpage
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB0_27
.LBB0_24:                               //  %if.end191
                                        //    in Loop: Header=BB0_17 Depth=1
	lw x27 ,  16 ( x20 )
	lhu x15 ,  0 ( x27 )
	jal x0, .LBB0_16
.LBB0_25:
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_28
.LBB0_27:
	addi x10 ,  x0 ,  -1
.LBB0_28:                               //  %cleanup
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
.Lfunc_end0:
	.size	__big_insert, .Lfunc_end0-__big_insert
	.cfi_endproc
                                        //  -- End function
	.globl	__big_delete            //  -- Begin function __big_delete
	.type	__big_delete,@function
__big_delete:                           //  @__big_delete
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x21 ,  x0 ,  x0
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -48
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	add x8 ,  x0 ,  x10
	lui x22 ,  (65534>>12)&1048575
	slti x24 ,  x0 ,  1
	addi x25 ,  x0 ,  2
	addi x20 ,  x0 ,  -1
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	addi x23 ,  x18 ,  16
	add x26 ,  x0 ,  x21
	add x9 ,  x0 ,  x21
	add x19 ,  x0 ,  x18
	add x15 ,  x0 ,  x23
	lw x15 ,  0 ( x15 )
	lhu x14 ,  4 ( x15 )
	bltu x0, x26, .LBB1_2
	jal x0, .LBB1_5
.LBB1_12:                               //  %if.end29
	addi x15 ,  x19 ,  16
	add x9 ,  x0 ,  x19
	beq x0, x19, .LBB1_22
.LBB1_1:                                //  %while.cond
	lw x15 ,  0 ( x15 )
	lhu x14 ,  4 ( x15 )
	beq x0, x26, .LBB1_5
.LBB1_2:                                //  %lor.rhs
	xori x13 ,  x14 ,  3
	beq x0, x13, .LBB1_13
.LBB1_3:                                //  %while.body.thread
	lui x30 ,  65534&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	and x14 ,  x13 ,  x14
	add x13 ,  x0 ,  x24
	beq x14, x25, .LBB1_8
.LBB1_4:                                //  %while.body.thread
	add x13 ,  x0 ,  x26
	jal x0, .LBB1_8
.LBB1_5:                                //  %while.body
	lui x30 ,  65534&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	and x12 ,  x13 ,  x14
	add x13 ,  x0 ,  x24
	beq x12, x25, .LBB1_7
.LBB1_6:                                //  %while.body
	add x13 ,  x0 ,  x26
.LBB1_7:                                //  %while.body
	xori x14 ,  x14 ,  3
	bltu x0, x14, .LBB1_8
.LBB1_9:                                //  %land.lhs.true
	lhu x14 ,  0 ( x15 )
	add x26 ,  x0 ,  x13
	slli x12 ,  x14 ,  1&31
	add x12 ,  x15 ,  x12
	lhu x12 ,  2 ( x12 )
	beq x0, x12, .LBB1_10
	jal x0, .LBB1_14
.LBB1_8:                                //  %while.body.if.end20_crit_edge
	lhu x14 ,  0 ( x15 )
	add x26 ,  x0 ,  x13
.LBB1_10:                               //  %if.end20
	lb x13 ,  20 ( x19 )
	slli x14 ,  x14 ,  1&31
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x15 ,  x15 ,  x14
	lhu x11 ,  -2 ( x15 )
	ori x13 ,  x13 ,  1
	sb x13 ,  20 ( x19 )
	add x13 ,  x0 ,  x21
	call __get_buf
	add x19 ,  x0 ,  x10
	beq x0, x9, .LBB1_12
.LBB1_11:                               //  %if.then28
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __free_ovflpage
	jal x0, .LBB1_12
.LBB1_13:                               //  %lor.rhs.while.end_crit_edge
	lhu x14 ,  0 ( x15 )
.LBB1_14:                               //  %while.end
	lw x13 ,  0 ( x23 )
	sltiu x11 ,  x14 ,  3
	slli x12 ,  x14 ,  1&31
	bltu x0, x11, .LBB1_16
.LBB1_15:                               //  %if.then41
	add x15 ,  x15 ,  x12
	lw x11 ,  8 ( x19 )
	lh x15 ,  -2 ( x15 )
	sh x0 ,  4 ( x13 )
	sw x11 ,  8 ( x18 )
	sh x15 ,  2 ( x13 )
	jal x0, .LBB1_17
.LBB1_16:                               //  %if.else
	sw x0 ,  8 ( x18 )
.LBB1_17:                               //  %if.end46
	lui x30 ,  65535&4095
	addi x15 ,  x14 ,  -2
	lui x14 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sh x15 ,  0 ( x13 )
	or x14 ,  x14 ,  x30
	lui x30 ,  65534&4095
	and x14 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x14 ,  1&31
	lw x14 ,  12 ( x8 )
	add x15 ,  x13 ,  x15
	sub x13 ,  x14 ,  x12
	or x12 ,  x22 ,  x30
	addi x14 ,  x14 ,  -1
	add x13 ,  x12 ,  x13
	sh x14 ,  4 ( x15 )
	sh x13 ,  2 ( x15 )
	lb x15 ,  20 ( x18 )
	ori x15 ,  x15 ,  1
	sb x15 ,  20 ( x18 )
	beq x0, x19, .LBB1_19
.LBB1_18:                               //  %if.then70
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __free_ovflpage
.LBB1_19:                               //  %if.end71
	beq x9, x19, .LBB1_21
.LBB1_20:                               //  %if.then74
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __free_ovflpage
.LBB1_21:                               //  %if.end75
	lw x15 ,  56 ( x8 )
	add x20 ,  x0 ,  x0
	addi x15 ,  x15 ,  -1
	sw x15 ,  56 ( x8 )
.LBB1_22:                               //  %cleanup
	add x10 ,  x0 ,  x20
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  16 ( x2 )             //  4-byte Folded Reload
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
.Lfunc_end1:
	.size	__big_delete, .Lfunc_end1-__big_delete
	.cfi_endproc
                                        //  -- End function
	.globl	__find_bigpair          //  -- Begin function __find_bigpair
	.type	__find_bigpair,@function
__find_bigpair:                         //  @__find_bigpair
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22 ,  x0 ,  x11
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x12
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x14
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x10
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x13
	lui x30 ,  65535&4095
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	lui x25 ,  (65535>>12)&1048575
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	addi x9 ,  x0 ,  -2
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x15 ,  16 ( x22 )
	slli x14 ,  x19 ,  1&31
	srli x30 ,  x30 ,  12&31
	lh x13 ,  12 ( x21 )
	add x14 ,  x14 ,  x15
	lh x14 ,  0 ( x14 )
	sub x14 ,  x13 ,  x14
	or x13 ,  x25 ,  x30
	and x14 ,  x13 ,  x14
	bge x20, x14, .LBB2_2
.LBB2_1:
	add x18 ,  x0 ,  x20
	beq x18, x14, .LBB2_12
	jal x0, .LBB2_8
.LBB2_2:                                //  %land.rhs.preheader
	add x23 ,  x0 ,  x0
	slti x27 ,  x0 ,  1
	add x18 ,  x0 ,  x20
.LBB2_3:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x24 ,  x0 ,  x14
	slli x14 ,  x19 ,  1&31
	add x26 ,  x15 ,  x14
	lhu x14 ,  2 ( x26 )
	xori x14 ,  x14 ,  1
	bltu x0, x14, .LBB2_4
.LBB2_5:                                //  %for.body
                                        //    in Loop: Header=BB2_3 Depth=1
	lhu x14 ,  0 ( x26 )
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	add x10 ,  x14 ,  x15
	call memcmp
	bltu x0, x10, .LBB2_8
.LBB2_6:                                //  %if.end
                                        //    in Loop: Header=BB2_3 Depth=1
	lhu x11 ,  4 ( x26 )
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __get_buf
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB2_7
.LBB2_9:                                //  %if.end22
                                        //    in Loop: Header=BB2_3 Depth=1
	lw x15 ,  16 ( x22 )
	lui x30 ,  65535&4095
	add x8 ,  x24 ,  x8
	sub x18 ,  x18 ,  x24
	add x19 ,  x0 ,  x27
	lh x14 ,  12 ( x21 )
	srli x30 ,  x30 ,  12&31
	lh x13 ,  2 ( x15 )
	sub x14 ,  x14 ,  x13
	or x13 ,  x25 ,  x30
	and x14 ,  x13 ,  x14
	bge x20, x14, .LBB2_3
.LBB2_10:                               //  %for.end.loopexit.split.loop.exit
	slti x19 ,  x0 ,  1
	beq x18, x14, .LBB2_12
	jal x0, .LBB2_8
.LBB2_4:
	add x14 ,  x0 ,  x24
	bne x18, x14, .LBB2_8
.LBB2_12:                               //  %lor.lhs.false
	slli x14 ,  x19 ,  1&31
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	add x14 ,  x14 ,  x15
	lhu x14 ,  0 ( x14 )
	add x10 ,  x14 ,  x15
	call memcmp
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB2_14
.LBB2_13:                               //  %lor.lhs.false
	addi x19 ,  x0 ,  -2
.LBB2_14:                               //  %lor.lhs.false
	add x10 ,  x0 ,  x19
	jal x0, .LBB2_15
.LBB2_7:
	addi x9 ,  x0 ,  -3
.LBB2_8:                                //  %cleanup
	add x10 ,  x0 ,  x9
.LBB2_15:                               //  %lor.lhs.false
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
.Lfunc_end2:
	.size	__find_bigpair, .Lfunc_end2-__find_bigpair
	.cfi_endproc
                                        //  -- End function
	.globl	__find_last_page        //  -- Begin function __find_last_page
	.type	__find_last_page,@function
__find_last_page:                       //  @__find_last_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x18 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x12 ,  0 ( x9 )
	jal x0, .LBB3_1
.LBB3_6:                                //  %if.end
                                        //    in Loop: Header=BB3_1 Depth=1
	add x15 ,  x15 ,  x13
	add x10 ,  x0 ,  x18
	add x13 ,  x0 ,  x8
	lhu x11 ,  -2 ( x15 )
	call __get_buf
	add x12 ,  x0 ,  x10
	beq x0, x12, .LBB3_9
.LBB3_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  16 ( x12 )
	lhu x13 ,  4 ( x15 )
	lhu x14 ,  0 ( x15 )
	xori x11 ,  x13 ,  3
	slli x13 ,  x14 ,  1&31
	bltu x0, x11, .LBB3_6
.LBB3_2:                                //  %land.lhs.true
                                        //    in Loop: Header=BB3_1 Depth=1
	xori x11 ,  x14 ,  2
	beq x0, x11, .LBB3_3
.LBB3_4:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB3_1 Depth=1
	add x11 ,  x13 ,  x15
	lhu x10 ,  0 ( x11 )
	beq x0, x10, .LBB3_7
.LBB3_5:                                //  %lor.lhs.false10
                                        //    in Loop: Header=BB3_1 Depth=1
	lhu x11 ,  2 ( x11 )
	beq x0, x11, .LBB3_6
.LBB3_7:                                //  %for.end
	sltiu x14 ,  x14 ,  3
	sw x12 ,  0 ( x9 )
	bltu x0, x14, .LBB3_9
.LBB3_8:                                //  %if.then25
	lhu x8 ,  6 ( x15 )
	jal x0, .LBB3_9
.LBB3_3:                                //  %for.end.thread
	sw x12 ,  0 ( x9 )
.LBB3_9:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	__find_last_page, .Lfunc_end3-__find_last_page
	.cfi_endproc
                                        //  -- End function
	.globl	__big_return            //  -- Begin function __big_return
	.type	__big_return,@function
__big_return:                           //  @__big_return
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x11
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x21 ,  x0 ,  x14
	add x19 ,  x0 ,  x13
	add x8 ,  x0 ,  x10
	addi x14 ,  x12 ,  1
	add x18 ,  x0 ,  x0
	addi x9 ,  x0 ,  -1
	addi x22 ,  x0 ,  2
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x15 ,  16 ( x20 )
.LBB4_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	slli x14 ,  x14 ,  1&31
	add x14 ,  x14 ,  x15
	lhu x14 ,  0 ( x14 )
	xori x13 ,  x14 ,  1
	bltu x0, x13, .LBB4_2
.LBB4_8:                                //  %while.body
                                        //    in Loop: Header=BB4_1 Depth=1
	lhu x14 ,  0 ( x15 )
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x18
	slli x14 ,  x14 ,  1&31
	add x15 ,  x15 ,  x14
	lhu x11 ,  -2 ( x15 )
	call __get_buf
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB4_21
.LBB4_9:                                //  %if.end
                                        //    in Loop: Header=BB4_1 Depth=1
	lw x15 ,  16 ( x20 )
	add x14 ,  x0 ,  x22
	jal x0, .LBB4_1
.LBB4_2:                                //  %while.cond
	xori x14 ,  x14 ,  2
	bltu x0, x14, .LBB4_10
.LBB4_3:                                //  %if.then12
	lhu x14 ,  0 ( x15 )
	add x22 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x22
	slli x14 ,  x14 ,  1&31
	add x15 ,  x15 ,  x14
	lhu x11 ,  -2 ( x15 )
	call __get_buf
	add x11 ,  x0 ,  x10
	beq x0, x11, .LBB4_21
.LBB4_4:                                //  %if.end21
	lw x15 ,  16 ( x11 )
	add x20 ,  x0 ,  x11
	lhu x24 ,  12 ( x11 )
	lhu x23 ,  2 ( x15 )
	jal x0, .LBB4_5
.LBB4_10:                               //  %if.else
	lhu x13 ,  0 ( x15 )
	slli x14 ,  x13 ,  1&31
	add x14 ,  x14 ,  x15
	lhu x23 ,  0 ( x14 )
	lhu x12 ,  2 ( x14 )
	beq x0, x12, .LBB4_11
.LBB4_13:                               //  %if.else50
	add x12 ,  x23 ,  x15
	lhu x15 ,  2 ( x15 )
	sw x12 ,  0 ( x19 )
	sub x15 ,  x15 ,  x23
	sw x15 ,  4 ( x19 )
	beq x0, x21, .LBB4_20
.LBB4_14:                               //  %if.then60
	xori x15 ,  x13 ,  2
	bltu x0, x15, .LBB4_16
.LBB4_15:                               //  %if.then65
	slti x15 ,  x0 ,  1
	sw x15 ,  296 ( x8 )
.LBB4_18:                               //  %if.then83
	lw x15 ,  292 ( x8 )
	addi x15 ,  x15 ,  1
	sw x15 ,  292 ( x8 )
	sw x0 ,  288 ( x8 )
	jal x0, .LBB4_20
.LBB4_11:                               //  %if.then30
	lhu x11 ,  -2 ( x14 )
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	lhu x22 ,  2 ( x15 )
	lhu x24 ,  12 ( x20 )
	call __get_buf
	add x11 ,  x0 ,  x10
	beq x0, x11, .LBB4_21
.LBB4_12:                               //  %if.end48
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	sub x15 ,  x22 ,  x23
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x22 ,  x14 ,  x15
.LBB4_5:                                //  %if.end91
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	call collect_data
	xori x15 ,  x10 ,  -1
	sw x10 ,  4 ( x19 )
	beq x0, x15, .LBB4_21
.LBB4_6:                                //  %if.end99
	lw x15 ,  12 ( x20 )
	bne x15, x24, .LBB4_7
.LBB4_19:                               //  %if.end106
	lw x15 ,  16 ( x20 )
	add x12 ,  x0 ,  x22
	lw x10 ,  280 ( x8 )
	add x11 ,  x23 ,  x15
	call memmove
	lw x15 ,  280 ( x8 )
	sw x15 ,  0 ( x19 )
	jal x0, .LBB4_20
.LBB4_7:                                //  %if.then104
	call __errno
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
	jal x0, .LBB4_21
.LBB4_16:                               //  %if.else66
	lhu x11 ,  -2 ( x14 )
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x18
	call __get_buf
	sw x10 ,  288 ( x8 )
	beq x0, x10, .LBB4_21
.LBB4_17:                               //  %if.end77
	slti x15 ,  x0 ,  1
	sw x15 ,  296 ( x8 )
	lw x15 ,  16 ( x10 )
	lhu x15 ,  0 ( x15 )
	beq x0, x15, .LBB4_18
.LBB4_20:                               //  %cleanup
	add x9 ,  x0 ,  x18
.LBB4_21:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
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
.Lfunc_end4:
	.size	__big_return, .Lfunc_end4-__big_return
	.cfi_endproc
                                        //  -- End function
	.type	collect_data,@function  //  -- Begin function collect_data
collect_data:                           //  @collect_data
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x10
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x23 ,  16 ( x9 )
	lw x15 ,  12 ( x19 )
	lhu x24 ,  12 ( x9 )
	lhu x14 ,  2 ( x23 )
	sub x8 ,  x15 ,  x14
	lhu x15 ,  4 ( x23 )
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB5_9
.LBB5_1:                                //  %if.then
	lw x10 ,  280 ( x19 )
	add x20 ,  x18 ,  x8
	beq x0, x10, .LBB5_3
.LBB5_2:                                //  %if.then5
	call free
.LBB5_3:                                //  %if.end
	add x10 ,  x0 ,  x20
	call malloc
	addi x21 ,  x0 ,  -1
	sw x10 ,  280 ( x19 )
	beq x0, x10, .LBB5_14
.LBB5_4:                                //  %if.end11
	beq x0, x22, .LBB5_11
.LBB5_5:                                //  %if.then13
	slti x15 ,  x0 ,  1
	sw x15 ,  296 ( x19 )
	lhu x15 ,  0 ( x23 )
	xori x14 ,  x15 ,  2
	beq x0, x14, .LBB5_6
.LBB5_7:                                //  %if.else
	slli x15 ,  x15 ,  1&31
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x15 ,  x23 ,  x15
	lhu x11 ,  -2 ( x15 )
	call __get_buf
	sw x10 ,  288 ( x19 )
	beq x0, x10, .LBB5_14
.LBB5_8:                                //  %if.else29
	lw x15 ,  16 ( x10 )
	lhu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB5_11
.LBB5_6:                                //  %if.then18
	lw x15 ,  292 ( x19 )
	addi x15 ,  x15 ,  1
	sw x15 ,  292 ( x19 )
	sw x0 ,  288 ( x19 )
	lw x15 ,  12 ( x9 )
	beq x15, x24, .LBB5_13
	jal x0, .LBB5_12
.LBB5_9:                                //  %if.else42
	lhu x15 ,  0 ( x23 )
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	slli x15 ,  x15 ,  1&31
	add x15 ,  x23 ,  x15
	lhu x11 ,  -2 ( x15 )
	call __get_buf
	add x11 ,  x0 ,  x10
	addi x21 ,  x0 ,  -1
	beq x0, x11, .LBB5_14
.LBB5_10:                               //  %lor.lhs.false
	add x12 ,  x18 ,  x8
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	call collect_data
	add x20 ,  x0 ,  x10
	bge x0, x20, .LBB5_14
.LBB5_11:                               //  %if.end56
	lw x15 ,  12 ( x9 )
	bne x15, x24, .LBB5_12
.LBB5_13:                               //  %if.end63
	lw x15 ,  280 ( x19 )
	add x12 ,  x0 ,  x8
	lw x14 ,  16 ( x9 )
	add x10 ,  x18 ,  x15
	lhu x15 ,  2 ( x23 )
	add x11 ,  x15 ,  x14
	call memmove
	add x21 ,  x0 ,  x20
	jal x0, .LBB5_14
.LBB5_12:                               //  %if.then61
	call __errno
	addi x15 ,  x0 ,  22
	addi x21 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
.LBB5_14:                               //  %cleanup
	add x10 ,  x0 ,  x21
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
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
.Lfunc_end5:
	.size	collect_data, .Lfunc_end5-collect_data
	.cfi_endproc
                                        //  -- End function
	.globl	__big_keydata           //  -- Begin function __big_keydata
	.type	__big_keydata,@function
__big_keydata:                          //  @__big_keydata
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x0
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x12
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x18 ,  x0 ,  x10
	add x12 ,  x0 ,  x8
	call collect_key
	xori x15 ,  x10 ,  -1
	sw x10 ,  4 ( x9 )
	beq x0, x15, .LBB6_1
.LBB6_2:                                //  %if.end
	lw x15 ,  284 ( x18 )
	sw x15 ,  0 ( x9 )
	jal x0, .LBB6_3
.LBB6_1:
	addi x8 ,  x0 ,  -1
.LBB6_3:                                //  %return
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end6:
	.size	__big_keydata, .Lfunc_end6-__big_keydata
	.cfi_endproc
                                        //  -- End function
	.type	collect_key,@function   //  -- Begin function collect_key
collect_key:                            //  @collect_key
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x8 ,  x0 ,  x11
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	lui x30 ,  65534&4095
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x14
	lui x14 ,  (65534>>12)&1048575
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22 ,  x0 ,  x13
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x9 ,  x0 ,  x12
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x24 ,  16 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lhu x25 ,  12 ( x8 )
	lhu x15 ,  4 ( x24 )
	lhu x13 ,  2 ( x24 )
	and x15 ,  x14 ,  x15
	lw x14 ,  12 ( x18 )
	xori x15 ,  x15 ,  2
	sub x19 ,  x14 ,  x13
	add x20 ,  x9 ,  x19
	bltu x0, x15, .LBB7_5
.LBB7_1:                                //  %if.then
	lw x10 ,  284 ( x18 )
	beq x0, x10, .LBB7_3
.LBB7_2:                                //  %if.then11
	call free
.LBB7_3:                                //  %if.end
	add x10 ,  x0 ,  x20
	call malloc
	addi x23 ,  x0 ,  -1
	sw x10 ,  284 ( x18 )
	beq x0, x10, .LBB7_10
.LBB7_4:                                //  %if.end17
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x22
	add x14 ,  x0 ,  x21
	call __big_return
	bltu x0, x10, .LBB7_10
.LBB7_7:                                //  %if.end34
	lw x15 ,  12 ( x8 )
	bne x15, x25, .LBB7_8
.LBB7_9:                                //  %if.end41
	lw x15 ,  284 ( x18 )
	add x12 ,  x0 ,  x19
	lw x14 ,  16 ( x8 )
	add x10 ,  x9 ,  x15
	lhu x15 ,  2 ( x24 )
	add x11 ,  x15 ,  x14
	call memmove
	add x23 ,  x0 ,  x20
	jal x0, .LBB7_10
.LBB7_5:                                //  %if.else
	lhu x15 ,  0 ( x24 )
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	slli x15 ,  x15 ,  1&31
	add x15 ,  x24 ,  x15
	lhu x11 ,  -2 ( x15 )
	call __get_buf
	add x11 ,  x0 ,  x10
	addi x23 ,  x0 ,  -1
	beq x0, x11, .LBB7_10
.LBB7_6:                                //  %lor.lhs.false28
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x22
	add x14 ,  x0 ,  x21
	call collect_key
	add x20 ,  x0 ,  x10
	blt x0, x20, .LBB7_7
	jal x0, .LBB7_10
.LBB7_8:                                //  %if.then39
	call __errno
	addi x15 ,  x0 ,  22
	addi x23 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
.LBB7_10:                               //  %cleanup
	add x10 ,  x0 ,  x23
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  16 ( x2 )             //  4-byte Folded Reload
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
.Lfunc_end7:
	.size	collect_key, .Lfunc_end7-collect_key
	.cfi_endproc
                                        //  -- End function
	.globl	__big_split             //  -- Begin function __big_split
	.type	__big_split,@function
__big_split:                            //  @__big_split
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x24 ,  x0 ,  x13
	add x23 ,  x0 ,  x12
	add x12 ,  x0 ,  x0
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	add x26 ,  x0 ,  x14
	add x25 ,  x0 ,  x11
	addi x13 ,  x2 ,  8
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -48
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x8 ,  x0 ,  x16
	add x9 ,  x0 ,  x15
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x24
	add x14 ,  x0 ,  x12
	call collect_key
	add x12 ,  x0 ,  x10
	addi x18 ,  x0 ,  -1
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB8_22
.LBB8_1:                                //  %if.end
	lw x11 ,  284 ( x19 )
	add x10 ,  x0 ,  x19
	call __call_hash
	add x21 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	add x22 ,  x0 ,  x24
	jal x0, .LBB8_2
.LBB8_6:                                //  %if.end.i151
                                        //    in Loop: Header=BB8_2 Depth=1
	add x15 ,  x15 ,  x13
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x20
	lhu x11 ,  -2 ( x15 )
	call __get_buf
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB8_7
.LBB8_2:                                //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  16 ( x22 )
	lhu x13 ,  4 ( x15 )
	lhu x14 ,  0 ( x15 )
	xori x12 ,  x13 ,  3
	slli x13 ,  x14 ,  1&31
	bltu x0, x12, .LBB8_6
.LBB8_3:                                //  %land.lhs.true.i
                                        //    in Loop: Header=BB8_2 Depth=1
	xori x12 ,  x14 ,  2
	beq x0, x12, .LBB8_9
.LBB8_4:                                //  %lor.lhs.false.i
                                        //    in Loop: Header=BB8_2 Depth=1
	add x12 ,  x13 ,  x15
	lhu x11 ,  0 ( x12 )
	beq x0, x11, .LBB8_8
.LBB8_5:                                //  %lor.lhs.false10.i
                                        //    in Loop: Header=BB8_2 Depth=1
	lhu x12 ,  2 ( x12 )
	beq x0, x12, .LBB8_6
.LBB8_8:                                //  %for.end.i
	addi x13 ,  x0 ,  2
	bgeu x13, x14, .LBB8_9
.LBB8_11:                               //  %__find_last_page.exit
	lhu x11 ,  6 ( x15 )
	sh x11 ,  12 ( x8 )
	beq x0, x11, .LBB8_10
.LBB8_12:                               //  %if.then4
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x22
	call __get_buf
	sw x10 ,  8 ( x8 )
	bltu x0, x10, .LBB8_13
	jal x0, .LBB8_22
.LBB8_7:
	add x22 ,  x0 ,  x24
.LBB8_9:                                //  %__find_last_page.exit.thread
	sh x0 ,  12 ( x8 )
.LBB8_10:                               //  %if.else
	sw x0 ,  8 ( x8 )
.LBB8_13:                               //  %if.end12
	add x14 ,  x0 ,  x23
	bne x21, x9, .LBB8_15
.LBB8_14:                               //  %if.end12
	add x14 ,  x0 ,  x25
.LBB8_15:                               //  %if.end12
	lw x13 ,  16 ( x14 )
	lui x30 ,  65535&4095
	sw x24 ,  8 ( x14 )
	sw x23 ,  0 ( x8 )
	sw x25 ,  4 ( x8 )
	srli x30 ,  x30 ,  12&31
	lw x23 ,  16 ( x22 )
	lhu x12 ,  0 ( x13 )
	slli x15 ,  x12 ,  1&31
	addi x5 ,  x12 ,  1
	addi x12 ,  x12 ,  2
	add x15 ,  x13 ,  x15
	lh x10 ,  2 ( x15 )
	lh x11 ,  4 ( x15 )
	lui x15 ,  (65535>>12)&1048575
	or x6 ,  x15 ,  x30
	and x5 ,  x6 ,  x5
	slli x5 ,  x5 ,  1&31
	addi x10 ,  x10 ,  -4
	add x5 ,  x5 ,  x13
	sh x26 ,  0 ( x5 )
	and x5 ,  x6 ,  x12
	slli x5 ,  x5 ,  1&31
	add x5 ,  x5 ,  x13
	sh x0 ,  0 ( x5 )
	sh x12 ,  0 ( x13 )
	lb x13 ,  20 ( x14 )
	sh x10 ,  2 ( x5 )
	sh x11 ,  4 ( x5 )
	ori x13 ,  x13 ,  1
	sb x13 ,  20 ( x14 )
	lb x14 ,  20 ( x22 )
	ori x14 ,  x14 ,  1
	sb x14 ,  20 ( x22 )
	lhu x14 ,  0 ( x23 )
	sltiu x13 ,  x14 ,  3
	bltu x0, x13, .LBB8_18
.LBB8_16:                               //  %if.then51
	lui x30 ,  65535&4095
	addi x13 ,  x14 ,  -2
	slli x14 ,  x14 ,  1&31
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	lhu x24 ,  8 ( x23 )
	srli x30 ,  x30 ,  12&31
	add x14 ,  x23 ,  x14
	sh x13 ,  0 ( x23 )
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x13
	lh x13 ,  2 ( x14 )
	lh x14 ,  4 ( x14 )
	slli x15 ,  x15 ,  1&31
	add x15 ,  x23 ,  x15
	addi x13 ,  x13 ,  4
	sh x13 ,  2 ( x15 )
	sh x14 ,  4 ( x15 )
	call __add_ovflpage
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB8_22
.LBB8_17:                               //  %if.end79
	sh x24 ,  8 ( x23 )
.LBB8_18:                               //  %if.end82
	beq x21, x9, .LBB8_20
.LBB8_19:                               //  %if.then84
	sw x22 ,  0 ( x8 )
	jal x0, .LBB8_21
.LBB8_20:                               //  %if.else86
	sw x22 ,  4 ( x8 )
.LBB8_21:                               //  %cleanup
	add x18 ,  x0 ,  x20
.LBB8_22:                               //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
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
.Lfunc_end8:
	.size	__big_split, .Lfunc_end8-__big_split
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
