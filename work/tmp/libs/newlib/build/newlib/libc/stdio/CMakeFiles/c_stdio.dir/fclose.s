	.text
	.file	"fclose.c"
	.globl	_fclose_r               //  -- Begin function _fclose_r
	.type	_fclose_r,@function
_fclose_r:                              //  @_fclose_r
	.cfi_sections .debug_frame
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
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB0_17
.LBB0_1:                                //  %do.body
	beq x0, x18, .LBB0_4
.LBB0_2:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	bltu x0, x15, .LBB0_4
.LBB0_3:                                //  %if.then2
	add x10 ,  x0 ,  x18
	call __sinit
.LBB0_4:                                //  %if.end3
	lhu x15 ,  12 ( x9 )
	beq x0, x15, .LBB0_17
.LBB0_5:                                //  %if.end26
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __sflush_r
	lw x15 ,  44 ( x9 )
	add x8 ,  x0 ,  x10
	beq x0, x15, .LBB0_8
.LBB0_6:                                //  %land.lhs.true29
	lw x11 ,  28 ( x9 )
	add x10 ,  x0 ,  x18
	call_reg, 0 ( x15 )
	add x15 ,  x0 ,  x0
	bge x10, x15, .LBB0_8
.LBB0_7:
	addi x8 ,  x0 ,  -1
.LBB0_8:                                //  %if.end35
	lbu x15 ,  12 ( x9 )
	andi x15 ,  x15 ,  128
	beq x0, x15, .LBB0_10
.LBB0_9:                                //  %if.then40
	lw x11 ,  16 ( x9 )
	add x10 ,  x0 ,  x18
	call _free_r
.LBB0_10:                               //  %if.end41
	lw x11 ,  48 ( x9 )
	beq x0, x11, .LBB0_14
.LBB0_11:                               //  %if.then45
	addi x15 ,  x9 ,  64
	beq x11, x15, .LBB0_13
.LBB0_12:                               //  %if.then50
	add x10 ,  x0 ,  x18
	call _free_r
.LBB0_13:                               //  %if.end53
	sw x0 ,  48 ( x9 )
.LBB0_14:                               //  %if.end56
	lw x11 ,  68 ( x9 )
	beq x0, x11, .LBB0_16
.LBB0_15:                               //  %if.then60
	add x10 ,  x0 ,  x18
	call _free_r
	sw x0 ,  68 ( x9 )
.LBB0_16:                               //  %if.end65
	call __sfp_lock_acquire
	sh x0 ,  12 ( x9 )
	call __sfp_lock_release
.LBB0_17:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fclose_r, .Lfunc_end0-_fclose_r
	.cfi_endproc
                                        //  -- End function
	.globl	fclose                  //  -- Begin function fclose
	.type	fclose,@function
fclose:                                 //  @fclose
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _fclose_r
.Lfunc_end1:
	.size	fclose, .Lfunc_end1-fclose
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
