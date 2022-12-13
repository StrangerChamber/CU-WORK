	.text
	.file	"mprec.c"
	.globl	_Balloc                 //  -- Begin function _Balloc
	.type	_Balloc,@function
_Balloc:                                //  @_Balloc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x10 ,  76 ( x9 )
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x9
	call _calloc_r
	sw x10 ,  76 ( x9 )
	beq x0, x10, .LBB0_9
.LBB0_2:                                //  %if.end5
	slli x15 ,  x8 ,  2&31
	add x15 ,  x15 ,  x10
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then8
	lw x14 ,  0 ( x10 )
	sw x14 ,  0 ( x15 )
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.else
	slti x11 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	sll x18 ,  x11 ,  x8
	slli x15 ,  x18 ,  2&31
	addi x12 ,  x15 ,  20
	call _calloc_r
	beq x0, x10, .LBB0_9
.LBB0_5:                                //  %if.end14
	sw x18 ,  8 ( x10 )
	sw x8 ,  4 ( x10 )
.LBB0_6:                                //  %if.end15
	sw x0 ,  12 ( x10 )
	sw x0 ,  16 ( x10 )
	jal x0, .LBB0_7
.LBB0_9:
	add x10 ,  x0 ,  x0
.LBB0_7:                                //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_Balloc, .Lfunc_end0-_Balloc
	.cfi_endproc
                                        //  -- End function
	.globl	_Bfree                  //  -- Begin function _Bfree
	.type	_Bfree,@function
_Bfree:                                 //  @_Bfree
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x11, .LBB1_2
.LBB1_1:                                //  %if.then
	.cfi_def_cfa 2, 0
	lw x14 ,  4 ( x11 )
	lw x15 ,  76 ( x10 )
	slli x14 ,  x14 ,  2&31
	add x15 ,  x14 ,  x15
	lw x14 ,  0 ( x15 )
	sw x14 ,  0 ( x11 )
	sw x11 ,  0 ( x15 )
.LBB1_2:                                //  %if.end
	ret
.Lfunc_end1:
	.size	_Bfree, .Lfunc_end1-_Bfree
	.cfi_endproc
                                        //  -- End function
	.globl	__multadd               //  -- Begin function __multadd
	.type	__multadd,@function
__multadd:                              //  @__multadd
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -48
	add x8 ,  x0 ,  x11
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x9 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x18 ,  x0 ,  x10
	add x21 ,  x0 ,  x0
	addi x22 ,  x0 ,  20
	lui x23 ,  (65535>>12)&1048575
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	lw x20 ,  16 ( x8 )
.LBB2_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x24 ,  x22 ,  x8
	lui x30 ,  65535&4095
	add x11 ,  x0 ,  x19
	lw x25 ,  0 ( x24 )
	srli x30 ,  x30 ,  12&31
	or x26 ,  x23 ,  x30
	and x10 ,  x26 ,  x25
	call __mulsi3
	add x9 ,  x9 ,  x10
	srli x10 ,  x25 ,  16&31
	add x11 ,  x0 ,  x19
	call __mulsi3
	srli x15 ,  x9 ,  16&31
	and x14 ,  x26 ,  x9
	addi x22 ,  x22 ,  4
	addi x21 ,  x21 ,  1
	add x15 ,  x10 ,  x15
	slli x13 ,  x15 ,  16&31
	srli x9 ,  x15 ,  16&31
	or x14 ,  x14 ,  x13
	sw x14 ,  0 ( x24 )
	blt x21, x20, .LBB2_1
.LBB2_2:                                //  %do.end
	beq x0, x9, .LBB2_3
.LBB2_4:                                //  %if.then
	lw x15 ,  8 ( x8 )
	bge x20, x15, .LBB2_6
.LBB2_5:
	add x19 ,  x0 ,  x8
	jal x0, .LBB2_13
.LBB2_3:
	add x19 ,  x0 ,  x8
	jal x0, .LBB2_14
.LBB2_6:                                //  %if.then8
	lw x19 ,  4 ( x8 )
	lw x10 ,  76 ( x18 )
	bltu x0, x10, .LBB2_8
.LBB2_7:                                //  %if.then.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x18
	call _calloc_r
	sw x10 ,  76 ( x18 )
	beq x0, x10, .LBB2_15
.LBB2_8:                                //  %if.end5.i
	addi x21 ,  x19 ,  1
	slli x15 ,  x21 ,  2&31
	add x15 ,  x15 ,  x10
	lw x19 ,  0 ( x15 )
	beq x0, x19, .LBB2_10
.LBB2_9:                                //  %_Balloc.exit.thread58
	lw x14 ,  0 ( x19 )
	sw x0 ,  16 ( x19 )
	sw x14 ,  0 ( x15 )
	addi x15 ,  x19 ,  12
	jal x0, .LBB2_12
.LBB2_10:                               //  %if.else.i
	slti x11 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	sll x22 ,  x11 ,  x21
	slli x15 ,  x22 ,  2&31
	addi x12 ,  x15 ,  20
	call _calloc_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB2_15
.LBB2_11:                               //  %_Balloc.exit
	addi x15 ,  x19 ,  12
	sw x22 ,  8 ( x19 )
	sw x21 ,  4 ( x19 )
	sw x0 ,  16 ( x19 )
.LBB2_12:                               //  %_Bfree.exit
	sw x0 ,  0 ( x15 )
	lw x15 ,  16 ( x8 )
	addi x10 ,  x19 ,  12
	addi x11 ,  x8 ,  12
	slli x15 ,  x15 ,  2&31
	addi x12 ,  x15 ,  8
	call memcpy
	lw x14 ,  4 ( x8 )
	lw x15 ,  76 ( x18 )
	slli x14 ,  x14 ,  2&31
	add x15 ,  x14 ,  x15
	lw x14 ,  0 ( x15 )
	sw x14 ,  0 ( x8 )
	sw x8 ,  0 ( x15 )
.LBB2_13:                               //  %if.end17
	addi x15 ,  x20 ,  1
	sw x15 ,  16 ( x19 )
	slli x15 ,  x20 ,  2&31
	add x15 ,  x15 ,  x19
	sw x9 ,  20 ( x15 )
.LBB2_14:                               //  %if.end21
	add x10 ,  x0 ,  x19
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
.LBB2_15:                               //  %if.then11
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  181
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.Lfunc_end2:
	.size	__multadd, .Lfunc_end2-__multadd
	.cfi_endproc
                                        //  -- End function
	.globl	__s2b                   //  -- Begin function __s2b
	.type	__s2b,@function
__s2b:                                  //  @__s2b
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x13
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	addi x19 ,  x0 ,  9
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x20 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x21 ,  x0 ,  x14
	add x18 ,  x0 ,  x12
	addi x22 ,  x9 ,  8
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x22
	call __divsi3
	slti x15 ,  x22 ,  18
	slti x22 ,  x0 ,  1
	add x23 ,  x0 ,  x0
	bltu x0, x15, .LBB3_3
.LBB3_1:                                //  %for.inc.preheader
	add x15 ,  x0 ,  x22
.LBB3_2:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	addi x23 ,  x23 ,  1
	slli x15 ,  x15 ,  1&31
	blt x15, x10, .LBB3_2
.LBB3_3:                                //  %for.end
	lw x10 ,  76 ( x8 )
	bltu x0, x10, .LBB3_5
.LBB3_4:                                //  %if.then.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x8
	call _calloc_r
	sw x10 ,  76 ( x8 )
	beq x0, x10, .LBB3_17
.LBB3_5:                                //  %if.end5.i
	slli x15 ,  x23 ,  2&31
	add x15 ,  x15 ,  x10
	lw x11 ,  0 ( x15 )
	beq x0, x11, .LBB3_7
.LBB3_6:                                //  %_Balloc.exit.thread46
	lw x14 ,  0 ( x11 )
	sw x0 ,  16 ( x11 )
	sw x14 ,  0 ( x15 )
	addi x15 ,  x11 ,  12
	jal x0, .LBB3_9
.LBB3_7:                                //  %if.else.i
	sll x24 ,  x22 ,  x23
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x22
	slli x15 ,  x24 ,  2&31
	addi x12 ,  x15 ,  20
	call _calloc_r
	add x11 ,  x0 ,  x10
	beq x0, x11, .LBB3_17
.LBB3_8:                                //  %_Balloc.exit
	addi x15 ,  x11 ,  12
	sw x24 ,  8 ( x11 )
	sw x23 ,  4 ( x11 )
	sw x0 ,  16 ( x11 )
.LBB3_9:                                //  %if.end
	sw x0 ,  0 ( x15 )
	addi x20 ,  x20 ,  10
	slti x15 ,  x18 ,  10
	sw x21 ,  20 ( x11 )
	sw x22 ,  16 ( x11 )
	bltu x0, x15, .LBB3_13
