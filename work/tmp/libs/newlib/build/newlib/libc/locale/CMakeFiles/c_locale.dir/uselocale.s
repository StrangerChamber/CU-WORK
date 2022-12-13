	.text
	.file	"uselocale.c"
	.globl	_uselocale_r            //  -- Begin function _uselocale_r
	.type	_uselocale_r,@function
_uselocale_r:                           //  @_uselocale_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	xori x15 ,  x11 ,  -1
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %entry
	beq x0, x11, .LBB0_4
	jal x0, .LBB0_3
.LBB0_1:
	add x11 ,  x0 ,  x0
.LBB0_3:                                //  %if.end6.sink.split
	.cfi_def_cfa 2, 0
	sw x11 ,  52 ( x10 )
.LBB0_4:                                //  %if.end6
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	ret
.Lfunc_end0:
	.size	_uselocale_r, .Lfunc_end0-_uselocale_r
	.cfi_endproc
                                        //  -- End function
	.globl	uselocale               //  -- Begin function uselocale
	.type	uselocale,@function
uselocale:                              //  @uselocale
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	xori x14 ,  x10 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	beq x0, x14, .LBB1_1
.LBB1_2:                                //  %entry
	beq x0, x10, .LBB1_4
	jal x0, .LBB1_3
.LBB1_1:
	add x10 ,  x0 ,  x0
.LBB1_3:                                //  %_uselocale_r.exit.sink.split
	sw x10 ,  52 ( x15 )
.LBB1_4:                                //  %_uselocale_r.exit
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	ret
.Lfunc_end1:
	.size	uselocale, .Lfunc_end1-uselocale
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
