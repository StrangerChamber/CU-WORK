	.text
	.file	"eprintf.c"
	.globl	__eprintf               //  -- Begin function __eprintf
	.type	__eprintf,@function
__eprintf:                              //  @__eprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	lw x15 ,  12 ( x15 )
	sw x12 ,  12 ( x2 )
	sw x13 ,  16 ( x2 )
	sw x11 ,  8 ( x2 )
	sw x10 ,  4 ( x2 )
	sw x15 ,  0 ( x2 )
	call fiprintf
	call abort
.Lfunc_end0:
	.size	__eprintf, .Lfunc_end0-__eprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