.LBB3_10:                               //  %if.then3
	addi x21 ,  x18 ,  -9
	addi x19 ,  x0 ,  10
.LBB3_11:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x15 ,  -1 ( x20 )
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	addi x13 ,  x15 ,  -48
	call __multadd
	add x11 ,  x0 ,  x10
	addi x20 ,  x20 ,  1
	addi x21 ,  x21 ,  -1
	bltu x0, x21, .LBB3_11
.LBB3_12:
	add x19 ,  x0 ,  x18
.LBB3_13:                               //  %if.end10
	bge x19, x9, .LBB3_16
.LBB3_14:                               //  %for.body14.preheader
	sub x18 ,  x9 ,  x19
	addi x9 ,  x0 ,  10
.LBB3_15:                               //  %for.body14
                                        //  =>This Inner Loop Header: Depth=1
	lb x15 ,  0 ( x20 )
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	addi x13 ,  x15 ,  -48
	call __multadd
	add x11 ,  x0 ,  x10
	addi x20 ,  x20 ,  1
	addi x18 ,  x18 ,  -1
	bltu x0, x18, .LBB3_15
.LBB3_16:                               //  %for.end21
	add x10 ,  x0 ,  x11
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
.LBB3_17:                               //  %if.then
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  206
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.Lfunc_end3:
	.size	__s2b, .Lfunc_end3-__s2b
	.cfi_endproc
                                        //  -- End function
	.globl	__hi0bits               //  -- Begin function __hi0bits
	.type	__hi0bits,@function
__hi0bits:                              //  @__hi0bits
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	srli x13 ,  x15 ,  16&31
	bne x13, x14, .LBB4_2
.LBB4_1:                                //  %entry
	slli x15 ,  x15 ,  16&31
.LBB4_2:                                //  %entry
	xori x13 ,  x13 ,  0
	srli x12 ,  x15 ,  24&31
	sltiu x13 ,  x13 ,  1
	slli x10 ,  x13 ,  4&31
	beq x12, x14, .LBB4_3
.LBB4_4:                                //  %entry
	srli x13 ,  x15 ,  28&31
	beq x13, x14, .LBB4_5
.LBB4_6:                                //  %entry
	srli x13 ,  x15 ,  30&31
	beq x13, x14, .LBB4_7
.LBB4_8:                                //  %entry
	blt x15, x0, .LBB4_12
.LBB4_9:                                //  %if.then20
	lui x14 ,  (1073741824>>12)&1048575
	and x15 ,  x14 ,  x15
	bltu x0, x15, .LBB4_11
.LBB4_10:
	addi x10 ,  x0 ,  32
	ret
.LBB4_3:                                //  %entry
	slli x15 ,  x15 ,  8&31
	ori x10 ,  x10 ,  8
	srli x13 ,  x15 ,  28&31
	bne x13, x14, .LBB4_6
.LBB4_5:                                //  %entry
	slli x15 ,  x15 ,  4&31
	ori x10 ,  x10 ,  4
	srli x13 ,  x15 ,  30&31
	bne x13, x14, .LBB4_8
.LBB4_7:                                //  %entry
	slli x15 ,  x15 ,  2&31
	ori x10 ,  x10 ,  2
	bge x15, x0, .LBB4_9
.LBB4_12:                               //  %cleanup
	ret
.LBB4_11:
	addi x10 ,  x10 ,  1
	ret
.Lfunc_end4:
	.size	__hi0bits, .Lfunc_end4-__hi0bits
	.cfi_endproc
                                        //  -- End function
	.globl	__lo0bits               //  -- Begin function __lo0bits
	.type	__lo0bits,@function
__lo0bits:                              //  @__lo0bits
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x14 ,  0 ( x10 )
	andi x15 ,  x14 ,  7
	beq x0, x15, .LBB5_6
.LBB5_1:                                //  %if.then
	andi x15 ,  x14 ,  1
	bltu x0, x15, .LBB5_2
.LBB5_3:                                //  %if.end
	andi x15 ,  x14 ,  2
	bltu x0, x15, .LBB5_4
.LBB5_5:                                //  %if.end7
	srli x15 ,  x14 ,  2&31
	sw x15 ,  0 ( x10 )
	addi x15 ,  x0 ,  2
	add x10 ,  x0 ,  x15
	ret
.LBB5_6:                                //  %if.end9
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	add x13 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x14
	bne x15, x13, .LBB5_8
.LBB5_7:
	srli x14 ,  x14 ,  16&31
.LBB5_8:                                //  %if.end9
	xori x15 ,  x15 ,  0
	andi x12 ,  x14 ,  255
	sltiu x15 ,  x15 ,  1
	slli x15 ,  x15 ,  4&31
	beq x12, x13, .LBB5_9
.LBB5_10:                               //  %if.end9
	andi x12 ,  x14 ,  15
	beq x12, x13, .LBB5_11
.LBB5_12:                               //  %if.end9
	andi x12 ,  x14 ,  3
	beq x12, x13, .LBB5_13
.LBB5_14:                               //  %if.end9
	andi x13 ,  x14 ,  1
	bltu x0, x13, .LBB5_18
.LBB5_15:                               //  %if.then34
	srli x14 ,  x14 ,  1&31
	beq x0, x14, .LBB5_16
.LBB5_17:
	addi x15 ,  x15 ,  1
	sw x14 ,  0 ( x10 )
	add x10 ,  x0 ,  x15
	ret
.LBB5_2:
	add x15 ,  x0 ,  x0
	add x10 ,  x0 ,  x15
	ret
.LBB5_9:
	ori x15 ,  x15 ,  8
	srli x14 ,  x14 ,  8&31
	andi x12 ,  x14 ,  15
	bne x12, x13, .LBB5_12
.LBB5_11:
	srli x14 ,  x14 ,  4&31
	ori x15 ,  x15 ,  4
	andi x12 ,  x14 ,  3
	bne x12, x13, .LBB5_14
.LBB5_13:
	ori x15 ,  x15 ,  2
	srli x14 ,  x14 ,  2&31
	andi x13 ,  x14 ,  1
	beq x0, x13, .LBB5_15
.LBB5_18:                               //  %if.end41
	sw x14 ,  0 ( x10 )
	add x10 ,  x0 ,  x15
	ret
.LBB5_4:                                //  %if.then6
	srli x15 ,  x14 ,  1&31
	sw x15 ,  0 ( x10 )
	slti x15 ,  x0 ,  1
	add x10 ,  x0 ,  x15
	ret
.LBB5_16:
	addi x15 ,  x0 ,  32
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end5:
	.size	__lo0bits, .Lfunc_end5-__lo0bits
	.cfi_endproc
                                        //  -- End function
	.globl	__i2b                   //  -- Begin function __i2b
	.type	__i2b,@function
__i2b:                                  //  @__i2b
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x15 ,  76 ( x9 )
	bltu x0, x15, .LBB6_2
.LBB6_1:                                //  %if.then.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x9
	call _calloc_r
	add x15 ,  x0 ,  x10
	sw x15 ,  76 ( x9 )
	beq x0, x15, .LBB6_8
.LBB6_2:                                //  %if.end5.i
	lw x10 ,  4 ( x15 )
	beq x0, x10, .LBB6_4
.LBB6_3:                                //  %_Balloc.exit.thread8
	lw x14 ,  0 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x14 ,  4 ( x15 )
	jal x0, .LBB6_6
.LBB6_4:                                //  %if.else.i
	slti x18 ,  x0 ,  1
	addi x12 ,  x0 ,  28
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call _calloc_r
	beq x0, x10, .LBB6_8
.LBB6_5:                                //  %_Balloc.exit
	addi x15 ,  x0 ,  2
	sw x18 ,  4 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x15 ,  8 ( x10 )
