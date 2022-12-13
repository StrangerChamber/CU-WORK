	.text
	.file	"ffsll.c"
	.globl	ffsll                   //  -- Begin function ffsll
	.type	ffsll,@function
ffsll:                                  //  @ffsll
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x11
	lui x30 ,  1431655765&4095
	lui x13 ,  (1431655765>>12)&1048575
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	addi x15 ,  x8 ,  -1
	xori x14 ,  x8 ,  -1
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x14
	or x20 ,  x13 ,  x30
	lui x30 ,  858993459&4095
	lui x13 ,  (858993459>>12)&1048575
	srli x14 ,  x15 ,  1&31
	srli x30 ,  x30 ,  12&31
	and x14 ,  x20 ,  x14
	or x21 ,  x13 ,  x30
	lui x30 ,  252645135&4095
	sub x15 ,  x15 ,  x14
	srli x30 ,  x30 ,  12&31
	srli x14 ,  x15 ,  2&31
	and x15 ,  x21 ,  x15
	and x14 ,  x21 ,  x14
	add x15 ,  x14 ,  x15
	srli x14 ,  x15 ,  4&31
	add x15 ,  x14 ,  x15
	lui x14 ,  (252645135>>12)&1048575
	or x22 ,  x14 ,  x30
	lui x30 ,  16843009&4095
	and x10 ,  x22 ,  x15
	lui x15 ,  (16843009>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	add x11 ,  x0 ,  x19
	call __mulsi3
	addi x15 ,  x9 ,  -1
	xori x14 ,  x9 ,  -1
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	and x15 ,  x15 ,  x14
	srli x14 ,  x15 ,  1&31
	and x14 ,  x20 ,  x14
	sub x15 ,  x15 ,  x14
	srli x14 ,  x15 ,  2&31
	and x15 ,  x21 ,  x15
	and x14 ,  x21 ,  x14
	add x15 ,  x14 ,  x15
	srli x14 ,  x15 ,  4&31
	add x15 ,  x14 ,  x15
	and x10 ,  x22 ,  x15
	call __mulsi3
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	bne x9, x10, .LBB0_1
.LBB0_2:                                //  %entry
	srli x15 ,  x18 ,  24&31
	addi x15 ,  x15 ,  32
	or x14 ,  x8 ,  x9
	bne x14, x10, .LBB0_4
	jal x0, .LBB0_5
.LBB0_1:
	srli x15 ,  x15 ,  24&31
	or x14 ,  x8 ,  x9
	beq x14, x10, .LBB0_5
.LBB0_4:                                //  %entry
	addi x10 ,  x15 ,  1
.LBB0_5:                                //  %entry
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ffsll, .Lfunc_end0-ffsll
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
