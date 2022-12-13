	.text
	.file	"funopen.c"
	.globl	_funopen_r              //  -- Begin function _funopen_r
	.type	_funopen_r,@function
_funopen_r:                             //  @_funopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x19 ,  x0 ,  x13
	add x20 ,  x0 ,  x12
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x18 ,  x0 ,  x15
	add x9 ,  x0 ,  x14
	add x21 ,  x0 ,  x11
	add x22 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	or x15 ,  x19 ,  x20
	beq x0, x15, .LBB0_7
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x22
	call __sfp
	add x8 ,  x0 ,  x10
	add x23 ,  x0 ,  x0
	beq x0, x8, .LBB0_8
.LBB0_2:                                //  %if.end3
	addi x11 ,  x0 ,  20
	add x10 ,  x0 ,  x22
	call _malloc_r
	beq x0, x10, .LBB0_9
.LBB0_3:                                //  %if.end7
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	sw x21 ,  0 ( x10 )
	sw x10 ,  28 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sh x15 ,  14 ( x8 )
	beq x0, x20, .LBB0_10
.LBB0_4:                                //  %if.then16
	lui x30 ,  funreader&4095
	lui x15 ,  (funreader>>12)&1048575
	sw x20 ,  4 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  32 ( x8 )
	beq x0, x19, .LBB0_11
.LBB0_5:                                //  %if.then19
	lui x30 ,  funwriter&4095
	addi x15 ,  x0 ,  16
	sw x19 ,  8 ( x10 )
	jal x0, .LBB0_6
.LBB0_7:                                //  %if.then
	addi x15 ,  x0 ,  22
	add x8 ,  x0 ,  x0
	sw x15 ,  0 ( x22 )
	jal x0, .LBB0_15
.LBB0_8:
	add x8 ,  x0 ,  x23
	jal x0, .LBB0_15
.LBB0_9:                                //  %if.then6
	call __sfp_lock_acquire
	sh x0 ,  12 ( x8 )
	call __sfp_lock_release
	add x8 ,  x0 ,  x23
	jal x0, .LBB0_15
.LBB0_10:                               //  %if.else26
	lui x30 ,  funwriter&4095
	addi x15 ,  x0 ,  8
	sw x19 ,  8 ( x10 )
	sw x0 ,  4 ( x10 )
	sw x0 ,  32 ( x8 )