.LBB6_6:                                //  %if.end
	addi x15 ,  x10 ,  12
	slti x14 ,  x0 ,  1
	sw x8 ,  20 ( x10 )
	sw x0 ,  0 ( x15 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	sw x14 ,  16 ( x10 )
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB6_8:                                //  %if.then
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  320
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.Lfunc_end6:
	.size	__i2b, .Lfunc_end6-__i2b
	.cfi_endproc
                                        //  -- End function
	.globl	__multiply              //  -- Begin function __multiply
	.type	__multiply,@function
__multiply:                             //  @__multiply
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -88
	.cfi_adjust_cfa_offset 88
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x12
	lw x14 ,  16 ( x11 )
	sw x18 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x1 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	lw x15 ,  16 ( x9 )
	blt x14, x15, .LBB7_1
.LBB7_2:                                //  %entry
	add x20 ,  x0 ,  x11
	jal x0, .LBB7_3
.LBB7_1:
	add x20 ,  x0 ,  x9
	add x9 ,  x0 ,  x11
.LBB7_3:                                //  %entry
	lw x22 ,  16 ( x20 )
	lw x23 ,  16 ( x9 )
	lw x8 ,  8 ( x20 )
	lw x21 ,  4 ( x20 )
	lw x10 ,  76 ( x18 )
	bltu x0, x10, .LBB7_5
.LBB7_4:                                //  %if.then.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x18
	call _calloc_r
	sw x10 ,  76 ( x18 )
	beq x0, x10, .LBB7_29
.LBB7_5:                                //  %if.end5.i
	add x19 ,  x22 ,  x23
	slt x15 ,  x8 ,  x19
	add x8 ,  x15 ,  x21
	slli x15 ,  x8 ,  2&31
	add x15 ,  x15 ,  x10
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB7_7
.LBB7_6:                                //  %_Balloc.exit.thread163
	lw x14 ,  0 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x14 ,  0 ( x15 )
	addi x15 ,  x10 ,  12
	jal x0, .LBB7_9
.LBB7_7:                                //  %if.else.i
	slti x11 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	sll x21 ,  x11 ,  x8
	slli x15 ,  x21 ,  2&31
	addi x12 ,  x15 ,  20
	call _calloc_r
	beq x0, x10, .LBB7_29
.LBB7_8:                                //  %_Balloc.exit
	addi x15 ,  x10 ,  12
	sw x21 ,  8 ( x10 )
	sw x8 ,  4 ( x10 )
	sw x0 ,  16 ( x10 )
.LBB7_9:                                //  %if.end9
	addi x21 ,  x10 ,  20
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x0 ,  0 ( x15 )
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	bge x0, x19, .LBB7_12
.LBB7_10:                               //  %for.body.preheader
	slli x14 ,  x19 ,  2&31
	add x15 ,  x0 ,  x21
	add x14 ,  x14 ,  x21
.LBB7_11:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x15, x14, .LBB7_11
.LBB7_12:                               //  %for.end
	sw x19 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	bge x0, x23, .LBB7_23
.LBB7_13:                               //  %for.body21.preheader
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x20 ,  20
	addi x25 ,  x20 ,  20
	addi x26 ,  x9 ,  20
	lui x27 ,  (65535>>12)&1048575
	sw x14 ,  24 ( x2 )             //  4-byte Folded Spill
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x9
	addi x15 ,  x15 ,  20
	sw x15 ,  28 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	add x24 ,  x15 ,  x14
	jal x0, .LBB7_14
.LBB7_22:                               //  %for.inc64
                                        //    in Loop: Header=BB7_14 Depth=1
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x21 ,  4
	addi x26 ,  x26 ,  4
	bgeu x26, x15, .LBB7_23
.LBB7_14:                               //  %for.body21
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB7_16 Depth 2
                                        //      Child Loop BB7_20 Depth 2
	lw x15 ,  0 ( x26 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x27 ,  x30
	and x9 ,  x14 ,  x15
	beq x0, x9, .LBB7_18
.LBB7_15:                               //  %do.body.preheader
                                        //    in Loop: Header=BB7_14 Depth=1
	add x23 ,  x0 ,  x0
	sw x26 ,  32 ( x2 )             //  4-byte Folded Spill
	add x18 ,  x0 ,  x23
.LBB7_16:                               //  %do.body
                                        //    Parent Loop BB7_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x18 ,  x25
	add x20 ,  x18 ,  x21
	add x11 ,  x0 ,  x9
	lw x8 ,  0 ( x15 )
	lw x22 ,  0 ( x20 )
	srli x10 ,  x8 ,  16&31
	call __mulsi3
	lui x30 ,  65535&4095
	srli x15 ,  x22 ,  16&31
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	add x19 ,  x15 ,  x10
	or x26 ,  x27 ,  x30
	and x10 ,  x26 ,  x8
	call __mulsi3
	and x15 ,  x26 ,  x22
	addi x18 ,  x18 ,  4
	add x15 ,  x23 ,  x15
	add x15 ,  x10 ,  x15
	srli x14 ,  x15 ,  16&31
	and x15 ,  x26 ,  x15
	add x14 ,  x14 ,  x19
	slli x13 ,  x14 ,  16&31
	srli x23 ,  x14 ,  16&31
	or x15 ,  x15 ,  x13
	sw x15 ,  0 ( x20 )
	add x15 ,  x18 ,  x25
	bltu x15, x24, .LBB7_16
.LBB7_17:                               //  %do.end
                                        //    in Loop: Header=BB7_14 Depth=1
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x18 ,  x21
	sw x23 ,  0 ( x15 )
	lw x15 ,  0 ( x26 )
.LBB7_18:                               //  %if.end38
                                        //    in Loop: Header=BB7_14 Depth=1
	srli x9 ,  x15 ,  16&31
	beq x0, x9, .LBB7_22
.LBB7_19:                               //  %if.then41
                                        //    in Loop: Header=BB7_14 Depth=1
	lw x20 ,  0 ( x21 )
	add x22 ,  x0 ,  x0
	add x18 ,  x0 ,  x21
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x20
.LBB7_20:                               //  %do.body42
                                        //    Parent Loop BB7_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x10 ,  0 ( x23 )
	add x11 ,  x0 ,  x9
	call __mulsi3
	srli x15 ,  x20 ,  16&31
	lui x30 ,  65535&4095
	add x11 ,  x0 ,  x9
	add x15 ,  x22 ,  x15
	srli x30 ,  x30 ,  12&31
	add x19 ,  x10 ,  x15
	or x22 ,  x27 ,  x30
	and x15 ,  x22 ,  x8
	slli x14 ,  x19 ,  16&31
	or x15 ,  x15 ,  x14
	sw x15 ,  0 ( x18 )
	lhu x10 ,  2 ( x23 )
	call __mulsi3
	lw x20 ,  4 ( x18 )
	srli x14 ,  x19 ,  16&31
	addi x18 ,  x18 ,  4
	addi x23 ,  x23 ,  4
	and x15 ,  x22 ,  x20
	add x15 ,  x15 ,  x10
	add x8 ,  x14 ,  x15
	srli x22 ,  x8 ,  16&31
	bltu x23, x24, .LBB7_20
.LBB7_21:                               //  %do.end62
                                        //    in Loop: Header=BB7_14 Depth=1
	sw x8 ,  0 ( x18 )
	jal x0, .LBB7_22
.LBB7_23:                               //  %for.cond71.preheader
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	bge x0, x13, .LBB7_24
.LBB7_25:                               //  %land.rhs.preheader
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  8 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x15 ,  x14
	slli x15 ,  x15 ,  2&31
	add x15 ,  x10 ,  x15
	addi x15 ,  x15 ,  16
.LBB7_26:                               //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x15 )
	bltu x0, x14, .LBB7_28
.LBB7_27:                               //  %for.inc75
                                        //    in Loop: Header=BB7_26 Depth=1
	addi x15 ,  x15 ,  -4
	addi x13 ,  x13 ,  -1
	blt x0, x13, .LBB7_26
	jal x0, .LBB7_28
.LBB7_24:
	lw x10 ,  8 ( x2 )              //  4-byte Folded Reload
.LBB7_28:                               //  %for.end76
	sw x13 ,  16 ( x10 )
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  88
	.cfi_def_cfa 2, 0
	ret
.LBB7_29:                               //  %if.then8
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  349
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.Lfunc_end7:
	.size	__multiply, .Lfunc_end7-__multiply
	.cfi_endproc
                                        //  -- End function
	.globl	__pow5mult              //  -- Begin function __pow5mult
	.type	__pow5mult,@function
__pow5mult:                             //  @__pow5mult
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x12
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	andi x15 ,  x18 ,  3
	beq x0, x15, .LBB8_2
.LBB8_1:                                //  %if.then
	lui x30 ,  __pow5mult.p05&4095
	lui x14 ,  (__pow5mult.p05>>12)&1048575
	slli x15 ,  x15 ,  2&31
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x12 ,  -4 ( x15 )
	call __multadd
	add x8 ,  x0 ,  x10
.LBB8_2:                                //  %if.end
	srai x19 ,  x18 ,  2&31
	beq x0, x19, .LBB8_21
.LBB8_3:                                //  %if.end2
	lw x10 ,  72 ( x9 )
	bltu x0, x10, .LBB8_14
.LBB8_4:                                //  %if.then4
	lw x15 ,  76 ( x9 )
	bltu x0, x15, .LBB8_6
.LBB8_5:                                //  %if.then.i.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x9
	call _calloc_r
	add x15 ,  x0 ,  x10
	sw x15 ,  76 ( x9 )
	beq x0, x15, .LBB8_12
.LBB8_6:                                //  %if.end5.i.i
	lw x10 ,  4 ( x15 )
	beq x0, x10, .LBB8_8
.LBB8_7:                                //  %_Balloc.exit.thread8.i
	lw x14 ,  0 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x14 ,  4 ( x15 )
	jal x0, .LBB8_10
.LBB8_8:                                //  %if.else.i.i
	slti x18 ,  x0 ,  1
	addi x12 ,  x0 ,  28
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call _calloc_r
	beq x0, x10, .LBB8_12
.LBB8_9:                                //  %_Balloc.exit.i
	addi x15 ,  x0 ,  2
	sw x18 ,  4 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x15 ,  8 ( x10 )
.LBB8_10:                               //  %__i2b.exit
	addi x15 ,  x10 ,  12
	slti x14 ,  x0 ,  1
	addi x13 ,  x0 ,  625
	sw x10 ,  72 ( x9 )
	sw x0 ,  0 ( x15 )
	sw x13 ,  20 ( x10 )
	sw x14 ,  16 ( x10 )
	jal x0, .LBB8_13
.LBB8_12:                               //  %if.then.i
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  320
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.LBB8_13:                               //  %for.cond
	sw x0 ,  0 ( x10 )
.LBB8_14:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x18 ,  x0 ,  x10
	andi x15 ,  x19 ,  1
	beq x0, x15, .LBB8_18
.LBB8_15:                               //  %if.then10
                                        //    in Loop: Header=BB8_14 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call __multiply
	beq x0, x8, .LBB8_17
.LBB8_16:                               //  %if.then.i52
                                        //    in Loop: Header=BB8_14 Depth=1
	lw x14 ,  4 ( x8 )
	lw x15 ,  76 ( x9 )
	slli x14 ,  x14 ,  2&31
	add x15 ,  x14 ,  x15
	lw x14 ,  0 ( x15 )
	sw x14 ,  0 ( x8 )
	sw x8 ,  0 ( x15 )
.LBB8_17:                               //  %if.end12
                                        //    in Loop: Header=BB8_14 Depth=1
	add x8 ,  x0 ,  x10
.LBB8_18:                               //  %if.end12
                                        //    in Loop: Header=BB8_14 Depth=1
	srai x19 ,  x19 ,  1&31
	beq x0, x19, .LBB8_21
.LBB8_19:                               //  %if.end16
                                        //    in Loop: Header=BB8_14 Depth=1
	lw x10 ,  0 ( x18 )
	bltu x0, x10, .LBB8_14
.LBB8_20:                               //  %if.then19
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __multiply
	sw x10 ,  0 ( x18 )
	jal x0, .LBB8_13
.LBB8_21:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end8:
	.size	__pow5mult, .Lfunc_end8-__pow5mult
	.cfi_endproc
                                        //  -- End function
	.globl	__lshift                //  -- Begin function __lshift
	.type	__lshift,@function
__lshift:                               //  @__lshift
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x11
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x12
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x15 ,  16 ( x8 )
	srai x20 ,  x18 ,  5&31
	lw x21 ,  4 ( x8 )
	add x19 ,  x20 ,  x15
	lw x15 ,  8 ( x8 )
	blt x19, x15, .LBB9_2
.LBB9_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x21 ,  x21 ,  1
	slli x15 ,  x15 ,  1&31
	bge x19, x15, .LBB9_1
.LBB9_2:                                //  %for.end
	lw x10 ,  76 ( x9 )
	bltu x0, x10, .LBB9_4
.LBB9_3:                                //  %if.then.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x9
	call _calloc_r
	sw x10 ,  76 ( x9 )
	beq x0, x10, .LBB9_21
.LBB9_4:                                //  %if.end5.i
	slli x15 ,  x21 ,  2&31
	add x15 ,  x15 ,  x10
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB9_6
.LBB9_5:                                //  %_Balloc.exit.thread77
	lw x14 ,  0 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x14 ,  0 ( x15 )
	addi x15 ,  x10 ,  12
	sw x0 ,  0 ( x15 )
	addi x15 ,  x10 ,  20
	slti x14 ,  x18 ,  32
	beq x0, x14, .LBB9_9
	jal x0, .LBB9_11
.LBB9_6:                                //  %if.else.i
	slti x11 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	sll x22 ,  x11 ,  x21
	slli x15 ,  x22 ,  2&31
	addi x12 ,  x15 ,  20
	call _calloc_r
	beq x0, x10, .LBB9_21
.LBB9_7:                                //  %_Balloc.exit
	addi x15 ,  x10 ,  12
	sw x22 ,  8 ( x10 )
	sw x21 ,  4 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x0 ,  0 ( x15 )
	addi x15 ,  x10 ,  20
	slti x14 ,  x18 ,  32
	bltu x0, x14, .LBB9_11
.LBB9_9:                                //  %for.body5.preheader
	add x14 ,  x0 ,  x0
.LBB9_10:                               //  %for.body5
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  1
	blt x14, x20, .LBB9_10
.LBB9_11:                               //  %for.end8
	lw x12 ,  16 ( x8 )
	addi x13 ,  x8 ,  20
	addi x14 ,  x19 ,  1
	andi x5 ,  x18 ,  31
	slli x12 ,  x12 ,  2&31
	add x12 ,  x12 ,  x13
	beq x0, x5, .LBB9_17
.LBB9_12:                               //  %if.then12
	addi x6 ,  x0 ,  32
	add x11 ,  x0 ,  x0
	sub x6 ,  x6 ,  x5
.LBB9_13:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x7 ,  0 ( x13 )
	sll x7 ,  x7 ,  x5
	or x11 ,  x11 ,  x7
	sw x11 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	lw x11 ,  0 ( x13 )
	addi x13 ,  x13 ,  4
	srl x11 ,  x11 ,  x6
	bltu x13, x12, .LBB9_13
.LBB9_14:                               //  %do.end
	add x13 ,  x0 ,  x0
	beq x11, x13, .LBB9_16
.LBB9_15:                               //  %do.end
	addi x14 ,  x19 ,  2
.LBB9_16:                               //  %do.end
	sw x11 ,  0 ( x15 )
	addi x15 ,  x14 ,  -1
	sw x15 ,  16 ( x10 )
	bltu x0, x8, .LBB9_19
	jal x0, .LBB9_20
.LBB9_17:                               //  %do.body22
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x13 )
	addi x13 ,  x13 ,  4
	sw x11 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x13, x12, .LBB9_17
.LBB9_18:                               //  %if.end28
	addi x15 ,  x14 ,  -1
	sw x15 ,  16 ( x10 )
	beq x0, x8, .LBB9_20
.LBB9_19:                               //  %if.then.i74
	lw x14 ,  4 ( x8 )
	lw x15 ,  76 ( x9 )
	slli x14 ,  x14 ,  2&31
	add x15 ,  x14 ,  x15
	lw x14 ,  0 ( x15 )
	sw x14 ,  0 ( x8 )
	sw x8 ,  0 ( x15 )
.LBB9_20:                               //  %_Bfree.exit
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
.LBB9_21:                               //  %if.then
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  473
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.Lfunc_end9:
	.size	__lshift, .Lfunc_end9-__lshift
	.cfi_endproc
                                        //  -- End function
	.globl	__mcmp                  //  -- Begin function __mcmp
	.type	__mcmp,@function
__mcmp:                                 //  @__mcmp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	lw x14 ,  16 ( x11 )
	lw x13 ,  16 ( x15 )
	sub x10 ,  x13 ,  x14
	bltu x0, x10, .LBB10_7
.LBB10_1:                               //  %if.end
	slli x13 ,  x14 ,  2&31
	addi x15 ,  x15 ,  20
	add x10 ,  x0 ,  x0
	add x14 ,  x11 ,  x13
	add x13 ,  x13 ,  x15
	addi x14 ,  x14 ,  16
.LBB10_2:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x14 )
	lw x11 ,  -4 ( x13 )
	bne x11, x12, .LBB10_3
