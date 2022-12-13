	.text
	.file	"freopen.c"
	.globl	_freopen_r              //  -- Begin function _freopen_r
	.type	_freopen_r,@function
_freopen_r:                             //  @_freopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
.LBB0_3:                                //  %if.end
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __sflags
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_4
.LBB0_5:                                //  %if.end21
	lhu x15 ,  12 ( x8 )
	beq x0, x15, .LBB0_6
.LBB0_10:                               //  %if.else
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB0_12
.LBB0_11:                               //  %if.then32
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
.LBB0_12:                               //  %if.end34
	beq x0, x19, .LBB0_7
.LBB0_13:                               //  %if.end34
	lw x15 ,  44 ( x8 )
	beq x0, x15, .LBB0_7
.LBB0_14:                               //  %if.end44.thread
	lw x11 ,  28 ( x8 )
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x15 )
	jal x0, .LBB0_15
.LBB0_4:                                //  %if.then8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fclose_r
	add x20 ,  x0 ,  x0
	jal x0, .LBB0_27
.LBB0_6:                                //  %if.then26
	addi x15 ,  x0 ,  32
	sh x15 ,  12 ( x8 )
.LBB0_7:                                //  %if.end44
	beq x0, x19, .LBB0_8
.LBB0_15:                               //  %if.then47
	lw x12 ,  8 ( x2 )
	addi x13 ,  x0 ,  438
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call _open_r
	lw x21 ,  0 ( x9 )
	add x19 ,  x0 ,  x10
.LBB0_16:                               //  %if.end62
	lbu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  128
	beq x0, x15, .LBB0_18
.LBB0_17:                               //  %if.then67
	lw x11 ,  16 ( x8 )
	add x10 ,  x0 ,  x9
	call _free_r
.LBB0_18:                               //  %if.end68
	lw x11 ,  48 ( x8 )
	sw x0 ,  4 ( x8 )
	sw x0 ,  8 ( x8 )
	sw x0 ,  24 ( x8 )
	sw x0 ,  20 ( x8 )
	sw x0 ,  16 ( x8 )
	sw x0 ,  0 ( x8 )
	beq x0, x11, .LBB0_22
.LBB0_19:                               //  %if.then75
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_21
.LBB0_20:                               //  %if.then80
	add x10 ,  x0 ,  x9
	call _free_r
.LBB0_21:                               //  %if.end83
	sw x0 ,  48 ( x8 )
.LBB0_22:                               //  %if.end86
	lw x11 ,  68 ( x8 )
	sw x0 ,  52 ( x8 )
	beq x0, x11, .LBB0_24
.LBB0_23:                               //  %if.then92
	add x10 ,  x0 ,  x9
	call _free_r
	sw x0 ,  68 ( x8 )
.LBB0_24:                               //  %if.end97
	lhu x15 ,  12 ( x8 )
	lui x30 ,  57343&4095
	lui x14 ,  (57343>>12)&1048575
	add x20 ,  x0 ,  x0
	addi x10 ,  x8 ,  92
	addi x12 ,  x0 ,  8
	sw x0 ,  72 ( x8 )
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x20
	or x14 ,  x14 ,  x30
	lui x30 ,  -8193&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x14 ,  x15
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x8 )
	lw x15 ,  100 ( x8 )
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x8 )
	call memset
	blt x19, x0, .LBB0_25
.LBB0_26:                               //  %if.end123
	lui x30 ,  __sclose&4095
	lui x15 ,  (__sclose>>12)&1048575
	add x20 ,  x0 ,  x8
	sh x19 ,  14 ( x8 )
	sh x18 ,  12 ( x8 )
	sw x8 ,  28 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sseek&4095
	sw x15 ,  44 ( x8 )
	lui x15 ,  (__sseek>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __swrite&4095
	sw x15 ,  40 ( x8 )
	lui x15 ,  (__swrite>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sread&4095
	sw x15 ,  36 ( x8 )
	lui x15 ,  (__sread>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  32 ( x8 )
	jal x0, .LBB0_27
.LBB0_25:                               //  %if.then109
	call __sfp_lock_acquire
	sw x21 ,  0 ( x9 )
	sh x0 ,  12 ( x8 )
	call __sfp_lock_release
.LBB0_27:                               //  %cleanup
	add x10 ,  x0 ,  x20
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
.LBB0_8:                                //  %if.then52
	lw x15 ,  44 ( x8 )
	addi x21 ,  x0 ,  9
	addi x19 ,  x0 ,  -1
	beq x0, x15, .LBB0_16
.LBB0_9:                                //  %if.then56
	lw x11 ,  28 ( x8 )
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x15 )
	lbu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  128
	bltu x0, x15, .LBB0_17
	jal x0, .LBB0_18
.Lfunc_end0:
	.size	_freopen_r, .Lfunc_end0-_freopen_r
	.cfi_endproc
                                        //  -- End function
	.globl	freopen                 //  -- Begin function freopen
	.type	freopen,@function
freopen:                                //  @freopen
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
	jal x0, _freopen_r
.Lfunc_end1:
	.size	freopen, .Lfunc_end1-freopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
