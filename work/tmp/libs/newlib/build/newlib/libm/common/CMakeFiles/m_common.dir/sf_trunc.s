	.text
	.file	"sf_trunc.c"
	.globl	truncf                  //  -- Begin function truncf
	.type	truncf,@function
truncf:                                 //  @truncf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x14 ,  x8 ,  23&31
	srli x30 ,  x30 ,  12&31
	andi x14 ,  x14 ,  255
	or x15 ,  x15 ,  x30
	addi x9 ,  x14 ,  -127
	addi x14 ,  x0 ,  22
	blt x14, x9, .LBB0_3
.LBB0_1:                                //  %if.then
	and x10 ,  x15 ,  x8
	blt x9, x0, .LBB0_5
.LBB0_2:                                //  %do.body9
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sra x15 ,  x15 ,  x9
	and x15 ,  x8 ,  x15
	or x10 ,  x10 ,  x15
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.else17
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	addi x15 ,  x0 ,  128
	beq x9, x15, .LBB0_5
.LBB0_4:                                //  %if.else17
	add x10 ,  x0 ,  x8
.LBB0_5:                                //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	truncf, .Lfunc_end0-truncf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