.LBB10_6:                               //  %if.end8
                                        //    in Loop: Header=BB10_2 Depth=1
	addi x13 ,  x13 ,  -4
	addi x14 ,  x14 ,  -4
	bltu x15, x13, .LBB10_2
.LBB10_7:                               //  %cleanup
	ret
.LBB10_3:                               //  %if.then6
	bltu x11, x12, .LBB10_4
.LBB10_5:                               //  %if.then6
	slti x10 ,  x0 ,  1
	ret
.LBB10_4:
	addi x10 ,  x0 ,  -1
	ret
.Lfunc_end10:
	.size	__mcmp, .Lfunc_end10-__mcmp
	.cfi_endproc
                                        //  -- End function
	.globl	__mdiff                 //  -- Begin function __mdiff
	.type	__mdiff,@function
__mdiff:                                //  @__mdiff
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x12
	lw x14 ,  16 ( x11 )
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x15 ,  16 ( x8 )
	sub x20 ,  x14 ,  x15
	beq x0, x20, .LBB11_3
.LBB11_1:                               //  %if.end3
	add x18 ,  x0 ,  x0
	blt x20, x18, .LBB11_12
.LBB11_2:                               //  %if.end3
	add x19 ,  x0 ,  x11
	lw x21 ,  4 ( x19 )
	lw x10 ,  76 ( x9 )
	bltu x0, x10, .LBB11_14
	jal x0, .LBB11_13
