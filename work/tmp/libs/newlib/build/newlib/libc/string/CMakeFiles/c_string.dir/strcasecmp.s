	.text
	.file	"strcasecmp.c"
	.globl	strcasecmp              //  -- Begin function strcasecmp
	.type	strcasecmp,@function
strcasecmp:                             //  @strcasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x14 ,  (_ctype_>>12)&1048575
	slti x13 ,  x0 ,  1
.LBB0_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _ctype_&4095
	lb x12 ,  0 ( x11 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x14 ,  x30
	addi x15 ,  x15 ,  1
	add x5 ,  x12 ,  x15
	lbu x5 ,  0 ( x5 )
	andi x5 ,  x5 ,  3
	bne x5, x13, .LBB0_3
.LBB0_2:                                //    in Loop: Header=BB0_1 Depth=1
	addi x12 ,  x12 ,  32
.LBB0_3:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	lb x5 ,  0 ( x10 )
	add x15 ,  x5 ,  x15
	lbu x15 ,  0 ( x15 )
	andi x15 ,  x15 ,  3
	bne x15, x13, .LBB0_5
.LBB0_4:                                //    in Loop: Header=BB0_1 Depth=1
	addi x5 ,  x5 ,  32
.LBB0_5:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	sub x15 ,  x5 ,  x12
	beq x0, x12, .LBB0_7
.LBB0_6:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11 ,  x11 ,  1
	addi x10 ,  x10 ,  1
	beq x0, x15, .LBB0_1
.LBB0_7:                                //  %for.end
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	strcasecmp, .Lfunc_end0-strcasecmp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
