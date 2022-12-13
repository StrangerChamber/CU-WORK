	.text
	.file	"read.c"
	.globl	read                    //  -- Begin function read
	.type	read,@function
read:                                   //  @read
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %if.end
	add x14 ,  x0 ,  x0
	beq x11, x14, .LBB0_3
.LBB0_4:                                //  %if.end
	addi x15 ,  x0 ,  88
	blt x10, x14, .LBB0_6
	jal x0, .LBB0_7
.LBB0_1:
	add x10 ,  x0 ,  x0
	ret
.LBB0_3:
	addi x15 ,  x0 ,  22
	bge x10, x14, .LBB0_7
.LBB0_6:
	addi x15 ,  x0 ,  9
.LBB0_7:                                //  %if.end
	.cfi_def_cfa 2, 0
	lui x30 ,  errno&4095
	lui x14 ,  (errno>>12)&1048575
	addi x10 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
	ret
.Lfunc_end0:
	.size	read, .Lfunc_end0-read
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
