	.text
	.file	"s_trunc.c"
	.globl	trunc                   //  -- Begin function trunc
	.type	trunc,@function
trunc:                                  //  @trunc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  -2147483648&4095
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	lui x15 ,  (-2147483648>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x10
	addi x13 ,  x0 ,  19
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	srli x15 ,  x8 ,  20&31
	andi x15 ,  x15 ,  2047
	addi x18 ,  x15 ,  -1023
	blt x13, x18, .LBB0_4
.LBB0_1:                                //  %if.then
	and x11 ,  x14 ,  x8
	blt x18, x0, .LBB0_2
.LBB0_3:                                //  %do.body15
	lui x30 ,  -1048576&4095
	lui x15 ,  (-1048576>>12)&1048575
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sra x15 ,  x15 ,  x18
	and x15 ,  x8 ,  x15
	or x11 ,  x11 ,  x15
	jal x0, .LBB0_7
.LBB0_4:                                //  %if.else26
	slti x14 ,  x18 ,  52
	bltu x0, x14, .LBB0_8
.LBB0_5:                                //  %if.then28
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	addi x15 ,  x0 ,  1024
	beq x18, x15, .LBB0_7
.LBB0_6:                                //  %if.then28
	add x11 ,  x0 ,  x8
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_7
.LBB0_8:                                //  %do.body33
	addi x15 ,  x15 ,  -1043
	addi x14 ,  x0 ,  -1
	add x11 ,  x0 ,  x8
	srl x15 ,  x14 ,  x15
	xori x15 ,  x15 ,  -1
	and x10 ,  x9 ,  x15
	jal x0, .LBB0_7
.LBB0_2:                                //  %do.body7
	add x10 ,  x0 ,  x0
.LBB0_7:                                //  %if.then28
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	trunc, .Lfunc_end0-trunc
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
