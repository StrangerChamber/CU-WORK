	.text
	.file	"abort.c"
	.address_space	0
	.type	_dummy_abort,@object    //  @_dummy_abort
	.data
	.globl	_dummy_abort
	.p2align	2
_dummy_abort:
	.long	1                       //  0x1
	.size	_dummy_abort, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
