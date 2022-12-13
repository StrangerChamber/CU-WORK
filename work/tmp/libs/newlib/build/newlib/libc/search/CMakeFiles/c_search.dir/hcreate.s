	.text
	.file	"hcreate.c"
	.globl	hcreate                 //  -- Begin function hcreate
	.type	hcreate,@function
hcreate:                                //  @hcreate
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  htab&4095
	lui x15 ,  (htab>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, hcreate_r
.Lfunc_end0:
	.size	hcreate, .Lfunc_end0-hcreate
	.cfi_endproc
                                        //  -- End function
	.globl	hdestroy                //  -- Begin function hdestroy
	.type	hdestroy,@function
hdestroy:                               //  @hdestroy
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  htab&4095
	lui x15 ,  (htab>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	jal x0, hdestroy_r
.Lfunc_end1:
	.size	hdestroy, .Lfunc_end1-hdestroy
	.cfi_endproc
                                        //  -- End function
	.globl	hsearch                 //  -- Begin function hsearch
	.type	hsearch,@function
hsearch:                                //  @hsearch
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lui x30 ,  htab&4095
	addi x12 ,  x2 ,  16
	lw x15 ,  0 ( x10 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x2 )
	lw x15 ,  4 ( x10 )
	addi x10 ,  x2 ,  8
	sw x15 ,  12 ( x2 )
	lui x15 ,  (htab>>12)&1048575
	or x13 ,  x15 ,  x30
	call hsearch_r
	lw x10 ,  16 ( x2 )
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	hsearch, .Lfunc_end2-hsearch
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	htab,@object            //  @htab
	.local	htab
	.comm	htab,8,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
