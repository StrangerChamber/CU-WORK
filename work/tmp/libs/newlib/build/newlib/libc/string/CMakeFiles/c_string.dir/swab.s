	.text
	.file	"swab.c"
	.globl	swab                    //  -- Begin function swab
	.type	swab,@function
swab:                                   //  @swab
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	slti x15 ,  x12 ,  2
	bltu x0, x15, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	add x15 ,  x0 ,  x0
.LBB0_3:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x15 ,  x10
	add x14 ,  x15 ,  x11
	lb x5 ,  1 ( x13 )
	lb x13 ,  0 ( x13 )
	sb x5 ,  0 ( x14 )
	sb x13 ,  1 ( x14 )
	addi x14 ,  x15 ,  3
	addi x15 ,  x15 ,  2
	blt x14, x12, .LBB0_3
.LBB0_4:                                //  %for.end.loopexit
	addi x15 ,  x15 ,  1
	beq x15, x12, .LBB0_6
	jal x0, .LBB0_7
.LBB0_1:
	slti x15 ,  x0 ,  1
	bne x15, x12, .LBB0_7
.LBB0_6:                                //  %if.then
	add x15 ,  x11 ,  x12
	sb x0 ,  -1 ( x15 )
.LBB0_7:                                //  %if.end
	ret
.Lfunc_end0:
	.size	swab, .Lfunc_end0-swab
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
