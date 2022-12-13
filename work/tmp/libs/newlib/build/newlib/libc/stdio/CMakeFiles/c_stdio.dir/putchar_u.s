	.text
	.file	"putchar_u.c"
	.globl	_putchar_unlocked_r     //  -- Begin function _putchar_unlocked_r
	.type	_putchar_unlocked_r,@function
_putchar_unlocked_r:                    //  @_putchar_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x11
	lw x11 ,  8 ( x10 )
	add x10 ,  x0 ,  x15
	jal x0, putc_unlocked
.Lfunc_end0:
	.size	_putchar_unlocked_r, .Lfunc_end0-_putchar_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	putchar_unlocked        //  -- Begin function putchar_unlocked
	.type	putchar_unlocked,@function
putchar_unlocked:                       //  @putchar_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	lw x11 ,  8 ( x15 )
	jal x0, putc_unlocked
.Lfunc_end1:
	.size	putchar_unlocked, .Lfunc_end1-putchar_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
