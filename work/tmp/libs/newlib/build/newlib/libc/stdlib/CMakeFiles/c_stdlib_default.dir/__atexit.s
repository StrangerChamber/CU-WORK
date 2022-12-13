	.text
	.file	"__atexit.c"
	.globl	__register_exitproc     //  -- Begin function __register_exitproc
	.type	__register_exitproc,@function
__register_exitproc:                    //  @__register_exitproc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _global_impure_ptr&4095
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x14 ,  0 ( x15 )
	lw x15 ,  328 ( x14 )
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x14 ,  4 ( x15 )
	addi x5 ,  x0 ,  31
	bge x5, x14, .LBB0_4
.LBB0_3:
	addi x10 ,  x0 ,  -1
	ret
.LBB0_1:                                //  %if.then
	addi x15 ,  x14 ,  332
	sw x15 ,  328 ( x14 )
	lw x14 ,  4 ( x15 )
	addi x5 ,  x0 ,  31
	blt x5, x14, .LBB0_3
.LBB0_4:                                //  %if.end4
	slli x5 ,  x14 ,  2&31
	beq x0, x10, .LBB0_7
.LBB0_5:                                //  %if.then6
	add x6 ,  x5 ,  x15
	sw x12 ,  136 ( x6 )
	lw x12 ,  392 ( x15 )
	sw x13 ,  264 ( x6 )
	slti x13 ,  x0 ,  1
	sll x13 ,  x13 ,  x14
	or x12 ,  x13 ,  x12
	sw x12 ,  392 ( x15 )
	xori x12 ,  x10 ,  2
	bltu x0, x12, .LBB0_7
.LBB0_6:                                //  %if.then12
	lw x12 ,  396 ( x15 )
	or x13 ,  x13 ,  x12
	sw x13 ,  396 ( x15 )
.LBB0_7:                                //  %if.end17
	add x13 ,  x5 ,  x15
	addi x14 ,  x14 ,  1
	add x10 ,  x0 ,  x0
	sw x11 ,  8 ( x13 )
	sw x14 ,  4 ( x15 )
	ret
.Lfunc_end0:
	.size	__register_exitproc, .Lfunc_end0-__register_exitproc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
