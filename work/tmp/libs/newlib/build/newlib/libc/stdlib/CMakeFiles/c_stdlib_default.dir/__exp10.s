	.text
	.file	"__exp10.c"
	.globl	__exp10                 //  -- Begin function __exp10
	.type	__exp10,@function
__exp10:                                //  @__exp10
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	addi x15 ,  x0 ,  4
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x15, x10, .LBB0_3
.LBB0_1:                                //  %if.then
	lui x30 ,  __exp10.powtab&4095
	lui x14 ,  (__exp10.powtab>>12)&1048575
	slli x15 ,  x10 ,  3&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  0 ( x15 )
	lw x11 ,  4 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:                                //  %if.else
	andi x15 ,  x10 ,  1
	bltu x0, x15, .LBB0_4
.LBB0_6:                                //  %if.else2
	srli x10 ,  x10 ,  1&31
	call __exp10
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __muldf3
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_4:                                //  %if.then1
	addi x10 ,  x10 ,  -1
	call __exp10
	add x12 ,  x0 ,  x0
	lui x13 ,  (1076101120>>12)&1048575
	call __muldf3
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__exp10, .Lfunc_end0-__exp10
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__exp10.powtab,@object  //  @__exp10.powtab
	.section	.rodata,"a",@progbits
	.p2align	3
__exp10.powtab:
	.quad	4607182418800017408     //  double 1
	.quad	4621819117588971520     //  double 10
	.quad	4636737291354636288     //  double 100
	.quad	4652007308841189376     //  double 1000
	.quad	4666723172467343360     //  double 1.0E+4
	.size	__exp10.powtab, 40


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
