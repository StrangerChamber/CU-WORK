	.text
	.file	"drand48.c"
	.globl	_drand48_r              //  -- Begin function _drand48_r
	.type	_drand48_r,@function
_drand48_r:                             //  @_drand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x11 ,  x10 ,  172
	jal x0, _erand48_r
.Lfunc_end0:
	.size	_drand48_r, .Lfunc_end0-_drand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	drand48                 //  -- Begin function drand48
	.type	drand48,@function
drand48:                                //  @drand48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	addi x11 ,  x10 ,  172
	jal x0, _erand48_r
.Lfunc_end1:
	.size	drand48, .Lfunc_end1-drand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
