	.text
	.file	"fmemopen.c"
	.globl	_fmemopen_r             //  -- Begin function _fmemopen_r
	.type	_fmemopen_r,@function
_fmemopen_r:                            //  @_fmemopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x13
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	addi x12 ,  x2 ,  4
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x21
	call __sflags
	add x8 ,  x0 ,  x10
	add x22 ,  x0 ,  x0
	beq x0, x8, .LBB0_5
.LBB0_1:                                //  %if.end
	beq x0, x19, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	andi x15 ,  x8 ,  16
	bltu x0, x15, .LBB0_6
.LBB0_3:                                //  %lor.lhs.false
	bltu x0, x20, .LBB0_6
.LBB0_4:                                //  %if.then4
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x18 )
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x22
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
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
.LBB0_6:                                //  %if.end5
	add x10 ,  x0 ,  x18
	call __sfp
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB0_5
.LBB0_7:                                //  %if.end9
	add x22 ,  x0 ,  x0
	bne x20, x22, .LBB0_15
.LBB0_8:                                //  %if.end9
	addi x11 ,  x19 ,  24
	add x10 ,  x0 ,  x18
	call _malloc_r
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_16
.LBB0_9:                                //  %if.end14
	srli x15 ,  x8 ,  3&31
	sw x19 ,  16 ( x18 )
	sb x0 ,  22 ( x18 )
	sw x18 ,  0 ( x18 )
	andi x15 ,  x15 ,  1
	sb x15 ,  21 ( x18 )
	beq x0, x20, .LBB0_17
.LBB0_10:                               //  %if.else
	sw x20 ,  4 ( x18 )
	lb x15 ,  0 ( x21 )
	xori x14 ,  x15 ,  119
	beq x0, x14, .LBB0_19
.LBB0_11:                               //  %if.else
	xori x14 ,  x15 ,  114
	beq x0, x14, .LBB0_18
.LBB0_12:                               //  %if.else
	xori x15 ,  x15 ,  97
	bltu x0, x15, .LBB0_29
.LBB0_13:                               //  %sw.bb
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	call memchr
	beq x0, x10, .LBB0_20
.LBB0_14:                               //  %cond.true31
	lw x15 ,  4 ( x18 )
	sub x15 ,  x10 ,  x15
	sw x15 ,  12 ( x18 )
	sw x15 ,  8 ( x18 )
	jal x0, .LBB0_22
.LBB0_15:
	addi x11 ,  x0 ,  24
	add x10 ,  x0 ,  x18
	call _malloc_r
	add x18 ,  x0 ,  x10
	bltu x0, x18, .LBB0_9
.LBB0_16:                               //  %if.then13
	call __sfp_lock_acquire
	sh x0 ,  12 ( x9 )
	call __sfp_lock_release
	add x22 ,  x0 ,  x0
	jal x0, .LBB0_5
.LBB0_17:                               //  %if.then19
	addi x15 ,  x18 ,  24
	sb x0 ,  24 ( x18 )
	sw x0 ,  12 ( x18 )
	sw x0 ,  8 ( x18 )
	sw x15 ,  4 ( x18 )
	srli x15 ,  x8 ,  8&31
	andi x15 ,  x15 ,  1
	jal x0, .LBB0_23
.LBB0_18:                               //  %sw.bb47
	sw x19 ,  12 ( x18 )
	sw x0 ,  8 ( x18 )
	sb x0 ,  20 ( x18 )
	jal x0, .LBB0_24
.LBB0_19:                               //  %sw.bb51
	sb x0 ,  20 ( x18 )
	sw x0 ,  12 ( x18 )
	sw x0 ,  8 ( x18 )
	sb x0 ,  0 ( x20 )
	jal x0, .LBB0_24
.LBB0_20:                               //  %land.lhs.true.critedge
	lbu x15 ,  21 ( x18 )
	sw x19 ,  12 ( x18 )
	sw x19 ,  8 ( x18 )
	beq x0, x15, .LBB0_22
.LBB0_21:                               //  %if.then42
	lw x15 ,  4 ( x18 )
	add x15 ,  x15 ,  x19
	sb x0 ,  -1 ( x15 )
.LBB0_22:                               //  %if.end45
	slti x15 ,  x0 ,  1
.LBB0_23:                               //  %if.end56
	sb x15 ,  20 ( x18 )
.LBB0_24:                               //  %if.end56
	lui x30 ,  fmemreader&4095
	lui x15 ,  (fmemreader>>12)&1048575
	andi x13 ,  x8 ,  20
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	add x15 ,  x0 ,  x22
	beq x13, x22, .LBB0_26
.LBB0_25:                               //  %if.end56
	add x15 ,  x0 ,  x14
