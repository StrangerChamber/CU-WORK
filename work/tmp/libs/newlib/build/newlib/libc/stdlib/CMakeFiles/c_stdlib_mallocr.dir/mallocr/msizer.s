	.text
	.file	"msizer.c"
	.globl	_malloc_usable_size_r   //  -- Begin function _malloc_usable_size_r
	.type	_malloc_usable_size_r,@function
_malloc_usable_size_r:                  //  @_malloc_usable_size_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x15 ,  -4 ( x11 )
	blt x15, x0, .LBB0_1
.LBB0_2:                                //  %if.end
	addi x10 ,  x15 ,  -4
	ret
.LBB0_1:                                //  %if.then
	addi x14 ,  x11 ,  -4
	add x14 ,  x15 ,  x14
	lw x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	addi x10 ,  x15 ,  -4
	ret
.Lfunc_end0:
	.size	_malloc_usable_size_r, .Lfunc_end0-_malloc_usable_size_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
