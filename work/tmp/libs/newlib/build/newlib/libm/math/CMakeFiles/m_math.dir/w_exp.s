	.text
	.file	"w_exp.c"
	.globl	exp                     //  -- Begin function exp
	.type	exp,@function
exp:                                    //  @exp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	call __ieee754_exp
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_6
.LBB0_1:                                //  %if.then
	lui x30 ,  -17155601&4095
	lui x15 ,  (-17155601>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1082535490&4095
	lui x15 ,  (1082535490>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __gtdf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then2
	call __errno
	addi x15 ,  x0 ,  34
	lui x9 ,  (2146435072>>12)&1048575
	add x8 ,  x0 ,  x0
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.else
	lui x30 ,  -718458799&4095
	lui x15 ,  (-718458799>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1064875760&4095
	lui x15 ,  (-1064875760>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	bge x10, x0, .LBB0_6
.LBB0_4:                                //  %if.then5
	call __errno
	add x8 ,  x0 ,  x0
	addi x15 ,  x0 ,  34
	add x9 ,  x0 ,  x8
.LBB0_5:                                //  %cleanup
	sw x15 ,  0 ( x10 )
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	exp, .Lfunc_end0-exp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
