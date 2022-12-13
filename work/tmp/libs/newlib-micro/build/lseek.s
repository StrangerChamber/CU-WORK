	.text
	.file	"lseek.c"
	.globl	lseek                   //  -- Begin function lseek
	.type	lseek,@function
lseek:                                  //  @lseek
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	addi x15 ,  x2 ,  4
	addi x14 ,  x0 ,  5
	sw x12 ,  24 ( x15 )
	sw x11 ,  20 ( x15 )
	sw x10 ,  16 ( x15 )
	sw x14 ,  4 ( x2 )
	// APP
	nop
	// NO_APP
	lui x30 ,  4112&4095
	lui x14 ,  (4112>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
	// APP
	nop
	// NO_APP
	lw x15 ,  12 ( x2 )
	beq x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x15 ,  16 ( x2 )
	lui x30 ,  errno&4095
	lui x14 ,  (errno>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
.LBB0_2:                                //  %do.end
	lw x10 ,  8 ( x2 )
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	lseek, .Lfunc_end0-lseek
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
