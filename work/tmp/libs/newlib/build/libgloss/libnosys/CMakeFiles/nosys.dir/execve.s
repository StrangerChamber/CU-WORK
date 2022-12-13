	.text
	.file	"execve.c"
	.globl	execve                  //  -- Begin function execve
	.type	execve,@function
execve:                                 //  @execve
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	addi x15 ,  x0 ,  22
	add x14 ,  x0 ,  x0
	add x13 ,  x0 ,  x15
	bne x12, x14, .LBB0_1
.LBB0_2:                                //  %entry
	add x12 ,  x0 ,  x15
	bne x11, x14, .LBB0_3
.LBB0_4:                                //  %entry
	beq x10, x14, .LBB0_6
.LBB0_5:                                //  %entry
	add x15 ,  x0 ,  x12
.LBB0_6:                                //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  errno&4095
	lui x14 ,  (errno>>12)&1048575
	addi x10 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
	ret
.LBB0_1:                                //  %entry
	addi x13 ,  x0 ,  88
	add x12 ,  x0 ,  x15
	beq x11, x14, .LBB0_4
.LBB0_3:                                //  %entry
	add x12 ,  x0 ,  x13
	bne x10, x14, .LBB0_5
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	execve, .Lfunc_end0-execve
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
