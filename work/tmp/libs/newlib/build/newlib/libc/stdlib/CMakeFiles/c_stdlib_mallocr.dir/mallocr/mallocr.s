	.text
	.file	"mallocr.c"
	.globl	_malloc_r               //  -- Begin function _malloc_r
	.type	_malloc_r,@function
_malloc_r:                              //  @_malloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	addi x15 ,  x11 ,  11
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	andi x9 ,  x15 ,  -4
	addi x15 ,  x0 ,  12
	bltu x15, x9, .LBB0_2
.LBB0_1:                                //  %entry
	add x9 ,  x0 ,  x15
.LBB0_2:                                //  %entry
	blt x9, x0, .LBB0_4
.LBB0_3:                                //  %entry
	bltu x9, x11, .LBB0_4
.LBB0_5:                                //  %if.end
	add x10 ,  x0 ,  x8
	call __malloc_lock
	lui x30 ,  __malloc_free_list&4095
	lui x15 ,  (__malloc_free_list>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	lw x13 ,  0 ( x14 )
	beq x0, x13, .LBB0_14
.LBB0_6:                                //  %while.body.preheader
	lw x14 ,  0 ( x13 )
	sub x12 ,  x14 ,  x9
	blt x12, x0, .LBB0_13
.LBB0_7:
	add x18 ,  x0 ,  x13
	add x14 ,  x0 ,  x13
	jal x0, .LBB0_9
.LBB0_8:                                //  %while.body
                                        //    in Loop: Header=BB0_13 Depth=1
	lw x12 ,  0 ( x14 )
	add x18 ,  x0 ,  x13
	add x13 ,  x0 ,  x14
	sub x12 ,  x12 ,  x9
	bge x12, x0, .LBB0_9
.LBB0_13:                               //  %cleanup
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  4 ( x13 )
	bltu x0, x14, .LBB0_8
.LBB0_14:                               //  %if.then22
	lui x30 ,  __malloc_sbrk_start&4095
	lui x18 ,  (__malloc_sbrk_start>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	lw x15 ,  0 ( x15 )
	bltu x0, x15, .LBB0_16
.LBB0_15:                               //  %if.then.i
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	call _sbrk_r
	lui x30 ,  __malloc_sbrk_start&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	sw x10 ,  0 ( x15 )
.LBB0_16:                               //  %if.end.i
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call _sbrk_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_19
.LBB0_17:                               //  %if.end4.i
	addi x15 ,  x10 ,  3
	andi x18 ,  x15 ,  -4
	beq x10, x18, .LBB0_21
.LBB0_18:                               //  %if.then6.i
	sub x11 ,  x18 ,  x10
	add x10 ,  x0 ,  x8
	call _sbrk_r
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_21
.LBB0_19:                               //  %if.then24
	addi x15 ,  x0 ,  12
	add x10 ,  x0 ,  x8
	sw x15 ,  0 ( x8 )
	call __malloc_unlock
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_24
.LBB0_4:                                //  %if.then
	addi x15 ,  x0 ,  12
	add x10 ,  x0 ,  x0
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_24
.LBB0_9:                                //  %if.then7
	addi x13 ,  x0 ,  11
	bgeu x13, x12, .LBB0_10
.LBB0_20:                               //  %while.end
	add x18 ,  x12 ,  x14
	sw x12 ,  0 ( x14 )
.LBB0_21:                               //  %if.end26
	sw x9 ,  0 ( x18 )
	jal x0, .LBB0_22
.LBB0_10:                               //  %if.else
	lw x13 ,  4 ( x14 )
	beq x18, x14, .LBB0_11
.LBB0_12:                               //  %if.else14
	sw x13 ,  4 ( x18 )
	add x18 ,  x0 ,  x14
	jal x0, .LBB0_22
.LBB0_11:                               //  %if.then13
	lui x30 ,  __malloc_free_list&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x13 ,  0 ( x15 )
.LBB0_22:                               //  %if.end28
	add x10 ,  x0 ,  x8
	call __malloc_unlock
	addi x15 ,  x18 ,  11
	andi x10 ,  x15 ,  -8
	sub x15 ,  x10 ,  x18
	addi x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_24
.LBB0_23:                               //  %if.then34
	add x14 ,  x15 ,  x18
	sub x15 ,  x0 ,  x15
	sw x15 ,  0 ( x14 )
.LBB0_24:                               //  %cleanup38
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_malloc_r, .Lfunc_end0-_malloc_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__malloc_free_list,@object //  @__malloc_free_list
	.bss
	.globl	__malloc_free_list
	.p2align	2
__malloc_free_list:
	.long	0
	.size	__malloc_free_list, 4

	.address_space	0
	.type	__malloc_sbrk_start,@object //  @__malloc_sbrk_start
	.globl	__malloc_sbrk_start
	.p2align	2
__malloc_sbrk_start:
	.long	0
	.size	__malloc_sbrk_start, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
