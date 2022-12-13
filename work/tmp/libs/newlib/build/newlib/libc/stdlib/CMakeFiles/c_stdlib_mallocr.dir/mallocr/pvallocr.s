	.text
	.file	"pvallocr.c"
	.globl	_pvalloc_r              //  -- Begin function _pvalloc_r
	.type	_pvalloc_r,@function
_pvalloc_r:                             //  @_pvalloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  -4096&4095
	lui x15 ,  (-4096>>12)&1048575
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	bltu x11, x14, .LBB0_2
.LBB0_1:                                //  %if.then
	addi x15 ,  x0 ,  12
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x0
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.end
	lui x30 ,  4095&4095
	lui x14 ,  (4095>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  -4096&4095
	srli x30 ,  x30 ,  12&31
	add x14 ,  x14 ,  x11
	or x15 ,  x15 ,  x30
	and x11 ,  x15 ,  x14
	call _valloc_r
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_pvalloc_r, .Lfunc_end0-_pvalloc_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