.LBB0_6:                                //  %if.end32
	sh x15 ,  12 ( x8 )
	lui x15 ,  (funwriter>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  36 ( x8 )
	jal x0, .LBB0_12
.LBB0_11:                               //  %if.else
	addi x15 ,  x0 ,  4
	sw x0 ,  8 ( x10 )
	sw x0 ,  36 ( x8 )
	sh x15 ,  12 ( x8 )
.LBB0_12:                               //  %if.end32
	lui x30 ,  funseeker&4095
	lui x15 ,  (funseeker>>12)&1048575
	sw x18 ,  16 ( x10 )
	sw x9 ,  12 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	add x15 ,  x0 ,  x0
	beq x9, x15, .LBB0_14
.LBB0_13:                               //  %if.end32
	add x15 ,  x0 ,  x14
.LBB0_14:                               //  %if.end32
	lui x30 ,  funcloser&4095
	sw x15 ,  40 ( x8 )
	lui x15 ,  (funcloser>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  44 ( x8 )
.LBB0_15:                               //  %cleanup
	add x10 ,  x0 ,  x8
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
	.size	_funopen_r, .Lfunc_end0-_funopen_r
	.cfi_endproc
                                        //  -- End function
	.type	funreader,@function     //  -- Begin function funreader
funreader:                              //  @funreader
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
	lw x15 ,  4 ( x19 )
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
	.size	funreader, .Lfunc_end1-funreader
	.cfi_endproc
                                        //  -- End function
	.type	funwriter,@function     //  -- Begin function funwriter
funwriter:                              //  @funwriter
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
	bge x9, x0, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	call __errno
	lw x15 ,  0 ( x10 )
	beq x0, x15, .LBB2_3
.LBB2_2:                                //  %if.then
	call __errno
	lw x15 ,  0 ( x10 )
	sw x15 ,  0 ( x8 )
.LBB2_3:                                //  %if.end
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
	.size	funwriter, .Lfunc_end2-funwriter
	.cfi_endproc
                                        //  -- End function
	.type	funseeker,@function     //  -- Begin function funseeker
funseeker:                              //  @funseeker
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
	lw x15 ,  12 ( x19 )
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	lw x10 ,  0 ( x19 )
	call_reg, 0 ( x15 )
	add x9 ,  x0 ,  x10
	bge x9, x0, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	call __errno
	lw x15 ,  0 ( x10 )
	beq x0, x15, .LBB3_3
.LBB3_2:                                //  %if.then
	call __errno
	lw x15 ,  0 ( x10 )
	sw x15 ,  0 ( x8 )
.LBB3_3:                                //  %if.end
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	funseeker, .Lfunc_end3-funseeker
	.cfi_endproc
                                        //  -- End function
	.type	funcloser,@function     //  -- Begin function funcloser
funcloser:                              //  @funcloser
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
	lw x15 ,  16 ( x8 )
	beq x0, x15, .LBB4_1
.LBB4_2:                                //  %if.then
	call __errno
	sw x0 ,  0 ( x10 )
	lw x15 ,  16 ( x8 )
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
	.size	funcloser, .Lfunc_end4-funcloser
	.cfi_endproc
                                        //  -- End function
	.globl	funopen                 //  -- Begin function funopen
	.type	funopen,@function
funopen:                                //  @funopen
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  _impure_ptr&4095
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x14
	lui x14 ,  (_impure_ptr>>12)&1048575
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x9 ,  x0 ,  x13
	add x21 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x20
	or x14 ,  x14 ,  x30
	lw x22 ,  0 ( x14 )
	beq x0, x15, .LBB5_7
.LBB5_1:                                //  %if.end.i
	add x10 ,  x0 ,  x22
	call __sfp
	add x8 ,  x0 ,  x10
	add x23 ,  x0 ,  x0
	beq x0, x8, .LBB5_8
.LBB5_2:                                //  %if.end3.i
	addi x11 ,  x0 ,  20
	add x10 ,  x0 ,  x22
	call _malloc_r
	beq x0, x10, .LBB5_9
.LBB5_3:                                //  %if.end7.i
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	sw x21 ,  0 ( x10 )
	sw x10 ,  28 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sh x15 ,  14 ( x8 )
	beq x0, x20, .LBB5_10
.LBB5_4:                                //  %if.then16.i
	lui x30 ,  funreader&4095
	lui x15 ,  (funreader>>12)&1048575
	sw x20 ,  4 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  32 ( x8 )
	beq x0, x19, .LBB5_11
.LBB5_5:                                //  %if.then19.i
	lui x30 ,  funwriter&4095
	addi x15 ,  x0 ,  16
	sw x19 ,  8 ( x10 )
	jal x0, .LBB5_6
.LBB5_7:                                //  %if.then.i
	addi x15 ,  x0 ,  22
	add x8 ,  x0 ,  x0
	sw x15 ,  0 ( x22 )
	jal x0, .LBB5_15
.LBB5_8:
	add x8 ,  x0 ,  x23
	jal x0, .LBB5_15
.LBB5_9:                                //  %if.then6.i
	call __sfp_lock_acquire
	sh x0 ,  12 ( x8 )
	call __sfp_lock_release
	add x8 ,  x0 ,  x23
	jal x0, .LBB5_15
.LBB5_10:                               //  %if.else26.i
	lui x30 ,  funwriter&4095
	addi x15 ,  x0 ,  8
	sw x19 ,  8 ( x10 )
	sw x0 ,  4 ( x10 )
	sw x0 ,  32 ( x8 )
.LBB5_6:                                //  %if.end32.i
	sh x15 ,  12 ( x8 )
	lui x15 ,  (funwriter>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  36 ( x8 )
	jal x0, .LBB5_12
.LBB5_11:                               //  %if.else.i
	addi x15 ,  x0 ,  4
	sw x0 ,  8 ( x10 )
	sw x0 ,  36 ( x8 )
	sh x15 ,  12 ( x8 )
.LBB5_12:                               //  %if.end32.i
	lui x30 ,  funseeker&4095
	lui x15 ,  (funseeker>>12)&1048575
	sw x18 ,  16 ( x10 )
	sw x9 ,  12 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	add x15 ,  x0 ,  x0
	beq x9, x15, .LBB5_14
.LBB5_13:                               //  %if.end32.i
	add x15 ,  x0 ,  x14
.LBB5_14:                               //  %if.end32.i
	lui x30 ,  funcloser&4095
	sw x15 ,  40 ( x8 )
	lui x15 ,  (funcloser>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  44 ( x8 )
.LBB5_15:                               //  %_funopen_r.exit
	add x10 ,  x0 ,  x8
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
.Lfunc_end5:
	.size	funopen, .Lfunc_end5-funopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
