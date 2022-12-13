	.text
	.file	"findfp.c"
	.globl	__sfmoreglue            //  -- Begin function __sfmoreglue
	.type	__sfmoreglue,@function
__sfmoreglue:                           //  @__sfmoreglue
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	addi x11 ,  x0 ,  104
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x10 ,  x0 ,  x9
	call __mulsi3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	addi x11 ,  x18 ,  12
	call _malloc_r
	add x8 ,  x0 ,  x10
	beq x0, x8, .LBB0_1
.LBB0_2:                                //  %if.end
	addi x10 ,  x8 ,  12
	add x11 ,  x0 ,  x0
	add x12 ,  x0 ,  x18
	sw x9 ,  4 ( x8 )
	sw x0 ,  0 ( x8 )
	sw x10 ,  8 ( x8 )
	call memset
	jal x0, .LBB0_3
.LBB0_1:
	add x8 ,  x0 ,  x0
.LBB0_3:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__sfmoreglue, .Lfunc_end0-__sfmoreglue
	.cfi_endproc
                                        //  -- End function
	.globl	__sfp                   //  -- Begin function __sfp
	.type	__sfp,@function
__sfp:                                  //  @__sfp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  _global_impure_ptr&4095
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	lw x15 ,  56 ( x9 )
	bltu x0, x15, .LBB1_2
.LBB1_1:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
.LBB1_2:                                //  %if.end
	addi x20 ,  x9 ,  736
	addi x18 ,  x0 ,  428
	addi x21 ,  x0 ,  4
	add x9 ,  x0 ,  x0
	addi x19 ,  x0 ,  416
.LBB1_3:                                //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
                                        //      Child Loop BB1_7 Depth 2
	add x22 ,  x0 ,  x20
	lw x15 ,  4 ( x22 )
	bge x0, x15, .LBB1_7
.LBB1_4:                                //  %for.body.preheader
                                        //    in Loop: Header=BB1_3 Depth=1
	lw x20 ,  8 ( x22 )
.LBB1_5:                                //  %for.body
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x14 ,  12 ( x20 )
	beq x0, x14, .LBB1_11
.LBB1_6:                                //  %for.inc
                                        //    in Loop: Header=BB1_5 Depth=2
	addi x15 ,  x15 ,  -1
	addi x20 ,  x20 ,  104
	blt x0, x15, .LBB1_5
.LBB1_7:                                //  %for.end
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x20 ,  0 ( x22 )
	bltu x0, x20, .LBB1_3
.LBB1_8:                                //  %land.lhs.true
                                        //    in Loop: Header=BB1_7 Depth=2
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call _malloc_r
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB1_9
.LBB1_10:                               //  %__sfmoreglue.exit
                                        //    in Loop: Header=BB1_7 Depth=2
	addi x10 ,  x20 ,  12
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	sw x21 ,  4 ( x20 )
	sw x0 ,  0 ( x20 )
	sw x10 ,  8 ( x20 )
	call memset
	sw x20 ,  0 ( x22 )
	add x22 ,  x0 ,  x20
	lw x15 ,  4 ( x22 )
	blt x0, x15, .LBB1_4
	jal x0, .LBB1_7
