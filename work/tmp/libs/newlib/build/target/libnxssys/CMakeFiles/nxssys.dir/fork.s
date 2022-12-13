	.text
	.file	"fork.c"
	.globl	fork                    //  -- Begin function fork
	.type	fork,@function
fork:                                   //  @fork
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	addi x15 ,  x0 ,  9
	sw x15 ,  4 ( x2 )
	// APP
	nop
	// NO_APP
	lui x30 ,  4112&4095
	lui x15 ,  (4112>>12)&1048575
	addi x14 ,  x2 ,  4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x14 ,  0 ( x15 )
	// APP
	nop
	// NO_APP
	lui x30 ,  errno&4095
	lui x15 ,  (errno>>12)&1048575
	addi x14 ,  x0 ,  88
	addi x10 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x14 ,  0 ( x15 )
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	fork, .Lfunc_end0-fork
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
