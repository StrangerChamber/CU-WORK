	.text
	.file	"mallstatsr.c"
	.globl	_malloc_stats_r         //  -- Begin function _malloc_stats_r
	.type	_malloc_stats_r,@function
_malloc_stats_r:                        //  @_malloc_stats_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	add x11 ,  x0 ,  x10
	addi x10 ,  x2 ,  20
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	call _mallinfo_r
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	lui x14 ,  (__malloc_current_mallinfo>>12)&1048575
	lui x13 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	lui x30 ,  __malloc_current_mallinfo&4095
	lw x15 ,  0 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x9 ,  x14 ,  x30
	lui x30 ,  .str&4095
	lw x14 ,  0 ( x9 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lw x15 ,  12 ( x15 )
	sw x13 ,  4 ( x2 )
	sw x14 ,  8 ( x2 )
	sw x15 ,  0 ( x2 )
	call fiprintf
	lw x15 ,  0 ( x8 )
	lui x30 ,  .str.1&4095
	lui x13 ,  (.str.1>>12)&1048575
	lw x14 ,  0 ( x9 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lw x15 ,  12 ( x15 )
	sw x13 ,  4 ( x2 )
	sw x14 ,  8 ( x2 )
	sw x15 ,  0 ( x2 )
	call fiprintf
	lw x15 ,  0 ( x8 )
	lui x30 ,  .str.2&4095
	lui x13 ,  (.str.2>>12)&1048575
	lw x14 ,  28 ( x9 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lw x15 ,  12 ( x15 )
	sw x13 ,  4 ( x2 )
	sw x14 ,  8 ( x2 )
	sw x15 ,  0 ( x2 )
	call fiprintf
	lw x8 ,  60 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_malloc_stats_r, .Lfunc_end0-_malloc_stats_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"max system bytes = %10u\n"
	.size	.str, 25

	.address_space	0
	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"system bytes     = %10u\n"
	.size	.str.1, 25

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"in use bytes     = %10u\n"
	.size	.str.2, 25


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
