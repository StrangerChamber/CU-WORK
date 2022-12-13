	.text
	.file	"srand48.c"
	.globl	_srand48_r              //  -- Begin function _srand48_r
	.type	_srand48_r,@function
_srand48_r:                             //  @_srand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x15 ,  x0 ,  11
	lui x30 ,  57068&4095
	sh x11 ,  174 ( x10 )
	sh x15 ,  184 ( x10 )
	addi x15 ,  x0 ,  5
	srli x30 ,  x30 ,  12&31
	sh x15 ,  182 ( x10 )
	lui x15 ,  (57068>>12)&1048575
	or x15 ,  x15 ,  x30
	lui x30 ,  58989&4095
	sh x15 ,  180 ( x10 )
	lui x15 ,  (58989>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  13070&4095
	sh x15 ,  178 ( x10 )
	srli x15 ,  x11 ,  16&31
	srli x30 ,  x30 ,  12&31
	sh x15 ,  176 ( x10 )
	lui x15 ,  (13070>>12)&1048575
	or x15 ,  x15 ,  x30
	sh x15 ,  172 ( x10 )
	ret
.Lfunc_end0:
	.size	_srand48_r, .Lfunc_end0-_srand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	srand48                 //  -- Begin function srand48
	.type	srand48,@function
srand48:                                //  @srand48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	addi x14 ,  x0 ,  11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  57068&4095
	lw x15 ,  0 ( x15 )
	srli x30 ,  x30 ,  12&31
	sh x14 ,  184 ( x15 )
	addi x14 ,  x0 ,  5
	sh x10 ,  174 ( x15 )
	sh x14 ,  182 ( x15 )
	lui x14 ,  (57068>>12)&1048575
	or x14 ,  x14 ,  x30
	lui x30 ,  58989&4095
	sh x14 ,  180 ( x15 )
	lui x14 ,  (58989>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  13070&4095
	sh x14 ,  178 ( x15 )
	srli x14 ,  x10 ,  16&31
	srli x30 ,  x30 ,  12&31
	sh x14 ,  176 ( x15 )
	lui x14 ,  (13070>>12)&1048575
	or x14 ,  x14 ,  x30
	sh x14 ,  172 ( x15 )
	ret
.Lfunc_end1:
	.size	srand48, .Lfunc_end1-srand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