.LBB11_3:                               //  %if.end.i
	slli x13 ,  x15 ,  2&31
	addi x14 ,  x11 ,  20
	add x15 ,  x8 ,  x13
	add x13 ,  x13 ,  x14
	addi x15 ,  x15 ,  16
.LBB11_4:                               //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x15 )
	lw x10 ,  -4 ( x13 )
	bne x10, x12, .LBB11_10
.LBB11_5:                               //  %if.end8.i
                                        //    in Loop: Header=BB11_4 Depth=1
	addi x13 ,  x13 ,  -4
	addi x15 ,  x15 ,  -4
	bltu x14, x13, .LBB11_4
.LBB11_6:                               //  %if.then
	lw x15 ,  76 ( x9 )
	bltu x0, x15, .LBB11_8
.LBB11_7:                               //  %if.then.i122
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x9
	call _calloc_r
	add x15 ,  x0 ,  x10
	sw x15 ,  76 ( x9 )
	beq x0, x15, .LBB11_36
.LBB11_8:                               //  %if.end5.i124
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB11_30
.LBB11_9:                               //  %_Balloc.exit137.thread143
	lw x14 ,  0 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x14 ,  0 ( x15 )
	addi x15 ,  x10 ,  12
	jal x0, .LBB11_32
.LBB11_10:                              //  %if.then6.i
	bltu x10, x12, .LBB11_29
.LBB11_11:                              //  %if.then6.i
	slti x20 ,  x0 ,  1
	add x18 ,  x0 ,  x0
	bge x20, x18, .LBB11_2
.LBB11_12:
	add x19 ,  x0 ,  x8
	add x8 ,  x0 ,  x11
	lw x21 ,  4 ( x19 )
	lw x10 ,  76 ( x9 )
	bltu x0, x10, .LBB11_14
.LBB11_13:                              //  %if.then.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x9
	call _calloc_r
	sw x10 ,  76 ( x9 )
	beq x0, x10, .LBB11_33
.LBB11_14:                              //  %if.end5.i
	slli x15 ,  x21 ,  2&31
	add x15 ,  x15 ,  x10
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB11_16
.LBB11_15:                              //  %_Balloc.exit.thread151
	lw x14 ,  0 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x14 ,  0 ( x15 )
	addi x15 ,  x10 ,  12
	jal x0, .LBB11_18
.LBB11_16:                              //  %if.else.i
	slti x11 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	sll x22 ,  x11 ,  x21
	slli x15 ,  x22 ,  2&31
	addi x12 ,  x15 ,  20
	call _calloc_r
	beq x0, x10, .LBB11_33
.LBB11_17:                              //  %_Balloc.exit
	addi x15 ,  x10 ,  12
	sw x22 ,  8 ( x10 )
	sw x21 ,  4 ( x10 )
	sw x0 ,  16 ( x10 )
.LBB11_18:                              //  %if.end11
	sw x0 ,  0 ( x15 )
	lw x15 ,  16 ( x19 )
	slt x14 ,  x20 ,  x0
	addi x5 ,  x8 ,  20
	add x11 ,  x0 ,  x18
	lw x12 ,  16 ( x8 )
	sw x14 ,  12 ( x10 )
	slli x14 ,  x15 ,  2&31
	add x13 ,  x14 ,  x19
	slli x12 ,  x12 ,  2&31
	addi x14 ,  x10 ,  20
	add x6 ,  x12 ,  x5
	addi x13 ,  x13 ,  20
	lui x12 ,  (65535>>12)&1048575
.LBB11_19:                              //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x7 ,  x18 ,  x19
	add x16 ,  x18 ,  x5
	lui x30 ,  65535&4095
	lw x7 ,  20 ( x7 )
	srli x30 ,  x30 ,  12&31
	lw x16 ,  0 ( x16 )
	srli x29 ,  x7 ,  16&31
	srli x17 ,  x16 ,  16&31
	sub x17 ,  x29 ,  x17
	or x29 ,  x12 ,  x30
	and x16 ,  x29 ,  x16
	and x7 ,  x29 ,  x7
	sub x7 ,  x7 ,  x16
	add x11 ,  x11 ,  x7
	srai x7 ,  x11 ,  16&31
	and x11 ,  x29 ,  x11
	add x7 ,  x17 ,  x7
	slli x16 ,  x7 ,  16&31
	or x11 ,  x11 ,  x16
	add x16 ,  x18 ,  x14
	addi x18 ,  x18 ,  4
	sw x11 ,  0 ( x16 )
	add x16 ,  x18 ,  x5
	srai x11 ,  x7 ,  16&31
	bltu x16, x6, .LBB11_19
.LBB11_20:                              //  %while.cond.preheader
	add x6 ,  x18 ,  x19
	add x5 ,  x18 ,  x10
	addi x7 ,  x6 ,  20
	bgeu x7, x13, .LBB11_24
.LBB11_21:                              //  %while.body.preheader
	add x7 ,  x0 ,  x0
.LBB11_22:                              //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x16 ,  x7 ,  x19
	lui x30 ,  65535&4095
	add x16 ,  x18 ,  x16
	srli x30 ,  x30 ,  12&31
	lw x16 ,  20 ( x16 )
	or x17 ,  x12 ,  x30
	and x29 ,  x17 ,  x16
	srli x16 ,  x16 ,  16&31
	add x11 ,  x11 ,  x29
	srai x29 ,  x11 ,  16&31
	and x11 ,  x17 ,  x11
	add x16 ,  x16 ,  x29
	slli x17 ,  x16 ,  16&31
	or x11 ,  x11 ,  x17
	add x17 ,  x7 ,  x14
	add x17 ,  x18 ,  x17
	sw x11 ,  0 ( x17 )
	add x17 ,  x7 ,  x6
	addi x7 ,  x7 ,  4
	srai x11 ,  x16 ,  16&31
	addi x16 ,  x17 ,  24
	bltu x16, x13, .LBB11_22
.LBB11_23:                              //  %while.cond43.preheader.loopexit
	add x14 ,  x7 ,  x5
	addi x14 ,  x14 ,  20
	jal x0, .LBB11_25
.LBB11_24:
	addi x14 ,  x5 ,  20
.LBB11_25:                              //  %while.cond43.preheader
	addi x14 ,  x14 ,  -4
	addi x15 ,  x15 ,  1
.LBB11_26:                              //  %while.cond43
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x14 )
	addi x13 ,  x14 ,  -4
	addi x15 ,  x15 ,  -1
	add x14 ,  x0 ,  x13
	beq x0, x12, .LBB11_26
.LBB11_27:                              //  %while.end47
	sw x15 ,  16 ( x10 )
.LBB11_28:                              //  %cleanup
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
.LBB11_29:
	addi x20 ,  x0 ,  -1
	add x18 ,  x0 ,  x0
	bge x20, x18, .LBB11_2
	jal x0, .LBB11_12
.LBB11_30:                              //  %if.else.i128
	slti x8 ,  x0 ,  1
	addi x12 ,  x0 ,  24
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _calloc_r
	beq x0, x10, .LBB11_36
.LBB11_31:                              //  %_Balloc.exit137
	sw x8 ,  8 ( x10 )
	addi x15 ,  x10 ,  12
	sw x0 ,  16 ( x10 )
	sw x0 ,  4 ( x10 )
.LBB11_32:                              //  %if.end
	slti x14 ,  x0 ,  1
	sw x0 ,  20 ( x10 )
	sw x0 ,  0 ( x15 )
	sw x14 ,  16 ( x10 )
	jal x0, .LBB11_28
.LBB11_33:                              //  %if.then10
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  576
.LBB11_34:                              //  %if.then2
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.LBB11_36:                              //  %if.then2
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  562
	jal x0, .LBB11_34
.Lfunc_end11:
	.size	__mdiff, .Lfunc_end11-__mdiff
	.cfi_endproc
                                        //  -- End function
	.globl	__ulp                   //  -- Begin function __ulp
	.type	__ulp,@function
__ulp:                                  //  @__ulp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  -54525952&4095
	lui x15 ,  (2146435072>>12)&1048575
	lui x14 ,  (-54525952>>12)&1048575
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x11
	or x14 ,  x14 ,  x30
	add x11 ,  x14 ,  x15
	bge x0, x11, .LBB12_2
.LBB12_1:                               //  %if.then
	add x10 ,  x0 ,  x0
	ret
