	.text
	.file	"fopencookie.c"
	.globl	_fopencookie_r          //  -- Begin function _fopencookie_r
	.type	_fopencookie_r,@function
_fopencookie_r:                         //  @_fopencookie_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	add x15 ,  x0 ,  x12
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	addi x12 ,  x2 ,  8
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x8 ,  x0 ,  x13
	add x21 ,  x0 ,  x10
	add x11 ,  x0 ,  x15
	call __sflags
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x0
	beq x0, x20, .LBB0_12
.LBB0_1:                                //  %if.end
	andi x15 ,  x20 ,  20
	beq x0, x15, .LBB0_3
.LBB0_2:                                //  %land.lhs.true
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_5
.LBB0_3:                                //  %lor.lhs.false
	andi x15 ,  x20 ,  24
	beq x0, x15, .LBB0_6
.LBB0_4:                                //  %land.lhs.true4
	lw x15 ,  4 ( x8 )
	beq x0, x15, .LBB0_5
.LBB0_6:                                //  %if.end7
	add x10 ,  x0 ,  x21
	call __sfp
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_12
.LBB0_7:                                //  %if.end11
	addi x11 ,  x0 ,  24
	add x10 ,  x0 ,  x21
	call _malloc_r
	beq x0, x10, .LBB0_8
