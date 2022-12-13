	.text
	.file	"hash_page.c"
	.globl	__delpair               //  -- Begin function __delpair
	.type	__delpair,@function
__delpair:                              //  @__delpair
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x11
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x12
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	addi x14 ,  x0 ,  3
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x19 ,  16 ( x8 )
	slli x15 ,  x18 ,  1&31
	add x21 ,  x19 ,  x15
	lhu x15 ,  2 ( x21 )
	bltu x14, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __big_delete
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.end
	lhu x20 ,  0 ( x19 )
	xori x14 ,  x18 ,  1
	bltu x0, x14, .LBB0_3
.LBB0_4:                                //  %if.else
	lw x14 ,  12 ( x9 )
	sub x22 ,  x14 ,  x15
	addi x23 ,  x20 ,  -1
	slli x24 ,  x20 ,  1&31
	bne x23, x18, .LBB0_6
	jal x0, .LBB0_12
.LBB0_3:                                //  %if.then6
	lhu x14 ,  -2 ( x21 )
	sub x22 ,  x14 ,  x15
	addi x23 ,  x20 ,  -1
	slli x24 ,  x20 ,  1&31
	beq x23, x18, .LBB0_12
.LBB0_6:                                //  %if.then19
	add x13 ,  x19 ,  x24
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	lhu x13 ,  4 ( x13 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x22
	add x11 ,  x13 ,  x19
	sub x12 ,  x15 ,  x13
	add x10 ,  x14 ,  x11
	call memmove
	addi x15 ,  x18 ,  2
	blt x20, x15, .LBB0_12
.LBB0_7:                                //  %for.body.preheader
	add x14 ,  x0 ,  x0
	lhu x13 ,  4 ( x21 )
	lhu x12 ,  6 ( x21 )
	beq x0, x12, .LBB0_9
.LBB0_10:                               //  %if.else54
	add x13 ,  x22 ,  x13
	sh x13 ,  0 ( x21 )
	add x13 ,  x22 ,  x12
	sh x13 ,  2 ( x21 )
	addi x21 ,  x21 ,  4
	addi x15 ,  x15 ,  2
	blt x20, x15, .LBB0_12
.LBB0_8:                                //  %for.body
	lhu x13 ,  4 ( x21 )
	lhu x12 ,  6 ( x21 )
	bltu x0, x12, .LBB0_10
.LBB0_9:                                //  %if.then46
	sh x13 ,  0 ( x21 )
	add x13 ,  x0 ,  x14
	sh x13 ,  2 ( x21 )
	addi x21 ,  x21 ,  4
	addi x15 ,  x15 ,  2
	bge x20, x15, .LBB0_8
.LBB0_12:                               //  %if.end72
	lhu x14 ,  0 ( x19 )
	add x15 ,  x24 ,  x19
	add x10 ,  x0 ,  x0
	slli x14 ,  x14 ,  1&31
	add x14 ,  x19 ,  x14
	lh x14 ,  4 ( x14 )
	add x14 ,  x22 ,  x14
	sh x14 ,  0 ( x15 )
	lh x15 ,  2 ( x15 )
	slli x14 ,  x23 ,  1&31
	add x14 ,  x14 ,  x19
	add x15 ,  x15 ,  x22
	addi x15 ,  x15 ,  4
	sh x15 ,  0 ( x14 )
	lw x15 ,  56 ( x9 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  56 ( x9 )
	lb x15 ,  20 ( x8 )
	ori x15 ,  x15 ,  1
	sb x15 ,  20 ( x8 )
	addi x15 ,  x20 ,  -2
	sh x15 ,  0 ( x19 )
.LBB0_13:                               //  %cleanup
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
.Lfunc_end0:
	.size	__delpair, .Lfunc_end0-__delpair
	.cfi_endproc
                                        //  -- End function
	.globl	__split_page            //  -- Begin function __split_page
	.type	__split_page,@function
__split_page:                           //  @__split_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	sw x8 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x12
	add x12 ,  x0 ,  x0
	sw x19 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x19 ,  x0 ,  x11
	lw x22 ,  12 ( x10 )
	sw x10 ,  56 ( x2 )             //  4-byte Folded Spill
	add x13 ,  x0 ,  x12
	call __get_buf
	add x9 ,  x0 ,  x10
	addi x20 ,  x0 ,  -1
	beq x0, x9, .LBB1_58
.LBB1_1:                                //  %if.end
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x0
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x18
	add x12 ,  x0 ,  x18
	call __get_buf
	beq x0, x10, .LBB1_58
.LBB1_2:                                //  %if.end10
	lb x15 ,  20 ( x9 )
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	lui x23 ,  (65535>>12)&1048575
	sw x10 ,  32 ( x2 )             //  4-byte Folded Spill
	ori x15 ,  x15 ,  9
	sb x15 ,  20 ( x9 )
	lb x15 ,  20 ( x10 )
	ori x15 ,  x15 ,  9
	sb x15 ,  20 ( x10 )
	lw x9 ,  16 ( x9 )
	lhu x15 ,  0 ( x9 )
	sltiu x14 ,  x15 ,  2
	bltu x0, x14, .LBB1_12
.LBB1_3:                                //  %for.body.lr.ph
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	slti x26 ,  x0 ,  1
	add x18 ,  x0 ,  x0
	addi x21 ,  x9 ,  4
	addi x25 ,  x0 ,  3
	add x24 ,  x0 ,  x22
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x26 ,  48 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  16 ( x15 )
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	lhu x15 ,  0 ( x21 )
	bltu x25, x15, .LBB1_7
	jal x0, .LBB1_13
.LBB1_4:                                //  %if.else87
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  65535&4095
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	lhu x18 ,  -2 ( x21 )
	or x27 ,  x23 ,  x30
	lhu x22 ,  0 ( x21 )
	lhu x19 ,  0 ( x25 )
	slli x15 ,  x19 ,  1&31
	add x15 ,  x25 ,  x15
	lh x15 ,  4 ( x15 )
	sub x24 ,  x15 ,  x20
	and x15 ,  x27 ,  x24
	add x10 ,  x15 ,  x25
	call memmove
	addi x15 ,  x19 ,  1
	sub x12 ,  x18 ,  x22
	add x11 ,  x22 ,  x9
	lui x23 ,  (65535>>12)&1048575
	lw x22 ,  52 ( x2 )             //  4-byte Folded Reload
	and x15 ,  x27 ,  x15
	sub x8 ,  x24 ,  x12
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x25
	sh x24 ,  0 ( x15 )
	and x15 ,  x27 ,  x8
	add x10 ,  x15 ,  x25
	call memmove
	addi x15 ,  x19 ,  2
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x18 ,  x18 ,  2
	and x13 ,  x27 ,  x15
	slli x14 ,  x15 ,  1&31
	slli x13 ,  x13 ,  1&31
	sub x14 ,  x8 ,  x14
	add x13 ,  x13 ,  x25
	addi x14 ,  x14 ,  -6
	sh x8 ,  0 ( x13 )
	sh x15 ,  0 ( x25 )
	addi x25 ,  x0 ,  3
	sh x14 ,  2 ( x13 )
	sh x8 ,  4 ( x13 )
.LBB1_5:                                //  %if.end103
                                        //    in Loop: Header=BB1_7 Depth=1
	lhu x24 ,  0 ( x21 )
	addi x14 ,  x21 ,  4
	addi x26 ,  x26 ,  2
	lhu x15 ,  0 ( x9 )
	add x21 ,  x0 ,  x14
	bgeu x26, x15, .LBB1_12
.LBB1_6:                                //  %for.body
                                        //    in Loop: Header=BB1_7 Depth=1
	lhu x15 ,  0 ( x21 )
	bgeu x25, x15, .LBB1_13
.LBB1_7:                                //  %if.end36
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x15 ,  x23 ,  x30
	and x27 ,  x15 ,  x24
	lhu x15 ,  -2 ( x21 )
	add x8 ,  x15 ,  x9
	sub x20 ,  x27 ,  x15
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call __call_hash
	bne x10, x19, .LBB1_4
.LBB1_8:                                //  %if.then47
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  65535&4095
	sub x14 ,  x22 ,  x24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x23 ,  x30
	and x13 ,  x15 ,  x14
	lhu x15 ,  0 ( x21 )
	beq x0, x13, .LBB1_10
.LBB1_9:                                //  %if.then52
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  65535&4095
	add x22 ,  x14 ,  x15
	sub x12 ,  x27 ,  x15
	add x11 ,  x15 ,  x9
	srli x30 ,  x30 ,  12&31
	or x14 ,  x23 ,  x30
	and x14 ,  x14 ,  x22
	add x10 ,  x14 ,  x9
	call memmove
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	lh x14 ,  -2 ( x21 )
	lh x13 ,  0 ( x21 )
	slli x15 ,  x12 ,  1&31
	add x14 ,  x22 ,  x14
	add x15 ,  x15 ,  x9
	sub x14 ,  x14 ,  x13
	sh x22 ,  2 ( x15 )
	sh x14 ,  0 ( x15 )
	jal x0, .LBB1_11
.LBB1_10:                               //    in Loop: Header=BB1_7 Depth=1
	add x22 ,  x0 ,  x15
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
.LBB1_11:                               //  %if.end85
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x12 ,  x12 ,  2
	sw x12 ,  48 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_5
.LBB1_12:                               //  %for.end
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  65535&4095
	sub x15 ,  x15 ,  x18
	add x20 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	lbu x14 ,  20 ( x13 )
	andi x14 ,  x14 ,  247
	sb x14 ,  20 ( x13 )
	or x14 ,  x23 ,  x30
	sh x15 ,  0 ( x9 )
	and x14 ,  x14 ,  x15
	slli x15 ,  x15 ,  1&31
	slli x14 ,  x14 ,  1&31
	sub x15 ,  x22 ,  x15
	add x14 ,  x9 ,  x14
	addi x15 ,  x15 ,  -6
	sh x15 ,  2 ( x14 )
	sh x22 ,  4 ( x14 )
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_57
.LBB1_13:                               //  %if.then25
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x15 ,  16 ( x9 )
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	lhu x15 ,  0 ( x15 )
	beq x0, x15, .LBB1_47
.LBB1_14:                               //  %while.body.lr.ph.i
	lw x13 ,  32 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  65535&4095
	add x24 ,  x0 ,  x9
	addi x8 ,  x15 ,  -1
	add x21 ,  x0 ,  x9
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	lw x14 ,  16 ( x13 )
	sw x13 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  28 ( x2 )             //  4-byte Folded Spill
	or x14 ,  x23 ,  x30
	and x14 ,  x14 ,  x18
	sw x14 ,  4 ( x2 )              //  4-byte Folded Spill
	add x14 ,  x0 ,  x0
	sw x14 ,  12 ( x2 )             //  4-byte Folded Spill
.LBB1_17:                               //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_32 Depth 2
	lh x13 ,  4 ( x20 )
	lui x30 ,  65535&4095
	addi x12 ,  x0 ,  2
	srli x30 ,  x30 ,  12&31
	or x14 ,  x23 ,  x30
	addi x13 ,  x13 ,  -1
	and x13 ,  x14 ,  x13
	bgeu x12, x13, .LBB1_23
.LBB1_18:                               //  %if.else.i
                                        //    in Loop: Header=BB1_17 Depth=1
	and x14 ,  x14 ,  x8
	slli x14 ,  x14 ,  1&31
	add x14 ,  x20 ,  x14
	lhu x13 ,  2 ( x14 )
	bltu x0, x13, .LBB1_29
.LBB1_19:                               //  %if.then36.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x13 ,  4 ( x2 )              //  4-byte Folded Reload
	lui x30 ,  65535&4095
	add x12 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	lhu x11 ,  0 ( x14 )
	or x14 ,  x23 ,  x30
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x15 ,  x13
	add x13 ,  x0 ,  x0
	addi x15 ,  x15 ,  -2
	and x14 ,  x14 ,  x15
	sh x15 ,  0 ( x20 )
	slli x15 ,  x15 ,  1&31
	slli x14 ,  x14 ,  1&31
	sub x15 ,  x22 ,  x15
	add x14 ,  x20 ,  x14
	addi x15 ,  x15 ,  -6
	sh x15 ,  2 ( x14 )
	sh x22 ,  4 ( x14 )
	call __get_buf
	add x21 ,  x0 ,  x10
	beq x0, x21, .LBB1_53
.LBB1_20:                               //  %if.end61.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  16 ( x21 )
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  12 ( x15 )
	beq x0, x11, .LBB1_22
.LBB1_21:                               //  %if.then65.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	call __free_ovflpage
.LBB1_22:                               //  %if.end68.i
                                        //    in Loop: Header=BB1_17 Depth=1
	add x15 ,  x0 ,  x0
	sw x15 ,  4 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB1_28
.LBB1_23:                               //  %if.then.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x14 ,  12 ( x21 )
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x21
	add x15 ,  x0 ,  x19
	addi x16 ,  x2 ,  60
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  36 ( x2 )             //  4-byte Folded Reload
	call __big_split
	bltu x0, x10, .LBB1_53
.LBB1_24:                               //  %if.end.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x24 ,  64 ( x2 )
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	beq x0, x24, .LBB1_55
.LBB1_25:                               //  %if.end20.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x15 ,  60 ( x2 )
	beq x0, x15, .LBB1_55
.LBB1_26:                               //  %if.end24.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x21 ,  68 ( x2 )
	beq x0, x21, .LBB1_52
.LBB1_27:                               //  %if.end28.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x14 ,  16 ( x24 )
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  16 ( x15 )
	lw x20 ,  16 ( x21 )
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  28 ( x2 )             //  4-byte Folded Spill
.LBB1_28:                               //  %if.end68.i
                                        //    in Loop: Header=BB1_17 Depth=1
	sw x21 ,  12 ( x2 )             //  4-byte Folded Spill
.LBB1_29:                               //  %if.end68.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lhu x15 ,  0 ( x20 )
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  20 ( x2 )             //  4-byte Folded Spill
	sltiu x14 ,  x15 ,  2
	bltu x0, x14, .LBB1_15
.LBB1_30:                               //  %land.rhs.lr.ph.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lhu x14 ,  4 ( x20 )
	sltiu x13 ,  x14 ,  4
	bltu x0, x13, .LBB1_15
.LBB1_31:                               //  %for.body.i.preheader
                                        //    in Loop: Header=BB1_17 Depth=1
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	slti x13 ,  x0 ,  1
	sw x20 ,  16 ( x2 )             //  4-byte Folded Spill
	add x8 ,  x0 ,  x13
	lw x12 ,  12 ( x15 )
.LBB1_32:                               //  %for.body.i
                                        //    Parent Loop BB1_17 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x9 ,  x0 ,  x14
	slli x14 ,  x13 ,  1&31
	lui x30 ,  65535&4095
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x14 ,  x20
	srli x30 ,  x30 ,  12&31
	lhu x14 ,  0 ( x14 )
	or x15 ,  x23 ,  x30
	and x23 ,  x15 ,  x9
	and x15 ,  x15 ,  x12
	sub x21 ,  x15 ,  x14
	add x22 ,  x14 ,  x20
	sub x26 ,  x14 ,  x23
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __call_hash
	add x18 ,  x23 ,  x20
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	bne x10, x19, .LBB1_38
.LBB1_33:                               //  %if.then114.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lhu x15 ,  4 ( x15 )
	sltiu x15 ,  x15 ,  4
	bltu x0, x15, .LBB1_35
.LBB1_34:                               //  %land.lhs.true119.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lw x13 ,  44 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x21 ,  x26
	addi x14 ,  x14 ,  8
	lhu x23 ,  0 ( x13 )
	slli x15 ,  x23 ,  1&31
	add x15 ,  x13 ,  x15
	lhu x13 ,  2 ( x15 )
	bgeu x13, x14, .LBB1_42
.LBB1_35:                               //  %if.else133.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x24
	call __add_ovflpage
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB1_48
.LBB1_36:                               //  %if.end137.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lw x23 ,  16 ( x25 )
	lui x30 ,  65535&4095
	lui x27 ,  (65535>>12)&1048575
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x19 ,  x27 ,  x30
	lhu x24 ,  0 ( x23 )
	slli x15 ,  x24 ,  1&31
	add x15 ,  x23 ,  x15
	lh x15 ,  4 ( x15 )
	sub x9 ,  x15 ,  x21
	and x15 ,  x19 ,  x9
	add x10 ,  x15 ,  x23
	call memmove
	addi x15 ,  x24 ,  1
	sub x21 ,  x9 ,  x26
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x26
	and x15 ,  x19 ,  x15
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x23
	sh x9 ,  0 ( x15 )
	and x15 ,  x19 ,  x21
	add x10 ,  x15 ,  x23
	call memmove
	addi x15 ,  x24 ,  2
	add x24 ,  x0 ,  x25
	sw x23 ,  44 ( x2 )             //  4-byte Folded Spill
	and x14 ,  x19 ,  x15
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_37
.LBB1_38:                               //  %if.else142.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lw x25 ,  28 ( x2 )             //  4-byte Folded Reload
	lhu x15 ,  4 ( x25 )
	sltiu x15 ,  x15 ,  4
	bltu x0, x15, .LBB1_40
.LBB1_39:                               //  %land.lhs.true147.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lhu x14 ,  0 ( x25 )
	add x15 ,  x21 ,  x26
	addi x15 ,  x15 ,  8
	slli x14 ,  x14 ,  1&31
	add x14 ,  x25 ,  x14
	lhu x14 ,  2 ( x14 )
	bgeu x14, x15, .LBB1_43
.LBB1_40:                               //  %if.else161.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  36 ( x2 )             //  4-byte Folded Reload
	call __add_ovflpage
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB1_48
.LBB1_41:                               //  %if.end165.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lw x23 ,  16 ( x25 )
	lui x30 ,  65535&4095
	lui x27 ,  (65535>>12)&1048575
	add x20 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x24 ,  x27 ,  x30
	lhu x9 ,  0 ( x23 )
	slli x15 ,  x9 ,  1&31
	add x15 ,  x23 ,  x15
	lh x15 ,  4 ( x15 )
	sub x19 ,  x15 ,  x21
	and x15 ,  x24 ,  x19
	add x10 ,  x15 ,  x23
	call memmove
	addi x15 ,  x9 ,  1
	sub x21 ,  x19 ,  x26
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x26
	and x15 ,  x24 ,  x15
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x23
	sh x19 ,  0 ( x15 )
	and x15 ,  x24 ,  x21
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x15 ,  x23
	call memmove
	addi x15 ,  x9 ,  2
	sw x25 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  28 ( x2 )             //  4-byte Folded Spill
	and x14 ,  x24 ,  x15
	add x24 ,  x0 ,  x20
	lw x20 ,  16 ( x2 )             //  4-byte Folded Reload
.LBB1_37:                               //  %for.inc.i
                                        //    in Loop: Header=BB1_32 Depth=2
	slli x13 ,  x14 ,  1&31
	add x13 ,  x13 ,  x23
	sh x21 ,  0 ( x13 )
	sh x15 ,  0 ( x23 )
.LBB1_44:                               //  %for.inc.i
                                        //    in Loop: Header=BB1_32 Depth=2
	slli x15 ,  x15 ,  1&31
	slli x14 ,  x14 ,  1&31
	lui x30 ,  65535&4095
	addi x8 ,  x8 ,  2
	sub x15 ,  x21 ,  x15
	add x14 ,  x23 ,  x14
	srli x30 ,  x30 ,  12&31
	add x23 ,  x0 ,  x27
	addi x15 ,  x15 ,  -6
	sh x21 ,  4 ( x14 )
	sh x15 ,  2 ( x14 )
	lb x15 ,  20 ( x25 )
	ori x15 ,  x15 ,  1
	sb x15 ,  20 ( x25 )
	or x15 ,  x27 ,  x30
	and x13 ,  x15 ,  x8
	lhu x15 ,  0 ( x20 )
	bgeu x13, x15, .LBB1_16
.LBB1_45:                               //  %land.rhs.i
                                        //    in Loop: Header=BB1_32 Depth=2
	slli x14 ,  x13 ,  1&31
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x20 ,  x14
	lhu x14 ,  2 ( x14 )
	sltiu x11 ,  x14 ,  4
	beq x0, x11, .LBB1_32
	jal x0, .LBB1_16
.LBB1_42:                               //  %if.then132.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lh x15 ,  4 ( x15 )
	lui x30 ,  65535&4095
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x27 ,  (65535>>12)&1048575
	add x9 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x25 ,  x27 ,  x30
	sub x24 ,  x15 ,  x21
	and x15 ,  x25 ,  x24
	add x10 ,  x15 ,  x18
	call memmove
	addi x15 ,  x23 ,  1
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	sub x21 ,  x24 ,  x26
	add x12 ,  x0 ,  x26
	and x15 ,  x25 ,  x15
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x18
	sh x24 ,  0 ( x15 )
	and x15 ,  x25 ,  x21
	add x24 ,  x0 ,  x9
	add x10 ,  x15 ,  x18
	call memmove
	addi x15 ,  x23 ,  2
	add x23 ,  x0 ,  x18
	and x14 ,  x25 ,  x15
	add x25 ,  x0 ,  x24
	slli x13 ,  x14 ,  1&31
	add x13 ,  x13 ,  x18
	sh x21 ,  0 ( x13 )
	sh x15 ,  0 ( x18 )
	jal x0, .LBB1_44
.LBB1_43:                               //  %if.then160.i
                                        //    in Loop: Header=BB1_32 Depth=2
	lhu x9 ,  0 ( x25 )
	lui x30 ,  65535&4095
	lui x27 ,  (65535>>12)&1048575
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x23 ,  x27 ,  x30
	slli x15 ,  x9 ,  1&31
	add x15 ,  x25 ,  x15
	lh x15 ,  4 ( x15 )
	sub x19 ,  x15 ,  x21
	and x15 ,  x23 ,  x19
	add x10 ,  x15 ,  x25
	call memmove
	addi x15 ,  x9 ,  1
	sub x21 ,  x19 ,  x26
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x26
	and x15 ,  x23 ,  x15
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x25
	sh x19 ,  0 ( x15 )
	and x15 ,  x23 ,  x21
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x15 ,  x25
	call memmove
	addi x15 ,  x9 ,  2
	and x14 ,  x23 ,  x15
	add x23 ,  x0 ,  x25
	slli x13 ,  x14 ,  1&31
	add x13 ,  x13 ,  x25
	sh x21 ,  0 ( x13 )
	sh x15 ,  0 ( x25 )
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_44
.LBB1_15:                               //    in Loop: Header=BB1_17 Depth=1
	slti x8 ,  x0 ,  1
.LBB1_16:                               //  %for.end.i
                                        //    in Loop: Header=BB1_17 Depth=1
	lui x30 ,  65535&4095
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  52 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	lw x21 ,  20 ( x2 )             //  4-byte Folded Reload
	or x14 ,  x23 ,  x30
	and x14 ,  x14 ,  x8
	bltu x14, x15, .LBB1_17
.LBB1_49:                               //  %while.end.i
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	beq x0, x11, .LBB1_51
.LBB1_50:                               //  %if.then177.i
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	call __free_ovflpage
.LBB1_51:                               //  %ugly_split.exit
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
.LBB1_52:                               //  %ugly_split.exit
	add x20 ,  x0 ,  x0
	jal x0, .LBB1_56
.LBB1_47:
	add x20 ,  x0 ,  x0
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_56
.LBB1_48:
	addi x20 ,  x0 ,  -1
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_56
.LBB1_55:
	addi x20 ,  x0 ,  -1
	jal x0, .LBB1_56
.LBB1_53:
	addi x20 ,  x0 ,  -1
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
.LBB1_56:                               //  %ugly_split.exit
	lbu x15 ,  20 ( x9 )
	andi x15 ,  x15 ,  247
	sb x15 ,  20 ( x9 )
.LBB1_57:                               //  %cleanup
	lbu x15 ,  20 ( x14 )
	andi x15 ,  x15 ,  247
	sb x15 ,  20 ( x14 )
.LBB1_58:                               //  %cleanup
	add x10 ,  x0 ,  x20
	lw x8 ,  76 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__split_page, .Lfunc_end1-__split_page
	.cfi_endproc
                                        //  -- End function
	.globl	__addel                 //  -- Begin function __addel
	.type	__addel,@function
__addel:                                //  @__addel
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x8 ,  x0 ,  x10
	slti x23 ,  x0 ,  1
	addi x20 ,  x0 ,  -1
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x22 ,  16 ( x9 )
	lhu x14 ,  0 ( x22 )
	beq x0, x14, .LBB2_12
.LBB2_1:                                //  %land.rhs.lr.ph
	lui x24 ,  (65535>>12)&1048575
	add x21 ,  x0 ,  x0
.LBB2_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	lhu x12 ,  4 ( x22 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	and x15 ,  x15 ,  x14
	sltiu x11 ,  x12 ,  4
	slli x13 ,  x15 ,  1&31
	beq x0, x11, .LBB2_7
.LBB2_3:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x24 ,  x30
	and x14 ,  x11 ,  x14
	xori x14 ,  x14 ,  2
	bltu x0, x14, .LBB2_5
.LBB2_4:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	xori x14 ,  x12 ,  3
	beq x0, x14, .LBB2_13
.LBB2_5:                                //  %land.lhs.true21
                                        //    in Loop: Header=BB2_2 Depth=1
	add x14 ,  x13 ,  x22
	lhu x12 ,  0 ( x14 )
	beq x0, x12, .LBB2_8
.LBB2_6:                                //  %if.then28
                                        //    in Loop: Header=BB2_2 Depth=1
	lhu x11 ,  -2 ( x14 )
	jal x0, .LBB2_10
.LBB2_7:                                //  %lor.rhs
                                        //    in Loop: Header=BB2_2 Depth=1
	add x14 ,  x13 ,  x22
	lhu x14 ,  0 ( x14 )
	sltiu x14 ,  x14 ,  4
	beq x0, x14, .LBB2_13
.LBB2_8:                                //  %if.else36
                                        //    in Loop: Header=BB2_2 Depth=1
	lw x14 ,  4 ( x18 )
	add x26 ,  x22 ,  x13
	lw x12 ,  4 ( x19 )
	lhu x25 ,  2 ( x26 )
	add x14 ,  x14 ,  x12
	addi x14 ,  x14 ,  4
	bltu x14, x25, .LBB2_21
.LBB2_9:                                //  %if.else47
                                        //    in Loop: Header=BB2_2 Depth=1
	lhu x11 ,  -2 ( x26 )
.LBB2_10:                               //  %if.else47
                                        //    in Loop: Header=BB2_2 Depth=1
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x21
	call __get_buf
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB2_29
.LBB2_11:                               //  %if.end60
                                        //    in Loop: Header=BB2_2 Depth=1
	lw x22 ,  16 ( x9 )
	lhu x14 ,  0 ( x22 )
	bltu x0, x14, .LBB2_2
.LBB2_12:                               //  %while.end
	lhu x15 ,  4 ( x22 )
	sltiu x15 ,  x15 ,  4
	beq x0, x15, .LBB2_14
	jal x0, .LBB2_15
.LBB2_13:                               //  %while.end.loopexit
	addi x23 ,  x15 ,  1
	lhu x15 ,  4 ( x22 )
	sltiu x15 ,  x15 ,  4
	bltu x0, x15, .LBB2_15
.LBB2_14:                               //  %land.lhs.true65
	slli x15 ,  x23 ,  1&31
	lw x14 ,  4 ( x18 )
	lw x12 ,  4 ( x19 )
	add x15 ,  x15 ,  x22
	lhu x15 ,  0 ( x15 )
	add x14 ,  x14 ,  x12
	addi x14 ,  x14 ,  8
	bgeu x15, x14, .LBB2_20
.LBB2_15:                               //  %if.else80
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __add_ovflpage
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB2_29
.LBB2_16:                               //  %if.end84
	lw x22 ,  16 ( x9 )
	lhu x15 ,  4 ( x22 )
	sltiu x15 ,  x15 ,  4
	bltu x0, x15, .LBB2_18
.LBB2_17:                               //  %land.lhs.true90
	lhu x21 ,  0 ( x22 )
	lw x14 ,  4 ( x18 )
	lw x12 ,  4 ( x19 )
	slli x15 ,  x21 ,  1&31
	add x15 ,  x22 ,  x15
	lhu x13 ,  2 ( x15 )
	add x14 ,  x14 ,  x12
	addi x14 ,  x14 ,  8
	bgeu x13, x14, .LBB2_22
.LBB2_18:                               //  %if.else104
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __big_insert
	bltu x0, x10, .LBB2_29
.LBB2_19:
	slti x15 ,  x0 ,  1
	jal x0, .LBB2_25
.LBB2_20:                               //  %if.then78
	lhu x20 ,  0 ( x22 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  0 ( x19 )
	slli x15 ,  x20 ,  1&31
	add x15 ,  x22 ,  x15
	lh x15 ,  4 ( x15 )
	sub x21 ,  x15 ,  x12
	lui x15 ,  (65535>>12)&1048575
	or x23 ,  x15 ,  x30
	and x15 ,  x23 ,  x21
	add x10 ,  x15 ,  x22
	call memmove
	lw x12 ,  4 ( x18 )
	addi x15 ,  x20 ,  1
	and x15 ,  x23 ,  x15
	lw x11 ,  0 ( x18 )
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x22
	sub x19 ,  x21 ,  x12
	sh x21 ,  0 ( x15 )
	and x15 ,  x23 ,  x19
	add x10 ,  x15 ,  x22
	call memmove
	addi x14 ,  x20 ,  2
	and x13 ,  x23 ,  x14
	slli x15 ,  x13 ,  1&31
	add x15 ,  x15 ,  x22
	sh x19 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	jal x0, .LBB2_23
.LBB2_21:                               //  %if.then46
	addi x9 ,  x15 ,  2
	lui x30 ,  65535&4095
	lw x11 ,  0 ( x19 )
	addi x8 ,  x26 ,  2
	slli x15 ,  x9 ,  1&31
	srli x30 ,  x30 ,  12&31
	lh x27 ,  -2 ( x26 )
	add x20 ,  x15 ,  x22
	or x24 ,  x24 ,  x30
	lh x15 ,  0 ( x20 )
	sub x23 ,  x15 ,  x12
	and x15 ,  x24 ,  x23
	sh x23 ,  -2 ( x26 )
	add x10 ,  x15 ,  x22
	call memmove
	lw x12 ,  4 ( x18 )
	lw x11 ,  0 ( x18 )
	sub x23 ,  x23 ,  x12
	and x15 ,  x24 ,  x23
	sh x23 ,  0 ( x26 )
	add x10 ,  x15 ,  x22
	call memmove
	lw x14 ,  4 ( x18 )
	and x15 ,  x24 ,  x9
	sh x0 ,  0 ( x20 )
	sh x27 ,  0 ( x8 )
	sh x9 ,  0 ( x22 )
	add x20 ,  x0 ,  x21
	lw x13 ,  4 ( x19 )
	slli x15 ,  x15 ,  1&31
	add x15 ,  x22 ,  x15
	sh x23 ,  4 ( x15 )
	add x14 ,  x14 ,  x13
	sub x14 ,  x25 ,  x14
	addi x14 ,  x14 ,  -4
	sh x14 ,  2 ( x15 )
	jal x0, .LBB2_29
.LBB2_22:                               //  %if.then103
	lh x15 ,  4 ( x15 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	lw x11 ,  0 ( x19 )
	sub x20 ,  x15 ,  x12
	lui x15 ,  (65535>>12)&1048575
	or x23 ,  x15 ,  x30
	and x15 ,  x23 ,  x20
	add x10 ,  x15 ,  x22
	call memmove
	lw x12 ,  4 ( x18 )
	addi x15 ,  x21 ,  1
	and x15 ,  x23 ,  x15
	lw x11 ,  0 ( x18 )
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x22
	sub x19 ,  x20 ,  x12
	sh x20 ,  0 ( x15 )
	and x15 ,  x23 ,  x19
	add x10 ,  x15 ,  x22
	call memmove
	addi x14 ,  x21 ,  2
	and x13 ,  x23 ,  x14
	slli x15 ,  x13 ,  1&31
	add x15 ,  x15 ,  x22
	sh x19 ,  0 ( x15 )
	slti x15 ,  x0 ,  1
.LBB2_23:                               //  %if.end110.sink.split
	sh x14 ,  0 ( x22 )
	slli x14 ,  x14 ,  1&31
	slli x13 ,  x13 ,  1&31
	sub x14 ,  x19 ,  x14
	add x13 ,  x22 ,  x13
	addi x14 ,  x14 ,  -6
	sh x19 ,  4 ( x13 )
	sh x14 ,  2 ( x13 )
.LBB2_25:                               //  %if.end110
	lb x14 ,  20 ( x9 )
	ori x14 ,  x14 ,  1
	sb x14 ,  20 ( x9 )
	lw x14 ,  56 ( x8 )
	addi x10 ,  x14 ,  1
	sw x10 ,  56 ( x8 )
	bltu x0, x15, .LBB2_27
.LBB2_26:                               //  %lor.lhs.false
	lw x15 ,  40 ( x8 )
	addi x11 ,  x15 ,  1
	call __divsi3
	lw x15 ,  52 ( x8 )
	bge x15, x10, .LBB2_28
.LBB2_27:                               //  %if.then121
	add x10 ,  x0 ,  x8
	call __expand_table
	add x20 ,  x0 ,  x10
	jal x0, .LBB2_29
.LBB2_28:
	add x20 ,  x0 ,  x0
.LBB2_29:                               //  %cleanup
	add x10 ,  x0 ,  x20
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
	.size	__addel, .Lfunc_end2-__addel
	.cfi_endproc
                                        //  -- End function
	.globl	__add_ovflpage          //  -- Begin function __add_ovflpage
	.type	__add_ovflpage,@function
__add_ovflpage:                         //  @__add_ovflpage
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	lui x14 ,  (65536>>12)&1048575
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	lw x25 ,  16 ( x20 )
	lw x15 ,  52 ( x9 )
	bne x15, x14, .LBB3_5
.LBB3_1:                                //  %if.then
	lhu x15 ,  0 ( x25 )
	addi x14 ,  x0 ,  8
	bltu x15, x14, .LBB3_2
.LBB3_3:                                //  %if.then
	srli x15 ,  x15 ,  1&31
	jal x0, .LBB3_4
.LBB3_2:
	addi x15 ,  x0 ,  4
.LBB3_4:                                //  %if.then
	sw x15 ,  52 ( x9 )
.LBB3_5:                                //  %if.end10
	lb x15 ,  20 ( x20 )
	add x27 ,  x0 ,  x0
	lw x22 ,  32 ( x9 )
	add x10 ,  x0 ,  x27
	lw x13 ,  36 ( x9 )
	ori x15 ,  x15 ,  1
	sb x15 ,  20 ( x20 )
	slli x15 ,  x22 ,  2&31
	add x26 ,  x15 ,  x9
	lw x15 ,  16 ( x9 )
	addi x5 ,  x26 ,  68
	addi x14 ,  x15 ,  3
	lw x15 ,  12 ( x9 )
	sra x8 ,  x13 ,  x14
	slli x15 ,  x15 ,  3&31
	addi x12 ,  x15 ,  -1
	lw x15 ,  68 ( x26 )
	addi x11 ,  x15 ,  -1
	sra x23 ,  x11 ,  x14
	and x24 ,  x11 ,  x12
	bge x23, x8, .LBB3_6
.LBB3_23:                               //  %for.end42.i
	sw x15 ,  36 ( x9 )
	lw x15 ,  0 ( x5 )
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x5 )
	beq x0, x22, .LBB3_25
.LBB3_24:                               //  %cond.true.i
	lw x27 ,  64 ( x26 )
.LBB3_25:                               //  %cond.end.i
	lui x30 ,  2048&4095
	sub x8 ,  x15 ,  x27
	lui x15 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x8, x15, .LBB3_29
.LBB3_26:                               //  %if.then62.i
	slti x15 ,  x22 ,  31
	beq x0, x15, .LBB3_27
.LBB3_28:                               //  %if.end67.i
	addi x22 ,  x22 ,  1
	slti x8 ,  x0 ,  1
	sw x22 ,  32 ( x9 )
	slli x15 ,  x22 ,  2&31
	lw x14 ,  0 ( x5 )
	add x15 ,  x15 ,  x9
	sw x14 ,  68 ( x15 )
	addi x15 ,  x14 ,  -1
	sw x15 ,  0 ( x5 )
.LBB3_29:                               //  %if.end81.i
	lw x15 ,  12 ( x9 )
	slli x14 ,  x15 ,  3&31
	addi x14 ,  x14 ,  -1
	bne x24, x14, .LBB3_37
.LBB3_30:                               //  %if.then87.i
	slti x14 ,  x23 ,  31
	bltu x0, x14, .LBB3_31
.LBB3_27:                               //  %if.then65.i
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x10 ,  x0 ,  2
	addi x12 ,  x0 ,  49
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call write
	add x21 ,  x0 ,  x0
	jal x0, .LBB3_60
.LBB3_6:                                //  %for.body.lr.ph.i
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	slli x19 ,  x8 ,  3&31
	add x21 ,  x0 ,  x0
	slti x20 ,  x0 ,  1
	add x15 ,  x0 ,  x8
	sw x5 ,  8 ( x2 )               //  4-byte Folded Spill
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB3_7
.LBB3_21:                               //  %for.inc40.i
                                        //    in Loop: Header=BB3_7 Depth=1
	addi x19 ,  x19 ,  8
	addi x15 ,  x25 ,  1
	bge x25, x23, .LBB3_22
.LBB3_7:                                //  %for.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB3_19 Depth 2
	add x25 ,  x0 ,  x15
	slli x15 ,  x25 ,  2&31
	add x15 ,  x15 ,  x9
	lw x10 ,  312 ( x15 )
	bltu x0, x10, .LBB3_13
.LBB3_8:                                //  %land.lhs.true.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x14 ,  440 ( x9 )
	bge x25, x14, .LBB3_60
.LBB3_9:                                //  %if.end.i.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x10 ,  12 ( x9 )
	addi x18 ,  x15 ,  312
	call malloc
	add x11 ,  x0 ,  x10
	sw x11 ,  0 ( x18 )
	beq x0, x11, .LBB3_60
.LBB3_10:                               //  %if.end3.i.i
                                        //    in Loop: Header=BB3_7 Depth=1
	slli x15 ,  x25 ,  1&31
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x21
	add x14 ,  x0 ,  x20
	add x15 ,  x15 ,  x9
	lhu x12 ,  196 ( x15 )
	add x15 ,  x0 ,  x20
	call __get_page
	add x15 ,  x0 ,  x10
	lw x10 ,  0 ( x18 )
	bltu x0, x15, .LBB3_11
.LBB3_12:                               //  %fetch_bitmap.exit.i
                                        //    in Loop: Header=BB3_7 Depth=1
	beq x0, x10, .LBB3_60
.LBB3_13:                               //  %if.end.i
                                        //    in Loop: Header=BB3_7 Depth=1
	add x15 ,  x0 ,  x24
	bne x25, x23, .LBB3_14
.LBB3_15:                               //  %if.end19.i
                                        //    in Loop: Header=BB3_7 Depth=1
	add x14 ,  x0 ,  x21
	add x18 ,  x0 ,  x21
	beq x25, x8, .LBB3_16
.LBB3_17:                               //  %if.end31.i
                                        //    in Loop: Header=BB3_7 Depth=1
	blt x15, x18, .LBB3_21
	jal x0, .LBB3_18
.LBB3_14:                               //  %if.else.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x15 ,  12 ( x9 )
	slli x15 ,  x15 ,  3&31
	addi x15 ,  x15 ,  -1
	add x14 ,  x0 ,  x21
	add x18 ,  x0 ,  x21
	bne x25, x8, .LBB3_17
.LBB3_16:                               //  %if.then21.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x13 ,  12 ( x9 )
	lw x14 ,  36 ( x9 )
	slli x13 ,  x13 ,  3&31
	addi x13 ,  x13 ,  -1
	and x14 ,  x14 ,  x13
	srai x13 ,  x14 ,  31&31
	andi x18 ,  x14 ,  -32
	srli x13 ,  x13 ,  27&31
	add x13 ,  x13 ,  x14
	srai x14 ,  x13 ,  5&31
	blt x15, x18, .LBB3_21
.LBB3_18:                               //  %for.body34.i.preheader
                                        //    in Loop: Header=BB3_7 Depth=1
	slli x14 ,  x14 ,  2&31
	add x13 ,  x14 ,  x10
.LBB3_19:                               //  %for.body34.i
                                        //    Parent Loop BB3_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x13 )
	xori x12 ,  x14 ,  -1
	bltu x0, x12, .LBB3_39
.LBB3_20:                               //  %for.inc.i
                                        //    in Loop: Header=BB3_19 Depth=2
	addi x13 ,  x13 ,  4
	addi x18 ,  x18 ,  32
	bge x15, x18, .LBB3_19
	jal x0, .LBB3_21
.LBB3_39:                               //  %found.i
	andi x15 ,  x14 ,  1
	bltu x0, x15, .LBB3_41
.LBB3_40:
	add x8 ,  x0 ,  x0
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB3_44
.LBB3_37:                               //  %if.else126.i
	addi x15 ,  x24 ,  1
	slti x13 ,  x0 ,  1
	add x18 ,  x0 ,  x8
	andi x14 ,  x15 ,  31
	sll x14 ,  x13 ,  x14
	srai x13 ,  x15 ,  31&31
	srli x13 ,  x13 ,  27&31
	add x15 ,  x13 ,  x15
	srai x15 ,  x15 ,  5&31
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x10
	lw x13 ,  0 ( x15 )
	or x14 ,  x14 ,  x13
	sw x14 ,  0 ( x15 )
	slli x15 ,  x22 ,  11&31
	jal x0, .LBB3_57
.LBB3_41:                               //  %if.end.i316.i.preheader
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	addi x15 ,  x0 ,  30
.LBB3_42:                               //  %if.end.i316.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x8 ,  x13 ,  1
	bltu x15, x13, .LBB3_44
.LBB3_43:                               //  %if.end.i316.i
                                        //    in Loop: Header=BB3_42 Depth=1
	slli x20 ,  x20 ,  1&31
	add x13 ,  x0 ,  x8
	and x12 ,  x14 ,  x20
	bltu x0, x12, .LBB3_42
.LBB3_44:                               //  %first_free.exit.i
	add x15 ,  x18 ,  x8
	slti x13 ,  x0 ,  1
	add x11 ,  x0 ,  x19
	srai x14 ,  x15 ,  31&31
	srli x14 ,  x14 ,  27&31
	add x14 ,  x14 ,  x15
	andi x15 ,  x15 ,  31
	srai x14 ,  x14 ,  5&31
	sll x15 ,  x13 ,  x15
	slli x14 ,  x14 ,  2&31
	add x14 ,  x14 ,  x10
	lw x13 ,  0 ( x14 )
	or x15 ,  x13 ,  x15
	sw x15 ,  0 ( x14 )
	lw x20 ,  12 ( x9 )
	add x10 ,  x0 ,  x20
	call __mulsi3
	lw x13 ,  36 ( x9 )
	add x15 ,  x10 ,  x8
	add x14 ,  x18 ,  x15
	addi x15 ,  x14 ,  1
	blt x15, x13, .LBB3_46
.LBB3_45:                               //  %if.then151.i
	sw x14 ,  36 ( x9 )
.LBB3_46:                               //  %if.end155.i
	add x21 ,  x0 ,  x0
	bge x0, x22, .LBB3_47
.LBB3_48:                               //  %land.rhs.i.preheader
	add x23 ,  x0 ,  x0
	addi x14 ,  x9 ,  68
.LBB3_49:                               //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x14 )
	bge x13, x15, .LBB3_52
.LBB3_50:                               //  %for.inc165.i
                                        //    in Loop: Header=BB3_49 Depth=1
	addi x14 ,  x14 ,  4
	addi x23 ,  x23 ,  1
	bne x22, x23, .LBB3_49
.LBB3_51:
	add x23 ,  x0 ,  x22
.LBB3_52:                               //  %for.end167.i
	beq x0, x23, .LBB3_53
.LBB3_54:                               //  %cond.true169.i
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __mulsi3
	slli x14 ,  x23 ,  2&31
	add x15 ,  x10 ,  x8
	add x14 ,  x9 ,  x14
	lw x14 ,  64 ( x14 )
	sub x15 ,  x15 ,  x14
	add x15 ,  x18 ,  x15
	addi x15 ,  x15 ,  1
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  2046
	bge x14, x15, .LBB3_56
	jal x0, .LBB3_60
.LBB3_47:
	add x23 ,  x0 ,  x21
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  2046
	bge x14, x15, .LBB3_56
	jal x0, .LBB3_60
.LBB3_31:                               //  %if.end92.i
	add x10 ,  x0 ,  x15
	call malloc
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB3_32
.LBB3_33:                               //  %if.end98.i
	lw x15 ,  440 ( x9 )
	add x18 ,  x0 ,  x0
	addi x12 ,  x0 ,  4
	add x10 ,  x0 ,  x19
	add x21 ,  x0 ,  x20
	addi x20 ,  x23 ,  1
	add x11 ,  x0 ,  x18
	addi x15 ,  x15 ,  1
	sw x15 ,  440 ( x9 )
	call memset
	lw x15 ,  12 ( x9 )
	addi x10 ,  x19 ,  4
	addi x11 ,  x0 ,  255
	addi x12 ,  x15 ,  -4
	call memset
	slli x15 ,  x20 ,  1&31
	slli x14 ,  x22 ,  11&31
	add x15 ,  x15 ,  x9
	add x14 ,  x8 ,  x14
	sh x14 ,  196 ( x15 )
	addi x15 ,  x0 ,  -1
	sw x15 ,  0 ( x19 )
	slli x15 ,  x20 ,  2&31
	add x15 ,  x15 ,  x9
	sw x19 ,  312 ( x15 )
	slli x15 ,  x22 ,  2&31
	add x15 ,  x15 ,  x9
	lw x14 ,  68 ( x15 )
	addi x14 ,  x14 ,  1
	sw x14 ,  68 ( x15 )
	slti x14 ,  x8 ,  2047
	bltu x0, x14, .LBB3_34
.LBB3_35:                               //  %if.then105.i
	slti x14 ,  x22 ,  31
	beq x0, x14, .LBB3_27
.LBB3_36:                               //  %if.end110.i
	addi x22 ,  x22 ,  1
	addi x15 ,  x15 ,  68
	add x20 ,  x0 ,  x21
	sw x22 ,  32 ( x9 )
	slli x14 ,  x22 ,  2&31
	lw x13 ,  0 ( x15 )
	add x14 ,  x14 ,  x9
	sw x13 ,  68 ( x14 )
	addi x14 ,  x13 ,  -1
	sw x14 ,  0 ( x15 )
	slli x15 ,  x22 ,  11&31
	jal x0, .LBB3_57
.LBB3_53:
	add x23 ,  x0 ,  x0
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  2046
	blt x14, x15, .LBB3_60
.LBB3_56:                               //  %if.end181.i
	slli x18 ,  x23 ,  11&31
.LBB3_57:                               //  %overflow_page.exit
	lui x30 ,  65535&4095
	add x8 ,  x18 ,  x15
	lui x15 ,  (65535>>12)&1048575
	add x21 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	and x14 ,  x14 ,  x8
	beq x0, x14, .LBB3_60
.LBB3_58:                               //  %lor.lhs.false
	lui x30 ,  65535&4095
	slti x13 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x11 ,  x15 ,  x8
	call __get_buf
	sw x10 ,  8 ( x20 )
	beq x0, x10, .LBB3_60
.LBB3_59:                               //  %if.end17
	lb x15 ,  20 ( x10 )
	add x21 ,  x0 ,  x10
	ori x15 ,  x15 ,  1
	sb x15 ,  20 ( x10 )
	lhu x15 ,  0 ( x25 )
	slli x14 ,  x15 ,  1&31
	addi x15 ,  x15 ,  2
	sh x15 ,  0 ( x25 )
	slli x15 ,  x15 ,  1&31
	add x14 ,  x25 ,  x14
	add x15 ,  x15 ,  x25
	lh x13 ,  0 ( x15 )
	sh x0 ,  0 ( x15 )
	sh x13 ,  8 ( x14 )
	lh x13 ,  2 ( x14 )
	sh x8 ,  2 ( x14 )
	addi x13 ,  x13 ,  -4
	sh x13 ,  6 ( x14 )
.LBB3_60:                               //  %cleanup
	add x10 ,  x0 ,  x21
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
.LBB3_32:
	add x21 ,  x0 ,  x0
	jal x0, .LBB3_60
.LBB3_22:                               //  %for.end42.loopexit.i
	lw x5 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  0 ( x5 )
	jal x0, .LBB3_23
.LBB3_34:
	addi x18 ,  x8 ,  1
	add x20 ,  x0 ,  x21
	slli x15 ,  x22 ,  11&31
	jal x0, .LBB3_57
.LBB3_11:                               //  %if.then9.i.i
	call free
	jal x0, .LBB3_60
.Lfunc_end3:
	.size	__add_ovflpage, .Lfunc_end3-__add_ovflpage
	.cfi_endproc
                                        //  -- End function
	.globl	__get_page              //  -- Begin function __get_page
	.type	__get_page,@function
__get_page:                             //  @__get_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x10
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x18 ,  x0 ,  x15
	add x9 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x20 ,  12 ( x19 )
	beq x0, x14, .LBB4_5
.LBB4_1:                                //  %entry
	lw x21 ,  276 ( x19 )
	xori x15 ,  x21 ,  -1
	beq x0, x15, .LBB4_5
.LBB4_2:                                //  %if.end
	beq x0, x13, .LBB4_6
.LBB4_3:                                //  %if.then9
	lw x15 ,  60 ( x19 )
	add x22 ,  x9 ,  x15
	beq x0, x9, .LBB4_8
.LBB4_4:                                //  %cond.true
	addi x10 ,  x9 ,  1
	call __log2
	slli x15 ,  x10 ,  2&31
	add x15 ,  x19 ,  x15
	lw x15 ,  64 ( x15 )
	add x15 ,  x15 ,  x22
	jal x0, .LBB4_11
.LBB4_5:                                //  %if.then
	addi x15 ,  x20 ,  -6
	sh x20 ,  4 ( x8 )
	sh x0 ,  0 ( x8 )
	add x9 ,  x0 ,  x0
.LBB4_29:                               //  %cleanup
	sh x15 ,  2 ( x8 )
	jal x0, .LBB4_30
.LBB4_6:                                //  %if.else
	lw x22 ,  60 ( x19 )
	srli x15 ,  x9 ,  11&31
	slti x14 ,  x0 ,  1
	sll x10 ,  x14 ,  x15
	addi x23 ,  x10 ,  -1
	beq x0, x23, .LBB4_9
.LBB4_7:                                //  %cond.true25
	call __log2
	slli x15 ,  x10 ,  2&31
	add x15 ,  x19 ,  x15
	lw x15 ,  64 ( x15 )
	jal x0, .LBB4_10
.LBB4_8:
	add x15 ,  x0 ,  x0
	add x15 ,  x15 ,  x22
	jal x0, .LBB4_11
.LBB4_9:
	add x15 ,  x0 ,  x0
.LBB4_10:                               //  %cond.end36
	andi x14 ,  x9 ,  2047
	add x14 ,  x14 ,  x23
	add x14 ,  x22 ,  x14
	add x15 ,  x15 ,  x14
.LBB4_11:                               //  %if.end40
	lw x14 ,  16 ( x19 )
	add x9 ,  x0 ,  x0
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x9
	sll x11 ,  x15 ,  x14
	call lseek
	addi x22 ,  x0 ,  -1
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB4_17
.LBB4_12:                               //  %lor.lhs.false46
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call read
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB4_17
.LBB4_13:                               //  %if.end51
	beq x0, x10, .LBB4_18
.LBB4_14:                               //  %if.else55
	beq x10, x20, .LBB4_19
.LBB4_15:                               //  %if.then58
	call __errno
	addi x15 ,  x0 ,  79
	add x9 ,  x0 ,  x22
	sw x15 ,  0 ( x10 )
	jal x0, .LBB4_30
.LBB4_17:
	add x9 ,  x0 ,  x22
.LBB4_30:                               //  %cleanup
	add x10 ,  x0 ,  x9
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
.LBB4_18:                               //  %if.then53
	sh x0 ,  0 ( x8 )
.LBB4_19:                               //  %if.end61
	bltu x0, x18, .LBB4_21
.LBB4_20:                               //  %land.lhs.true
	lhu x15 ,  0 ( x8 )
	beq x0, x15, .LBB4_28
.LBB4_21:                               //  %if.else76
	lw x15 ,  8 ( x19 )
	xori x15 ,  x15 ,  1234
	beq x0, x15, .LBB4_30
.LBB4_22:                               //  %if.then80
	beq x0, x18, .LBB4_26
.LBB4_23:                               //  %if.then82
	lw x15 ,  12 ( x19 )
	slti x14 ,  x15 ,  4
	bltu x0, x14, .LBB4_30
.LBB4_24:                               //  %for.body.lr.ph
	add x9 ,  x0 ,  x0
	srai x15 ,  x15 ,  2&31
	addi x14 ,  x8 ,  1
	add x13 ,  x0 ,  x9
.LBB4_25:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  -1 ( x14 )
	addi x13 ,  x13 ,  1
	srli x11 ,  x12 ,  8&31
	sb x12 ,  2 ( x14 )
	sb x11 ,  1 ( x14 )
	srli x11 ,  x12 ,  16&31
	srli x12 ,  x12 ,  24&31
	sb x11 ,  0 ( x14 )
	sb x12 ,  -1 ( x14 )
	addi x14 ,  x14 ,  4
	blt x13, x15, .LBB4_25
	jal x0, .LBB4_30
.LBB4_26:                               //  %if.else101
	lh x15 ,  0 ( x8 )
	sb x15 ,  1 ( x8 )
	srli x15 ,  x15 ,  8&31
	sb x15 ,  0 ( x8 )
	addi x15 ,  x8 ,  3
	lhu x14 ,  0 ( x8 )
	addi x14 ,  x14 ,  2
.LBB4_27:                               //  %for.body116
                                        //  =>This Inner Loop Header: Depth=1
	lh x13 ,  -1 ( x15 )
	addi x14 ,  x14 ,  -1
	sb x13 ,  0 ( x15 )
	srli x13 ,  x13 ,  8&31
	sb x13 ,  -1 ( x15 )
	addi x15 ,  x15 ,  2
	bltu x0, x14, .LBB4_27
	jal x0, .LBB4_30
.LBB4_28:                               //  %if.then65
	lh x15 ,  12 ( x19 )
	sh x0 ,  0 ( x8 )
	sh x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  -6
	jal x0, .LBB4_29
.Lfunc_end4:
	.size	__get_page, .Lfunc_end4-__get_page
	.cfi_endproc
                                        //  -- End function
	.globl	__put_page              //  -- Begin function __put_page
	.type	__put_page,@function
__put_page:                             //  @__put_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x23 ,  x0 ,  x14
	add x21 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x20 ,  276 ( x18 )
	lw x8 ,  12 ( x18 )
	xori x15 ,  x20 ,  -1
	bltu x0, x15, .LBB5_4
.LBB5_1:                                //  %land.lhs.true
	addi x22 ,  x0 ,  -1
	slti x10 ,  x0 ,  1
	addi x11 ,  x2 ,  8
	addi x12 ,  x2 ,  4
	sw x22 ,  8 ( x2 )
	call sigprocmask
	lui x30 ,  open_temp.namestr&4095
	lui x20 ,  (open_temp.namestr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x20 ,  x30
	call mkstemp
	xori x15 ,  x10 ,  -1
	sw x10 ,  276 ( x18 )
	beq x0, x15, .LBB5_3
.LBB5_2:                                //  %if.then.i
	lui x30 ,  open_temp.namestr&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x20 ,  x30
	call unlink
.LBB5_3:                                //  %open_temp.exit
	add x10 ,  x0 ,  x0
	addi x11 ,  x2 ,  4
	add x12 ,  x0 ,  x10
	call sigprocmask
	lw x20 ,  276 ( x18 )
	xori x15 ,  x20 ,  -1
	beq x0, x15, .LBB5_25
.LBB5_4:                                //  %if.end
	lw x15 ,  8 ( x18 )
	xori x15 ,  x15 ,  1234
	beq x0, x15, .LBB5_11
.LBB5_5:                                //  %if.then4
	beq x0, x23, .LBB5_9
.LBB5_6:                                //  %if.then6
	lw x15 ,  12 ( x18 )
	slti x14 ,  x15 ,  4
	bltu x0, x14, .LBB5_11
.LBB5_7:                                //  %for.body.lr.ph
	srai x15 ,  x15 ,  2&31
	add x14 ,  x0 ,  x0
	addi x13 ,  x9 ,  1
.LBB5_8:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  -1 ( x13 )
	addi x14 ,  x14 ,  1
	srli x11 ,  x12 ,  8&31
	sb x12 ,  2 ( x13 )
	sb x11 ,  1 ( x13 )
	srli x11 ,  x12 ,  16&31
	srli x12 ,  x12 ,  24&31
	sb x11 ,  0 ( x13 )
	sb x12 ,  -1 ( x13 )
	addi x13 ,  x13 ,  4
	blt x14, x15, .LBB5_8
	jal x0, .LBB5_11
.LBB5_9:                                //  %if.else
	lhu x14 ,  0 ( x9 )
	srli x15 ,  x14 ,  8&31
	sb x14 ,  1 ( x9 )
	addi x14 ,  x14 ,  2
	sb x15 ,  0 ( x9 )
	addi x15 ,  x9 ,  3
.LBB5_10:                               //  %for.body26.for.body26_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lh x13 ,  -1 ( x15 )
	addi x14 ,  x14 ,  -1
	sb x13 ,  0 ( x15 )
	srli x13 ,  x13 ,  8&31
	sb x13 ,  -1 ( x15 )
	addi x15 ,  x15 ,  2
	bltu x0, x14, .LBB5_10
.LBB5_11:                               //  %if.end39
	beq x0, x21, .LBB5_16
.LBB5_12:                               //  %if.then41
	lw x15 ,  60 ( x18 )
	add x21 ,  x19 ,  x15
	beq x0, x19, .LBB5_13
.LBB5_14:                               //  %cond.true
	addi x10 ,  x19 ,  1
	call __log2
	slli x15 ,  x10 ,  2&31
	add x15 ,  x18 ,  x15
	lw x15 ,  64 ( x15 )
	add x15 ,  x15 ,  x21
	jal x0, .LBB5_20
.LBB5_16:                               //  %if.else50
	lw x21 ,  60 ( x18 )
	srli x15 ,  x19 ,  11&31
	slti x14 ,  x0 ,  1
	sll x10 ,  x14 ,  x15
	addi x22 ,  x10 ,  -1
	beq x0, x22, .LBB5_17
.LBB5_18:                               //  %cond.true60
	call __log2
	slli x15 ,  x10 ,  2&31
	add x15 ,  x18 ,  x15
	lw x15 ,  64 ( x15 )
	jal x0, .LBB5_19
.LBB5_13:
	add x15 ,  x0 ,  x0
	add x15 ,  x15 ,  x21
	jal x0, .LBB5_20
.LBB5_17:
	add x15 ,  x0 ,  x0
.LBB5_19:                               //  %cond.end71
	andi x14 ,  x19 ,  2047
	add x14 ,  x14 ,  x22
	add x14 ,  x21 ,  x14
	add x15 ,  x15 ,  x14
.LBB5_20:                               //  %if.end75
	lw x14 ,  16 ( x18 )
	add x22 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	addi x19 ,  x0 ,  -1
	add x12 ,  x0 ,  x22
	sll x11 ,  x15 ,  x14
	call lseek
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB5_24
.LBB5_21:                               //  %lor.lhs.false
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call write
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB5_24
.LBB5_22:                               //  %if.end85
	beq x10, x8, .LBB5_25
.LBB5_23:                               //  %if.then88
	call __errno
	addi x15 ,  x0 ,  79
	sw x15 ,  0 ( x10 )
.LBB5_24:                               //  %cleanup
	add x22 ,  x0 ,  x19
.LBB5_25:                               //  %cleanup
	add x10 ,  x0 ,  x22
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
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
.Lfunc_end5:
	.size	__put_page, .Lfunc_end5-__put_page
	.cfi_endproc
                                        //  -- End function
	.globl	__ibitmap               //  -- Begin function __ibitmap
	.type	__ibitmap,@function
__ibitmap:                              //  @__ibitmap
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x8 ,  x0 ,  x13
	add x20 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	lw x10 ,  12 ( x9 )
	call malloc
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB6_1
.LBB6_2:                                //  %if.end
	lw x15 ,  440 ( x9 )
	add x21 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	addi x15 ,  x15 ,  1
	sw x15 ,  440 ( x9 )
	addi x15 ,  x20 ,  -1
	srai x15 ,  x15 ,  5&31
	slli x23 ,  x15 ,  2&31
	addi x22 ,  x23 ,  4
	add x12 ,  x0 ,  x22
	call memset
	lw x15 ,  12 ( x9 )
	add x10 ,  x22 ,  x19
	addi x11 ,  x0 ,  255
	sub x12 ,  x15 ,  x22
	call memset
	andi x15 ,  x20 ,  31
	addi x14 ,  x0 ,  -1
	sll x15 ,  x14 ,  x15
	add x14 ,  x23 ,  x19
	sw x15 ,  0 ( x14 )
	slli x15 ,  x8 ,  1&31
	add x15 ,  x15 ,  x9
	sh x18 ,  196 ( x15 )
	slli x15 ,  x8 ,  2&31
	add x15 ,  x15 ,  x9
	sw x19 ,  312 ( x15 )
	lw x15 ,  0 ( x19 )
	ori x15 ,  x15 ,  1
	sw x15 ,  0 ( x19 )
	jal x0, .LBB6_3
.LBB6_1:
	slti x21 ,  x0 ,  1
.LBB6_3:                                //  %cleanup
	add x10 ,  x0 ,  x21
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
.Lfunc_end6:
	.size	__ibitmap, .Lfunc_end6-__ibitmap
	.cfi_endproc
                                        //  -- End function
	.globl	__free_ovflpage         //  -- Begin function __free_ovflpage
	.type	__free_ovflpage,@function
__free_ovflpage:                        //  @__free_ovflpage
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x11
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x15 ,  12 ( x8 )
	srli x14 ,  x15 ,  11&31
	andi x14 ,  x14 ,  31
	beq x0, x14, .LBB7_1
.LBB7_2:                                //  %cond.true
	slli x14 ,  x14 ,  2&31
	add x14 ,  x9 ,  x14
	lw x14 ,  64 ( x14 )
	jal x0, .LBB7_3
.LBB7_1:
	add x14 ,  x0 ,  x0
.LBB7_3:                                //  %cond.end
	andi x15 ,  x15 ,  2047
	add x15 ,  x15 ,  x14
	lw x14 ,  36 ( x9 )
	addi x19 ,  x15 ,  -1
	blt x14, x15, .LBB7_5
.LBB7_4:                                //  %if.then
	sw x19 ,  36 ( x9 )
.LBB7_5:                                //  %if.end
	lw x15 ,  16 ( x9 )
	lw x18 ,  12 ( x9 )
	addi x15 ,  x15 ,  3
	sra x20 ,  x19 ,  x15
	slli x15 ,  x20 ,  2&31
	add x15 ,  x15 ,  x9
	lw x10 ,  312 ( x15 )
	bltu x0, x10, .LBB7_8
.LBB7_6:                                //  %if.then20
	add x10 ,  x0 ,  x18
	addi x21 ,  x15 ,  312
	call malloc
	slli x15 ,  x20 ,  1&31
	slti x14 ,  x0 ,  1
	add x11 ,  x0 ,  x10
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x15 ,  x15 ,  x9
	sw x11 ,  0 ( x21 )
	lhu x12 ,  196 ( x15 )
	add x15 ,  x0 ,  x14
	call __get_page
	add x15 ,  x0 ,  x10
	lw x10 ,  0 ( x21 )
	bltu x0, x15, .LBB7_7
.LBB7_8:                                //  %if.end21
	slli x15 ,  x18 ,  3&31
	slti x13 ,  x0 ,  1
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x15 ,  x15 ,  -1
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	and x15 ,  x19 ,  x15
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	srai x14 ,  x15 ,  31&31
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	srli x14 ,  x14 ,  27&31
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x14 ,  x15
	andi x15 ,  x15 ,  31
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	srai x14 ,  x14 ,  5&31
	sll x15 ,  x13 ,  x15
	slli x14 ,  x14 ,  2&31
	xori x15 ,  x15 ,  -1
	add x14 ,  x14 ,  x10
	add x10 ,  x0 ,  x9
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x13 ,  0 ( x14 )
	and x15 ,  x15 ,  x13
	sw x15 ,  0 ( x14 )
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	jal x0, __reclaim_buf
.LBB7_7:                                //  %if.then9.i
	call free
.Lfunc_end7:
	.size	__free_ovflpage, .Lfunc_end7-__free_ovflpage
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"HASH: Out of overflow pages.  Increase page size\n"
	.size	.str, 50

	.address_space	0
	.type	open_temp.namestr,@object //  @open_temp.namestr
	.data
open_temp.namestr:
	.asciz	"_hashXXXXXX"
	.size	open_temp.namestr, 12


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
