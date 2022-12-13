	.text
	.file	"signal.c"
	.globl	_init_signal_r          //  -- Begin function _init_signal_r
	.type	_init_signal_r,@function
_init_signal_r:                         //  @_init_signal_r
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
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x15 ,  732 ( x9 )
	bltu x0, x15, .LBB0_4
.LBB0_1:                                //  %if.then
	addi x11 ,  x0 ,  128
	add x10 ,  x0 ,  x9
	call _malloc_r
	sw x10 ,  732 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %for.body.preheader
	addi x15 ,  x9 ,  732
	sw x0 ,  0 ( x10 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  4 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  8 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  12 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  16 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  20 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  24 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  28 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  32 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  36 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  40 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  44 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  48 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  52 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  56 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  60 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  64 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  68 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  72 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  76 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  80 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  84 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  88 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  92 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  96 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  100 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  104 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  108 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  112 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  116 ( x14 )
	lw x14 ,  0 ( x15 )
	sw x0 ,  120 ( x14 )
	lw x15 ,  0 ( x15 )
	sw x0 ,  124 ( x15 )
	jal x0, .LBB0_4
.LBB0_2:
	addi x8 ,  x0 ,  -1
.LBB0_4:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_init_signal_r, .Lfunc_end0-_init_signal_r
	.cfi_endproc
                                        //  -- End function
	.globl	_signal_r               //  -- Begin function _signal_r
	.type	_signal_r,@function
_signal_r:                              //  @_signal_r
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
	add x8 ,  x0 ,  x12
	add x18 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sltiu x15 ,  x9 ,  32
	bltu x0, x15, .LBB1_2
.LBB1_1:                                //  %if.then
	addi x15 ,  x0 ,  22
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB1_7
.LBB1_2:                                //  %if.end
	lw x15 ,  732 ( x18 )
	beq x0, x15, .LBB1_3
.LBB1_6:                                //  %if.end5
	slli x14 ,  x9 ,  2&31
	add x15 ,  x14 ,  x15
	lw x10 ,  0 ( x15 )
	sw x8 ,  0 ( x15 )
	jal x0, .LBB1_7
.LBB1_3:                                //  %land.lhs.true
	add x10 ,  x0 ,  x18
	call _init_signal_r
	beq x0, x10, .LBB1_5
.LBB1_4:
	addi x10 ,  x0 ,  -1
.LBB1_7:                                //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB1_5:                                //  %land.lhs.true.if.end5_crit_edge
	lw x15 ,  732 ( x18 )
	jal x0, .LBB1_6
.Lfunc_end1:
	.size	_signal_r, .Lfunc_end1-_signal_r
	.cfi_endproc
                                        //  -- End function
	.globl	_raise_r                //  -- Begin function _raise_r
	.type	_raise_r,@function
_raise_r:                               //  @_raise_r
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
	add x18 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sltiu x15 ,  x9 ,  32
	bltu x0, x15, .LBB2_2
.LBB2_1:                                //  %if.then
	addi x15 ,  x0 ,  22
	addi x8 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB2_10
.LBB2_2:                                //  %if.end
	lw x14 ,  732 ( x18 )
	add x8 ,  x0 ,  x0
	add x15 ,  x0 ,  x8
	beq x0, x14, .LBB2_4
.LBB2_3:                                //  %if.else
	slli x15 ,  x9 ,  2&31
	add x15 ,  x15 ,  x14
	lw x15 ,  0 ( x15 )
.LBB2_4:                                //  %if.end5
	xori x14 ,  x15 ,  -1
	beq x0, x14, .LBB2_8
.LBB2_5:                                //  %if.end5
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB2_10
.LBB2_6:                                //  %if.end5
	bltu x0, x15, .LBB2_9
.LBB2_7:                                //  %if.then7
	add x10 ,  x0 ,  x18
	call _getpid_r
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call _kill_r
	add x8 ,  x0 ,  x10
	jal x0, .LBB2_10
.LBB2_8:                                //  %if.then14
	addi x15 ,  x0 ,  22
	slti x8 ,  x0 ,  1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB2_10
.LBB2_9:                                //  %if.else16
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x15 )
.LBB2_10:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_raise_r, .Lfunc_end2-_raise_r
	.cfi_endproc
                                        //  -- End function
	.globl	__sigtramp_r            //  -- Begin function __sigtramp_r
	.type	__sigtramp_r,@function
__sigtramp_r:                           //  @__sigtramp_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	addi x9 ,  x0 ,  -1
	addi x15 ,  x0 ,  31
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	bgeu x15, x8, .LBB3_1
.LBB3_11:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB3_1:                                //  %if.end
	lw x15 ,  732 ( x18 )
	beq x0, x15, .LBB3_2
.LBB3_4:                                //  %if.end5
	slli x14 ,  x8 ,  2&31
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB3_9
.LBB3_5:                                //  %if.end5
	beq x0, x15, .LBB3_6
.LBB3_7:                                //  %if.end5
	xori x14 ,  x15 ,  -1
	bltu x0, x14, .LBB3_10
.LBB3_8:                                //  %if.then10
	addi x9 ,  x0 ,  2
	jal x0, .LBB3_11
.LBB3_2:                                //  %land.lhs.true
	add x10 ,  x0 ,  x18
	call _init_signal_r
	bltu x0, x10, .LBB3_11
.LBB3_3:                                //  %land.lhs.true.if.end5_crit_edge
	lw x15 ,  732 ( x18 )
	jal x0, .LBB3_4
.LBB3_9:                                //  %if.then13
	addi x9 ,  x0 ,  3
	jal x0, .LBB3_11
