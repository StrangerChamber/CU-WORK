	.text
	.file	"environ.c"
	.address_space	0
	.type	initial_env,@object     //  @initial_env
	.local	initial_env
	.comm	initial_env,4,4
	.address_space	0
	.type	environ,@object         //  @environ
	.data
	.globl	environ
	.p2align	2
environ:
	.long	initial_env
	.size	environ, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
