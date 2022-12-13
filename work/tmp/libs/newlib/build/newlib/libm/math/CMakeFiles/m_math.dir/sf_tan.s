	.text
	.file	"sf_tan.c"
	.globl	tanf                    //  -- Begin function tanf
	.type	tanf,@function
tanf:                                   //  @tanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	lui x14 ,  (1061752794>>12)&1048575
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1061752794&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x10
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x11 ,  x0 ,  x0
	slti x12 ,  x0 ,  1
	call __kernel_tanf
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.else
	srli x15 ,  x15 ,  23&31
	sltiu x15 ,  x15 ,  255
	beq x0, x15, .LBB0_3
.LBB0_4:                                //  %if.else3
	addi x11 ,  x2 ,  4
	call __ieee754_rem_pio2f
	slli x15 ,  x10 ,  1&31
	lw x11 ,  8 ( x2 )
	slti x14 ,  x0 ,  1
	lw x10 ,  4 ( x2 )
	andi x15 ,  x15 ,  2
	sub x12 ,  x14 ,  x15
	call __kernel_tanf
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:                                //  %if.then2
	add x11 ,  x0 ,  x10
	call __subsf3
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tanf, .Lfunc_end0-tanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
