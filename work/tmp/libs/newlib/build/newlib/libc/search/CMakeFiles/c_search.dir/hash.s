	.text
	.file	"hash.c"
	.globl	__hash_open             //  -- Begin function __hash_open
	.type	__hash_open,@function
__hash_open:                            //  @__hash_open
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -216
	.cfi_adjust_cfa_offset 216
	sw x20 ,  196 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x11
	sw x18 ,  204 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  200 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  192 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  164 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x19 ,  x0 ,  x14
	add x21 ,  x0 ,  x12
	add x18 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  212 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  208 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  188 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  184 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  180 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  176 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  172 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  168 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	andi x15 ,  x20 ,  3
	xori x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_62
.LBB0_2:                                //  %if.end
	slti x22 ,  x0 ,  1
	addi x11 ,  x0 ,  476
	add x10 ,  x0 ,  x22
	call calloc
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB0_62
.LBB0_3:                                //  %if.end3
	addi x23 ,  x0 ,  -1
	sw x20 ,  272 ( x9 )
	sw x23 ,  276 ( x9 )
	beq x0, x18, .LBB0_7
.LBB0_4:                                //  %if.end3
	andi x15 ,  x20 ,  1024
	bltu x0, x15, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false8
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	addi x12 ,  x2 ,  20
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _stat_r
	add x24 ,  x0 ,  x0
	beq x0, x10, .LBB0_10
.LBB0_6:                                //  %land.lhs.true
	call __errno
	lw x15 ,  0 ( x10 )
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_10
.LBB0_7:                                //  %if.then13
	call __errno
	lw x15 ,  0 ( x10 )
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_9
.LBB0_8:                                //  %if.then16
	call __errno
	sw x0 ,  0 ( x10 )
.LBB0_9:                                //  %if.end19
	add x24 ,  x0 ,  x22
.LBB0_10:                               //  %if.end19
	beq x0, x18, .LBB0_14
.LBB0_11:                               //  %if.then21
	sw x20 ,  4 ( x2 )
	sw x21 ,  8 ( x2 )
	sw x18 ,  0 ( x2 )
	call open
	add x11 ,  x0 ,  x10
	xori x15 ,  x11 ,  -1
	sw x11 ,  276 ( x9 )
	beq x0, x15, .LBB0_41
.LBB0_12:                               //  %if.end27
	andi x15 ,  x20 ,  512
	beq x0, x15, .LBB0_14
.LBB0_13:                               //  %land.lhs.true30
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	addi x12 ,  x2 ,  20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _fstat_r
	beq x0, x10, .LBB0_45
.LBB0_14:                               //  %if.end38
	beq x0, x24, .LBB0_47
.LBB0_15:                               //  %if.then40
	addi x15 ,  x0 ,  8
	lui x30 ,  __default_hash&4095
	addi x21 ,  x9 ,  68
	add x20 ,  x0 ,  x0
	lui x22 ,  (65536>>12)&1048575
	addi x12 ,  x0 ,  128
	sw x0 ,  56 ( x9 )
	sw x15 ,  28 ( x9 )
	addi x15 ,  x0 ,  12
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	sw x22 ,  52 ( x9 )
	sw x15 ,  16 ( x9 )
	lui x15 ,  (4096>>12)&1048575
	sw x15 ,  12 ( x9 )
	addi x15 ,  x0 ,  1234
	sw x15 ,  8 ( x9 )
	addi x15 ,  x0 ,  256
	sw x15 ,  24 ( x9 )
	sw x15 ,  20 ( x9 )
	lui x15 ,  (__default_hash>>12)&1048575
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	sw x15 ,  268 ( x9 )
	call memset
	addi x10 ,  x9 ,  196
	addi x12 ,  x0 ,  64
	add x11 ,  x0 ,  x20
	call memset
	beq x0, x18, .LBB0_20
.LBB0_16:                               //  %if.then.i
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	addi x12 ,  x2 ,  92
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _stat_r
	bltu x0, x10, .LBB0_43
.LBB0_17:                               //  %if.end.i
	lw x10 ,  148 ( x2 )
	blt x10, x22, .LBB0_19
.LBB0_18:                               //  %if.end.i
	add x10 ,  x0 ,  x22
.LBB0_19:                               //  %if.end.i
	sw x10 ,  12 ( x9 )
	call __log2
	sw x10 ,  16 ( x9 )
.LBB0_20:                               //  %if.end23.i
	slti x24 ,  x0 ,  1
	add x15 ,  x0 ,  x24
	beq x0, x19, .LBB0_33
.LBB0_21:                               //  %if.then25.i
	lw x10 ,  0 ( x19 )
	beq x0, x10, .LBB0_23
.LBB0_22:                               //  %if.then28.i
	call __log2
	lui x30 ,  65537&4095
	slti x15 ,  x0 ,  1
	lui x14 ,  (65537>>12)&1048575
	sw x10 ,  16 ( x9 )
	srli x30 ,  x30 ,  12&31
	sll x15 ,  x15 ,  x10
	or x14 ,  x14 ,  x30
	sw x15 ,  12 ( x9 )
	bge x15, x14, .LBB0_42
.LBB0_23:                               //  %if.end43.i
	lw x15 ,  4 ( x19 )
	beq x0, x15, .LBB0_25
.LBB0_24:                               //  %if.then46.i
	sw x15 ,  52 ( x9 )
.LBB0_25:                               //  %if.end50.i
	lw x15 ,  16 ( x19 )
	beq x0, x15, .LBB0_27
.LBB0_26:                               //  %if.then53.i
	sw x15 ,  268 ( x9 )
.LBB0_27:                               //  %if.end56.i
	lw x15 ,  8 ( x19 )
	add x14 ,  x0 ,  x0
	bne x15, x14, .LBB0_29
.LBB0_28:
	slti x15 ,  x0 ,  1
.LBB0_29:                               //  %if.end56.i
	lw x14 ,  20 ( x19 )
	beq x0, x14, .LBB0_33
.LBB0_30:                               //  %if.end56.i
	xori x13 ,  x14 ,  1234
	beq x0, x13, .LBB0_32
