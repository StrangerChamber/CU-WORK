	.text
	.file	"month_lengths.c"
	.address_space	0
	.type	__month_lengths,@object //  @__month_lengths
	.section	.rodata,"a",@progbits
	.globl	__month_lengths
	.p2align	2
__month_lengths:
	.long	31                      //  0x1f
	.long	28                      //  0x1c
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	29                      //  0x1d
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.size	__month_lengths, 96


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
