	.text
	.file	"mstats.c"
	.globl	mallinfo                //  -- Begin function mallinfo
	.type	mallinfo,@function
mallinfo:                               //  @mallinfo
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x11 ,  0 ( x15 )
	jal x0, _mallinfo_r
.Lfunc_end0:
	.size	mallinfo, .Lfunc_end0-mallinfo
	.cfi_endproc
                                        //  -- End function
	.globl	malloc_stats            //  -- Begin function malloc_stats
	.type	malloc_stats,@function
malloc_stats:                           //  @malloc_stats
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _malloc_stats_r
.Lfunc_end1:
	.size	malloc_stats, .Lfunc_end1-malloc_stats
	.cfi_endproc
                                        //  -- End function
	.globl	mallopt                 //  -- Begin function mallopt
	.type	mallopt,@function
mallopt:                                //  @mallopt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _mallopt_r
.Lfunc_end2:
	.size	mallopt, .Lfunc_end2-mallopt
	.cfi_endproc
                                        //  -- End function
	.globl	_mstats_r               //  -- Begin function _mstats_r
	.type	_mstats_r,@function
_mstats_r:                              //  @_mstats_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	lui x30 ,  .str&4095
	lui x14 ,  (.str>>12)&1048575
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x15 ,  12 ( x8 )
	srli x30 ,  x30 ,  12&31
	sw x11 ,  8 ( x2 )
	or x14 ,  x14 ,  x30
	sw x14 ,  4 ( x2 )
	sw x15 ,  0 ( x2 )
	call fiprintf
	add x10 ,  x0 ,  x8
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	jal x0, _malloc_stats_r
.Lfunc_end3:
	.size	_mstats_r, .Lfunc_end3-_mstats_r
	.cfi_endproc
                                        //  -- End function
	.globl	mstats                  //  -- Begin function mstats
	.type	mstats,@function
mstats:                                 //  @mstats
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	lui x14 ,  (.str>>12)&1048575
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	lw x8 ,  0 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lw x15 ,  12 ( x8 )
	sw x14 ,  4 ( x2 )
	sw x10 ,  8 ( x2 )
	sw x15 ,  0 ( x2 )
	call fiprintf
	add x10 ,  x0 ,  x8
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	jal x0, _malloc_stats_r
.Lfunc_end4:
	.size	mstats, .Lfunc_end4-mstats
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Memory allocation statistics %s\n"
	.size	.str, 33


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