.LBB0_31:                               //  %if.end56.i
	lui x30 ,  4321&4095
	lui x13 ,  (4321>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	bne x14, x13, .LBB0_42
.LBB0_32:                               //  %if.end71.i
	sw x14 ,  8 ( x9 )
.LBB0_33:                               //  %if.end76.i
	lw x11 ,  52 ( x9 )
	addi x10 ,  x15 ,  -1
	call __divsi3
	blt x24, x10, .LBB0_35
.LBB0_34:                               //  %if.end76.i
	add x10 ,  x0 ,  x24
.LBB0_35:                               //  %if.end76.i
	addi x10 ,  x10 ,  1
	call __log2
	add x22 ,  x0 ,  x10
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	slli x15 ,  x22 ,  2&31
	addi x12 ,  x22 ,  1
	add x15 ,  x15 ,  x21
	sw x12 ,  0 ( x15 )
	slli x15 ,  x12 ,  2&31
	add x15 ,  x15 ,  x21
	sw x12 ,  0 ( x15 )
	addi x15 ,  x0 ,  2
	sw x22 ,  32 ( x9 )
	sw x15 ,  36 ( x9 )
	slli x15 ,  x22 ,  11&31
	ori x11 ,  x15 ,  1
	call __ibitmap
	bltu x0, x10, .LBB0_43
.LBB0_36:                               //  %if.end.i.i
	lw x14 ,  16 ( x9 )
	sll x15 ,  x24 ,  x22
	addi x13 ,  x0 ,  511
	lw x11 ,  24 ( x9 )
	addi x10 ,  x15 ,  -1
	sw x10 ,  40 ( x9 )
	sw x10 ,  48 ( x9 )
	srl x14 ,  x13 ,  x14
	slli x13 ,  x15 ,  1&31
	addi x13 ,  x13 ,  -1
	addi x14 ,  x14 ,  1
	sw x13 ,  44 ( x9 )
	sw x14 ,  60 ( x9 )
	call __divsi3
	addi x10 ,  x10 ,  1
	call __log2
	lw x15 ,  20 ( x9 )
	slti x24 ,  x0 ,  1
	sll x11 ,  x24 ,  x10
	bge x15, x11, .LBB0_38
.LBB0_37:                               //  %if.then31.i.i
	sw x11 ,  20 ( x9 )
.LBB0_38:                               //  %init_htab.exit.i
	add x10 ,  x0 ,  x9
	call alloc_segs
	bltu x0, x10, .LBB0_43
.LBB0_39:                               //  %if.end106
	beq x0, x19, .LBB0_64
.LBB0_40:                               //  %land.lhs.true108
	lw x11 ,  12 ( x19 )
	bltu x0, x11, .LBB0_65
	jal x0, .LBB0_64
.LBB0_41:                               //  %if.then25
	call __errno
	lw x21 ,  0 ( x10 )
	jal x0, .LBB0_56
.LBB0_42:                               //  %if.then40.i
	call __errno
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
.LBB0_43:                               //  %error1
	call __errno
	lw x21 ,  0 ( x10 )
	jal x0, .LBB0_44
.LBB0_45:                               //  %land.lhs.true34
	bltu x0, x24, .LBB0_15
.LBB0_46:                               //  %land.lhs.true34
	lw x15 ,  36 ( x2 )
	beq x0, x15, .LBB0_15
.LBB0_47:                               //  %if.else
	beq x0, x19, .LBB0_49
.LBB0_48:                               //  %land.lhs.true47
	lw x15 ,  16 ( x19 )
	bltu x0, x15, .LBB0_50
.LBB0_49:                               //  %if.else52
	lui x30 ,  __default_hash&4095
	lui x15 ,  (__default_hash>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
.LBB0_50:                               //  %if.end54
	sw x15 ,  268 ( x9 )
	addi x12 ,  x0 ,  260
	add x11 ,  x0 ,  x9
	lw x10 ,  276 ( x9 )
	call read
	lw x11 ,  4 ( x9 )
	lui x30 ,  65280&4095
	lui x15 ,  (65280>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	srli x14 ,  x11 ,  8&31
	srli x12 ,  x11 ,  24&31
	slli x5 ,  x11 ,  8&31
	slli x11 ,  x11 ,  24&31
	and x14 ,  x13 ,  x14
	or x12 ,  x12 ,  x14
	lui x14 ,  (16711680>>12)&1048575
	and x5 ,  x14 ,  x5
	or x11 ,  x5 ,  x11
	lw x5 ,  8 ( x9 )
	or x12 ,  x12 ,  x11
	lw x11 ,  0 ( x9 )
	sw x12 ,  4 ( x9 )
	lw x12 ,  32 ( x9 )
	srli x6 ,  x5 ,  8&31
	srli x7 ,  x5 ,  24&31
	and x6 ,  x13 ,  x6
	or x6 ,  x7 ,  x6
	slli x7 ,  x5 ,  8&31
	slli x5 ,  x5 ,  24&31
	and x7 ,  x14 ,  x7
	or x5 ,  x7 ,  x5
	lw x7 ,  12 ( x9 )
	or x5 ,  x6 ,  x5
	srli x6 ,  x11 ,  8&31
	and x6 ,  x13 ,  x6
	sw x5 ,  8 ( x9 )
	srli x5 ,  x12 ,  24&31
	srli x16 ,  x7 ,  8&31
	srli x17 ,  x7 ,  24&31
	and x16 ,  x13 ,  x16
	or x16 ,  x17 ,  x16
	slli x17 ,  x7 ,  8&31
	slli x7 ,  x7 ,  24&31
	and x17 ,  x14 ,  x17
	or x7 ,  x17 ,  x7
	lw x17 ,  16 ( x9 )
	or x7 ,  x16 ,  x7
	srli x16 ,  x11 ,  24&31
	or x6 ,  x16 ,  x6
	slli x16 ,  x11 ,  8&31
	slli x11 ,  x11 ,  24&31
	sw x7 ,  12 ( x9 )
	and x16 ,  x14 ,  x16
	or x11 ,  x16 ,  x11
	srli x29 ,  x17 ,  8&31
	srli x1 ,  x17 ,  24&31
	or x11 ,  x6 ,  x11
	and x29 ,  x13 ,  x29
	sw x11 ,  0 ( x9 )
	srli x11 ,  x12 ,  8&31
	or x29 ,  x1 ,  x29
	slli x1 ,  x17 ,  8&31
	slli x17 ,  x17 ,  24&31
	and x11 ,  x13 ,  x11
	and x1 ,  x14 ,  x1
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	or x17 ,  x1 ,  x17
	lw x1 ,  20 ( x9 )
	and x5 ,  x14 ,  x5
	or x17 ,  x29 ,  x17
	or x12 ,  x5 ,  x12
	sw x17 ,  16 ( x9 )
	or x12 ,  x11 ,  x12
	sw x12 ,  32 ( x9 )
	lw x12 ,  36 ( x9 )
	srli x20 ,  x1 ,  8&31
	srli x21 ,  x1 ,  24&31
	and x20 ,  x13 ,  x20
	or x20 ,  x21 ,  x20
	slli x21 ,  x1 ,  8&31
	slli x1 ,  x1 ,  24&31
	and x21 ,  x14 ,  x21
	srli x11 ,  x12 ,  8&31
	srli x5 ,  x12 ,  24&31
	or x1 ,  x21 ,  x1
	lw x21 ,  24 ( x9 )
	and x11 ,  x13 ,  x11
	or x1 ,  x20 ,  x1
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	sw x1 ,  20 ( x9 )
	and x5 ,  x14 ,  x5
	or x12 ,  x5 ,  x12
	srli x22 ,  x21 ,  8&31
	srli x25 ,  x21 ,  24&31
	or x12 ,  x11 ,  x12
	and x22 ,  x13 ,  x22
	sw x12 ,  36 ( x9 )
	lw x12 ,  40 ( x9 )
	or x22 ,  x25 ,  x22
	slli x25 ,  x21 ,  8&31
	slli x21 ,  x21 ,  24&31
	and x25 ,  x14 ,  x25
	or x21 ,  x25 ,  x21
	lw x25 ,  28 ( x9 )
	or x21 ,  x22 ,  x21
	srli x11 ,  x12 ,  8&31
	srli x5 ,  x12 ,  24&31
	sw x21 ,  24 ( x9 )
	and x11 ,  x13 ,  x11
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	srli x26 ,  x25 ,  8&31
	srli x27 ,  x25 ,  24&31
	and x5 ,  x14 ,  x5
	and x26 ,  x13 ,  x26
	or x12 ,  x5 ,  x12
	or x26 ,  x27 ,  x26
	slli x27 ,  x25 ,  8&31
	slli x25 ,  x25 ,  24&31
	or x12 ,  x11 ,  x12
	and x27 ,  x14 ,  x27
	sw x12 ,  40 ( x9 )
	lw x12 ,  44 ( x9 )
	or x25 ,  x27 ,  x25
	or x25 ,  x26 ,  x25
	sw x25 ,  28 ( x9 )
	srli x11 ,  x12 ,  8&31
	srli x5 ,  x12 ,  24&31
	and x11 ,  x13 ,  x11
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	and x5 ,  x14 ,  x5
	or x12 ,  x5 ,  x12
	or x12 ,  x11 ,  x12
	sw x12 ,  44 ( x9 )
	lw x12 ,  48 ( x9 )
	srli x11 ,  x12 ,  8&31
	srli x5 ,  x12 ,  24&31
	and x11 ,  x13 ,  x11
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	and x5 ,  x14 ,  x5
	or x12 ,  x5 ,  x12
	or x12 ,  x11 ,  x12
	sw x12 ,  48 ( x9 )
	lw x12 ,  52 ( x9 )
	srli x11 ,  x12 ,  8&31
	srli x5 ,  x12 ,  24&31
	and x11 ,  x13 ,  x11
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	and x5 ,  x14 ,  x5
	or x12 ,  x5 ,  x12
	or x12 ,  x11 ,  x12
	sw x12 ,  52 ( x9 )
	lw x12 ,  56 ( x9 )
	srli x11 ,  x12 ,  8&31
	srli x5 ,  x12 ,  24&31
	and x11 ,  x13 ,  x11
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	and x5 ,  x14 ,  x5
	or x12 ,  x5 ,  x12
	or x12 ,  x11 ,  x12
	sw x12 ,  56 ( x9 )
	lw x12 ,  60 ( x9 )
	srli x11 ,  x12 ,  8&31
	srli x5 ,  x12 ,  24&31
	and x11 ,  x13 ,  x11
	or x11 ,  x5 ,  x11
	slli x5 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	and x5 ,  x14 ,  x5
	or x12 ,  x5 ,  x12
	or x12 ,  x11 ,  x12
	sw x12 ,  60 ( x9 )
	lw x12 ,  64 ( x9 )
	srli x11 ,  x12 ,  8&31
	and x13 ,  x13 ,  x11
	srli x11 ,  x12 ,  24&31
	or x13 ,  x11 ,  x13
	slli x11 ,  x12 ,  8&31
	slli x12 ,  x12 ,  24&31
	and x11 ,  x14 ,  x11
	or x12 ,  x11 ,  x12
	or x13 ,  x13 ,  x12
	addi x12 ,  x9 ,  197
	sw x13 ,  64 ( x9 )
	add x13 ,  x0 ,  x0
.LBB0_51:                               //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x13 ,  x9
	lui x30 ,  65280&4095
	addi x13 ,  x13 ,  4
	lw x5 ,  68 ( x11 )
	srli x30 ,  x30 ,  12&31
	or x7 ,  x15 ,  x30
	srli x6 ,  x5 ,  8&31
	and x6 ,  x7 ,  x6
	srli x7 ,  x5 ,  24&31
	or x6 ,  x7 ,  x6
	slli x7 ,  x5 ,  8&31
	slli x5 ,  x5 ,  24&31
	and x7 ,  x14 ,  x7
	or x5 ,  x7 ,  x5
	or x5 ,  x6 ,  x5
	sw x5 ,  68 ( x11 )
	lh x11 ,  -1 ( x12 )
	slli x5 ,  x11 ,  8&31
	slli x11 ,  x11 ,  24&31
	and x5 ,  x14 ,  x5
	or x11 ,  x5 ,  x11
	srli x11 ,  x11 ,  16&31
	sh x11 ,  -1 ( x12 )
	addi x12 ,  x12 ,  2
	xori x11 ,  x13 ,  128
	bltu x0, x11, .LBB0_51
.LBB0_52:                               //  %swap_header.exit
	addi x21 ,  x0 ,  79
	xori x15 ,  x10 ,  260
	beq x0, x15, .LBB0_57
.LBB0_53:                               //  %swap_header.exit
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_55
.LBB0_54:                               //  %if.then58
	call __errno
	lw x21 ,  0 ( x10 )
	jal x0, .LBB0_55
.LBB0_57:                               //  %if.end63
	lw x15 ,  0 ( x9 )
	lui x30 ,  398689&4095
	lui x14 ,  (398689>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bne x15, x14, .LBB0_55
.LBB0_58:                               //  %if.end67
	lw x15 ,  4 ( x9 )
	slti x14 ,  x0 ,  1
	addi x15 ,  x15 ,  -1
	bltu x14, x15, .LBB0_55
.LBB0_59:                               //  %if.end75
	lw x15 ,  268 ( x9 )
	lui x30 ,  .str&4095
	lui x14 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  12
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	call_reg, 0 ( x15 )
	lw x15 ,  64 ( x9 )
	bne x10, x15, .LBB0_55
.LBB0_60:                               //  %if.end81
	lw x15 ,  40 ( x9 )
	sw x0 ,  260 ( x9 )
	lw x11 ,  24 ( x9 )
	add x10 ,  x15 ,  x11
	call __divsi3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call alloc_segs
	bltu x0, x10, .LBB0_61
.LBB0_63:                               //  %if.end95
	lw x15 ,  32 ( x9 )
	addi x10 ,  x9 ,  312
	add x11 ,  x0 ,  x0
	lw x14 ,  12 ( x9 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x9
	slli x14 ,  x14 ,  3&31
	lw x15 ,  68 ( x15 )
	add x15 ,  x14 ,  x15
	lw x14 ,  16 ( x9 )
	addi x15 ,  x15 ,  -1
	addi x14 ,  x14 ,  3
	sra x15 ,  x15 ,  x14
	slli x12 ,  x15 ,  2&31
	sw x15 ,  440 ( x9 )
	call memset
	bltu x0, x19, .LBB0_40
.LBB0_64:                               //  %if.else112
	lui x11 ,  (65536>>12)&1048575
.LBB0_65:                               //  %if.end113
	add x10 ,  x0 ,  x9
	call __buf_init
	sw x24 ,  304 ( x9 )
	beq x0, x18, .LBB0_67
.LBB0_66:                               //  %land.rhs
	lw x15 ,  272 ( x9 )
	srli x15 ,  x15 ,  1&31
	andi x15 ,  x15 ,  1
	jal x0, .LBB0_68
.LBB0_55:                               //  %if.then126
	lw x10 ,  276 ( x9 )
	call close
.LBB0_56:                               //  %error0
	add x20 ,  x0 ,  x9
.LBB0_44:                               //  %error0
	add x10 ,  x0 ,  x20
	call free
	call __errno
	sw x21 ,  0 ( x10 )
.LBB0_62:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  164 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  168 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  172 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  176 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  180 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  184 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  188 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  192 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  196 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  200 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  204 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  208 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  212 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  216
	.cfi_def_cfa 2, 0
	ret
.LBB0_67:
	add x15 ,  x0 ,  x0
.LBB0_68:                               //  %land.end
	addi x10 ,  x0 ,  36
	sw x23 ,  292 ( x9 )
	sw x15 ,  308 ( x9 )
	call malloc
	add x8 ,  x0 ,  x10
	beq x0, x8, .LBB0_70
.LBB0_69:                               //  %if.end124
	lui x30 ,  hash_fd&4095
	lui x15 ,  (hash_fd>>12)&1048575
	sw x9 ,  28 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  hash_delete&4095
	sw x15 ,  32 ( x8 )
	lui x15 ,  (hash_delete>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  hash_close&4095
	sw x15 ,  8 ( x8 )
	lui x15 ,  (hash_close>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  hash_sync&4095
	sw x15 ,  4 ( x8 )
	lui x15 ,  (hash_sync>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  hash_seq&4095
	sw x15 ,  24 ( x8 )
	lui x15 ,  (hash_seq>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  hash_put&4095
	sw x15 ,  20 ( x8 )
	lui x15 ,  (hash_put>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  hash_get&4095
	sw x15 ,  16 ( x8 )
	lui x15 ,  (hash_get>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  12 ( x8 )
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_62
.LBB0_70:                               //  %if.then120
	call __errno
	lw x8 ,  0 ( x10 )
	add x10 ,  x0 ,  x9
	call hdestroy
	call __errno
	sw x8 ,  0 ( x10 )
.LBB0_61:
	add x8 ,  x0 ,  x0
	jal x0, .LBB0_62
.Lfunc_end0:
	.size	__hash_open, .Lfunc_end0-__hash_open
	.cfi_endproc
                                        //  -- End function
	.type	alloc_segs,@function    //  -- Begin function alloc_segs
alloc_segs:                             //  @alloc_segs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	addi x11 ,  x0 ,  4
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x10 ,  20 ( x8 )
	call calloc
	sw x10 ,  472 ( x8 )
	beq x0, x10, .LBB1_1
.LBB1_2:                                //  %if.end
	lw x15 ,  28 ( x8 )
	addi x11 ,  x0 ,  4
	sll x10 ,  x9 ,  x15
	call calloc
	beq x0, x10, .LBB1_1
.LBB1_3:                                //  %for.cond.preheader
	bge x0, x9, .LBB1_7
.LBB1_4:                                //  %for.body.lr.ph
	lw x15 ,  260 ( x8 )
	add x14 ,  x0 ,  x0
	lw x13 ,  28 ( x8 )
	add x12 ,  x0 ,  x14
.LBB1_5:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x5 ,  472 ( x8 )
	sll x11 ,  x12 ,  x13
	addi x12 ,  x12 ,  1
	slli x11 ,  x11 ,  2&31
	add x11 ,  x11 ,  x10
	add x5 ,  x14 ,  x5
	addi x14 ,  x14 ,  4
	sw x11 ,  0 ( x5 )
	bne x9, x12, .LBB1_5
.LBB1_6:                                //  %for.cond.cleanup.loopexit_crit_edge
	add x15 ,  x9 ,  x15
	sw x15 ,  260 ( x8 )
.LBB1_7:                                //  %cleanup
	add x10 ,  x0 ,  x0
	jal x0, .LBB1_8
.LBB1_1:                                //  %if.then
	call __errno
	lw x9 ,  0 ( x10 )
	add x10 ,  x0 ,  x8
	call hdestroy
	call __errno
	sw x9 ,  0 ( x10 )
	addi x10 ,  x0 ,  -1
.LBB1_8:                                //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	alloc_segs, .Lfunc_end1-alloc_segs
	.cfi_endproc
                                        //  -- End function
	.type	hdestroy,@function      //  -- Begin function hdestroy
hdestroy:                               //  @hdestroy
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	slti x11 ,  x0 ,  1
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x12 ,  308 ( x8 )
	call __buf_free
	beq x0, x10, .LBB2_1
.LBB2_2:                                //  %if.then
	call __errno
	lw x9 ,  0 ( x10 )
	lw x15 ,  472 ( x8 )
	bltu x0, x15, .LBB2_5
	jal x0, .LBB2_7
.LBB2_1:
	add x9 ,  x0 ,  x0
	lw x15 ,  472 ( x8 )
	beq x0, x15, .LBB2_7
.LBB2_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x15 )
	call free
	lw x15 ,  264 ( x8 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  264 ( x8 )
	lw x10 ,  472 ( x8 )
	beq x0, x15, .LBB2_6
.LBB2_4:                                //  %while.body
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x15 ,  260 ( x8 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  260 ( x8 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x10
	jal x0, .LBB2_5
.LBB2_6:                                //  %while.end
	call free
.LBB2_7:                                //  %if.end9
	add x10 ,  x0 ,  x8
	call flush_meta
	bltu x0, x9, .LBB2_10
.LBB2_8:                                //  %if.end9
	beq x0, x10, .LBB2_10
.LBB2_9:                                //  %if.then13
	call __errno
	lw x9 ,  0 ( x10 )
.LBB2_10:                               //  %if.end15
	lw x15 ,  440 ( x8 )
	bge x0, x15, .LBB2_15
.LBB2_11:                               //  %for.body.preheader
	add x18 ,  x0 ,  x0
	addi x19 ,  x8 ,  312
	lw x10 ,  0 ( x19 )
	bltu x0, x10, .LBB2_13
.LBB2_14:                               //  %for.inc
	addi x19 ,  x19 ,  4
	addi x18 ,  x18 ,  1
	bge x18, x15, .LBB2_15
.LBB2_12:                               //  %for.body
	lw x10 ,  0 ( x19 )
	beq x0, x10, .LBB2_14
.LBB2_13:                               //  %if.then18
	call free
	lw x15 ,  440 ( x8 )
	addi x19 ,  x19 ,  4
	addi x18 ,  x18 ,  1
	blt x18, x15, .LBB2_12
.LBB2_15:                               //  %for.end
	lw x10 ,  276 ( x8 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_17
.LBB2_16:                               //  %if.then23
	call close
.LBB2_17:                               //  %if.end26
	add x10 ,  x0 ,  x8
	call free
	beq x0, x9, .LBB2_18
.LBB2_19:                               //  %if.then28
	call __errno
	sw x9 ,  0 ( x10 )
	addi x10 ,  x0 ,  -1
	jal x0, .LBB2_20
.LBB2_18:
	add x10 ,  x0 ,  x0
.LBB2_20:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	hdestroy, .Lfunc_end2-hdestroy
	.cfi_endproc
                                        //  -- End function
	.type	hash_close,@function    //  -- Begin function hash_close
hash_close:                             //  @hash_close
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	beq x0, x9, .LBB3_1
.LBB3_2:                                //  %if.end
	lw x10 ,  28 ( x9 )
	call hdestroy
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call free
	jal x0, .LBB3_3
.LBB3_1:
	addi x8 ,  x0 ,  -1
.LBB3_3:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	hash_close, .Lfunc_end3-hash_close
	.cfi_endproc
                                        //  -- End function
	.type	hash_delete,@function   //  -- Begin function hash_delete
hash_delete:                            //  @hash_delete
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw x8 ,  28 ( x10 )
	add x15 ,  x0 ,  x11
	sltiu x14 ,  x12 ,  2
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x14, .LBB4_3
.LBB4_1:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	jal x0, .LBB4_2
.LBB4_3:                                //  %if.end
	lbu x14 ,  272 ( x8 )
	andi x14 ,  x14 ,  3
	beq x0, x14, .LBB4_4
.LBB4_5:                                //  %if.end5
	addi x11 ,  x0 ,  3
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x15
	call hash_access
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB4_4:                                //  %if.then2
	call __errno
	slti x15 ,  x0 ,  1
.LBB4_2:                                //  %cleanup
	sw x15 ,  0 ( x10 )
	sw x15 ,  300 ( x8 )
	addi x10 ,  x0 ,  -1
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	hash_delete, .Lfunc_end4-hash_delete
	.cfi_endproc
                                        //  -- End function
	.type	hash_fd,@function       //  -- Begin function hash_fd
hash_fd:                                //  @hash_fd
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	addi x8 ,  x0 ,  -1
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB5_3
.LBB5_1:                                //  %if.end
	lw x15 ,  28 ( x10 )
	lw x10 ,  276 ( x15 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB5_2
.LBB5_4:                                //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB5_2:                                //  %if.then1
	call __errno
	addi x15 ,  x0 ,  2
	sw x15 ,  0 ( x10 )
.LBB5_3:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end5:
	.size	hash_fd, .Lfunc_end5-hash_fd
	.cfi_endproc
                                        //  -- End function
	.type	hash_get,@function      //  -- Begin function hash_get
hash_get:                               //  @hash_get
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw x8 ,  28 ( x10 )
	add x15 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x13, .LBB6_2
.LBB6_1:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
	sw x15 ,  300 ( x8 )
	addi x10 ,  x0 ,  -1
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB6_2:                                //  %if.end
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x15
	call hash_access
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end6:
	.size	hash_get, .Lfunc_end6-hash_get
	.cfi_endproc
                                        //  -- End function
	.type	hash_put,@function      //  -- Begin function hash_put
hash_put:                               //  @hash_put
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw x8 ,  28 ( x10 )
	add x15 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	andi x14 ,  x13 ,  -9
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x14, .LBB7_2
.LBB7_1:                                //  %if.then
	addi x9 ,  x0 ,  22
	sw x9 ,  300 ( x8 )
	call __errno
	sw x9 ,  0 ( x10 )
	addi x10 ,  x0 ,  -1
	jal x0, .LBB7_8
.LBB7_2:                                //  %if.end
	lbu x14 ,  272 ( x8 )
	andi x14 ,  x14 ,  3
	beq x0, x14, .LBB7_3
.LBB7_4:                                //  %if.end5
	addi x14 ,  x0 ,  8
	beq x13, x14, .LBB7_5
.LBB7_6:                                //  %if.end5
	slti x11 ,  x0 ,  1
	jal x0, .LBB7_7
.LBB7_3:                                //  %if.then2
	call __errno
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x10 )
	sw x15 ,  300 ( x8 )
	addi x10 ,  x0 ,  -1
	jal x0, .LBB7_8
.LBB7_5:
	addi x11 ,  x0 ,  2
.LBB7_7:                                //  %if.end5
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x15
	call hash_access
.LBB7_8:                                //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end7:
	.size	hash_put, .Lfunc_end7-hash_put
	.cfi_endproc
                                        //  -- End function
	.type	hash_seq,@function      //  -- Begin function hash_seq
hash_seq:                               //  @hash_seq
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	lw x8 ,  28 ( x10 )
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	addi x15 ,  x0 ,  7
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	bltu x15, x13, .LBB8_2
.LBB8_1:                                //  %entry
	slti x22 ,  x0 ,  1
	sll x15 ,  x22 ,  x13
	andi x15 ,  x15 ,  137
	beq x0, x15, .LBB8_2
.LBB8_3:                                //  %if.end
	xori x15 ,  x13 ,  3
	beq x0, x15, .LBB8_5
.LBB8_4:                                //  %if.end
	lw x15 ,  292 ( x8 )
	bge x15, x0, .LBB8_6
.LBB8_5:                                //  %if.then5
	slti x15 ,  x0 ,  1
	sw x0 ,  292 ( x8 )
	sw x0 ,  288 ( x8 )
	sw x15 ,  296 ( x8 )
.LBB8_6:                                //  %if.end7
	add x20 ,  x0 ,  x0
	addi x19 ,  x0 ,  -1
                                        //  implicit-def: $rf_xpr_12
	add x15 ,  x0 ,  x20
.LBB8_7:                                //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB8_9 Depth 2
                                        //        Child Loop BB8_12 Depth 3
                                        //        Child Loop BB8_20 Depth 3
	beq x0, x15, .LBB8_9
.LBB8_8:                                //  %lor.rhs
                                        //    in Loop: Header=BB8_7 Depth=1
	lhu x14 ,  0 ( x15 )
	bltu x0, x14, .LBB8_24
.LBB8_9:                                //  %for.body
                                        //    Parent Loop BB8_7 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB8_12 Depth 3
                                        //        Child Loop BB8_20 Depth 3
	lw x12 ,  288 ( x8 )
	beq x0, x12, .LBB8_10
.LBB8_18:                               //  %if.else
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x15 ,  16 ( x12 )
	jal x0, .LBB8_19
.LBB8_10:                               //  %if.then12
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x14 ,  40 ( x8 )
	lw x21 ,  292 ( x8 )
	bgeu x14, x21, .LBB8_12
.LBB8_11:                               //    in Loop: Header=BB8_9 Depth=2
	add x12 ,  x0 ,  x20
	sw x21 ,  292 ( x8 )
	bge x14, x21, .LBB8_19
	jal x0, .LBB8_17
.LBB8_12:                               //  %for.body16
                                        //    Parent Loop BB8_7 Depth=1
                                        //      Parent Loop BB8_9 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x20
	call __get_buf
	add x12 ,  x0 ,  x10
	beq x0, x12, .LBB8_33
.LBB8_13:                               //  %if.end20
                                        //    in Loop: Header=BB8_12 Depth=3
	lw x15 ,  16 ( x12 )
	sw x12 ,  288 ( x8 )
	lhu x14 ,  0 ( x15 )
	bltu x0, x14, .LBB8_14
.LBB8_15:                               //  %for.inc
                                        //    in Loop: Header=BB8_12 Depth=3
	lw x14 ,  40 ( x8 )
	addi x21 ,  x21 ,  1
	sw x22 ,  296 ( x8 )
	bgeu x14, x21, .LBB8_12
	jal x0, .LBB8_16
.LBB8_14:                               //  %if.end20.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x14 ,  40 ( x8 )
.LBB8_16:                               //  %for.end
                                        //    in Loop: Header=BB8_9 Depth=2
	sw x21 ,  292 ( x8 )
	blt x14, x21, .LBB8_17
.LBB8_19:                               //  %if.end37
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x14 ,  296 ( x8 )
	slli x13 ,  x14 ,  1&31
	add x13 ,  x15 ,  x13
	lhu x13 ,  2 ( x13 )
	beq x0, x13, .LBB8_20
.LBB8_22:                               //  %while.end
                                        //    in Loop: Header=BB8_9 Depth=2
	lhu x14 ,  0 ( x15 )
	bltu x0, x14, .LBB8_7
.LBB8_23:                               //  %if.then54
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x14 ,  292 ( x8 )
	sw x0 ,  288 ( x8 )
	addi x14 ,  x14 ,  1
	sw x14 ,  292 ( x8 )
	bltu x0, x15, .LBB8_8
	jal x0, .LBB8_9
.LBB8_20:                               //  %while.body
                                        //    Parent Loop BB8_7 Depth=1
                                        //      Parent Loop BB8_9 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	slli x14 ,  x14 ,  1&31
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x20
	add x15 ,  x14 ,  x15
	lhu x11 ,  0 ( x15 )
	call __get_buf
	add x12 ,  x0 ,  x10
	sw x12 ,  288 ( x8 )
	beq x0, x12, .LBB8_33
.LBB8_21:                               //  %if.end49
                                        //    in Loop: Header=BB8_20 Depth=3
	lw x15 ,  16 ( x12 )
	add x14 ,  x0 ,  x22
	sw x22 ,  296 ( x8 )
	lhu x13 ,  4 ( x15 )
	beq x0, x13, .LBB8_20
	jal x0, .LBB8_22
.LBB8_2:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	addi x19 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
	sw x15 ,  300 ( x8 )
.LBB8_33:                               //  %cleanup
	add x10 ,  x0 ,  x19
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB8_24:                               //  %for.end59
	lw x11 ,  296 ( x8 )
	lui x30 ,  65535&4095
	lui x13 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x13 ,  x30
	and x6 ,  x10 ,  x11
	slli x10 ,  x6 ,  1&31
	add x5 ,  x15 ,  x10
	addi x10 ,  x0 ,  3
	lhu x15 ,  2 ( x5 )
	bltu x10, x15, .LBB8_26
.LBB8_25:                               //  %if.then68
	add x11 ,  x0 ,  x12
	slti x14 ,  x0 ,  1
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __big_keydata
	bltu x0, x10, .LBB8_33
	jal x0, .LBB8_32
.LBB8_17:                               //  %if.then32
	addi x15 ,  x0 ,  -1
	slti x19 ,  x0 ,  1
	sw x15 ,  292 ( x8 )
	jal x0, .LBB8_33
.LBB8_26:                               //  %if.else73
	lw x10 ,  288 ( x8 )
	sltiu x6 ,  x6 ,  2
	lhu x12 ,  0 ( x5 )
	lw x10 ,  16 ( x10 )
	add x7 ,  x12 ,  x10
	sw x7 ,  0 ( x18 )
	bltu x0, x6, .LBB8_28
.LBB8_27:                               //  %cond.true
	lhu x5 ,  -2 ( x5 )
	jal x0, .LBB8_29
.LBB8_28:                               //  %cond.false
	lw x5 ,  12 ( x8 )
.LBB8_29:                               //  %cond.end
	lui x30 ,  65535&4095
	add x10 ,  x15 ,  x10
	sub x5 ,  x5 ,  x12
	sub x15 ,  x12 ,  x15
	srli x30 ,  x30 ,  12&31
	sw x5 ,  4 ( x18 )
	sw x15 ,  4 ( x9 )
	addi x15 ,  x11 ,  2
	sw x10 ,  0 ( x9 )
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	bgeu x14, x15, .LBB8_31
.LBB8_30:                               //  %if.then115
	lw x15 ,  292 ( x8 )
	sw x0 ,  288 ( x8 )
	addi x15 ,  x15 ,  1
	sw x15 ,  292 ( x8 )
	slti x15 ,  x0 ,  1
.LBB8_31:                               //  %if.end124.sink.split
	sw x15 ,  296 ( x8 )
.LBB8_32:                               //  %if.end124
	add x19 ,  x0 ,  x0
	jal x0, .LBB8_33
.Lfunc_end8:
	.size	hash_seq, .Lfunc_end8-hash_seq
	.cfi_endproc
                                        //  -- End function
	.type	hash_sync,@function     //  -- Begin function hash_sync
hash_sync:                              //  @hash_sync
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	beq x0, x11, .LBB9_2
.LBB9_1:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	addi x8 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
.LBB9_8:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB9_2:                                //  %if.end
	addi x8 ,  x0 ,  -1
	beq x0, x10, .LBB9_8
.LBB9_3:                                //  %if.end2
	lw x9 ,  28 ( x10 )
	lw x15 ,  308 ( x9 )
	beq x0, x15, .LBB9_4
.LBB9_5:                                //  %if.end5
	add x18 ,  x0 ,  x0
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __buf_free
	bltu x0, x10, .LBB9_8
.LBB9_6:                                //  %lor.lhs.false
	add x10 ,  x0 ,  x9
	call flush_meta
	bltu x0, x10, .LBB9_8
.LBB9_7:                                //  %if.end11
	add x8 ,  x0 ,  x18
	sw x0 ,  304 ( x9 )
	jal x0, .LBB9_8
.LBB9_4:
	add x8 ,  x0 ,  x0
	jal x0, .LBB9_8
.Lfunc_end9:
	.size	hash_sync, .Lfunc_end9-hash_sync
	.cfi_endproc
                                        //  -- End function
	.globl	__expand_table          //  -- Begin function __expand_table
	.type	__expand_table,@function
__expand_table:                         //  @__expand_table
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x15 ,  40 ( x9 )
	lw x14 ,  28 ( x9 )
	lw x22 ,  48 ( x9 )
	addi x8 ,  x15 ,  1
	srl x23 ,  x8 ,  x14
	lw x14 ,  260 ( x9 )
	add x15 ,  x0 ,  x8
	sw x8 ,  40 ( x9 )
	blt x23, x14, .LBB10_6
.LBB10_1:                               //  %if.then
	lw x21 ,  20 ( x9 )
	addi x18 ,  x0 ,  -1
	blt x23, x21, .LBB10_4
.LBB10_2:                               //  %if.then7
	slli x19 ,  x21 ,  3&31
	add x10 ,  x0 ,  x19
	call malloc
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB10_11
.LBB10_3:                               //  %if.end
	lw x11 ,  472 ( x9 )
	slli x21 ,  x21 ,  2&31
	add x10 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	call memmove
	add x10 ,  x21 ,  x20
	add x11 ,  x0 ,  x0
	add x12 ,  x0 ,  x21
	call memset
	lw x10 ,  472 ( x9 )
	call free
	sw x19 ,  20 ( x9 )
	sw x20 ,  472 ( x9 )
.LBB10_4:                               //  %if.end14
	lw x10 ,  24 ( x9 )
	addi x11 ,  x0 ,  4
	call calloc
	lw x15 ,  472 ( x9 )
	slli x14 ,  x23 ,  2&31
	add x15 ,  x14 ,  x15
	sw x10 ,  0 ( x15 )
	beq x0, x10, .LBB10_11
.LBB10_5:                               //  %if.end20
	lw x15 ,  264 ( x9 )
	addi x15 ,  x15 ,  1
	sw x15 ,  264 ( x9 )
	lw x15 ,  260 ( x9 )
	addi x15 ,  x15 ,  1
	sw x15 ,  260 ( x9 )
	lw x15 ,  40 ( x9 )
.LBB10_6:                               //  %if.end24
	addi x10 ,  x15 ,  1
	call __log2
	lw x15 ,  32 ( x9 )
	bge x15, x10, .LBB10_8
.LBB10_7:                               //  %if.then30
	addi x13 ,  x9 ,  68
	slli x15 ,  x15 ,  2&31
	slli x14 ,  x10 ,  2&31
	add x15 ,  x15 ,  x13
	add x14 ,  x14 ,  x13
	lw x15 ,  0 ( x15 )
	sw x15 ,  0 ( x14 )
	sw x10 ,  32 ( x9 )
.LBB10_8:                               //  %if.end40
	lw x15 ,  44 ( x9 )
	and x11 ,  x8 ,  x22
	bgeu x15, x8, .LBB10_10
.LBB10_9:                               //  %if.then43
	or x14 ,  x8 ,  x15
	sw x15 ,  48 ( x9 )
	sw x14 ,  44 ( x9 )
.LBB10_10:                              //  %if.end52
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call __split_page
	add x18 ,  x0 ,  x10
.LBB10_11:                              //  %cleanup
	add x10 ,  x0 ,  x18
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
.Lfunc_end10:
	.size	__expand_table, .Lfunc_end10-__expand_table
	.cfi_endproc
                                        //  -- End function
	.globl	__call_hash             //  -- Begin function __call_hash
	.type	__call_hash,@function
__call_hash:                            //  @__call_hash
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	add x11 ,  x0 ,  x12
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x15 ,  268 ( x8 )
	call_reg, 0 ( x15 )
	lw x15 ,  44 ( x8 )
	and x10 ,  x10 ,  x15
	lw x15 ,  40 ( x8 )
	bge x15, x10, .LBB11_2
.LBB11_1:                               //  %if.then
	lw x15 ,  48 ( x8 )
	and x10 ,  x10 ,  x15
.LBB11_2:                               //  %if.end
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end11:
	.size	__call_hash, .Lfunc_end11-__call_hash
	.cfi_endproc
                                        //  -- End function
	.type	flush_meta,@function    //  -- Begin function flush_meta
flush_meta:                             //  @flush_meta
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -296
	.cfi_adjust_cfa_offset 296
	sw x8 ,  268 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x10
	sw x1 ,  292 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  288 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  284 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  280 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  276 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  272 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x15 ,  308 ( x8 )
	beq x0, x15, .LBB12_11
.LBB12_1:                               //  %if.end
	lui x30 ,  398689&4095
	addi x15 ,  x0 ,  2
	lui x14 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  12
	sw x15 ,  4 ( x8 )
	lui x15 ,  (398689>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	sw x15 ,  0 ( x8 )
	lw x15 ,  268 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	call_reg, 0 ( x15 )
	lb x14 ,  2 ( x8 )
	addi x15 ,  x2 ,  8
	sw x10 ,  64 ( x8 )
	ori x13 ,  x15 ,  1
	lw x9 ,  276 ( x8 )
	sb x14 ,  0 ( x13 )
	lb x14 ,  1 ( x8 )
	ori x13 ,  x15 ,  2
	sb x14 ,  0 ( x13 )
	lb x14 ,  0 ( x8 )
	ori x13 ,  x15 ,  3
	sb x14 ,  0 ( x13 )
	lb x14 ,  7 ( x8 )
	addi x13 ,  x0 ,  71
	sb x14 ,  4 ( x15 )
	lb x14 ,  5 ( x8 )
	sb x14 ,  6 ( x15 )
	lb x14 ,  4 ( x8 )
	sb x14 ,  7 ( x15 )
	lb x14 ,  3 ( x8 )
	sb x14 ,  8 ( x2 )
	lb x14 ,  6 ( x8 )
	sb x14 ,  13 ( x2 )
	lb x14 ,  11 ( x8 )
	sb x14 ,  8 ( x15 )
	lb x14 ,  10 ( x8 )
	sb x14 ,  9 ( x15 )
	lb x14 ,  9 ( x8 )
	sb x14 ,  10 ( x15 )
	lb x14 ,  8 ( x8 )
	sb x14 ,  11 ( x15 )
	lb x14 ,  15 ( x8 )
	sb x14 ,  12 ( x15 )
	lb x14 ,  14 ( x8 )
	sb x14 ,  13 ( x15 )
	lb x14 ,  13 ( x8 )
	sb x14 ,  14 ( x15 )
	lb x14 ,  12 ( x8 )
	sb x14 ,  15 ( x15 )
	lb x14 ,  19 ( x8 )
	sb x14 ,  16 ( x15 )
	lb x14 ,  18 ( x8 )
	sb x14 ,  17 ( x15 )
	lb x14 ,  17 ( x8 )
	sb x14 ,  18 ( x15 )
	lb x14 ,  16 ( x8 )
	sb x14 ,  19 ( x15 )
	lb x14 ,  23 ( x8 )
	sb x14 ,  20 ( x15 )
	lb x14 ,  22 ( x8 )
	sb x14 ,  21 ( x15 )
	lb x14 ,  21 ( x8 )
	sb x14 ,  22 ( x15 )
	lb x14 ,  20 ( x8 )
	sb x14 ,  23 ( x15 )
	lb x14 ,  27 ( x8 )
	sb x14 ,  24 ( x15 )
	lb x14 ,  26 ( x8 )
	sb x14 ,  25 ( x15 )
	lb x14 ,  25 ( x8 )
	sb x14 ,  26 ( x15 )
	lb x14 ,  24 ( x8 )
	sb x14 ,  27 ( x15 )
	lb x14 ,  31 ( x8 )
	sb x14 ,  28 ( x15 )
	lb x14 ,  30 ( x8 )
	sb x14 ,  29 ( x15 )
	lb x14 ,  29 ( x8 )
	sb x14 ,  30 ( x15 )
	lb x14 ,  28 ( x8 )
	sb x14 ,  31 ( x15 )
	lb x14 ,  35 ( x8 )
	sb x14 ,  32 ( x15 )
	lb x14 ,  34 ( x8 )
	sb x14 ,  33 ( x15 )
	lb x14 ,  33 ( x8 )
	sb x14 ,  34 ( x15 )
	lb x14 ,  32 ( x8 )
	sb x14 ,  35 ( x15 )
	lb x14 ,  39 ( x8 )
	sb x14 ,  36 ( x15 )
	lb x14 ,  38 ( x8 )
	sb x14 ,  37 ( x15 )
	lb x14 ,  37 ( x8 )
	sb x14 ,  38 ( x15 )
	lb x14 ,  36 ( x8 )
	sb x14 ,  39 ( x15 )
	lb x14 ,  43 ( x8 )
	sb x14 ,  40 ( x15 )
	lb x14 ,  42 ( x8 )
	sb x14 ,  41 ( x15 )
	lb x14 ,  41 ( x8 )
	sb x14 ,  42 ( x15 )
	lb x14 ,  40 ( x8 )
	sb x14 ,  43 ( x15 )
	lb x14 ,  47 ( x8 )
	sb x14 ,  44 ( x15 )
	lb x14 ,  46 ( x8 )
	sb x14 ,  45 ( x15 )
	lb x14 ,  45 ( x8 )
	sb x14 ,  46 ( x15 )
	lb x14 ,  44 ( x8 )
	sb x14 ,  47 ( x15 )
	lb x14 ,  51 ( x8 )
	sb x14 ,  48 ( x15 )
	lb x14 ,  50 ( x8 )
	sb x14 ,  49 ( x15 )
	lb x14 ,  49 ( x8 )
	sb x14 ,  50 ( x15 )
	lb x14 ,  48 ( x8 )
	sb x14 ,  51 ( x15 )
	lb x14 ,  55 ( x8 )
	sb x14 ,  52 ( x15 )
	lb x14 ,  54 ( x8 )
	sb x14 ,  53 ( x15 )
	lb x14 ,  53 ( x8 )
	sb x14 ,  54 ( x15 )
	lb x14 ,  52 ( x8 )
	sb x14 ,  55 ( x15 )
	lb x14 ,  59 ( x8 )
	sb x14 ,  56 ( x15 )
	lb x14 ,  58 ( x8 )
	sb x14 ,  57 ( x15 )
	lb x14 ,  57 ( x8 )
	sb x14 ,  58 ( x15 )
	lb x14 ,  56 ( x8 )
	sb x14 ,  59 ( x15 )
	lb x14 ,  63 ( x8 )
	sb x14 ,  60 ( x15 )
	lb x14 ,  62 ( x8 )
	sb x14 ,  61 ( x15 )
	lb x14 ,  61 ( x8 )
	sb x14 ,  62 ( x15 )
	lb x14 ,  60 ( x8 )
	sb x14 ,  63 ( x15 )
	lb x14 ,  67 ( x8 )
	sb x14 ,  64 ( x15 )
	lb x14 ,  66 ( x8 )
	sb x14 ,  65 ( x15 )
	lb x14 ,  65 ( x8 )
	sb x14 ,  66 ( x15 )
	lb x14 ,  64 ( x8 )
	sb x14 ,  67 ( x15 )
	addi x14 ,  x0 ,  197
.LBB12_2:                               //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x13 ,  x8
	add x12 ,  x13 ,  x15
	addi x13 ,  x13 ,  4
	lb x10 ,  0 ( x11 )
	sb x10 ,  -3 ( x12 )
	lb x10 ,  -1 ( x11 )
	sb x10 ,  -2 ( x12 )
	lb x10 ,  -2 ( x11 )
	lb x11 ,  -3 ( x11 )
	sb x10 ,  -1 ( x12 )
	sb x11 ,  0 ( x12 )
	add x11 ,  x14 ,  x8
	add x12 ,  x14 ,  x15
	addi x14 ,  x14 ,  2
	lb x10 ,  -1 ( x11 )
	lb x11 ,  0 ( x11 )
	sb x10 ,  0 ( x12 )
	sb x11 ,  -1 ( x12 )
	xori x12 ,  x13 ,  199
	bltu x0, x12, .LBB12_2
.LBB12_3:                               //  %swap_header_copy.exit
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x18
	call lseek
	addi x19 ,  x0 ,  -1
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB12_12
.LBB12_4:                               //  %lor.lhs.false
	addi x11 ,  x2 ,  8
	addi x12 ,  x0 ,  260
	add x10 ,  x0 ,  x9
	call write
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB12_15
.LBB12_5:                               //  %lor.lhs.false
	xori x15 ,  x10 ,  260
	bltu x0, x15, .LBB12_13
.LBB12_6:                               //  %for.body.preheader
	addi x20 ,  x0 ,  196
	addi x21 ,  x0 ,  312
	slti x9 ,  x0 ,  1
	add x15 ,  x21 ,  x8
	lw x11 ,  0 ( x15 )
	bltu x0, x11, .LBB12_9
.LBB12_7:                               //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	addi x20 ,  x20 ,  2
	addi x21 ,  x21 ,  4
	xori x15 ,  x20 ,  260
	beq x0, x15, .LBB12_14
.LBB12_8:                               //  %for.body
                                        //    in Loop: Header=BB12_7 Depth=1
	add x15 ,  x21 ,  x8
	lw x11 ,  0 ( x15 )
	beq x0, x11, .LBB12_7
.LBB12_9:                               //  %if.then18
	add x15 ,  x20 ,  x8
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x18
	add x14 ,  x0 ,  x9
	lhu x12 ,  0 ( x15 )
	call __put_page
	beq x0, x10, .LBB12_7
.LBB12_12:
	add x10 ,  x0 ,  x19
	jal x0, .LBB12_15
.LBB12_11:
	add x10 ,  x0 ,  x0
	jal x0, .LBB12_15
.LBB12_13:                              //  %if.then11
	call __errno
	addi x15 ,  x0 ,  79
	sw x15 ,  0 ( x10 )
	call __errno
	lw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x19
	sw x15 ,  300 ( x8 )
	jal x0, .LBB12_15
.LBB12_14:
	add x10 ,  x0 ,  x18
.LBB12_15:                              //  %cleanup
	lw x8 ,  268 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  272 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  276 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  280 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  284 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  288 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  292 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  296
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end12:
	.size	flush_meta, .Lfunc_end12-flush_meta
	.cfi_endproc
                                        //  -- End function
	.type	hash_access,@function   //  -- Begin function hash_access
hash_access:                            //  @hash_access
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x10
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x11
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x18 ,  x0 ,  x13
	lw x24 ,  4 ( x20 )
	lw x25 ,  0 ( x20 )
	lw x15 ,  268 ( x19 )
	lw x27 ,  12 ( x19 )
	add x11 ,  x0 ,  x24
	add x10 ,  x0 ,  x25
	call_reg, 0 ( x15 )
	lw x15 ,  44 ( x19 )
	and x11 ,  x10 ,  x15
	lw x15 ,  40 ( x19 )
	bge x15, x11, .LBB13_2
.LBB13_1:                               //  %if.then.i
	lw x15 ,  48 ( x19 )
	and x11 ,  x11 ,  x15
.LBB13_2:                               //  %__call_hash.exit
	add x23 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x23
	call __get_buf
	add x8 ,  x0 ,  x10
	addi x9 ,  x0 ,  -1
	beq x0, x8, .LBB13_32
.LBB13_3:                               //  %if.end
	lb x15 ,  20 ( x8 )
	add x26 ,  x0 ,  x8
	sw x21 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	ori x15 ,  x15 ,  8
	sb x15 ,  20 ( x8 )
	lw x15 ,  16 ( x8 )
	lhu x22 ,  0 ( x15 )
	sltiu x14 ,  x22 ,  2
	bltu x0, x14, .LBB13_17
.LBB13_4:                               //  %for.body.preheader
	slti x21 ,  x0 ,  1
	addi x18 ,  x15 ,  2
	add x26 ,  x0 ,  x8
	lhu x15 ,  2 ( x18 )
	sltiu x14 ,  x15 ,  4
	beq x0, x14, .LBB13_8
	jal x0, .LBB13_10
.LBB13_5:                               //  %land.lhs.true.if.end19_crit_edge
	lhu x15 ,  2 ( x18 )
.LBB13_6:                               //  %if.end19
	addi x21 ,  x21 ,  2
	addi x18 ,  x18 ,  4
	add x27 ,  x0 ,  x15
	bge x21, x22, .LBB13_17
.LBB13_7:                               //  %for.body
	lhu x15 ,  2 ( x18 )
	sltiu x14 ,  x15 ,  4
	bltu x0, x14, .LBB13_10
.LBB13_8:                               //  %if.then9
	lhu x14 ,  0 ( x18 )
	sub x13 ,  x27 ,  x14
	bne x24, x13, .LBB13_6
.LBB13_9:                               //  %land.lhs.true
	lw x15 ,  16 ( x26 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x24
	add x11 ,  x14 ,  x15
	call memcmp
	bltu x0, x10, .LBB13_5
	jal x0, .LBB13_21
.LBB13_10:                              //  %if.else
	beq x0, x15, .LBB13_15
.LBB13_11:                              //  %if.then46
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x25
	add x14 ,  x0 ,  x24
	call __find_bigpair
	add x21 ,  x0 ,  x10
	blt x0, x21, .LBB13_21
.LBB13_12:                              //  %if.end51
	xori x15 ,  x21 ,  -2
	bltu x0, x15, .LBB13_30
.LBB13_13:                              //  %if.then54
	add x10 ,  x0 ,  x19
	addi x11 ,  x2 ,  16
	sw x26 ,  16 ( x2 )
	call __find_last_page
	add x11 ,  x0 ,  x10
	beq x0, x11, .LBB13_25
.LBB13_14:                              //  %if.end58
	lw x12 ,  16 ( x2 )
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x0
	call __get_buf
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB13_16
	jal x0, .LBB13_30
.LBB13_15:                              //  %if.then27
	lhu x11 ,  0 ( x18 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x0
	call __get_buf
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB13_30
.LBB13_16:                              //  %if.end35
	lw x15 ,  16 ( x26 )
	slti x21 ,  x0 ,  1
	lw x27 ,  12 ( x19 )
	lhu x22 ,  0 ( x15 )
	addi x18 ,  x15 ,  2
	blt x21, x22, .LBB13_7
.LBB13_17:                              //  %for.end
	lw x15 ,  12 ( x2 )             //  4-byte Folded Reload
	slti x9 ,  x0 ,  1
	addi x15 ,  x15 ,  -1
	bltu x9, x15, .LBB13_30
.LBB13_18:                              //  %sw.bb
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x20
	call __addel
	lbu x15 ,  20 ( x8 )
	andi x15 ,  x15 ,  247
	sb x15 ,  20 ( x8 )
	bne x10, x23, .LBB13_20
.LBB13_19:                              //  %sw.bb
	add x9 ,  x0 ,  x23
	jal x0, .LBB13_32
.LBB13_20:
	addi x9 ,  x0 ,  -1
	jal x0, .LBB13_32
.LBB13_21:                              //  %found
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  3
	bltu x15, x14, .LBB13_35
.LBB13_22:                              //  %found
	lui x30 ,  JTI13_0&4095
	lui x13 ,  (JTI13_0>>12)&1048575
	slli x14 ,  x14 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB13_23:                              //  %sw.bb104
	lw x14 ,  16 ( x26 )
	slli x13 ,  x21 ,  1&31
	add x12 ,  x14 ,  x13
	lhu x13 ,  2 ( x12 )
	bltu x15, x13, .LBB13_33
.LBB13_24:                              //  %if.then111
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x21
	call __big_return
	bltu x0, x10, .LBB13_32
	jal x0, .LBB13_34
.LBB13_25:                              //  %if.then57
	lw x26 ,  16 ( x2 )
	lw x15 ,  12 ( x2 )             //  4-byte Folded Reload
	slti x9 ,  x0 ,  1
	addi x15 ,  x15 ,  -1
	bgeu x9, x15, .LBB13_18
	jal x0, .LBB13_30
.LBB13_26:                              //  %sw.bb99
	lbu x15 ,  20 ( x8 )
	slti x9 ,  x0 ,  1
	jal x0, .LBB13_31
.LBB13_27:                              //  %sw.bb142
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x21
	call __delpair
	bltu x0, x10, .LBB13_32
	jal x0, .LBB13_34
.LBB13_28:                              //  %sw.bb131
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x21
	call __delpair
	bltu x0, x10, .LBB13_30
.LBB13_29:                              //  %lor.lhs.false
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x20
	call __addel
	beq x0, x10, .LBB13_34
.LBB13_30:                              //  %if.then31
	lbu x15 ,  20 ( x8 )
.LBB13_31:                              //  %cleanup
	andi x15 ,  x15 ,  247
	sb x15 ,  20 ( x8 )
.LBB13_32:                              //  %cleanup
	add x10 ,  x0 ,  x9
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
.LBB13_33:                              //  %if.else116
	add x15 ,  x13 ,  x14
	lw x14 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x14 )
	lhu x15 ,  0 ( x12 )
	sub x15 ,  x15 ,  x13
	sw x15 ,  4 ( x14 )
.LBB13_34:                              //  %sw.epilog
	lbu x15 ,  20 ( x8 )
	add x9 ,  x0 ,  x0
	jal x0, .LBB13_31
.LBB13_35:                              //  %sw.default147
	call abort
.Lfunc_end13:
	.size	hash_access, .Lfunc_end13-hash_access
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI13_0:
	.long	.LBB13_23
	.long	.LBB13_28
	.long	.LBB13_26
	.long	.LBB13_27
                                        //  -- End function
	.address_space	0
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%$sniglet^&"
	.size	.str, 12


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
