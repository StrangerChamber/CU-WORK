	.text
	.file	"strcat.c"
	.globl	strcat                  //  -- Begin function strcat
	.type	strcat,@function
strcat:                                 //  @strcat
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
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	andi x14 ,  x8 ,  3
	add x15 ,  x0 ,  x8
	bltu x0, x14, .LBB0_3
.LBB0_1:                                //  %if.then
	addi x15 ,  x8 ,  -4
	lui x14 ,  (-16843009>>12)&1048575
	lui x13 ,  (-2139062144>>12)&1048575
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  4 ( x15 )
	lui x30 ,  -16843009&4095
	addi x15 ,  x15 ,  4
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x10 ,  x10 ,  x12
	xori x12 ,  x12 ,  -1
	and x12 ,  x10 ,  x12
	or x10 ,  x13 ,  x30
	and x12 ,  x10 ,  x12
	beq x0, x12, .LBB0_2
.LBB0_3:                                //  %while.cond3.preheader
	addi x10 ,  x15 ,  -1
.LBB0_4:                                //  %while.cond3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  1 ( x10 )
	addi x10 ,  x10 ,  1
	bltu x0, x15, .LBB0_4
.LBB0_5:                                //  %while.end7
	call strcpy
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	strcat, .Lfunc_end0-strcat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