.LBB0_9:                                //  %if.end15
	lw x15 ,  8 ( x8 )
	lui x30 ,  fcseeker&4095
	lui x14 ,  (fcseeker>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB0_11
.LBB0_10:                               //  %if.end15
	add x14 ,  x0 ,  x13
.LBB0_11:                               //  %if.end15
	lui x30 ,  65535&4095
	sw x14 ,  40 ( x18 )
	lw x14 ,  0 ( x8 )
	lui x13 ,  (65535>>12)&1048575
	sw x15 ,  16 ( x10 )
	add x19 ,  x0 ,  x18
	sh x20 ,  12 ( x18 )
	sw x9 ,  0 ( x10 )
	sw x18 ,  4 ( x10 )
	sw x10 ,  28 ( x18 )
	srli x30 ,  x30 ,  12&31
	lw x15 ,  12 ( x8 )
	or x13 ,  x13 ,  x30
	lui x30 ,  fcreader&4095
	sh x13 ,  14 ( x18 )
	lui x13 ,  (fcreader>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  fcwriter&4095
	sw x14 ,  8 ( x10 )
	lw x14 ,  4 ( x8 )
	sw x13 ,  32 ( x18 )
	lui x13 ,  (fcwriter>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sw x15 ,  20 ( x10 )
	or x13 ,  x13 ,  x30
	lui x30 ,  fccloser&4095
	sw x13 ,  36 ( x18 )
	lui x13 ,  (fccloser>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x14 ,  12 ( x10 )
	sw x13 ,  44 ( x18 )
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.then6
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x21 )
	jal x0, .LBB0_12
.LBB0_8:                                //  %if.then14
	call __sfp_lock_acquire
	sh x0 ,  12 ( x18 )
	call __sfp_lock_release
.LBB0_12:                               //  %cleanup
	add x10 ,  x0 ,  x19
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
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
	.size	_fopencookie_r, .Lfunc_end0-_fopencookie_r
	.cfi_endproc
                                        //  -- End function
	.type	fcreader,@function      //  -- Begin function fcreader
fcreader:                               //  @fcreader
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x9 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call __errno
	sw x0 ,  0 ( x10 )
	lw x15 ,  8 ( x19 )
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	lw x10 ,  0 ( x19 )
	call_reg, 0 ( x15 )
	add x9 ,  x0 ,  x10
	bge x9, x0, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	call __errno
	lw x15 ,  0 ( x10 )
	beq x0, x15, .LBB1_3
.LBB1_2:                                //  %if.then
	call __errno
	lw x15 ,  0 ( x10 )
	sw x15 ,  0 ( x8 )
.LBB1_3:                                //  %if.end
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	fcreader, .Lfunc_end1-fcreader
	.cfi_endproc
                                        //  -- End function
	.type	fcwriter,@function      //  -- Begin function fcwriter
fcwriter:                               //  @fcwriter
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x11
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x9 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x8 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x15 ,  4 ( x19 )
	lbu x14 ,  13 ( x15 )
	andi x14 ,  x14 ,  1
	beq x0, x14, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	lw x15 ,  40 ( x15 )
	beq x0, x15, .LBB2_3
.LBB2_2:                                //  %if.then
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  2
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call_reg, 0 ( x15 )
.LBB2_3:                                //  %if.end
	call __errno
	sw x0 ,  0 ( x10 )
	lw x15 ,  12 ( x19 )
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	lw x10 ,  0 ( x19 )
	call_reg, 0 ( x15 )
	add x9 ,  x0 ,  x10
	bge x9, x0, .LBB2_6
.LBB2_4:                                //  %land.lhs.true9
	call __errno
	lw x15 ,  0 ( x10 )
	beq x0, x15, .LBB2_6
.LBB2_5:                                //  %if.then12
	call __errno
	lw x15 ,  0 ( x10 )
	sw x15 ,  0 ( x8 )
.LBB2_6:                                //  %if.end14
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	fcwriter, .Lfunc_end2-fcwriter
	.cfi_endproc
                                        //  -- End function
	.type	fcseeker,@function      //  -- Begin function fcseeker
fcseeker:                               //  @fcseeker
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x9 ,  x0 ,  x13
	add x18 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x12 ,  4 ( x2 )
	call __errno
	sw x0 ,  0 ( x10 )
	lw x15 ,  16 ( x18 )
	addi x11 ,  x2 ,  4
	add x12 ,  x0 ,  x9
	lw x10 ,  0 ( x18 )
	call_reg, 0 ( x15 )
	bge x10, x0, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	call __errno
	lw x15 ,  0 ( x10 )
	beq x0, x15, .LBB3_3
.LBB3_2:                                //  %if.then
	call __errno
	lw x15 ,  0 ( x10 )
	sw x15 ,  0 ( x8 )
.LBB3_3:                                //  %if.end
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	fcseeker, .Lfunc_end3-fcseeker
	.cfi_endproc
                                        //  -- End function
	.type	fccloser,@function      //  -- Begin function fccloser
fccloser:                               //  @fccloser
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x15 ,  20 ( x8 )
	beq x0, x15, .LBB4_1
.LBB4_2:                                //  %if.then
	call __errno
	sw x0 ,  0 ( x10 )
	lw x15 ,  20 ( x8 )
	lw x10 ,  0 ( x8 )
	call_reg, 0 ( x15 )
	add x18 ,  x0 ,  x10
	bge x18, x0, .LBB4_5
.LBB4_3:                                //  %land.lhs.true
	call __errno
	lw x15 ,  0 ( x10 )
	beq x0, x15, .LBB4_5
.LBB4_4:                                //  %if.then6
	call __errno
	lw x15 ,  0 ( x10 )
	sw x15 ,  0 ( x9 )
	jal x0, .LBB4_5
.LBB4_1:
	add x18 ,  x0 ,  x0
.LBB4_5:                                //  %if.end8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _free_r
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	fccloser, .Lfunc_end4-fccloser
	.cfi_endproc
                                        //  -- End function
	.globl	fopencookie             //  -- Begin function fopencookie
	.type	fopencookie,@function
fopencookie:                            //  @fopencookie
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	addi x13 ,  x2 ,  4
	lui x30 ,  _impure_ptr&4095
	add x15 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	lw x14 ,  4 ( x12 )
	srli x30 ,  x30 ,  12&31
	sw x14 ,  4 ( x13 )
	lw x14 ,  8 ( x12 )
	sw x14 ,  8 ( x13 )
	lw x14 ,  0 ( x12 )
	sw x14 ,  4 ( x2 )
	lw x14 ,  12 ( x12 )
	add x12 ,  x0 ,  x15
	sw x14 ,  16 ( x2 )
	lui x14 ,  (_impure_ptr>>12)&1048575
	or x14 ,  x14 ,  x30
	lw x10 ,  0 ( x14 )
	call _fopencookie_r
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end5:
	.size	fopencookie, .Lfunc_end5-fopencookie
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