.LBB1_11:                               //  %found
	lui x30 ,  -65535&4095
	lui x15 ,  (-65535>>12)&1048575
	addi x10 ,  x20 ,  92
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	sw x0 ,  100 ( x20 )
	sw x0 ,  8 ( x20 )
	sw x0 ,  0 ( x20 )
	sw x0 ,  24 ( x20 )
	sw x0 ,  20 ( x20 )
	sw x0 ,  16 ( x20 )
	sw x0 ,  4 ( x20 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  12 ( x20 )
	call memset
	add x9 ,  x0 ,  x20
	sw x0 ,  72 ( x20 )
	sw x0 ,  68 ( x20 )
	sw x0 ,  52 ( x20 )
	sw x0 ,  48 ( x20 )
.LBB1_12:                               //  %cleanup
	add x10 ,  x0 ,  x9
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
.LBB1_9:                                //  %__sfmoreglue.exit.thread
	addi x15 ,  x0 ,  12
	sw x0 ,  0 ( x22 )
	sw x15 ,  0 ( x8 )
	jal x0, .LBB1_12
.Lfunc_end1:
	.size	__sfp, .Lfunc_end1-__sfp
	.cfi_endproc
                                        //  -- End function
	.globl	__sfp_lock_acquire      //  -- Begin function __sfp_lock_acquire
	.type	__sfp_lock_acquire,@function
__sfp_lock_acquire:                     //  @__sfp_lock_acquire
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	__sfp_lock_acquire, .Lfunc_end2-__sfp_lock_acquire
	.cfi_endproc
                                        //  -- End function
	.globl	__sinit                 //  -- Begin function __sinit
	.type	__sinit,@function
__sinit:                                //  @__sinit
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x15 ,  56 ( x8 )
	bltu x0, x15, .LBB3_2
.LBB3_1:                                //  %if.end
	lw x19 ,  4 ( x8 )
	addi x15 ,  x8 ,  748
	lui x30 ,  _cleanup_r&4095
	add x9 ,  x0 ,  x0
	addi x18 ,  x0 ,  8
	sw x15 ,  744 ( x8 )
	addi x15 ,  x0 ,  3
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	sw x15 ,  740 ( x8 )
	lui x15 ,  (_cleanup_r>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  60 ( x8 )
	addi x15 ,  x0 ,  4
	addi x10 ,  x19 ,  92
	sw x0 ,  100 ( x19 )
	sw x0 ,  8 ( x19 )
	sw x0 ,  4 ( x19 )
	sw x0 ,  0 ( x19 )
	sw x0 ,  24 ( x19 )
	sw x0 ,  20 ( x19 )
	sw x0 ,  16 ( x19 )
	sw x15 ,  12 ( x19 )
	sw x0 ,  736 ( x8 )
	call memset
	lw x20 ,  8 ( x8 )
	lui x30 ,  65545&4095
	lui x15 ,  (65545>>12)&1048575
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sclose&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  12 ( x20 )
	lui x15 ,  (__sclose>>12)&1048575
	addi x10 ,  x20 ,  92
	sw x19 ,  28 ( x19 )
	sw x0 ,  100 ( x20 )
	sw x0 ,  8 ( x20 )
	sw x0 ,  4 ( x20 )
	sw x0 ,  0 ( x20 )
	sw x0 ,  24 ( x20 )
	sw x0 ,  20 ( x20 )
	sw x0 ,  16 ( x20 )
	or x21 ,  x15 ,  x30
	lui x30 ,  __sseek&4095
	lui x15 ,  (__sseek>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sw x21 ,  44 ( x19 )
	or x22 ,  x15 ,  x30
	lui x30 ,  __swrite&4095
	lui x15 ,  (__swrite>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sw x22 ,  40 ( x19 )
	or x23 ,  x15 ,  x30
	lui x30 ,  __sread&4095
	lui x15 ,  (__sread>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sw x23 ,  36 ( x19 )
	or x24 ,  x15 ,  x30
	sw x24 ,  32 ( x19 )
	call memset
	lw x19 ,  12 ( x8 )
	lui x30 ,  131090&4095
	lui x15 ,  (131090>>12)&1048575
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x10 ,  x19 ,  92
	sw x15 ,  12 ( x19 )
	sw x21 ,  44 ( x20 )
	sw x22 ,  40 ( x20 )
	sw x23 ,  36 ( x20 )
	sw x24 ,  32 ( x20 )
	sw x20 ,  28 ( x20 )
	sw x0 ,  100 ( x19 )
	sw x0 ,  8 ( x19 )
	sw x0 ,  4 ( x19 )
	sw x0 ,  0 ( x19 )
	sw x0 ,  24 ( x19 )
	sw x0 ,  20 ( x19 )
	sw x0 ,  16 ( x19 )
	call memset
	slti x15 ,  x0 ,  1
	sw x21 ,  44 ( x19 )
	sw x22 ,  40 ( x19 )
	sw x23 ,  36 ( x19 )
	sw x24 ,  32 ( x19 )
	sw x19 ,  28 ( x19 )
	sw x15 ,  56 ( x8 )
.LBB3_2:                                //  %return
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
.Lfunc_end3:
	.size	__sinit, .Lfunc_end3-__sinit
	.cfi_endproc
                                        //  -- End function
	.globl	__sfp_lock_release      //  -- Begin function __sfp_lock_release
	.type	__sfp_lock_release,@function
__sfp_lock_release:                     //  @__sfp_lock_release
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	__sfp_lock_release, .Lfunc_end4-__sfp_lock_release
	.cfi_endproc
                                        //  -- End function
	.globl	_cleanup_r              //  -- Begin function _cleanup_r
	.type	_cleanup_r,@function
_cleanup_r:                             //  @_cleanup_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _fclose_r&4095
	lui x15 ,  (_fclose_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, _fwalk_reent
.Lfunc_end5:
	.size	_cleanup_r, .Lfunc_end5-_cleanup_r
	.cfi_endproc
                                        //  -- End function
	.globl	_cleanup                //  -- Begin function _cleanup
	.type	_cleanup,@function
_cleanup:                               //  @_cleanup
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _global_impure_ptr&4095
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _fclose_r&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (_fclose_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, _fwalk_reent
.Lfunc_end6:
	.size	_cleanup, .Lfunc_end6-_cleanup
	.cfi_endproc
                                        //  -- End function
	.globl	__sinit_lock_acquire    //  -- Begin function __sinit_lock_acquire
	.type	__sinit_lock_acquire,@function
__sinit_lock_acquire:                   //  @__sinit_lock_acquire
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end7:
	.size	__sinit_lock_acquire, .Lfunc_end7-__sinit_lock_acquire
	.cfi_endproc
                                        //  -- End function
	.globl	__sinit_lock_release    //  -- Begin function __sinit_lock_release
	.type	__sinit_lock_release,@function
__sinit_lock_release:                   //  @__sinit_lock_release
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end8:
	.size	__sinit_lock_release, .Lfunc_end8-__sinit_lock_release
	.cfi_endproc
                                        //  -- End function
	.globl	__fp_lock_all           //  -- Begin function __fp_lock_all
	.type	__fp_lock_all,@function
__fp_lock_all:                          //  @__fp_lock_all
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __fp_lock&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__fp_lock>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, _fwalk
.Lfunc_end9:
	.size	__fp_lock_all, .Lfunc_end9-__fp_lock_all
	.cfi_endproc
                                        //  -- End function
	.type	__fp_lock,@function     //  -- Begin function __fp_lock
__fp_lock:                              //  @__fp_lock
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end10:
	.size	__fp_lock, .Lfunc_end10-__fp_lock
	.cfi_endproc
                                        //  -- End function
	.globl	__fp_unlock_all         //  -- Begin function __fp_unlock_all
	.type	__fp_unlock_all,@function
__fp_unlock_all:                        //  @__fp_unlock_all
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __fp_unlock&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__fp_unlock>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, _fwalk
.Lfunc_end11:
	.size	__fp_unlock_all, .Lfunc_end11-__fp_unlock_all
	.cfi_endproc
                                        //  -- End function
	.type	__fp_unlock,@function   //  -- Begin function __fp_unlock
__fp_unlock:                            //  @__fp_unlock
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end12:
	.size	__fp_unlock, .Lfunc_end12-__fp_unlock
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
