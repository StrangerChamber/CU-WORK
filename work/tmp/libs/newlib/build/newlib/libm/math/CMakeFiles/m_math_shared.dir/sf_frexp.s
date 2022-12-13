	.text
	.file	"sf_frexp.c"
	.globl	frexpf                  //  -- Begin function frexpf
	.type	frexpf,@function
frexpf:                                 //  @frexpf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  2147483647&4095
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lui x9 ,  (2147483647>>12)&1048575
	lui x13 ,  (2139095038>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x30 ,  x30 ,  12&31
	sw x0 ,  0 ( x8 )
	or x15 ,  x9 ,  x30
	lui x30 ,  2139095038&4095
	and x15 ,  x15 ,  x10
	srli x30 ,  x30 ,  12&31
	addi x14 ,  x15 ,  -1
	or x13 ,  x13 ,  x30
	bltu x13, x14, .LBB0_5
.LBB0_1:                                //  %if.end
	srli x14 ,  x15 ,  23&31
	bltu x0, x14, .LBB0_2
.LBB0_3:                                //  %if.then3
	addi x18 ,  x0 ,  -25
	lui x11 ,  (1275068416>>12)&1048575
	sw x18 ,  0 ( x8 )
	call __mulsf3
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	and x15 ,  x15 ,  x10
	jal x0, .LBB0_4
.LBB0_2:
	add x18 ,  x0 ,  x0
.LBB0_4:                                //  %if.end11
	srli x15 ,  x15 ,  23&31
	lui x30 ,  -2139095041&4095
	lui x14 ,  (1056964608>>12)&1048575
	add x15 ,  x18 ,  x15
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  -126
	sw x15 ,  0 ( x8 )
	lui x15 ,  (-2139095041>>12)&1048575
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x10
	or x10 ,  x14 ,  x15
.LBB0_5:                                //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	frexpf, .Lfunc_end0-frexpf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
