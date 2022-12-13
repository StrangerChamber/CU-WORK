	.text
	.file	"hash_buf.c"
	.globl	__get_buf               //  -- Begin function __get_buf
	.type	__get_buf,@function
__get_buf:                              //  @__get_buf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
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
	beq x0, x8, .LBB0_5
.LBB0_1:                                //  %if.then
	lw x21 ,  8 ( x8 )
	beq x0, x21, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false
	lw x15 ,  12 ( x21 )
	beq x15, x18, .LBB0_4
.LBB0_3:                                //  %if.then3
	add x21 ,  x0 ,  x0
.LBB0_4:                                //  %if.end
	xori x15 ,  x13 ,  0
	add x23 ,  x0 ,  x0
	sltiu x15 ,  x15 ,  1
	add x22 ,  x0 ,  x23
	add x24 ,  x0 ,  x23
	slli x19 ,  x15 ,  1&31
	beq x0, x21, .LBB0_9
.LBB0_50:                               //  %if.else29
	lw x15 ,  4 ( x21 )
	lw x14 ,  0 ( x21 )
	sw x15 ,  4 ( x14 )
	lw x15 ,  4 ( x21 )
	sw x14 ,  0 ( x15 )
	lw x15 ,  452 ( x9 )
	sw x15 ,  4 ( x21 )
	addi x15 ,  x9 ,  448
	sw x21 ,  452 ( x9 )
	sw x15 ,  0 ( x21 )
	lw x15 ,  4 ( x21 )
	sw x21 ,  0 ( x15 )
.LBB0_51:                               //  %cleanup
	add x10 ,  x0 ,  x21
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
.LBB0_5:                                //  %if.else
	lw x15 ,  24 ( x9 )
	lw x14 ,  472 ( x9 )
	addi x15 ,  x15 ,  -1
	and x22 ,  x18 ,  x15
	lw x15 ,  28 ( x9 )
	srl x15 ,  x18 ,  x15
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x24 ,  0 ( x15 )
	slli x15 ,  x22 ,  2&31
	add x15 ,  x15 ,  x24
	lw x15 ,  0 ( x15 )
	andi x21 ,  x15 ,  -4
	andi x23 ,  x15 ,  2
	bltu x0, x23, .LBB0_6
.LBB0_7:                                //  %lor.rhs
	lw x15 ,  304 ( x9 )
	add x23 ,  x0 ,  x0
	xori x15 ,  x15 ,  0
	sltiu x19 ,  x15 ,  1
	bltu x0, x21, .LBB0_50
.LBB0_9:                                //  %if.then16
	lw x15 ,  444 ( x9 )
	addi x25 ,  x9 ,  448
	bltu x0, x15, .LBB0_11
.LBB0_10:                               //  %lor.lhs.false.i
	lw x20 ,  448 ( x9 )
	lbu x15 ,  20 ( x20 )
	andi x14 ,  x15 ,  8
	bltu x0, x14, .LBB0_11
.LBB0_16:                               //  %if.else.i
	lw x14 ,  4 ( x20 )
	lw x13 ,  0 ( x20 )
	lw x12 ,  12 ( x20 )
	sw x14 ,  4 ( x13 )
	lw x14 ,  4 ( x20 )
	sw x13 ,  0 ( x14 )
	andi x14 ,  x15 ,  4
	bltu x0, x14, .LBB0_18
.LBB0_17:                               //  %if.else.i
	beq x0, x12, .LBB0_40
.LBB0_18:                               //  %if.then27.i
	lw x11 ,  16 ( x20 )
	slli x15 ,  x15 ,  24&31
	srai x15 ,  x15 ,  24&31
	lhu x14 ,  0 ( x11 )
	beq x0, x14, .LBB0_19
.LBB0_20:                               //  %if.then30.i
	slli x14 ,  x14 ,  1&31
	add x14 ,  x11 ,  x14
	lhu x26 ,  -2 ( x14 )
	andi x14 ,  x15 ,  1
	bltu x0, x14, .LBB0_22
	jal x0, .LBB0_24
.LBB0_11:                               //  %if.then.i
	addi x10 ,  x0 ,  24
	call malloc
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x0
	beq x0, x20, .LBB0_51
.LBB0_12:                               //  %if.end.i
	lw x10 ,  12 ( x9 )
	call malloc
	sw x10 ,  16 ( x20 )
	beq x0, x10, .LBB0_13
