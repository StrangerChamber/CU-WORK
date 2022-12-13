	.text
	.file	"strlwr.c"
	.globl	strlwr                  //  -- Begin function strlwr
	.type	strlwr,@function
strlwr:                                 //  @strlwr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x15 ,  0 ( x10 )
	beq x0, x15, .LBB0_5
.LBB0_1:                                //  %for.body.preheader
	addi x13 ,  x10 ,  1
	lui x14 ,  (_ctype_>>12)&1048575
	slti x12 ,  x0 ,  1
	jal x0, .LBB0_2
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	sb x15 ,  -1 ( x13 )
	lbu x15 ,  0 ( x13 )
	addi x11 ,  x13 ,  1
	add x13 ,  x0 ,  x11
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _ctype_&4095
	andi x11 ,  x15 ,  255
	srli x30 ,  x30 ,  12&31
	or x5 ,  x14 ,  x30
	add x11 ,  x11 ,  x5
	lbu x11 ,  1 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x12, .LBB0_4
.LBB0_3:                                //    in Loop: Header=BB0_2 Depth=1
	addi x15 ,  x15 ,  32
	jal x0, .LBB0_4
.LBB0_5:                                //  %for.end
	ret
.Lfunc_end0:
	.size	strlwr, .Lfunc_end0-strlwr
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