.LBB12_2:                               //  %if.else
	lui x14 ,  (54525952>>12)&1048575
	lui x30 ,  33554433&4095
	lui x13 ,  (33554433>>12)&1048575
	sub x14 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	srai x14 ,  x14 ,  20&31
	or x13 ,  x13 ,  x30
	bltu x15, x13, .LBB12_4
.LBB12_3:                               //  %if.then7
	lui x15 ,  (524288>>12)&1048575
	add x10 ,  x0 ,  x0
	srl x11 ,  x15 ,  x14
	ret
.LBB12_4:                               //  %if.else13
	add x11 ,  x0 ,  x0
	srli x15 ,  x15 ,  21&31
	bltu x0, x15, .LBB12_6
.LBB12_5:
	slti x10 ,  x0 ,  1
	ret
.LBB12_6:                               //  %cond.false
	addi x15 ,  x0 ,  51
	sub x15 ,  x15 ,  x14
	slti x14 ,  x0 ,  1
	sll x10 ,  x14 ,  x15
	ret
.Lfunc_end12:
	.size	__ulp, .Lfunc_end12-__ulp
	.cfi_endproc
                                        //  -- End function
	.globl	__b2d                   //  -- Begin function __b2d
	.type	__b2d,@function
__b2d:                                  //  @__b2d
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x15 ,  16 ( x10 )
	addi x14 ,  x10 ,  20
	add x10 ,  x0 ,  x0
	slli x15 ,  x15 ,  2&31
	add x12 ,  x15 ,  x14
	lw x15 ,  -4 ( x12 )
	add x5 ,  x0 ,  x15
	srli x13 ,  x15 ,  16&31
	bne x13, x10, .LBB13_2
.LBB13_1:                               //  %entry
	slli x5 ,  x15 ,  16&31
.LBB13_2:                               //  %entry
	xori x13 ,  x13 ,  0
	srli x6 ,  x5 ,  24&31
	sltiu x13 ,  x13 ,  1
	slli x13 ,  x13 ,  4&31
	beq x6, x10, .LBB13_3
.LBB13_4:                               //  %entry
	srli x6 ,  x5 ,  28&31
	beq x6, x10, .LBB13_5
.LBB13_6:                               //  %entry
	srli x6 ,  x5 ,  30&31
	beq x6, x10, .LBB13_7
.LBB13_8:                               //  %entry
	addi x6 ,  x12 ,  -4
	blt x5, x0, .LBB13_11
.LBB13_9:                               //  %if.then20.i
	lui x7 ,  (1073741824>>12)&1048575
	and x5 ,  x7 ,  x5
	bltu x0, x5, .LBB13_10
.LBB13_16:                              //  %__hi0bits.exit.thread
	addi x13 ,  x0 ,  32
	sw x0 ,  0 ( x11 )
	jal x0, .LBB13_17
.LBB13_3:                               //  %entry
	slli x5 ,  x5 ,  8&31
	ori x13 ,  x13 ,  8
	srli x6 ,  x5 ,  28&31
	bne x6, x10, .LBB13_6
.LBB13_5:                               //  %entry
	slli x5 ,  x5 ,  4&31
	ori x13 ,  x13 ,  4
	srli x6 ,  x5 ,  30&31
	bne x6, x10, .LBB13_8
.LBB13_7:                               //  %entry
	slli x5 ,  x5 ,  2&31
	ori x13 ,  x13 ,  2
	addi x6 ,  x12 ,  -4
	bge x5, x0, .LBB13_9
	jal x0, .LBB13_11
.LBB13_10:
	addi x13 ,  x13 ,  1
.LBB13_11:                              //  %__hi0bits.exit
	addi x5 ,  x0 ,  32
	sub x5 ,  x5 ,  x13
	sw x5 ,  0 ( x11 )
	addi x11 ,  x0 ,  10
	blt x11, x13, .LBB13_17
.LBB13_12:                              //  %if.then
	addi x11 ,  x0 ,  11
	sub x11 ,  x11 ,  x13
	bgeu x14, x6, .LBB13_13
.LBB13_14:                              //  %cond.true
	lw x12 ,  -8 ( x12 )
	jal x0, .LBB13_15
.LBB13_17:                              //  %if.end
	bgeu x14, x6, .LBB13_19
.LBB13_18:                              //  %cond.true10
	lw x10 ,  -8 ( x12 )
	addi x6 ,  x12 ,  -8
.LBB13_19:                              //  %cond.end13
	addi x12 ,  x13 ,  -11
	beq x0, x12, .LBB13_20
.LBB13_21:                              //  %if.then16
	sll x11 ,  x15 ,  x12
	addi x15 ,  x0 ,  43
	sub x15 ,  x15 ,  x13
	srl x13 ,  x10 ,  x15
	bgeu x14, x6, .LBB13_22
.LBB13_23:                              //  %cond.true25
	lw x5 ,  -4 ( x6 )
	jal x0, .LBB13_24
.LBB13_20:
	add x14 ,  x0 ,  x15
	lui x15 ,  (1072693248>>12)&1048575
	or x11 ,  x15 ,  x14
	ret
.LBB13_22:
	add x5 ,  x0 ,  x0
.LBB13_24:                              //  %cond.end28
	or x14 ,  x13 ,  x11
	sll x13 ,  x10 ,  x12
	srl x15 ,  x5 ,  x15
	or x10 ,  x13 ,  x15
	lui x15 ,  (1072693248>>12)&1048575
	or x11 ,  x15 ,  x14
	ret
.LBB13_13:
	add x12 ,  x0 ,  x0
.LBB13_15:                              //  %cond.end
	addi x13 ,  x13 ,  21
	srl x14 ,  x15 ,  x11
	sll x15 ,  x15 ,  x13
	srl x13 ,  x12 ,  x11
	or x10 ,  x15 ,  x13
	lui x15 ,  (1072693248>>12)&1048575
	or x11 ,  x15 ,  x14
	ret
.Lfunc_end13:
	.size	__b2d, .Lfunc_end13-__b2d
	.cfi_endproc
                                        //  -- End function
	.globl	__d2b                   //  -- Begin function __d2b
	.type	__d2b,@function
__d2b:                                  //  @__d2b
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x10
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x14
	add x9 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x15 ,  76 ( x20 )
	bltu x0, x15, .LBB14_2
.LBB14_1:                               //  %if.then.i
	addi x11 ,  x0 ,  4
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x20
	call _calloc_r
	add x15 ,  x0 ,  x10
	sw x15 ,  76 ( x20 )
	beq x0, x15, .LBB14_71
.LBB14_2:                               //  %if.end5.i
	lw x10 ,  4 ( x15 )
	beq x0, x10, .LBB14_4
.LBB14_3:                               //  %_Balloc.exit.thread154
	lw x14 ,  0 ( x10 )
	sw x0 ,  16 ( x10 )
	addi x12 ,  x10 ,  12
	sw x14 ,  4 ( x15 )
	jal x0, .LBB14_6
.LBB14_4:                               //  %if.else.i
	slti x21 ,  x0 ,  1
	addi x12 ,  x0 ,  28
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call _calloc_r
	beq x0, x10, .LBB14_71
.LBB14_5:                               //  %_Balloc.exit
	addi x15 ,  x0 ,  2
	addi x12 ,  x10 ,  12
	sw x21 ,  4 ( x10 )
	sw x0 ,  16 ( x10 )
	sw x15 ,  8 ( x10 )
.LBB14_6:                               //  %if.end
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	add x13 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x14 ,  x15 ,  x19
	srli x15 ,  x19 ,  20&31
	andi x15 ,  x15 ,  2047
	beq x15, x13, .LBB14_8
.LBB14_7:
	lui x11 ,  (1048576>>12)&1048575
	or x14 ,  x11 ,  x14
.LBB14_8:                               //  %if.end
	sw x0 ,  0 ( x12 )
	beq x0, x18, .LBB14_34
.LBB14_9:                               //  %if.then14
	andi x12 ,  x18 ,  7
	beq x0, x12, .LBB14_14
.LBB14_10:                              //  %if.then.i85
	andi x12 ,  x18 ,  1
	bltu x0, x12, .LBB14_29
.LBB14_11:                              //  %if.end.i
	andi x12 ,  x18 ,  2
	bltu x0, x12, .LBB14_12
.LBB14_13:                              //  %if.end7.i
	addi x12 ,  x0 ,  2
	srli x18 ,  x18 ,  2&31
	jal x0, .LBB14_28
.LBB14_34:                              //  %if.else27
	andi x13 ,  x14 ,  7
	beq x0, x13, .LBB14_40
.LBB14_35:                              //  %if.then.i91
	andi x13 ,  x14 ,  1
	bltu x0, x13, .LBB14_36
.LBB14_37:                              //  %if.end.i94
	andi x13 ,  x14 ,  2
	bltu x0, x13, .LBB14_38
.LBB14_39:                              //  %if.end7.i98
	addi x12 ,  x0 ,  2
	srli x14 ,  x14 ,  2&31
	jal x0, .LBB14_54
