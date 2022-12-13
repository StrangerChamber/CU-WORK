	.text
	.file	"dtoastub.c"
	.globl	__dtoa                  //  -- Begin function __dtoa
	.type	__dtoa,@function
__dtoa:                                 //  @__dtoa
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	add x17 ,  x0 ,  x16
	add x16 ,  x0 ,  x15
	add x15 ,  x0 ,  x14
	add x14 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	lui x10 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	lw x10 ,  0 ( x10 )
	jal x0, _dtoa_r
.Lfunc_end0:
	.size	__dtoa, .Lfunc_end0-__dtoa
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
