	.text
	.file	"mbtowc.c"
	.globl	mbtowc                  //  -- Begin function mbtowc
	.type	mbtowc,@function
mbtowc:                                 //  @mbtowc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	beq x0, x12, .LBB0_3
.LBB0_4:                                //  %if.end3
	.cfi_def_cfa 2, 0
	lb x14 ,  0 ( x11 )
	andi x15 ,  x14 ,  255
	beq x0, x10, .LBB0_6
.LBB0_5:                                //  %if.then4
	sw x14 ,  0 ( x10 )
.LBB0_6:                                //  %if.end5
	sltu x10 ,  x0 ,  x15
	ret
.LBB0_1:
	add x10 ,  x0 ,  x0
	ret
.LBB0_3:
	addi x10 ,  x0 ,  -1
	ret
.Lfunc_end0:
	.size	mbtowc, .Lfunc_end0-mbtowc
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
