	.text
	.file	"ffs.c"
	.globl	ffs                     //  -- Begin function ffs
	.type	ffs,@function
ffs:                                    //  @ffs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	lui x30 ,  1431655765&4095
	lui x13 ,  (1431655765>>12)&1048575
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	addi x15 ,  x8 ,  -1
	xori x14 ,  x8 ,  -1
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x14
	or x13 ,  x13 ,  x30
	lui x30 ,  858993459&4095
	srli x14 ,  x15 ,  1&31
	srli x30 ,  x30 ,  12&31
	and x14 ,  x13 ,  x14
	lui x13 ,  (858993459>>12)&1048575
	sub x15 ,  x15 ,  x14
	or x13 ,  x13 ,  x30
	lui x30 ,  252645135&4095
	srli x14 ,  x15 ,  2&31
	and x15 ,  x13 ,  x15
	srli x30 ,  x30 ,  12&31
	and x14 ,  x13 ,  x14
	add x15 ,  x14 ,  x15
	srli x14 ,  x15 ,  4&31
	add x15 ,  x14 ,  x15
	lui x14 ,  (252645135>>12)&1048575
	or x14 ,  x14 ,  x30
	lui x30 ,  16843009&4095
	and x10 ,  x14 ,  x15
	lui x15 ,  (16843009>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsi3
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x8, x10, .LBB0_2
.LBB0_1:                                //  %entry
	srli x15 ,  x15 ,  24&31
	addi x10 ,  x15 ,  1
.LBB0_2:                                //  %entry
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ffs, .Lfunc_end0-ffs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
