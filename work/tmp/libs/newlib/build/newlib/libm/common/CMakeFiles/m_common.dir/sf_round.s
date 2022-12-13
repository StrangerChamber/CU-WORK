	.text
	.file	"sf_round.c"
	.globl	roundf                  //  -- Begin function roundf
	.type	roundf,@function
roundf:                                 //  @roundf
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
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x15 ,  x8 ,  23&31
	andi x15 ,  x15 ,  255
	addi x9 ,  x15 ,  -127
	addi x15 ,  x0 ,  22
	blt x15, x9, .LBB0_6
.LBB0_1:                                //  %if.then
	blt x9, x0, .LBB0_2
.LBB0_4:                                //  %if.else
	lui x30 ,  8388607&4095
	lui x15 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	srl x15 ,  x15 ,  x9
	and x15 ,  x8 ,  x15
	beq x0, x15, .LBB0_7
.LBB0_5:                                //  %cleanup.thread
	lui x30 ,  -8388608&4095
	lui x14 ,  (4194304>>12)&1048575
	lui x15 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	srl x14 ,  x14 ,  x9
	or x15 ,  x15 ,  x30
	add x14 ,  x8 ,  x14
	sra x15 ,  x15 ,  x9
	and x8 ,  x15 ,  x14
	jal x0, .LBB0_7
.LBB0_6:                                //  %if.else14
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	addi x15 ,  x0 ,  128
	bne x9, x15, .LBB0_7
	jal x0, .LBB0_8
.LBB0_2:                                //  %if.then2
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x8 ,  x15 ,  x8
	addi x15 ,  x0 ,  -1
	bne x9, x15, .LBB0_7
.LBB0_3:
	lui x15 ,  (1065353216>>12)&1048575
	or x8 ,  x15 ,  x8
.LBB0_7:                                //  %if.else14
	add x10 ,  x0 ,  x8
.LBB0_8:                                //  %if.else14
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	roundf, .Lfunc_end0-roundf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
