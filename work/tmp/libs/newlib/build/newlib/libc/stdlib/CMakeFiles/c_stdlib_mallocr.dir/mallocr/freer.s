	.text
	.file	"freer.c"
	.globl	_free_r                 //  -- Begin function _free_r
	.type	_free_r,@function
_free_r:                                //  @_free_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x0, x9, .LBB0_21
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x8
	lw x18 ,  -4 ( x9 )
	call __malloc_lock
	addi x15 ,  x9 ,  -4
	add x14 ,  x0 ,  x0
	bge x18, x14, .LBB0_3
.LBB0_2:
	add x15 ,  x18 ,  x15
.LBB0_3:                                //  %if.end
	lui x30 ,  __malloc_free_list&4095
	lui x13 ,  (__malloc_free_list>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x13 ,  x30
	lw x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_4
.LBB0_5:                                //  %if.end3
	bgeu x15, x14, .LBB0_9
.LBB0_6:                                //  %if.then5
	lw x12 ,  0 ( x15 )
	add x11 ,  x12 ,  x15
	bne x11, x14, .LBB0_8
.LBB0_7:                                //  %if.then7
	lw x11 ,  0 ( x14 )
	lw x14 ,  4 ( x14 )
	add x12 ,  x12 ,  x11
	sw x12 ,  0 ( x15 )
.LBB0_8:                                //  %if.else
	lui x30 ,  __malloc_free_list&4095
	sw x14 ,  4 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x13 ,  x30
	sw x15 ,  0 ( x14 )
	jal x0, .LBB0_20
.LBB0_9:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x0 ,  x14
	lw x14 ,  4 ( x13 )
	beq x0, x14, .LBB0_11
.LBB0_10:                               //  %do.body
                                        //    in Loop: Header=BB0_9 Depth=1
	bgeu x15, x14, .LBB0_9
.LBB0_11:                               //  %do.end
	lw x12 ,  0 ( x13 )
	add x11 ,  x12 ,  x13
	beq x11, x15, .LBB0_12
.LBB0_14:                               //  %if.else34
	bgeu x15, x11, .LBB0_16
.LBB0_15:                               //  %if.then38
	addi x15 ,  x0 ,  12
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_20
.LBB0_4:                                //  %if.then2
	lui x30 ,  __malloc_free_list&4095
	sw x0 ,  4 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x13 ,  x30
	sw x15 ,  0 ( x14 )
	jal x0, .LBB0_20
.LBB0_12:                               //  %if.then20
	lw x15 ,  0 ( x15 )
	add x15 ,  x12 ,  x15
	add x12 ,  x15 ,  x13
	sw x15 ,  0 ( x13 )
	bne x12, x14, .LBB0_20
.LBB0_13:                               //  %if.then27
	lw x12 ,  0 ( x14 )
	add x15 ,  x15 ,  x12
	sw x15 ,  0 ( x13 )
	lw x15 ,  4 ( x14 )
	jal x0, .LBB0_19
.LBB0_16:                               //  %if.else39
	lw x12 ,  0 ( x15 )
	add x11 ,  x12 ,  x15
	beq x11, x14, .LBB0_17
.LBB0_18:                               //  %if.else50
	sw x14 ,  4 ( x15 )
	jal x0, .LBB0_19
.LBB0_17:                               //  %if.then43
	lw x11 ,  4 ( x14 )
	lw x14 ,  0 ( x14 )
	sw x11 ,  4 ( x15 )
	add x14 ,  x12 ,  x14
	sw x14 ,  0 ( x15 )
.LBB0_19:                               //  %cleanup.sink.split
	sw x15 ,  4 ( x13 )
.LBB0_20:                               //  %cleanup.sink.split
	add x10 ,  x0 ,  x8
	call __malloc_unlock
.LBB0_21:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_free_r, .Lfunc_end0-_free_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