.LBB0_14:                               //  %if.end8.i
	lw x15 ,  444 ( x9 )
	beq x0, x15, .LBB0_40
.LBB0_15:                               //  %if.then11.i
	addi x15 ,  x15 ,  -1
	sw x15 ,  444 ( x9 )
.LBB0_40:                               //  %if.end131.i
	sw x18 ,  12 ( x20 )
	sw x0 ,  8 ( x20 )
	beq x0, x8, .LBB0_41
.LBB0_42:                               //  %if.then135.i
	add x15 ,  x0 ,  x0
	sw x20 ,  8 ( x8 )
	jal x0, .LBB0_43
.LBB0_6:
	slti x19 ,  x0 ,  1
	bltu x0, x21, .LBB0_50
	jal x0, .LBB0_9
.LBB0_13:                               //  %if.then7.i
	add x10 ,  x0 ,  x20
	call free
	jal x0, .LBB0_51
.LBB0_19:
	add x26 ,  x0 ,  x0
	andi x14 ,  x15 ,  1
	beq x0, x14, .LBB0_24
.LBB0_22:                               //  %land.lhs.true.i
	add x21 ,  x0 ,  x0
	andi x13 ,  x15 ,  4
	add x10 ,  x0 ,  x9
	add x14 ,  x0 ,  x21
	call __put_page
	bltu x0, x10, .LBB0_51
.LBB0_23:                               //  %land.lhs.true.if.end47_crit_edge.i
	lb x15 ,  20 ( x20 )
.LBB0_24:                               //  %if.end47.i
	andi x14 ,  x15 ,  4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	beq x0, x14, .LBB0_30
.LBB0_25:                               //  %if.then52.i
	lw x13 ,  24 ( x9 )
	lw x14 ,  12 ( x20 )
	lw x12 ,  28 ( x9 )
	addi x13 ,  x13 ,  -1
	and x13 ,  x14 ,  x13
	srl x14 ,  x14 ,  x12
	lw x12 ,  472 ( x9 )
	slli x13 ,  x13 ,  2&31
	slli x14 ,  x14 ,  2&31
	add x14 ,  x14 ,  x12
	lw x12 ,  304 ( x9 )
	lw x14 ,  0 ( x14 )
	beq x0, x12, .LBB0_28
.LBB0_26:                               //  %land.lhs.true61.i
	addi x12 ,  x0 ,  2
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_29
.LBB0_27:                               //  %lor.lhs.false66.i
	add x15 ,  x13 ,  x14
	lbu x15 ,  0 ( x15 )
	andi x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_29
.LBB0_28:                               //  %if.else72.i
	add x12 ,  x0 ,  x0
.LBB0_29:                               //  %if.end75.i.sink.split
	add x15 ,  x13 ,  x14
	sw x12 ,  0 ( x15 )
.LBB0_30:                               //  %if.end75.i
	lw x27 ,  8 ( x20 )
	beq x0, x27, .LBB0_39
.LBB0_31:                               //  %for.body.i.preheader
	addi x15 ,  x20 ,  8
	lui x13 ,  (65535>>12)&1048575
	add x21 ,  x0 ,  x0
	sw x0 ,  0 ( x15 )
	lbu x15 ,  20 ( x27 )
	andi x14 ,  x15 ,  4
	beq x0, x14, .LBB0_33
	jal x0, .LBB0_39
.LBB0_38:                               //  %if.end109.i
                                        //    in Loop: Header=BB0_33 Depth=1
	lw x15 ,  4 ( x27 )
	sb x0 ,  20 ( x27 )
	sw x0 ,  12 ( x27 )
	lw x14 ,  0 ( x27 )
	sw x15 ,  4 ( x14 )
	lw x15 ,  4 ( x27 )
	sw x14 ,  0 ( x15 )
	lw x15 ,  0 ( x25 )
	sw x15 ,  0 ( x27 )
	lw x15 ,  4 ( x15 )
	sw x15 ,  4 ( x27 )
	lw x15 ,  0 ( x25 )
	sw x27 ,  4 ( x15 )
	lw x15 ,  4 ( x27 )
	sw x27 ,  0 ( x15 )
	addi x15 ,  x27 ,  8
	lw x27 ,  8 ( x27 )
	beq x0, x27, .LBB0_39
