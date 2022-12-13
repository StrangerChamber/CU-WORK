	.text
	.file	"sf_modf.c"
	.globl	modff                   //  -- Begin function modff
	.type	modff,@function
modff:                                  //  @modff
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
	add x9 ,  x0 ,  x11
	addi x14 ,  x0 ,  22
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x15 ,  x8 ,  23&31
	andi x15 ,  x15 ,  255
	addi x15 ,  x15 ,  -127
	blt x14, x15, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x15, x0, .LBB0_2
.LBB0_3:                                //  %if.else
	lui x30 ,  8388607&4095
	lui x14 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	srl x14 ,  x14 ,  x15
	and x14 ,  x8 ,  x14
	beq x0, x14, .LBB0_4
.LBB0_6:                                //  %do.body21
	lui x30 ,  -8388608&4095
	lui x14 ,  (-8388608>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sra x15 ,  x14 ,  x15
	and x11 ,  x8 ,  x15
	sw x11 ,  0 ( x9 )
	call __subsf3
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_9
.LBB0_7:                                //  %if.else29
	add x10 ,  x0 ,  x8
	sw x8 ,  0 ( x9 )
	call __fpclassifyf
	bltu x0, x10, .LBB0_5
.LBB0_8:                                //  %if.then31
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	add x8 ,  x0 ,  x10
	sw x8 ,  0 ( x9 )
	jal x0, .LBB0_9
.LBB0_2:                                //  %do.body3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	sw x15 ,  0 ( x9 )
	jal x0, .LBB0_9
.LBB0_4:                                //  %if.then12
	sw x8 ,  0 ( x9 )
.LBB0_5:                                //  %do.body32
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x8 ,  x15 ,  x8
.LBB0_9:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	modff, .Lfunc_end0-modff
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
