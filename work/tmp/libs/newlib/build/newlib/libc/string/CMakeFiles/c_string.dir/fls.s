	.text
	.file	"fls.c"
	.globl	fls                     //  -- Begin function fls
	.type	fls,@function
fls:                                    //  @fls
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	srli x15 ,  x10 ,  1&31
	lui x30 ,  1431655765&4095
	lui x13 ,  (1431655765>>12)&1048575
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	or x15 ,  x15 ,  x10
	srli x30 ,  x30 ,  12&31
	srli x14 ,  x15 ,  2&31
	or x13 ,  x13 ,  x30
	lui x30 ,  858993459&4095
	or x15 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	srli x14 ,  x15 ,  4&31
	or x15 ,  x14 ,  x15
	srli x14 ,  x15 ,  8&31
	or x15 ,  x14 ,  x15
	srli x14 ,  x15 ,  16&31
	or x15 ,  x14 ,  x15
	xori x15 ,  x15 ,  -1
	srli x14 ,  x15 ,  1&31
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
	srli x15 ,  x10 ,  24&31
	addi x14 ,  x0 ,  32
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	sub x10 ,  x14 ,  x15
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	fls, .Lfunc_end0-fls
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
