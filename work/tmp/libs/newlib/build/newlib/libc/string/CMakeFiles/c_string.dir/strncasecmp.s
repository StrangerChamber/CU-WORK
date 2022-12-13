	.text
	.file	"strncasecmp.c"
	.globl	strncasecmp             //  -- Begin function strncasecmp
	.type	strncasecmp,@function
strncasecmp:                            //  @strncasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x14 ,  x0 ,  x0
	beq x0, x12, .LBB0_9
.LBB0_1:                                //  %for.body.preheader
	lui x13 ,  (_ctype_>>12)&1048575
	slti x5 ,  x0 ,  1
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _ctype_&4095
	lb x6 ,  0 ( x11 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x13 ,  x30
	addi x15 ,  x15 ,  1
	add x7 ,  x6 ,  x15
	lbu x7 ,  0 ( x7 )
	andi x7 ,  x7 ,  3
	bne x7, x5, .LBB0_4
.LBB0_3:                                //    in Loop: Header=BB0_2 Depth=1
	addi x6 ,  x6 ,  32
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lb x7 ,  0 ( x10 )
	add x15 ,  x7 ,  x15
	lbu x15 ,  0 ( x15 )
	andi x15 ,  x15 ,  3
	bne x15, x5, .LBB0_6
.LBB0_5:                                //    in Loop: Header=BB0_2 Depth=1
	addi x7 ,  x7 ,  32
.LBB0_6:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	sub x15 ,  x7 ,  x6
	beq x0, x6, .LBB0_10
.LBB0_7:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	bltu x0, x15, .LBB0_10
.LBB0_8:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x10 ,  1
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -1
	bltu x0, x12, .LBB0_2
.LBB0_9:
	add x15 ,  x0 ,  x14
.LBB0_10:                               //  %for.end
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	strncasecmp, .Lfunc_end0-strncasecmp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
