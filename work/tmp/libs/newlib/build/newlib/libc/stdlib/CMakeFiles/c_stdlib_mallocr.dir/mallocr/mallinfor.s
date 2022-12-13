	.text
	.file	"mallinfor.c"
	.globl	_mallinfo_r             //  -- Begin function _mallinfo_r
	.type	_mallinfo_r,@function
_mallinfo_r:                            //  @_mallinfo_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x10 ,  x0 ,  x9
	call __malloc_lock
	lui x30 ,  __malloc_sbrk_start&4095
	lui x19 ,  (__malloc_sbrk_start>>12)&1048575
	add x18 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x14 ,  0 ( x15 )
	add x15 ,  x0 ,  x18
	beq x0, x14, .LBB0_4
.LBB0_1:                                //  %if.else
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call _sbrk_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.else3
	lui x30 ,  __malloc_sbrk_start&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	sub x15 ,  x10 ,  x15
	jal x0, .LBB0_4
.LBB0_2:
	addi x15 ,  x0 ,  -1
.LBB0_4:                                //  %if.end4
	lui x30 ,  __malloc_free_list&4095
	lui x14 ,  (__malloc_free_list>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lw x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_7
.LBB0_5:                                //  %for.body.preheader
	add x18 ,  x0 ,  x0
.LBB0_6:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x14 )
	lw x14 ,  4 ( x14 )
	add x18 ,  x18 ,  x13
	bltu x0, x14, .LBB0_6
.LBB0_7:                                //  %for.end
	lui x30 ,  __malloc_current_mallinfo&4095
	lui x14 ,  (__malloc_current_mallinfo>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	sw x15 ,  0 ( x19 )
	sub x15 ,  x15 ,  x18
	sw x18 ,  32 ( x19 )
	sw x15 ,  28 ( x19 )
	call __malloc_unlock
	lw x15 ,  36 ( x19 )
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  36 ( x8 )
	lw x15 ,  32 ( x19 )
	sw x15 ,  32 ( x8 )
	lw x15 ,  28 ( x19 )
	sw x15 ,  28 ( x8 )
	lw x15 ,  24 ( x19 )
	sw x15 ,  24 ( x8 )
	lw x15 ,  20 ( x19 )
	sw x15 ,  20 ( x8 )
	lw x15 ,  16 ( x19 )
	sw x15 ,  16 ( x8 )
	lw x15 ,  12 ( x19 )
	sw x15 ,  12 ( x8 )
	lw x15 ,  8 ( x19 )
	sw x15 ,  8 ( x8 )
	lw x15 ,  4 ( x19 )
	sw x15 ,  4 ( x8 )
	lw x15 ,  0 ( x19 )
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  0 ( x8 )
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_mallinfo_r, .Lfunc_end0-_mallinfo_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__malloc_current_mallinfo,@object //  @__malloc_current_mallinfo
	.bss
	.globl	__malloc_current_mallinfo
	.p2align	2
__malloc_current_mallinfo:
	.zero	40
	.size	__malloc_current_mallinfo, 40

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
