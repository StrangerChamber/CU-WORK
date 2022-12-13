	.text
	.file	"environ.c"
	.address_space	0
	.type	__env,@object           //  @__env
	.bss
	.globl	__env
	.p2align	2
__env:
	.zero	4
	.size	__env, 4

	.address_space	0
	.type	environ,@object         //  @environ
	.data
	.globl	environ
	.p2align	2
environ:
	.long	__env
	.size	environ, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
