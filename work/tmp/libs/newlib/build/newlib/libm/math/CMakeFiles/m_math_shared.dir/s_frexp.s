	.text
	.file	"s_frexp.c"
	.globl	frexp                   //  -- Begin function frexp
	.type	frexp,@function
frexp:                                  //  @frexp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  2147483647&4095
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lui x18 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x12
	addi x13 ,  x0 ,  2046
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	srli x30 ,  x30 ,  12&31
	sw x0 ,  0 ( x8 )
	or x15 ,  x18 ,  x30
	and x15 ,  x15 ,  x11
	srli x14 ,  x15 ,  20&31
	bltu x13, x14, .LBB0_6
.LBB0_1:                                //  %lor.lhs.false
	or x13 ,  x10 ,  x15
	beq x0, x13, .LBB0_6
.LBB0_2:                                //  %if.end
	bltu x0, x14, .LBB0_3
.LBB0_4:                                //  %if.then4
	addi x9 ,  x0 ,  -54
	add x12 ,  x0 ,  x0
	lui x13 ,  (1129316352>>12)&1048575
	sw x9 ,  0 ( x8 )
	call __muldf3
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	and x15 ,  x15 ,  x11
	jal x0, .LBB0_5
.LBB0_3:
	add x9 ,  x0 ,  x0
.LBB0_5:                                //  %if.end12
	srli x15 ,  x15 ,  20&31
	lui x30 ,  -2146435073&4095
	lui x14 ,  (1071644672>>12)&1048575
	add x15 ,  x9 ,  x15
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  -1022
	sw x15 ,  0 ( x8 )
	lui x15 ,  (-2146435073>>12)&1048575
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x11
	or x11 ,  x14 ,  x15
.LBB0_6:                                //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	frexp, .Lfunc_end0-frexp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