.LBB0_26:                               //  %if.end56
	lui x30 ,  fmemwriter&4095
	lui x14 ,  (fmemwriter>>12)&1048575
	andi x13 ,  x8 ,  24
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x13, x22, .LBB0_28
.LBB0_27:                               //  %if.end56
	add x22 ,  x0 ,  x14
.LBB0_28:                               //  %if.end56
	lui x30 ,  fmemcloser&4095
	lui x14 ,  (fmemcloser>>12)&1048575
	sw x15 ,  32 ( x9 )
	lui x15 ,  (65535>>12)&1048575
	sw x22 ,  36 ( x9 )
	add x22 ,  x0 ,  x9
	sw x18 ,  28 ( x9 )
	sh x8 ,  12 ( x9 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  fmemseeker&4095
	sw x14 ,  44 ( x9 )
	lui x14 ,  (fmemseeker>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	sw x14 ,  40 ( x9 )
	or x15 ,  x15 ,  x30
	sh x15 ,  14 ( x9 )
	jal x0, .LBB0_5
.LBB0_29:                               //  %sw.default
	call abort
.Lfunc_end0:
	.size	_fmemopen_r, .Lfunc_end0-_fmemopen_r
	.cfi_endproc
                                        //  -- End function
	.type	fmemreader,@function    //  -- Begin function fmemreader
fmemreader:                             //  @fmemreader
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
	add x8 ,  x0 ,  x13
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x14 ,  12 ( x9 )
	lw x15 ,  8 ( x9 )
	bgeu x14, x15, .LBB1_2
.LBB1_1:
	add x8 ,  x0 ,  x0
	jal x0, .LBB1_5
.LBB1_2:                                //  %if.end
	sub x14 ,  x14 ,  x15
	bltu x8, x14, .LBB1_4
.LBB1_3:                                //  %if.end
	add x8 ,  x0 ,  x14
.LBB1_4:                                //  %if.end
	lw x14 ,  4 ( x9 )
	add x10 ,  x0 ,  x12
	add x12 ,  x0 ,  x8
	add x11 ,  x15 ,  x14
	call memcpy
	lw x15 ,  8 ( x9 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x9 )
.LBB1_5:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	fmemreader, .Lfunc_end1-fmemreader
	.cfi_endproc
                                        //  -- End function
	.type	fmemwriter,@function    //  -- Begin function fmemwriter
fmemwriter:                             //  @fmemwriter
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x11
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lbu x15 ,  20 ( x19 )
	beq x0, x15, .LBB2_2
.LBB2_1:                                //  %if.then
	lw x15 ,  12 ( x19 )
	addi x20 ,  x19 ,  8
	addi x21 ,  x19 ,  12
	sw x15 ,  8 ( x19 )
	add x13 ,  x0 ,  x15
	jal x0, .LBB2_4
.LBB2_2:                                //  %if.else
	lw x15 ,  12 ( x19 )
	addi x21 ,  x19 ,  12
	addi x20 ,  x19 ,  8
	lw x13 ,  8 ( x19 )
	bgeu x15, x13, .LBB2_4
.LBB2_3:                                //  %if.then3
	lw x14 ,  4 ( x19 )
	sub x12 ,  x13 ,  x15
	add x11 ,  x0 ,  x0
	add x10 ,  x15 ,  x14
	call memset
	lw x15 ,  12 ( x19 )
	lw x13 ,  8 ( x19 )
.LBB2_4:                                //  %if.end8
	lw x12 ,  16 ( x19 )
	add x14 ,  x8 ,  x13
	lb x11 ,  21 ( x19 )
	sub x10 ,  x12 ,  x11
	bltu x10, x14, .LBB2_5
.LBB2_6:                                //  %if.end8
	add x14 ,  x0 ,  x0
	add x13 ,  x13 ,  x8
	bltu x15, x13, .LBB2_8
.LBB2_10:                               //  %if.else39
	andi x15 ,  x11 ,  255
	beq x0, x15, .LBB2_14
.LBB2_11:                               //  %if.then42
	beq x0, x8, .LBB2_12
.LBB2_13:                               //  %if.then44
	sub x15 ,  x13 ,  x14
	lw x13 ,  4 ( x19 )
	add x15 ,  x15 ,  x13
	lb x13 ,  0 ( x15 )
	sb x13 ,  22 ( x19 )
	sb x0 ,  0 ( x15 )
	jal x0, .LBB2_14
.LBB2_5:
	sub x8 ,  x12 ,  x13
	add x14 ,  x0 ,  x11
	add x13 ,  x13 ,  x8
	bgeu x15, x13, .LBB2_10
.LBB2_8:                                //  %if.then25
	sub x15 ,  x13 ,  x14
	sw x13 ,  0 ( x21 )
	bgeu x15, x12, .LBB2_14
.LBB2_9:                                //  %if.then34
	lw x13 ,  4 ( x19 )
	add x15 ,  x15 ,  x13
	sb x0 ,  0 ( x15 )
	sb x0 ,  22 ( x19 )
	jal x0, .LBB2_14
.LBB2_12:
	add x14 ,  x0 ,  x0
.LBB2_14:                               //  %if.end59
	lw x15 ,  0 ( x20 )
	sub x12 ,  x8 ,  x14
	add x13 ,  x8 ,  x15
	sw x13 ,  0 ( x20 )
	beq x0, x12, .LBB2_16
.LBB2_15:                               //  %if.then64
	lw x14 ,  4 ( x19 )
	add x11 ,  x0 ,  x9
	add x10 ,  x15 ,  x14
	call memcpy
	jal x0, .LBB2_17
.LBB2_16:                               //  %if.else71
	addi x15 ,  x0 ,  28
	addi x8 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
.LBB2_17:                               //  %cleanup
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
	.size	fmemwriter, .Lfunc_end2-fmemwriter
	.cfi_endproc
                                        //  -- End function
	.type	fmemseeker,@function    //  -- Begin function fmemseeker
fmemseeker:                             //  @fmemseeker
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	xori x15 ,  x13 ,  1
	beq x0, x15, .LBB3_1
.LBB3_2:                                //  %entry
	xori x15 ,  x13 ,  2
	bltu x0, x15, .LBB3_5
.LBB3_3:                                //  %if.then3
	addi x15 ,  x0 ,  12
	jal x0, .LBB3_4
.LBB3_1:
	addi x15 ,  x0 ,  8
.LBB3_4:                                //  %if.end5.sink.split
	add x15 ,  x15 ,  x11
	lw x15 ,  0 ( x15 )
	add x12 ,  x12 ,  x15
.LBB3_5:                                //  %if.end5
	blt x12, x0, .LBB3_6
.LBB3_8:                                //  %if.else8
	lw x15 ,  16 ( x11 )
	bgeu x15, x12, .LBB3_10
.LBB3_9:                                //  %if.then10
	addi x15 ,  x0 ,  28
	addi x12 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x12
	ret
.LBB3_6:                                //  %if.then7
	addi x15 ,  x0 ,  22
	addi x12 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x12
	ret
.LBB3_10:                               //  %if.else12
	lbu x15 ,  21 ( x11 )
	beq x0, x15, .LBB3_11
.LBB3_12:                               //  %land.lhs.true
	lw x15 ,  8 ( x11 )
	lw x14 ,  12 ( x11 )
	bgeu x15, x14, .LBB3_13
.LBB3_14:                               //  %if.end20
	lw x14 ,  4 ( x11 )
	add x15 ,  x15 ,  x14
	lb x14 ,  22 ( x11 )
	sb x14 ,  0 ( x15 )
	sw x12 ,  8 ( x11 )
	sb x0 ,  22 ( x11 )
	lbu x15 ,  21 ( x11 )
	bltu x0, x15, .LBB3_15
	jal x0, .LBB3_17
.LBB3_11:                               //  %if.end20.thread
	add x10 ,  x0 ,  x12
	sw x12 ,  8 ( x11 )
	ret
.LBB3_13:                               //  %if.end20.thread71
	sw x12 ,  8 ( x11 )
.LBB3_15:                               //  %land.lhs.true25
	lw x15 ,  12 ( x11 )
	bgeu x12, x15, .LBB3_17
.LBB3_16:                               //  %if.then30
	lw x15 ,  4 ( x11 )
	add x15 ,  x12 ,  x15
	lb x14 ,  0 ( x15 )
	sb x14 ,  22 ( x11 )
	sb x0 ,  0 ( x15 )
.LBB3_17:                               //  %if.end40
	add x10 ,  x0 ,  x12
	ret
.Lfunc_end3:
	.size	fmemseeker, .Lfunc_end3-fmemseeker
	.cfi_endproc
                                        //  -- End function
	.type	fmemcloser,@function    //  -- Begin function fmemcloser
fmemcloser:                             //  @fmemcloser
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lw x11 ,  0 ( x11 )
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call _free_r
	add x10 ,  x0 ,  x0
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	fmemcloser, .Lfunc_end4-fmemcloser
	.cfi_endproc
                                        //  -- End function
	.globl	fmemopen                //  -- Begin function fmemopen
	.type	fmemopen,@function
fmemopen:                               //  @fmemopen
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _fmemopen_r
.Lfunc_end5:
	.size	fmemopen, .Lfunc_end5-fmemopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