.LBB14_14:                              //  %if.end9.i
	lui x30 ,  65535&4095
	lui x12 ,  (65535>>12)&1048575
	add x5 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	and x12 ,  x12 ,  x18
	beq x12, x5, .LBB14_15
.LBB14_16:                              //  %if.end9.i
	add x11 ,  x0 ,  x18
	jal x0, .LBB14_17
.LBB14_40:                              //  %if.end9.i124
	lui x30 ,  65535&4095
	lui x13 ,  (65535>>12)&1048575
	add x11 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x12 ,  x13 ,  x14
	beq x12, x11, .LBB14_41
.LBB14_42:                              //  %if.end9.i124
	add x13 ,  x0 ,  x14
	jal x0, .LBB14_43
.LBB14_36:
	add x12 ,  x0 ,  x0
	jal x0, .LBB14_54
.LBB14_15:
	srli x11 ,  x18 ,  16&31
.LBB14_17:                              //  %if.end9.i
	xori x12 ,  x12 ,  0
	andi x6 ,  x11 ,  255
	sltiu x12 ,  x12 ,  1
	slli x12 ,  x12 ,  4&31
	beq x6, x5, .LBB14_18
.LBB14_19:                              //  %if.end9.i
	andi x6 ,  x11 ,  15
	beq x6, x5, .LBB14_20
.LBB14_21:                              //  %if.end9.i
	andi x6 ,  x11 ,  3
	beq x6, x5, .LBB14_22
.LBB14_23:                              //  %if.end9.i
	andi x5 ,  x11 ,  1
	bltu x0, x5, .LBB14_27
.LBB14_24:                              //  %if.then34.i
	srli x11 ,  x11 ,  1&31
	beq x0, x11, .LBB14_25
.LBB14_26:
	addi x12 ,  x12 ,  1
	add x18 ,  x0 ,  x11
	bltu x0, x12, .LBB14_28
	jal x0, .LBB14_29
.LBB14_18:
	ori x12 ,  x12 ,  8
	srli x11 ,  x11 ,  8&31
	andi x6 ,  x11 ,  15
	bne x6, x5, .LBB14_21
.LBB14_20:
	srli x11 ,  x11 ,  4&31
	ori x12 ,  x12 ,  4
	andi x6 ,  x11 ,  3
	bne x6, x5, .LBB14_23
.LBB14_22:
	ori x12 ,  x12 ,  2
	srli x11 ,  x11 ,  2&31
	andi x5 ,  x11 ,  1
	beq x0, x5, .LBB14_24
.LBB14_27:                              //  %__lo0bits.exit
	add x18 ,  x0 ,  x11
	bltu x0, x12, .LBB14_28
.LBB14_29:                              //  %if.else
	add x12 ,  x0 ,  x13
	sw x18 ,  20 ( x10 )
	bne x14, x13, .LBB14_32
.LBB14_31:
	slti x13 ,  x0 ,  1
	sw x14 ,  24 ( x10 )
	sw x13 ,  16 ( x10 )
	add x14 ,  x15 ,  x12
	bltu x0, x15, .LBB14_56
	jal x0, .LBB14_57
.LBB14_12:                              //  %if.then6.i
	slti x12 ,  x0 ,  1
	srli x18 ,  x18 ,  1&31
	jal x0, .LBB14_28
.LBB14_41:
	srli x13 ,  x14 ,  16&31
.LBB14_43:                              //  %if.end9.i124
	xori x12 ,  x12 ,  0
	andi x5 ,  x13 ,  255
	sltiu x12 ,  x12 ,  1
	slli x12 ,  x12 ,  4&31
	beq x5, x11, .LBB14_44
.LBB14_45:                              //  %if.end9.i124
	andi x5 ,  x13 ,  15
	beq x5, x11, .LBB14_46
.LBB14_47:                              //  %if.end9.i124
	andi x5 ,  x13 ,  3
	beq x5, x11, .LBB14_48
.LBB14_49:                              //  %if.end9.i124
	andi x11 ,  x13 ,  1
	bltu x0, x11, .LBB14_53
.LBB14_50:                              //  %if.then34.i128
	srli x13 ,  x13 ,  1&31
	beq x0, x13, .LBB14_51
.LBB14_52:
	addi x12 ,  x12 ,  1
	jal x0, .LBB14_53
.LBB14_44:
	ori x12 ,  x12 ,  8
	srli x13 ,  x13 ,  8&31
	andi x5 ,  x13 ,  15
	bne x5, x11, .LBB14_47
.LBB14_46:
	srli x13 ,  x13 ,  4&31
	ori x12 ,  x12 ,  4
	andi x5 ,  x13 ,  3
	bne x5, x11, .LBB14_49
.LBB14_48:
	ori x12 ,  x12 ,  2
	srli x13 ,  x13 ,  2&31
	andi x11 ,  x13 ,  1
	beq x0, x11, .LBB14_50
.LBB14_53:                              //  %if.end41.i131
	add x14 ,  x0 ,  x13
	jal x0, .LBB14_54
.LBB14_38:                              //  %if.then6.i96
	slti x12 ,  x0 ,  1
	srli x14 ,  x14 ,  1&31
	jal x0, .LBB14_54
.LBB14_25:
	addi x12 ,  x0 ,  32
.LBB14_28:                              //  %if.then19
	addi x11 ,  x0 ,  32
	sub x11 ,  x11 ,  x12
	sll x11 ,  x14 ,  x11
	srl x14 ,  x14 ,  x12
	or x11 ,  x18 ,  x11
	sw x11 ,  20 ( x10 )
	beq x14, x13, .LBB14_31
.LBB14_32:                              //  %if.end24
	addi x13 ,  x0 ,  2
	sw x14 ,  24 ( x10 )
	sw x13 ,  16 ( x10 )
	add x14 ,  x15 ,  x12
	bltu x0, x15, .LBB14_56
.LBB14_57:                              //  %if.else38
	slli x15 ,  x13 ,  2&31
	add x11 ,  x0 ,  x0
	add x15 ,  x10 ,  x15
	lw x12 ,  16 ( x15 )
	srli x15 ,  x12 ,  16&31
	bne x15, x11, .LBB14_59
.LBB14_58:                              //  %if.else38
	slli x12 ,  x12 ,  16&31
.LBB14_59:                              //  %if.else38
	xori x15 ,  x15 ,  0
	srli x5 ,  x12 ,  24&31
	sltiu x15 ,  x15 ,  1
	slli x15 ,  x15 ,  4&31
	beq x5, x11, .LBB14_60
.LBB14_61:                              //  %if.else38
	srli x5 ,  x12 ,  28&31
	beq x5, x11, .LBB14_62
.LBB14_63:                              //  %if.else38
	srli x5 ,  x12 ,  30&31
	beq x5, x11, .LBB14_64
.LBB14_65:                              //  %if.else38
	addi x14 ,  x14 ,  -1074
	sw x14 ,  0 ( x9 )
	slli x14 ,  x13 ,  5&31
	blt x12, x0, .LBB14_69
.LBB14_66:                              //  %if.then20.i
	lui x13 ,  (1073741824>>12)&1048575
	and x13 ,  x13 ,  x12
	bltu x0, x13, .LBB14_68
.LBB14_67:
	addi x15 ,  x0 ,  32
	jal x0, .LBB14_69
.LBB14_60:                              //  %if.else38
	slli x12 ,  x12 ,  8&31
	ori x15 ,  x15 ,  8
	srli x5 ,  x12 ,  28&31
	bne x5, x11, .LBB14_63
.LBB14_62:                              //  %if.else38
	slli x12 ,  x12 ,  4&31
	ori x15 ,  x15 ,  4
	srli x5 ,  x12 ,  30&31
	bne x5, x11, .LBB14_65
.LBB14_64:                              //  %if.else38
	slli x12 ,  x12 ,  2&31
	ori x15 ,  x15 ,  2
	addi x14 ,  x14 ,  -1074
	sw x14 ,  0 ( x9 )
	slli x14 ,  x13 ,  5&31
	bge x12, x0, .LBB14_66
	jal x0, .LBB14_69
.LBB14_68:
	addi x15 ,  x15 ,  1
.LBB14_69:                              //  %__hi0bits.exit
	sub x15 ,  x14 ,  x15
	jal x0, .LBB14_70
.LBB14_51:
	addi x12 ,  x0 ,  32
.LBB14_54:                              //  %__lo0bits.exit133
	slti x13 ,  x0 ,  1
	addi x12 ,  x12 ,  32
	sw x14 ,  20 ( x10 )
	sw x13 ,  16 ( x10 )
	add x14 ,  x15 ,  x12
	beq x0, x15, .LBB14_57
