	.text
	.file	"mcount.c"
	.globl	_mcount_internal        //  -- Begin function _mcount_internal
	.type	_mcount_internal,@function
_mcount_internal:                       //  @_mcount_internal
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  _gmonparam.0&4095
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lui x19 ,  (_gmonparam.0>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x11
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	xori x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_17
.LBB0_1:                                //  %if.end
	lui x30 ,  _gmonparam.0&4095
	addi x14 ,  x0 ,  2
	slti x20 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lui x30 ,  _gmonparam.8&4095
	sw x14 ,  0 ( x15 )
	lui x15 ,  (_gmonparam.8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lui x14 ,  (_gmonparam.10>>12)&1048575
	or x15 ,  x15 ,  x30
	lui x30 ,  _gmonparam.10&4095
	srli x30 ,  x30 ,  12&31
	lw x15 ,  0 ( x15 )
	or x14 ,  x14 ,  x30
	lw x14 ,  0 ( x14 )
	sub x15 ,  x10 ,  x15
	bltu x14, x15, .LBB0_16
.LBB0_2:                                //  %if.end4
	lui x30 ,  _gmonparam.12&4095
	lui x14 ,  (_gmonparam.12>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  _gmonparam.3&4095
	lw x14 ,  0 ( x14 )
	srli x30 ,  x30 ,  12&31
	srl x15 ,  x15 ,  x14
	lui x14 ,  (_gmonparam.3>>12)&1048575
	or x14 ,  x14 ,  x30
	lui x30 ,  _gmonparam.5&4095
	slli x15 ,  x15 ,  2&31
	lw x14 ,  0 ( x14 )
	srli x30 ,  x30 ,  12&31
	add x21 ,  x15 ,  x14
	lui x15 ,  (_gmonparam.5>>12)&1048575
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x21 )
	lw x22 ,  0 ( x15 )
	beq x0, x9, .LBB0_5
.LBB0_3:                                //  %if.end14
	addi x11 ,  x0 ,  12
	add x10 ,  x0 ,  x9
	call __mulsi3
	add x15 ,  x10 ,  x22
	lw x15 ,  0 ( x15 )
	bne x15, x8, .LBB0_7
.LBB0_4:                                //  %if.then19
	addi x11 ,  x0 ,  12
	add x10 ,  x0 ,  x9
	call __mulsi3
	add x15 ,  x10 ,  x22
	lw x14 ,  4 ( x15 )
	addi x14 ,  x14 ,  1
	sw x14 ,  4 ( x15 )
	jal x0, .LBB0_16
.LBB0_5:                                //  %if.then6
	lw x15 ,  8 ( x22 )
	lui x30 ,  _gmonparam.7&4095
	srli x30 ,  x30 ,  12&31
	addi x10 ,  x15 ,  1
	lui x15 ,  (_gmonparam.7>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x10 ,  8 ( x22 )
	lw x15 ,  0 ( x15 )
	bgeu x10, x15, .LBB0_15
.LBB0_6:                                //  %if.end9
	addi x11 ,  x0 ,  12
	sw x10 ,  0 ( x21 )
	call __mulsi3
	add x15 ,  x10 ,  x22
	slti x20 ,  x0 ,  1
	sw x8 ,  0 ( x15 )
	sw x20 ,  4 ( x15 )
	sw x0 ,  8 ( x15 )
	jal x0, .LBB0_16
.LBB0_7:
	addi x18 ,  x0 ,  12
.LBB0_8:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __mulsi3
	add x23 ,  x10 ,  x22
	lw x9 ,  8 ( x23 )
	beq x0, x9, .LBB0_12
.LBB0_9:                                //  %if.end39
                                        //    in Loop: Header=BB0_8 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __mulsi3
	add x15 ,  x10 ,  x22
	lw x15 ,  0 ( x15 )
	bne x15, x8, .LBB0_8
.LBB0_10:                               //  %if.then45
	addi x11 ,  x0 ,  12
	add x10 ,  x0 ,  x9
	addi x8 ,  x23 ,  8
	call __mulsi3
	add x15 ,  x10 ,  x22
	lw x14 ,  8 ( x15 )
	sw x14 ,  0 ( x8 )
	lw x14 ,  4 ( x15 )
	addi x14 ,  x14 ,  1
	sw x14 ,  4 ( x15 )
	jal x0, .LBB0_14
.LBB0_12:                               //  %if.then25
	lw x15 ,  8 ( x22 )
	lui x30 ,  _gmonparam.7&4095
	srli x30 ,  x30 ,  12&31
	addi x9 ,  x15 ,  1
	lui x15 ,  (_gmonparam.7>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x9 ,  8 ( x22 )
	lw x15 ,  0 ( x15 )
	bgeu x9, x15, .LBB0_15
.LBB0_13:                               //  %if.end33
	addi x11 ,  x0 ,  12
	add x10 ,  x0 ,  x9
	call __mulsi3
	add x15 ,  x10 ,  x22
	slti x20 ,  x0 ,  1
	sw x8 ,  0 ( x15 )
	sw x20 ,  4 ( x15 )
.LBB0_14:                               //  %cleanup.sink.split
	lw x14 ,  0 ( x21 )
	sw x14 ,  8 ( x15 )
	sw x9 ,  0 ( x21 )
	jal x0, .LBB0_16
.LBB0_15:
	addi x20 ,  x0 ,  3
.LBB0_16:                               //  %cleanup.sink.split
	lui x30 ,  _gmonparam.0&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	sw x20 ,  0 ( x15 )
.LBB0_17:                               //  %cleanup
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
.Lfunc_end0:
	.size	_mcount_internal, .Lfunc_end0-_mcount_internal
	.cfi_endproc
                                        //  -- End function
	.globl	_monstartup             //  -- Begin function _monstartup
	.type	_monstartup,@function
_monstartup:                            //  @_monstartup
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  _gmonparam.0&4095
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lui x18 ,  (_gmonparam.0>>12)&1048575
	addi x14 ,  x0 ,  2
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lui x19 ,  (_gmonparam.2>>12)&1048575
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	lui x30 ,  _gmonparam.11&4095
	sw x14 ,  0 ( x15 )
	lui x15 ,  (_gmonparam.11>>12)&1048575
	srli x30 ,  x30 ,  12&31
	slti x14 ,  x0 ,  1
	or x15 ,  x15 ,  x30
	lui x30 ,  _gmonparam.8&4095
	sb x14 ,  0 ( x15 )
	lui x14 ,  (_gmonparam.8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x10 ,  -4
	addi x10 ,  x0 ,  8
	or x14 ,  x14 ,  x30
	lui x30 ,  _gmonparam.10&4095
	sw x15 ,  0 ( x14 )
	addi x14 ,  x11 ,  3
	srli x30 ,  x30 ,  12&31
	andi x14 ,  x14 ,  -4
	sub x9 ,  x14 ,  x15
	lui x15 ,  (_gmonparam.10>>12)&1048575
	or x15 ,  x15 ,  x30
	lui x30 ,  _gmonparam.2&4095
	srli x20 ,  x9 ,  1&31
	sw x9 ,  0 ( x15 )
	addi x15 ,  x20 ,  3
	srli x30 ,  x30 ,  12&31
	andi x21 ,  x15 ,  -4
	or x15 ,  x19 ,  x30
	sw x21 ,  0 ( x15 )
	call ffs
	lui x30 ,  _gmonparam.12&4095
	lui x14 ,  (_gmonparam.12>>12)&1048575
	addi x15 ,  x10 ,  -1
	addi x8 ,  x0 ,  3
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x8
	or x14 ,  x14 ,  x30
	lui x30 ,  _gmonparam.4&4095
	sw x15 ,  0 ( x14 )
	lui x15 ,  (_gmonparam.4>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x20 ,  0 ( x15 )
	call __mulsi3
	addi x11 ,  x0 ,  100
	add x9 ,  x0 ,  x10
	call __udivsi3
	lui x30 ,  _gmonparam.7&4095
	lui x15 ,  (_gmonparam.7>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	sw x10 ,  0 ( x14 )
	srli x14 ,  x9 ,  3&31
	sltiu x14 ,  x14 ,  625
	beq x0, x14, .LBB1_2
.LBB1_1:
	addi x10 ,  x0 ,  50
	jal x0, .LBB1_4
.LBB1_2:                                //  %if.else
	lui x30 ,  104857700&4095
	lui x14 ,  (104857700>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x9, x14, .LBB1_5
.LBB1_3:
	lui x10 ,  (1048576>>12)&1048575
.LBB1_4:                                //  %if.end29.sink.split
	lui x30 ,  _gmonparam.7&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x10 ,  0 ( x15 )
.LBB1_5:                                //  %if.end29
	addi x11 ,  x0 ,  12
	call __mulsi3
	lui x30 ,  _gmonparam.6&4095
	lui x22 ,  (_gmonparam.6>>12)&1048575
	slti x9 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x9
	or x15 ,  x22 ,  x30
	sw x10 ,  0 ( x15 )
	add x15 ,  x20 ,  x21
	add x10 ,  x10 ,  x15
	call calloc
	beq x0, x10, .LBB1_6
.LBB1_7:                                //  %if.end42
	lui x30 ,  _gmonparam.0&4095
	lui x14 ,  (_gmonparam.1>>12)&1048575
	sw x0 ,  8 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	lui x30 ,  _gmonparam.6&4095
	srli x30 ,  x30 ,  12&31
	sw x9 ,  0 ( x15 )
	or x15 ,  x22 ,  x30
	lui x30 ,  _gmonparam.1&4095
	lw x15 ,  0 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  _gmonparam.2&4095
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x10
	sw x15 ,  0 ( x14 )
	or x14 ,  x19 ,  x30
	lui x30 ,  _gmonparam.3&4095
	lw x14 ,  0 ( x14 )
	srli x30 ,  x30 ,  12&31
	add x15 ,  x14 ,  x15
	lui x14 ,  (_gmonparam.3>>12)&1048575
	or x14 ,  x14 ,  x30
	lui x30 ,  _gmonparam.5&4095
	sw x15 ,  0 ( x14 )
	lui x15 ,  (_gmonparam.5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _mcleanup&4095
	sw x10 ,  0 ( x15 )
	lui x15 ,  (_mcleanup>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call atexit
	jal x0, .LBB1_8
.LBB1_6:                                //  %if.then39
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x10 ,  x0 ,  2
	addi x12 ,  x0 ,  26
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call write
	lui x30 ,  _gmonparam.0&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	lui x30 ,  _gmonparam.5&4095
	sw x8 ,  0 ( x15 )
	lui x15 ,  (_gmonparam.5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x0 ,  0 ( x15 )
.LBB1_8:                                //  %cleanup
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
.Lfunc_end1:
	.size	_monstartup, .Lfunc_end1-_monstartup
	.cfi_endproc
                                        //  -- End function
	.globl	_mcleanup               //  -- Begin function _mcleanup
	.type	_mcleanup,@function
_mcleanup:                              //  @_mcleanup
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -528
	.cfi_adjust_cfa_offset 528
	lui x30 ,  _gmonparam.0&4095
	lui x15 ,  (_gmonparam.0>>12)&1048575
	sw x25 ,  488 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	lui x25 ,  (_gmonparam.5>>12)&1048575
	sw x1 ,  524 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  520 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  516 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  512 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  508 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  504 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  500 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  496 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  492 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  484 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  480 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  476 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	lw x14 ,  0 ( x14 )
	xori x14 ,  x14 ,  3
	beq x0, x14, .LBB2_17
.LBB2_1:                                //  %if.then
	lui x30 ,  _gmonparam.0&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	sw x0 ,  0 ( x15 )
	addi x15 ,  x0 ,  1537
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x2 )
	addi x15 ,  x0 ,  438
	sw x15 ,  8 ( x2 )
	lui x15 ,  (.str.1>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x2 )
	call open
	add x9 ,  x0 ,  x10
	blt x9, x0, .LBB2_2
.LBB2_3:                                //  %if.end.i
	addi x18 ,  x2 ,  32
	add x26 ,  x0 ,  x0
	addi x19 ,  x0 ,  20
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	call memset
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	addi x12 ,  x0 ,  4
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call memcpy
	slti x8 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	sw x8 ,  36 ( x2 )
	call write
	lui x30 ,  _gmonparam.4&4095
	lui x15 ,  (_gmonparam.4>>12)&1048575
	addi x18 ,  x2 ,  60
	sb x8 ,  463 ( x2 )
	sb x8 ,  60 ( x2 )
	srli x30 ,  x30 ,  12&31
	sb x8 ,  390 ( x18 )
	sb x8 ,  377 ( x18 )
	sb x8 ,  364 ( x18 )
	sb x8 ,  351 ( x18 )
	sb x8 ,  338 ( x18 )
	sb x8 ,  325 ( x18 )
	sb x8 ,  312 ( x18 )
	sb x8 ,  299 ( x18 )
	sb x8 ,  286 ( x18 )
	sb x8 ,  273 ( x18 )
	sb x8 ,  260 ( x18 )
	sb x8 ,  247 ( x18 )
	sb x8 ,  234 ( x18 )
	sb x8 ,  221 ( x18 )
	sb x8 ,  208 ( x18 )
	sb x8 ,  195 ( x18 )
	sb x8 ,  182 ( x18 )
	sb x8 ,  169 ( x18 )
	sb x8 ,  156 ( x18 )
	sb x8 ,  143 ( x18 )
	sb x8 ,  130 ( x18 )
	sb x8 ,  117 ( x18 )
	sb x8 ,  104 ( x18 )
	sb x8 ,  91 ( x18 )
	sb x8 ,  78 ( x18 )
	sb x8 ,  65 ( x18 )
	sb x8 ,  52 ( x18 )
	sb x8 ,  39 ( x18 )
	sb x8 ,  26 ( x18 )
	sb x8 ,  13 ( x18 )
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	srli x15 ,  x15 ,  2&31
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB2_16
.LBB2_4:                                //  %for.body3.lr.ph.i.i
	add x19 ,  x0 ,  x26
	addi x20 ,  x0 ,  12
	addi x21 ,  x0 ,  13
	addi x22 ,  x2 ,  56
	addi x23 ,  x0 ,  4
	addi x24 ,  x2 ,  52
	sw x9 ,  28 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB2_5
.LBB2_13:                               //  %for.inc28.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	addi x26 ,  x26 ,  1
	bgeu x26, x15, .LBB2_14
.LBB2_5:                                //  %for.body3.i.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_10 Depth 2
	lui x30 ,  _gmonparam.3&4095
	lui x15 ,  (_gmonparam.3>>12)&1048575
	slli x14 ,  x26 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	add x9 ,  x14 ,  x15
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB2_13
.LBB2_6:                                //  %if.end.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lui x30 ,  _gmonparam.11&4095
	lui x15 ,  (_gmonparam.11>>12)&1048575
	addi x11 ,  x0 ,  2
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB2_8
.LBB2_7:                                //  %if.end.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	add x11 ,  x0 ,  x0
.LBB2_8:                                //  %if.end.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	add x10 ,  x0 ,  x26
	call __mulsi3
	lui x30 ,  _gmonparam.8&4095
	lui x14 ,  (_gmonparam.8>>12)&1048575
	slli x15 ,  x10 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lw x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	sw x15 ,  56 ( x2 )
	lw x27 ,  0 ( x9 )
	beq x0, x27, .LBB2_13
.LBB2_9:                                //  %for.body10.preheader.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lui x30 ,  _gmonparam.5&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	lw x8 ,  0 ( x15 )
	jal x0, .LBB2_10
.LBB2_12:                               //  %if.end24.i.i
                                        //    in Loop: Header=BB2_10 Depth=2
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x20
	call __mulsi3
	lui x30 ,  _gmonparam.5&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	lw x8 ,  0 ( x15 )
	add x15 ,  x10 ,  x8
	lw x27 ,  8 ( x15 )
	beq x0, x27, .LBB2_13
.LBB2_10:                               //  %for.body10.i.i
                                        //    Parent Loop BB2_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x20
	call __mulsi3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x15 ,  x9 ,  x8
	lw x15 ,  4 ( x15 )
	sw x15 ,  52 ( x2 )
	call __mulsi3
	add x8 ,  x10 ,  x18
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	addi x10 ,  x8 ,  1
	call memcpy
	lui x30 ,  _gmonparam.5&4095
	addi x10 ,  x8 ,  5
	add x12 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	lw x15 ,  0 ( x15 )
	add x11 ,  x9 ,  x15
	call memcpy
	addi x10 ,  x8 ,  9
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x23
	call memcpy
	addi x19 ,  x19 ,  1
	xori x15 ,  x19 ,  32
	bltu x0, x15, .LBB2_12
.LBB2_11:                               //  %if.then21.i.i
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x10 ,  28 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x18
	addi x12 ,  x0 ,  416
	call write
	add x19 ,  x0 ,  x0
	jal x0, .LBB2_12
.LBB2_2:                                //  %if.then.i
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	addi x10 ,  x0 ,  2
	addi x12 ,  x0 ,  37
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call write
	jal x0, .LBB2_17
.LBB2_14:                               //  %for.end30.i.i
	lw x9 ,  28 ( x2 )              //  4-byte Folded Reload
	bge x0, x19, .LBB2_16
.LBB2_15:                               //  %if.then32.i.i
	addi x11 ,  x0 ,  13
	add x10 ,  x0 ,  x19
	call __mulsi3
	add x12 ,  x0 ,  x10
	addi x11 ,  x2 ,  60
	add x10 ,  x0 ,  x9
	call write
.LBB2_16:                               //  %write_call_graph.exit.i
	add x10 ,  x0 ,  x9
	call close
.LBB2_17:                               //  %if.end
	lui x30 ,  _gmonparam.5&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB2_19
.LBB2_18:                               //  %if.then2
	call free
	lui x30 ,  _gmonparam.5&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	sw x0 ,  0 ( x15 )
.LBB2_19:                               //  %if.end3
	lw x8 ,  476 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  480 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  484 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  488 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  492 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  496 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  500 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  504 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  508 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  512 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  516 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  520 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  524 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  528
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_mcleanup, .Lfunc_end2-_mcleanup
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"monstartup: out of memory\n"
	.size	.str, 27

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"gmon.out"
	.size	.str.1, 9

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"_mcleanup: could not create gmon.out\n"
	.size	.str.2, 38

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"gmon"
	.size	.str.3, 5

	.address_space	0
	.type	_gmonparam.0,@object    //  @_gmonparam.0
	.local	_gmonparam.0
	.comm	_gmonparam.0,4,4
	.address_space	0
	.type	_gmonparam.1,@object    //  @_gmonparam.1
	.local	_gmonparam.1
	.comm	_gmonparam.1,4,4
	.address_space	0
	.type	_gmonparam.2,@object    //  @_gmonparam.2
	.local	_gmonparam.2
	.comm	_gmonparam.2,4,4
	.address_space	0
	.type	_gmonparam.3,@object    //  @_gmonparam.3
	.local	_gmonparam.3
	.comm	_gmonparam.3,4,4
	.address_space	0
	.type	_gmonparam.4,@object    //  @_gmonparam.4
	.local	_gmonparam.4
	.comm	_gmonparam.4,4,4
	.address_space	0
	.type	_gmonparam.5,@object    //  @_gmonparam.5
	.local	_gmonparam.5
	.comm	_gmonparam.5,4,4
	.address_space	0
	.type	_gmonparam.6,@object    //  @_gmonparam.6
	.local	_gmonparam.6
	.comm	_gmonparam.6,4,4
	.address_space	0
	.type	_gmonparam.7,@object    //  @_gmonparam.7
	.local	_gmonparam.7
	.comm	_gmonparam.7,4,4
	.address_space	0
	.type	_gmonparam.8,@object    //  @_gmonparam.8
	.local	_gmonparam.8
	.comm	_gmonparam.8,4,4
	.address_space	0
	.type	_gmonparam.10,@object   //  @_gmonparam.10
	.local	_gmonparam.10
	.comm	_gmonparam.10,4,4
	.address_space	0
	.type	_gmonparam.11,@object   //  @_gmonparam.11
	.local	_gmonparam.11
	.comm	_gmonparam.11,1,4
	.address_space	0
	.type	_gmonparam.12,@object   //  @_gmonparam.12
	.local	_gmonparam.12
	.comm	_gmonparam.12,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