.LBB0_32:                               //  %for.body.i
                                        //    in Loop: Header=BB0_33 Depth=1
	sw x0 ,  0 ( x15 )
	lbu x15 ,  20 ( x27 )
	andi x14 ,  x15 ,  4
	bltu x0, x14, .LBB0_39
.LBB0_33:                               //  %lor.lhs.false83.i
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x13 ,  x30
	and x12 ,  x14 ,  x26
	lw x14 ,  12 ( x27 )
	bne x14, x12, .LBB0_39
.LBB0_34:                               //  %if.end89.i
                                        //    in Loop: Header=BB0_33 Depth=1
	lw x11 ,  16 ( x27 )
	lhu x14 ,  0 ( x11 )
	beq x0, x14, .LBB0_36
.LBB0_35:                               //  %if.then93.i
                                        //    in Loop: Header=BB0_33 Depth=1
	slli x14 ,  x14 ,  1&31
	add x14 ,  x11 ,  x14
	lhu x26 ,  -2 ( x14 )
.LBB0_36:                               //  %if.end98.i
                                        //    in Loop: Header=BB0_33 Depth=1
	andi x15 ,  x15 ,  1
	beq x0, x15, .LBB0_38
.LBB0_37:                               //  %land.lhs.true103.i
                                        //    in Loop: Header=BB0_33 Depth=1
	add x19 ,  x0 ,  x25
	add x25 ,  x0 ,  x26
	add x26 ,  x0 ,  x13
	add x10 ,  x0 ,  x9
	add x14 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	call __put_page
	add x13 ,  x0 ,  x26
	add x26 ,  x0 ,  x25
	add x25 ,  x0 ,  x19
	beq x0, x10, .LBB0_38
	jal x0, .LBB0_51
.LBB0_39:
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x18 ,  12 ( x20 )
	sw x0 ,  8 ( x20 )
	bltu x0, x8, .LBB0_42
.LBB0_41:
	addi x15 ,  x0 ,  4
.LBB0_43:                               //  %newbuf.exit
	sb x15 ,  20 ( x20 )
	sw x25 ,  0 ( x20 )
	lw x15 ,  452 ( x9 )
	sw x15 ,  4 ( x20 )
	sw x20 ,  452 ( x9 )
	lw x15 ,  4 ( x20 )
	sw x20 ,  0 ( x15 )
	beq x0, x20, .LBB0_44
.LBB0_45:                               //  %lor.lhs.false18
	lw x11 ,  16 ( x20 )
	xori x15 ,  x8 ,  0
	add x21 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x14 ,  x0 ,  x19
	sltiu x13 ,  x15 ,  1
	add x15 ,  x0 ,  x21
	call __get_page
	bne x10, x21, .LBB0_47
.LBB0_46:                               //  %lor.lhs.false18
	add x21 ,  x0 ,  x20
.LBB0_47:                               //  %lor.lhs.false18
	bltu x0, x8, .LBB0_51
.LBB0_48:                               //  %lor.lhs.false18
	bltu x0, x10, .LBB0_51
.LBB0_49:                               //  %if.then26
	slli x15 ,  x22 ,  2&31
	or x14 ,  x20 ,  x23
	add x21 ,  x0 ,  x20
	add x15 ,  x15 ,  x24
	sw x14 ,  0 ( x15 )
	jal x0, .LBB0_51
.LBB0_44:
	add x21 ,  x0 ,  x0
	jal x0, .LBB0_51
.Lfunc_end0:
	.size	__get_buf, .Lfunc_end0-__get_buf
	.cfi_endproc
                                        //  -- End function
	.globl	__buf_init              //  -- Begin function __buf_init
	.type	__buf_init,@function
__buf_init:                             //  @__buf_init
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x15 ,  x10 ,  448
	lw x14 ,  16 ( x10 )
	sw x15 ,  452 ( x10 )
	sw x15 ,  448 ( x10 )
	lw x15 ,  12 ( x10 )
	add x15 ,  x15 ,  x11
	addi x15 ,  x15 ,  -1
	sra x15 ,  x15 ,  x14
	addi x14 ,  x0 ,  6
	blt x14, x15, .LBB1_2
.LBB1_1:                                //  %entry
	add x15 ,  x0 ,  x14
.LBB1_2:                                //  %entry
	sw x15 ,  444 ( x10 )
	ret
.Lfunc_end1:
	.size	__buf_init, .Lfunc_end1-__buf_init
	.cfi_endproc
                                        //  -- End function
	.globl	__buf_free              //  -- Begin function __buf_free
	.type	__buf_free,@function