.LBB3_6:
	slti x9 ,  x0 ,  1
	jal x0, .LBB3_11
.LBB3_10:                               //  %if.else14
	add x10 ,  x0 ,  x8
	call_reg, 0 ( x15 )
	add x9 ,  x0 ,  x0
	jal x0, .LBB3_11
.Lfunc_end3:
	.size	__sigtramp_r, .Lfunc_end3-__sigtramp_r
	.cfi_endproc
                                        //  -- End function
	.globl	raise                   //  -- Begin function raise
	.type	raise,@function
raise:                                  //  @raise
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	sltiu x15 ,  x8 ,  32
	bltu x0, x15, .LBB4_2
.LBB4_1:                                //  %if.then.i
	addi x15 ,  x0 ,  22
	addi x9 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB4_10
.LBB4_2:                                //  %if.end.i
	lw x14 ,  732 ( x18 )
	add x9 ,  x0 ,  x0
	add x15 ,  x0 ,  x9
	beq x0, x14, .LBB4_4
.LBB4_3:                                //  %if.else.i
	slli x15 ,  x8 ,  2&31
	add x15 ,  x15 ,  x14
	lw x15 ,  0 ( x15 )
.LBB4_4:                                //  %if.end5.i
	xori x14 ,  x15 ,  -1
	beq x0, x14, .LBB4_8
.LBB4_5:                                //  %if.end5.i
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB4_10
.LBB4_6:                                //  %if.end5.i
	bltu x0, x15, .LBB4_9
.LBB4_7:                                //  %if.then7.i
	add x10 ,  x0 ,  x18
	call _getpid_r
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	call _kill_r
	add x9 ,  x0 ,  x10
	jal x0, .LBB4_10
.LBB4_8:                                //  %if.then14.i
	addi x15 ,  x0 ,  22
	slti x9 ,  x0 ,  1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB4_10
.LBB4_9:                                //  %if.else16.i
	add x10 ,  x0 ,  x8
	call_reg, 0 ( x15 )
.LBB4_10:                               //  %_raise_r.exit
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	raise, .Lfunc_end4-raise
	.cfi_endproc
                                        //  -- End function
	.globl	signal                  //  -- Begin function signal
	.type	signal,@function
signal:                                 //  @signal
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	sltiu x15 ,  x9 ,  32
	bltu x0, x15, .LBB5_2
.LBB5_1:                                //  %if.then.i
	addi x15 ,  x0 ,  22
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB5_7
.LBB5_2:                                //  %if.end.i
	lw x15 ,  732 ( x18 )
	beq x0, x15, .LBB5_3
.LBB5_6:                                //  %if.end5.i
	slli x14 ,  x9 ,  2&31
	add x15 ,  x14 ,  x15
	lw x10 ,  0 ( x15 )
	sw x8 ,  0 ( x15 )
	jal x0, .LBB5_7
.LBB5_3:                                //  %land.lhs.true.i
	add x10 ,  x0 ,  x18
	call _init_signal_r
	beq x0, x10, .LBB5_5
.LBB5_4:
	addi x10 ,  x0 ,  -1
.LBB5_7:                                //  %_signal_r.exit
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB5_5:                                //  %land.lhs.true.if.end5_crit_edge.i
	lw x15 ,  732 ( x18 )
	jal x0, .LBB5_6
.Lfunc_end5:
	.size	signal, .Lfunc_end5-signal
	.cfi_endproc
                                        //  -- End function
	.globl	_init_signal            //  -- Begin function _init_signal
	.type	_init_signal,@function
_init_signal:                           //  @_init_signal
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _init_signal_r
.Lfunc_end6:
	.size	_init_signal, .Lfunc_end6-_init_signal
	.cfi_endproc
                                        //  -- End function
	.globl	__sigtramp              //  -- Begin function __sigtramp
	.type	__sigtramp,@function
__sigtramp:                             //  @__sigtramp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	addi x9 ,  x0 ,  -1
	addi x14 ,  x0 ,  31
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x14, x8, .LBB7_1
.LBB7_11:                               //  %__sigtramp_r.exit
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB7_1:                                //  %if.end.i
	lw x18 ,  0 ( x15 )
	lw x15 ,  732 ( x18 )
	beq x0, x15, .LBB7_2
.LBB7_4:                                //  %if.end5.i
	slli x14 ,  x8 ,  2&31
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB7_9
.LBB7_5:                                //  %if.end5.i
	beq x0, x15, .LBB7_6
.LBB7_7:                                //  %if.end5.i
	xori x14 ,  x15 ,  -1
	bltu x0, x14, .LBB7_10
.LBB7_8:                                //  %if.then10.i
	addi x9 ,  x0 ,  2
	jal x0, .LBB7_11
.LBB7_2:                                //  %land.lhs.true.i
	add x10 ,  x0 ,  x18
	call _init_signal_r
	bltu x0, x10, .LBB7_11
.LBB7_3:                                //  %land.lhs.true.if.end5_crit_edge.i
	lw x15 ,  732 ( x18 )
	jal x0, .LBB7_4
.LBB7_9:                                //  %if.then13.i
	addi x9 ,  x0 ,  3
	jal x0, .LBB7_11
.LBB7_6:
	slti x9 ,  x0 ,  1
	jal x0, .LBB7_11
.LBB7_10:                               //  %if.else14.i
	add x10 ,  x0 ,  x8
	call_reg, 0 ( x15 )
	add x9 ,  x0 ,  x0
	jal x0, .LBB7_11
.Lfunc_end7:
	.size	__sigtramp, .Lfunc_end7-__sigtramp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
