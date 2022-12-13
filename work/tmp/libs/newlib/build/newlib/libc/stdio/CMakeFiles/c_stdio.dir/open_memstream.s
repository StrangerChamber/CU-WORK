	.text
	.file	"open_memstream.c"
	.globl	_open_memstream_r       //  -- Begin function _open_memstream_r
	.type	_open_memstream_r,@function
_open_memstream_r:                      //  @_open_memstream_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x13 ,  x0 ,  -1
	jal x0, internal_open_memstream_r
.Lfunc_end0:
	.size	_open_memstream_r, .Lfunc_end0-_open_memstream_r
	.cfi_endproc
                                        //  -- End function
	.type	internal_open_memstream_r,@function //  -- Begin function internal_open_memstream_r
internal_open_memstream_r:              //  @internal_open_memstream_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x9 ,  x0 ,  x13
	add x21 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x22 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	beq x0, x20, .LBB1_2
.LBB1_1:                                //  %entry
	beq x0, x21, .LBB1_2
.LBB1_3:                                //  %if.end
	add x10 ,  x0 ,  x22
	call __sfp
	add x8 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	beq x0, x8, .LBB1_22
.LBB1_4:                                //  %if.end3
	addi x11 ,  x0 ,  32
	add x10 ,  x0 ,  x22
	call _malloc_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB1_5
.LBB1_6:                                //  %if.end7
	lw x15 ,  0 ( x21 )
	slti x14 ,  x0 ,  1
	bne x9, x14, .LBB1_8
.LBB1_7:
	slli x15 ,  x15 ,  2&31
.LBB1_8:                                //  %if.end7
	sltiu x14 ,  x15 ,  64
	sw x15 ,  20 ( x19 )
	beq x0, x14, .LBB1_10
.LBB1_9:
	addi x15 ,  x0 ,  64
	jal x0, .LBB1_12
.LBB1_2:                                //  %if.then
	addi x15 ,  x0 ,  22
	add x18 ,  x0 ,  x0
	sw x15 ,  0 ( x22 )
.LBB1_22:                               //  %cleanup
	add x10 ,  x0 ,  x18
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
.LBB1_5:                                //  %if.then6
	call __sfp_lock_acquire
	sh x0 ,  12 ( x8 )
	call __sfp_lock_release
	jal x0, .LBB1_22