__buf_free:                             //  @__buf_free
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x10
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x0
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x18 ,  448 ( x19 )
	beq x0, x18, .LBB2_19
.LBB2_1:                                //  %entry
	addi x21 ,  x19 ,  448
	beq x18, x21, .LBB2_19
.LBB2_2:                                //  %for.body.lr.ph
	beq x0, x12, .LBB2_14
.LBB2_3:
	add x20 ,  x0 ,  x0
	addi x8 ,  x0 ,  -1
	lbu x15 ,  20 ( x18 )
	lw x12 ,  12 ( x18 )
	beq x0, x12, .LBB2_5
	jal x0, .LBB2_6
.LBB2_11:                               //  %if.end27
	lw x15 ,  4 ( x18 )
	add x10 ,  x0 ,  x18
	lw x14 ,  0 ( x18 )
	sw x15 ,  4 ( x14 )
	lw x15 ,  4 ( x18 )
	sw x14 ,  0 ( x15 )
	call free
	add x18 ,  x0 ,  x21
.LBB2_12:                               //  %if.end36
	lw x18 ,  0 ( x18 )
	beq x18, x21, .LBB2_13
.LBB2_4:                                //  %for.body
	lbu x15 ,  20 ( x18 )
	lw x12 ,  12 ( x18 )
	bltu x0, x12, .LBB2_6
.LBB2_5:                                //  %for.body
	andi x14 ,  x15 ,  4
	beq x0, x14, .LBB2_8
.LBB2_6:                                //  %land.lhs.true
	slli x15 ,  x15 ,  24&31
	srai x15 ,  x15 ,  24&31
	andi x14 ,  x15 ,  1
	beq x0, x14, .LBB2_8
.LBB2_7:                                //  %land.lhs.true12
	lw x11 ,  16 ( x18 )
	andi x13 ,  x15 ,  4
	add x10 ,  x0 ,  x19
	add x14 ,  x0 ,  x20
	call __put_page
	bltu x0, x10, .LBB2_19
.LBB2_8:                                //  %if.end20
	beq x0, x9, .LBB2_12
.LBB2_9:                                //  %if.then22
	lw x10 ,  16 ( x18 )
	beq x0, x10, .LBB2_11
.LBB2_10:                               //  %if.then25
	call free
	jal x0, .LBB2_11
.LBB2_17:                               //  %if.end27.us
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x15 ,  4 ( x18 )
	add x10 ,  x0 ,  x18
	lw x14 ,  0 ( x18 )
	sw x15 ,  4 ( x14 )
	lw x15 ,  4 ( x18 )
	sw x14 ,  0 ( x15 )
	call free
	add x18 ,  x0 ,  x21
.LBB2_18:                               //  %if.end36.us
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18 ,  0 ( x18 )
	beq x18, x21, .LBB2_19
.LBB2_14:                               //  %for.body.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x9, .LBB2_18
.LBB2_15:                               //  %if.then22.us
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10 ,  16 ( x18 )
	beq x0, x10, .LBB2_17
.LBB2_16:                               //  %if.then25.us
                                        //    in Loop: Header=BB2_14 Depth=1
	call free
	jal x0, .LBB2_17
.LBB2_13:
	add x8 ,  x0 ,  x20
.LBB2_19:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	__buf_free, .Lfunc_end2-__buf_free
	.cfi_endproc
                                        //  -- End function
	.globl	__reclaim_buf           //  -- Begin function __reclaim_buf
	.type	__reclaim_buf,@function
__reclaim_buf:                          //  @__reclaim_buf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x15 ,  4 ( x11 )
	sb x0 ,  20 ( x11 )
	sw x0 ,  12 ( x11 )
	sw x0 ,  8 ( x11 )
	lw x14 ,  0 ( x11 )
	sw x15 ,  4 ( x14 )
	lw x15 ,  4 ( x11 )
	sw x14 ,  0 ( x15 )
	lw x15 ,  448 ( x10 )
	sw x15 ,  0 ( x11 )
	lw x15 ,  4 ( x15 )
	sw x15 ,  4 ( x11 )
	lw x15 ,  448 ( x10 )
	sw x11 ,  4 ( x15 )
	lw x15 ,  4 ( x11 )
	sw x11 ,  0 ( x15 )
	ret
.Lfunc_end3:
	.size	__reclaim_buf, .Lfunc_end3-__reclaim_buf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
