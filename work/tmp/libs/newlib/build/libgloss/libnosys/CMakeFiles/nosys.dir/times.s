	.text
	.file	"times.c"
	.globl	times                   //  -- Begin function times
	.type	times,@function
times:                                  //  @times
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB0_1
.LBB0_2:                                //  %entry
	addi x15 ,  x0 ,  88
	jal x0, .LBB0_3
.LBB0_1:
	addi x15 ,  x0 ,  22
.LBB0_3:                                //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  errno&4095
	lui x14 ,  (errno>>12)&1048575
	addi x10 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
	ret
.Lfunc_end0:
	.size	times, .Lfunc_end0-times
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
