	.text
	.file	"strcpy.c"
	.globl	strcpy                  //  -- Begin function strcpy
	.type	strcpy,@function
strcpy:                                 //  @strcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	beq x0, x15, .LBB0_2
.LBB0_1:
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	lw x13 ,  0 ( x11 )
	lui x30 ,  -16843009&4095
	lui x14 ,  (-16843009>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x13
	xori x12 ,  x13 ,  -1
	and x15 ,  x15 ,  x12
	lui x12 ,  (-2139062144>>12)&1048575
	or x5 ,  x12 ,  x30
	and x15 ,  x5 ,  x15
	beq x0, x15, .LBB0_4
.LBB0_3:
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_6
.LBB0_4:                                //  %while.body.preheader
	add x15 ,  x0 ,  x10
.LBB0_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x13 ,  0 ( x15 )
	lw x13 ,  4 ( x11 )
	lui x30 ,  -16843009&4095
	addi x15 ,  x15 ,  4
	addi x11 ,  x11 ,  4
	srli x30 ,  x30 ,  12&31
	or x5 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x5 ,  x5 ,  x13
	xori x6 ,  x13 ,  -1
	and x5 ,  x5 ,  x6
	or x6 ,  x12 ,  x30
	and x5 ,  x6 ,  x5
	beq x0, x5, .LBB0_5
.LBB0_6:                                //  %while.cond6
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_6
.LBB0_7:                                //  %while.end11
	ret
.Lfunc_end0:
	.size	strcpy, .Lfunc_end0-strcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