.LBB14_56:                              //  %if.then33
	addi x15 ,  x14 ,  -1075
	sw x15 ,  0 ( x9 )
	addi x15 ,  x0 ,  53
	sub x15 ,  x15 ,  x12
.LBB14_70:                              //  %if.end47
	sw x15 ,  0 ( x8 )
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
.LBB14_71:                              //  %if.then
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  778
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.Lfunc_end14:
	.size	__d2b, .Lfunc_end14-__d2b
	.cfi_endproc
                                        //  -- End function
	.globl	__ratio                 //  -- Begin function __ratio
	.type	__ratio,@function
__ratio:                                //  @__ratio
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	addi x11 ,  x2 ,  8
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x19 ,  x0 ,  x10
	call __b2d
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	addi x11 ,  x2 ,  4
	add x10 ,  x0 ,  x18
	call __b2d
	lw x15 ,  4 ( x2 )
	add x13 ,  x0 ,  x11
	add x12 ,  x0 ,  x10
	lw x14 ,  8 ( x2 )
	lw x11 ,  16 ( x19 )
	sub x15 ,  x14 ,  x15
	lw x14 ,  16 ( x18 )
	sub x14 ,  x11 ,  x14
	slli x14 ,  x14 ,  5&31
	add x14 ,  x15 ,  x14
	slli x15 ,  x14 ,  20&31
	bge x0, x14, .LBB15_2
.LBB15_1:                               //  %if.then
	add x9 ,  x9 ,  x15
	jal x0, .LBB15_3
.LBB15_2:                               //  %if.else
	sub x13 ,  x13 ,  x15
.LBB15_3:                               //  %if.end
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __divdf3
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end15:
	.size	__ratio, .Lfunc_end15-__ratio
	.cfi_endproc
                                        //  -- End function
	.globl	_mprec_log10            //  -- Begin function _mprec_log10
	.type	_mprec_log10,@function
_mprec_log10:                           //  @_mprec_log10
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	slti x15 ,  x8 ,  24
	beq x0, x15, .LBB16_1
.LBB16_4:                               //  %if.then
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x8 ,  3&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x11 ,  4 ( x15 )
	lw x10 ,  0 ( x15 )
	jal x0, .LBB16_3
.LBB16_1:                               //  %while.body.preheader
	add x9 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	lui x18 ,  (1076101120>>12)&1048575
	add x10 ,  x0 ,  x9
.LBB16_2:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __muldf3
	addi x8 ,  x8 ,  -1
	blt x0, x8, .LBB16_2
.LBB16_3:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end16:
	.size	_mprec_log10, .Lfunc_end16-_mprec_log10
	.cfi_endproc
                                        //  -- End function
	.globl	__copybits              //  -- Begin function __copybits
	.type	__copybits,@function
__copybits:                             //  @__copybits
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x15 ,  x11 ,  -1
	lw x13 ,  16 ( x12 )
	srai x15 ,  x15 ,  5&31
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x10
	addi x14 ,  x15 ,  4
	bge x0, x13, .LBB17_3
.LBB17_1:                               //  %while.body.preheader
	slli x13 ,  x13 ,  2&31
	add x13 ,  x13 ,  x12
	addi x12 ,  x12 ,  20
	addi x13 ,  x13 ,  20
.LBB17_2:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x12 )
	addi x12 ,  x12 ,  4
	sw x11 ,  0 ( x10 )
	addi x10 ,  x10 ,  4
	bltu x12, x13, .LBB17_2
.LBB17_3:                               //  %while.cond4.preheader
	bgeu x10, x14, .LBB17_6
.LBB17_4:                               //  %while.body6.preheader
	addi x14 ,  x10 ,  -4
.LBB17_5:                               //  %while.body6
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  4 ( x14 )
	addi x14 ,  x14 ,  4
	bltu x14, x15, .LBB17_5
.LBB17_6:                               //  %while.end8
	ret
.Lfunc_end17:
	.size	__copybits, .Lfunc_end17-__copybits
	.cfi_endproc
                                        //  -- End function
	.globl	__any_on                //  -- Begin function __any_on
	.type	__any_on,@function
__any_on:                               //  @__any_on
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	srai x14 ,  x11 ,  5&31
	slti x10 ,  x0 ,  1
	lw x13 ,  16 ( x15 )
	bge x13, x14, .LBB18_2
.LBB18_1:
	add x14 ,  x0 ,  x13
	jal x0, .LBB18_5
.LBB18_2:                               //  %if.else
	bge x14, x13, .LBB18_5
.LBB18_3:                               //  %land.lhs.true
	andi x13 ,  x11 ,  31
	beq x0, x13, .LBB18_5
.LBB18_4:                               //  %if.then2
	addi x12 ,  x0 ,  -1
	sll x13 ,  x12 ,  x13
	slli x12 ,  x14 ,  2&31
	add x12 ,  x12 ,  x15
	lw x12 ,  20 ( x12 )
	and x13 ,  x13 ,  x12
	bne x13, x12, .LBB18_9
.LBB18_5:                               //  %if.end7
	slli x14 ,  x14 ,  2&31
	addi x13 ,  x15 ,  20
	add x15 ,  x14 ,  x15
	addi x14 ,  x15 ,  20
	add x15 ,  x0 ,  x0
.LBB18_6:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x13, x14, .LBB18_7
.LBB18_8:                               //  %while.body
                                        //    in Loop: Header=BB18_6 Depth=1
	lw x11 ,  -4 ( x14 )
	addi x12 ,  x14 ,  -4
	add x14 ,  x0 ,  x12
	beq x0, x11, .LBB18_6
.LBB18_9:                               //  %cleanup
	ret
.LBB18_7:
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end18:
	.size	__any_on, .Lfunc_end18-__any_on
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/mprec.c"
	.size	.str, 51

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Balloc succeeded"
	.size	.str.1, 17

	.address_space	0
	.type	__pow5mult.p05,@object  //  @__pow5mult.p05
	.section	.rodata,"a",@progbits
	.p2align	2
__pow5mult.p05:
	.long	5                       //  0x5
	.long	25                      //  0x19
	.long	125                     //  0x7d
	.size	__pow5mult.p05, 12

	.address_space	0
	.type	__mprec_tens,@object    //  @__mprec_tens
	.globl	__mprec_tens
	.p2align	3
__mprec_tens:
	.quad	4607182418800017408     //  double 1
	.quad	4621819117588971520     //  double 10
	.quad	4636737291354636288     //  double 100
	.quad	4652007308841189376     //  double 1000
	.quad	4666723172467343360     //  double 1.0E+4
	.quad	4681608360884174848     //  double 1.0E+5
	.quad	4696837146684686336     //  double 1.0E+6
	.quad	4711630319722168320     //  double 1.0E+7
	.quad	4726483295884279808     //  double 1.0E+8
	.quad	4741671816366391296     //  double 1.0E+9
	.quad	4756540486875873280     //  double 1.0E+10
	.quad	4771362005757984768     //  double 1.0E+11
	.quad	4786511204640096256     //  double 1.0E+12
	.quad	4801453603149578240     //  double 1.0E+13
	.quad	4816244402031689728     //  double 1.0E+14
	.quad	4831355200913801216     //  double 1.0E+15
	.quad	4846369599423283200     //  double 1.0E+16
	.quad	4861130398305394688     //  double 1.0E+17
	.quad	4876203697187506176     //  double 1.0E+18
	.quad	4891288408196988160     //  double 1.0E+19
	.quad	4906019910204099648     //  double 1.0E+20
	.quad	4921056587992461136     //  double 1.0E+21
	.quad	4936209963552724370     //  double 1.0E+22
	.quad	4950912855330343670     //  double 9.9999999999999991E+22
	.quad	4965913770331839924     //  double 9.9999999999999998E+23
	.size	__mprec_tens, 200

	.address_space	0
	.type	__mprec_bigtens,@object //  @__mprec_bigtens
	.globl	__mprec_bigtens
	.p2align	3
__mprec_bigtens:
	.quad	4846369599423283200     //  double 1.0E+16
	.quad	5085611494797045271     //  double 1.0000000000000001E+32
	.quad	5564284217833028085     //  double 1.0E+64
	.quad	6521906365687930162     //  double 1.0000000000000001E+128
	.quad	8436737289693151036     //  double 1.0E+256
	.size	__mprec_bigtens, 40

	.address_space	0
	.type	__mprec_tinytens,@object //  @__mprec_tinytens
	.globl	__mprec_tinytens
	.p2align	3
__mprec_tinytens:
	.quad	4367597403136100796     //  double 9.9999999999999997E-17
	.quad	4128101167230658355     //  double 1.0000000000000001E-32
	.quad	3649340653511681853     //  double 9.9999999999999997E-65
	.quad	2691949749288605597     //  double 1.0000000000000001E-128
	.quad	776877706278891331      //  double 9.9999999999999997E-257
	.size	__mprec_tinytens, 40


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