.LBB1_10:                               //  %if.else
	lui x30 ,  65537&4095
	lui x14 ,  (65537>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB1_13
.LBB1_11:
	lui x15 ,  (65536>>12)&1048575
.LBB1_12:                               //  %if.end21.sink.split
	sw x15 ,  20 ( x19 )
.LBB1_13:                               //  %if.end21
	sw x0 ,  0 ( x21 )
	add x10 ,  x0 ,  x22
	lw x11 ,  20 ( x19 )
	call _malloc_r
	sw x10 ,  0 ( x20 )
	beq x0, x10, .LBB1_14
.LBB1_15:                               //  %if.end27
	xori x15 ,  x9 ,  1
	bltu x0, x15, .LBB1_17
.LBB1_16:                               //  %if.then29
	sw x0 ,  0 ( x10 )
	jal x0, .LBB1_18
.LBB1_14:                               //  %if.then25
	call __sfp_lock_acquire
	sh x0 ,  12 ( x8 )
	call __sfp_lock_release
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x19
	call _free_r
	jal x0, .LBB1_22
.LBB1_17:                               //  %if.else30
	sb x0 ,  0 ( x10 )
.LBB1_18:                               //  %if.then45
	lui x30 ,  memwriter&4095
	lui x15 ,  (memwriter>>12)&1048575
	sw x0 ,  24 ( x19 )
	sw x21 ,  8 ( x19 )
	sw x20 ,  4 ( x19 )
	sb x9 ,  28 ( x19 )
	sw x0 ,  16 ( x19 )
	sw x0 ,  12 ( x19 )
	sw x19 ,  0 ( x19 )
	sw x19 ,  28 ( x8 )
	sw x0 ,  32 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  memseeker&4095
	sw x15 ,  36 ( x8 )
	lui x15 ,  (memseeker>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  memcloser&4095
	sw x15 ,  40 ( x8 )
	lui x15 ,  (memcloser>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -57336&4095
	sw x15 ,  44 ( x8 )
	lui x15 ,  (-57336>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  12 ( x8 )
	lw x15 ,  100 ( x8 )
	bge x0, x9, .LBB1_20
.LBB1_19:                               //  %if.then51
	lui x14 ,  (8192>>12)&1048575
	or x15 ,  x14 ,  x15
	jal x0, .LBB1_21
.LBB1_20:                               //  %if.else54
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
.LBB1_21:                               //  %cleanup
	add x18 ,  x0 ,  x8
	sw x15 ,  100 ( x8 )
	jal x0, .LBB1_22
.Lfunc_end1:
	.size	internal_open_memstream_r, .Lfunc_end1-internal_open_memstream_r
	.cfi_endproc
                                        //  -- End function
	.globl	_open_wmemstream_r      //  -- Begin function _open_wmemstream_r
	.type	_open_wmemstream_r,@function
_open_wmemstream_r:                     //  @_open_wmemstream_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	slti x13 ,  x0 ,  1
	jal x0, internal_open_memstream_r
.Lfunc_end2:
	.size	_open_wmemstream_r, .Lfunc_end2-_open_wmemstream_r
	.cfi_endproc
                                        //  -- End function
	.globl	open_memstream          //  -- Begin function open_memstream
	.type	open_memstream,@function
open_memstream:                         //  @open_memstream
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	addi x13 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, internal_open_memstream_r
.Lfunc_end3:
	.size	open_memstream, .Lfunc_end3-open_memstream
	.cfi_endproc
                                        //  -- End function
	.globl	open_wmemstream         //  -- Begin function open_wmemstream
	.type	open_wmemstream,@function
open_wmemstream:                        //  @open_wmemstream
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	slti x13 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, internal_open_memstream_r
.Lfunc_end4:
	.size	open_wmemstream, .Lfunc_end4-open_wmemstream
	.cfi_endproc
                                        //  -- End function
	.type	memwriter,@function     //  -- Begin function memwriter
memwriter:                              //  @memwriter
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x13
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x18 ,  x0 ,  x12
	add x20 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x15 ,  12 ( x9 )
	add x21 ,  x8 ,  x15
	blt x21, x0, .LBB5_1
.LBB5_2:                                //  %if.end
	lw x14 ,  4 ( x9 )
	lw x10 ,  20 ( x9 )
	lw x19 ,  0 ( x14 )
	bltu x21, x10, .LBB5_8
.LBB5_3:                                //  %if.then4
	addi x11 ,  x0 ,  3
	call __mulsi3
	srli x15 ,  x10 ,  1&31
	addi x21 ,  x21 ,  1
	bltu x15, x21, .LBB5_5
.LBB5_4:                                //  %if.then4
	add x21 ,  x0 ,  x15
.LBB5_5:                                //  %if.then4
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x21
	call _realloc_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB5_6
.LBB5_7:                                //  %if.end16
	lw x15 ,  4 ( x9 )
	sw x21 ,  20 ( x9 )
	sw x19 ,  0 ( x15 )
	lw x15 ,  12 ( x9 )
.LBB5_8:                                //  %if.end19
	lw x14 ,  16 ( x9 )
	bgeu x14, x15, .LBB5_10
.LBB5_9:                                //  %if.then22
	add x10 ,  x14 ,  x19
	sub x12 ,  x15 ,  x14
	add x11 ,  x0 ,  x0
	call memset
	lw x15 ,  12 ( x9 )
.LBB5_10:                               //  %if.end27
	add x10 ,  x15 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	call memcpy
	lw x15 ,  12 ( x9 )
	lw x13 ,  16 ( x9 )
	add x14 ,  x8 ,  x15
	add x15 ,  x14 ,  x19
	sw x14 ,  12 ( x9 )
	bgeu x13, x14, .LBB5_12
.LBB5_11:                               //  %if.then36
	sw x14 ,  16 ( x9 )
	jal x0, .LBB5_15
.LBB5_1:                                //  %if.then
	addi x15 ,  x0 ,  27
	addi x8 ,  x0 ,  -1
	sw x15 ,  0 ( x20 )
	jal x0, .LBB5_18
.LBB5_12:                               //  %if.else
	lb x14 ,  28 ( x9 )
	bge x0, x14, .LBB5_14
.LBB5_13:                               //  %if.then41
	lw x14 ,  0 ( x15 )
	sw x14 ,  24 ( x9 )
	jal x0, .LBB5_15
.LBB5_6:
	addi x8 ,  x0 ,  -1
	jal x0, .LBB5_18
.LBB5_14:                               //  %if.else44
	lb x14 ,  0 ( x15 )
	sb x14 ,  24 ( x9 )
.LBB5_15:                               //  %if.end49
	sb x0 ,  0 ( x15 )
	add x13 ,  x0 ,  x0
	lb x14 ,  28 ( x9 )
	lw x15 ,  12 ( x9 )
	bge x13, x14, .LBB5_17
.LBB5_16:
	srli x15 ,  x15 ,  2&31
.LBB5_17:                               //  %if.end49
	lw x14 ,  8 ( x9 )
	sw x15 ,  0 ( x14 )
.LBB5_18:                               //  %cleanup59
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
.Lfunc_end5:
	.size	memwriter, .Lfunc_end5-memwriter
	.cfi_endproc
                                        //  -- End function
	.type	memseeker,@function     //  -- Begin function memseeker
memseeker:                              //  @memseeker
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	xori x15 ,  x13 ,  1
	beq x0, x15, .LBB6_1
.LBB6_2:                                //  %entry
	xori x15 ,  x13 ,  2
	bltu x0, x15, .LBB6_5
.LBB6_3:                                //  %if.then3
	addi x15 ,  x0 ,  16
	jal x0, .LBB6_4
.LBB6_1:
	addi x15 ,  x0 ,  12
.LBB6_4:                                //  %if.end5.sink.split
	add x15 ,  x15 ,  x11
	lw x15 ,  0 ( x15 )
	add x12 ,  x12 ,  x15
.LBB6_5:                                //  %if.end5
	blt x12, x0, .LBB6_6
.LBB6_7:                                //  %if.else12
	lw x14 ,  12 ( x11 )
	lw x15 ,  16 ( x11 )
	bgeu x14, x15, .LBB6_12
.LBB6_8:                                //  %if.then16
	lb x15 ,  28 ( x11 )
	bge x0, x15, .LBB6_10
.LBB6_9:                                //  %if.then19
	lw x15 ,  4 ( x11 )
	lw x15 ,  0 ( x15 )
	add x15 ,  x14 ,  x15
	lw x14 ,  24 ( x11 )
	sw x14 ,  0 ( x15 )
	jal x0, .LBB6_11
.LBB6_6:                                //  %if.then7
	addi x15 ,  x0 ,  22
	addi x12 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x12
	ret
.LBB6_10:                               //  %if.else21
	lw x15 ,  4 ( x11 )
	lw x15 ,  0 ( x15 )
	add x15 ,  x14 ,  x15
	lb x14 ,  24 ( x11 )
	sb x14 ,  0 ( x15 )
.LBB6_11:                               //  %if.end26
	lw x15 ,  16 ( x11 )
	sw x0 ,  24 ( x11 )
.LBB6_12:                               //  %if.end29
	lb x14 ,  28 ( x11 )
	sw x12 ,  12 ( x11 )
	bgeu x12, x15, .LBB6_15
.LBB6_13:                               //  %if.then35
	lw x15 ,  4 ( x11 )
	lw x13 ,  0 ( x15 )
	bge x0, x14, .LBB6_17
.LBB6_14:                               //  %if.then40
	add x14 ,  x12 ,  x13
	add x10 ,  x0 ,  x12
	lw x14 ,  0 ( x14 )
	sw x14 ,  24 ( x11 )
	lw x15 ,  0 ( x15 )
	add x15 ,  x12 ,  x15
	sw x0 ,  0 ( x15 )
	lw x15 ,  8 ( x11 )
	lw x14 ,  12 ( x11 )
	srli x14 ,  x14 ,  2&31
	sw x14 ,  0 ( x15 )
	ret
.LBB6_15:                               //  %if.else62
	bge x0, x14, .LBB6_18
.LBB6_16:                               //  %if.then67
	lw x14 ,  8 ( x11 )
	srli x15 ,  x15 ,  2&31
	add x10 ,  x0 ,  x12
	sw x15 ,  0 ( x14 )
	ret
.LBB6_17:                               //  %if.else50
	add x14 ,  x12 ,  x13
	lb x14 ,  0 ( x14 )
	sb x14 ,  24 ( x11 )
	lw x15 ,  0 ( x15 )
	add x15 ,  x12 ,  x15
	sb x0 ,  0 ( x15 )
	lw x15 ,  12 ( x11 )
.LBB6_18:                               //  %if.else71
	lw x14 ,  8 ( x11 )
	add x10 ,  x0 ,  x12
	sw x15 ,  0 ( x14 )
	ret
.Lfunc_end6:
	.size	memseeker, .Lfunc_end6-memseeker
	.cfi_endproc
                                        //  -- End function
	.type	memcloser,@function     //  -- Begin function memcloser
memcloser:                              //  @memcloser
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x15 )
	addi x12 ,  x15 ,  1
	lb x15 ,  28 ( x9 )
	bge x14, x15, .LBB7_2
.LBB7_1:
	slli x12 ,  x12 ,  2&31
.LBB7_2:                                //  %entry
	lw x15 ,  4 ( x9 )
	add x10 ,  x0 ,  x8
	lw x11 ,  0 ( x15 )
	call _realloc_r
	beq x0, x10, .LBB7_4
.LBB7_3:                                //  %if.then
	lw x15 ,  4 ( x9 )
	sw x10 ,  0 ( x15 )
.LBB7_4:                                //  %if.end
	lw x11 ,  0 ( x9 )
	add x10 ,  x0 ,  x8
	call _free_r
	add x10 ,  x0 ,  x0
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end7:
	.size	memcloser, .Lfunc_end7-memcloser
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
