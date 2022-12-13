	.text
	.file	"seed48.c"
	.globl	_seed48_r               //  -- Begin function _seed48_r
	.type	_seed48_r,@function
_seed48_r:                              //  @_seed48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lh x14 ,  172 ( x10 )
	lui x30 ,  _seed48_r.sseed&4095
	lui x15 ,  (_seed48_r.sseed>>12)&1048575
	lui x13 ,  (58989>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  58989&4095
	srli x30 ,  x30 ,  12&31
	sh x14 ,  0 ( x15 )
	lh x14 ,  174 ( x10 )
	or x13 ,  x13 ,  x30
	lui x30 ,  57068&4095
	srli x30 ,  x30 ,  12&31
	sh x14 ,  2 ( x15 )
	lh x14 ,  176 ( x10 )
	sh x14 ,  4 ( x15 )
	lh x14 ,  0 ( x11 )
	sh x14 ,  172 ( x10 )
	lh x14 ,  2 ( x11 )
	sh x14 ,  174 ( x10 )
	lh x14 ,  4 ( x11 )
	sh x13 ,  178 ( x10 )
	lui x13 ,  (57068>>12)&1048575
	or x13 ,  x13 ,  x30
	sh x13 ,  180 ( x10 )
	addi x13 ,  x0 ,  5
	sh x13 ,  182 ( x10 )
	addi x13 ,  x0 ,  11
	sh x13 ,  184 ( x10 )
	sh x14 ,  176 ( x10 )
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	_seed48_r, .Lfunc_end0-_seed48_r
	.cfi_endproc
                                        //  -- End function
	.globl	seed48                  //  -- Begin function seed48
	.type	seed48,@function
seed48:                                 //  @seed48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _seed48_r.sseed&4095
	lw x14 ,  0 ( x15 )
	lui x15 ,  (_seed48_r.sseed>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  57068&4095
	srli x30 ,  x30 ,  12&31
	lh x13 ,  172 ( x14 )
	sh x13 ,  0 ( x15 )
	lh x13 ,  174 ( x14 )
	sh x13 ,  2 ( x15 )
	lh x13 ,  176 ( x14 )
	sh x13 ,  4 ( x15 )
	lh x13 ,  0 ( x10 )
	sh x13 ,  172 ( x14 )
	lh x13 ,  2 ( x10 )
	sh x13 ,  174 ( x14 )
	lh x13 ,  4 ( x10 )
	add x10 ,  x0 ,  x15
	sh x13 ,  176 ( x14 )
	addi x13 ,  x0 ,  11
	sh x13 ,  184 ( x14 )
	addi x13 ,  x0 ,  5
	sh x13 ,  182 ( x14 )
	lui x13 ,  (57068>>12)&1048575
	or x13 ,  x13 ,  x30
	lui x30 ,  58989&4095
	sh x13 ,  180 ( x14 )
	lui x13 ,  (58989>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sh x13 ,  178 ( x14 )
	ret
.Lfunc_end1:
	.size	seed48, .Lfunc_end1-seed48
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_seed48_r.sseed,@object //  @_seed48_r.sseed
	.local	_seed48_r.sseed
	.comm	_seed48_r.sseed,6,2
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
