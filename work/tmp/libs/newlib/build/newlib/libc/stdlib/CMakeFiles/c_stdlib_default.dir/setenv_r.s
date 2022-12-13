	.text
	.file	"setenv_r.c"
	.globl	_setenv_r               //  -- Begin function _setenv_r
	.type	_setenv_r,@function
_setenv_r:                              //  @_setenv_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x11
	addi x19 ,  x0 ,  61
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x21 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call strchr
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
.LBB0_26:                               //  %cleanup76
	addi x10 ,  x0 ,  -1
	jal x0, .LBB0_27
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x8
	call __env_lock
	add x10 ,  x0 ,  x9
	call strlen
	add x20 ,  x0 ,  x10
	addi x12 ,  x2 ,  4
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call _findenv_r
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB0_6
.LBB0_3:                                //  %if.then5
	beq x0, x21, .LBB0_24
.LBB0_4:                                //  %if.end8
	add x10 ,  x0 ,  x22
	call strlen
	bltu x10, x20, .LBB0_15
.LBB0_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  0 ( x9 )
	addi x9 ,  x9 ,  1
	sb x15 ,  0 ( x22 )
	addi x22 ,  x22 ,  1
	bltu x0, x15, .LBB0_5
	jal x0, .LBB0_24
.LBB0_6:                                //  %if.else
	lui x30 ,  environ&4095
	lui x24 ,  (environ>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	lw x11 ,  0 ( x15 )
	lw x15 ,  0 ( x11 )
	beq x0, x15, .LBB0_9
.LBB0_7:                                //  %for.inc.preheader
	add x23 ,  x0 ,  x0
	addi x15 ,  x11 ,  4
.LBB0_8:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  4
	addi x23 ,  x23 ,  1
	add x15 ,  x0 ,  x14
	bltu x0, x13, .LBB0_8
	jal x0, .LBB0_10
.LBB0_9:
	add x23 ,  x0 ,  x0
.LBB0_10:                               //  %for.end
	lui x30 ,  _setenv_r.alloced&4095
	lui x15 ,  (_setenv_r.alloced>>12)&1048575
	slli x21 ,  x23 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_12
.LBB0_11:                               //  %if.then18
	addi x12 ,  x21 ,  8
	add x10 ,  x0 ,  x8
	call _realloc_r
	lui x30 ,  environ&4095
	add x22 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	sw x22 ,  0 ( x15 )
	bltu x0, x22, .LBB0_14
	jal x0, .LBB0_25
.LBB0_12:                               //  %if.else23
	lui x30 ,  _setenv_r.alloced&4095
	slti x14 ,  x0 ,  1
	addi x11 ,  x21 ,  8
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sb x14 ,  0 ( x15 )
	call _malloc_r
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB0_25
.LBB0_13:                               //  %if.end29
	lui x30 ,  environ&4095
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x24 ,  x24 ,  x30
	lw x11 ,  0 ( x24 )
	call memcpy
	sw x22 ,  0 ( x24 )
.LBB0_14:                               //  %if.end32
	add x15 ,  x22 ,  x21
	sw x23 ,  4 ( x2 )
	sw x0 ,  4 ( x15 )
.LBB0_15:                               //  %for.cond36.preheader
	add x15 ,  x0 ,  x18
	lbu x14 ,  0 ( x15 )
	beq x0, x14, .LBB0_18
.LBB0_16:                               //  %for.cond36
                                        //  =>This Inner Loop Header: Depth=1
	xori x14 ,  x14 ,  61
	beq x0, x14, .LBB0_18
.LBB0_17:                               //  %for.inc43
                                        //    in Loop: Header=BB0_16 Depth=1
	addi x15 ,  x15 ,  1
	lbu x14 ,  0 ( x15 )
	bltu x0, x14, .LBB0_16
.LBB0_18:                               //  %for.end45
	sub x14 ,  x20 ,  x18
	add x10 ,  x0 ,  x8
	add x15 ,  x15 ,  x14
	addi x11 ,  x15 ,  2
	call _malloc_r
	lui x30 ,  environ&4095
	lui x15 ,  (environ>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	lw x13 ,  0 ( x14 )
	lw x14 ,  4 ( x2 )
	slli x14 ,  x14 ,  2&31
	add x13 ,  x14 ,  x13
	sw x10 ,  0 ( x13 )
	beq x0, x10, .LBB0_25
.LBB0_19:                               //  %if.end52
	lui x30 ,  environ&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	lbu x14 ,  0 ( x18 )
	sb x14 ,  -1 ( x15 )
	beq x0, x14, .LBB0_22
.LBB0_20:                               //  %for.cond54
                                        //  =>This Inner Loop Header: Depth=1
	xori x14 ,  x14 ,  61
	beq x0, x14, .LBB0_22
.LBB0_21:                               //  %for.inc64
                                        //    in Loop: Header=BB0_20 Depth=1
	addi x15 ,  x15 ,  1
	addi x18 ,  x18 ,  1
	lbu x14 ,  0 ( x18 )
	sb x14 ,  -1 ( x15 )
	bltu x0, x14, .LBB0_20
.LBB0_22:                               //  %for.end66
	add x14 ,  x0 ,  x0
	sb x19 ,  -1 ( x15 )
.LBB0_23:                               //  %for.cond68
                                        //  =>This Inner Loop Header: Depth=1
	add x12 ,  x14 ,  x9
	add x13 ,  x14 ,  x15
	addi x14 ,  x14 ,  1
	lbu x12 ,  0 ( x12 )
	sb x12 ,  0 ( x13 )
	bltu x0, x12, .LBB0_23
.LBB0_24:                               //  %for.end75
	add x10 ,  x0 ,  x8
	call __env_unlock
	add x10 ,  x0 ,  x0
.LBB0_27:                               //  %cleanup76
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
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
.LBB0_25:                               //  %if.then21
	add x10 ,  x0 ,  x8
	call __env_unlock
	jal x0, .LBB0_26
.Lfunc_end0:
	.size	_setenv_r, .Lfunc_end0-_setenv_r
	.cfi_endproc
                                        //  -- End function
	.globl	_unsetenv_r             //  -- Begin function _unsetenv_r
	.type	_unsetenv_r,@function
_unsetenv_r:                            //  @_unsetenv_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %lor.lhs.false
	lbu x15 ,  0 ( x9 )
	beq x0, x15, .LBB1_3
.LBB1_2:                                //  %lor.lhs.false3
	addi x11 ,  x0 ,  61
	add x10 ,  x0 ,  x9
	call strchr
	beq x0, x10, .LBB1_4
.LBB1_3:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
	addi x10 ,  x0 ,  -1
.LBB1_10:                               //  %cleanup
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB1_4:                                //  %if.end
	add x10 ,  x0 ,  x8
	call __env_lock
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call _findenv_r
	beq x0, x10, .LBB1_9
.LBB1_5:
	lui x19 ,  (environ>>12)&1048575
	addi x18 ,  x2 ,  8
.LBB1_7:                                //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_8 Depth 2
	lui x30 ,  environ&4095
	lw x14 ,  8 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	slli x14 ,  x14 ,  2&31
	add x15 ,  x14 ,  x15
	addi x15 ,  x15 ,  4
.LBB1_8:                                //  %for.cond
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x15 )
	sw x14 ,  -4 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB1_8
.LBB1_6:                                //  %while.cond.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call _findenv_r
	bltu x0, x10, .LBB1_7
.LBB1_9:                                //  %while.end
	add x10 ,  x0 ,  x8
	call __env_unlock
	add x10 ,  x0 ,  x0
	jal x0, .LBB1_10
.Lfunc_end1:
	.size	_unsetenv_r, .Lfunc_end1-_unsetenv_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_setenv_r.alloced,@object //  @_setenv_r.alloced
	.local	_setenv_r.alloced
	.comm	_setenv_r.alloced,1,4
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
