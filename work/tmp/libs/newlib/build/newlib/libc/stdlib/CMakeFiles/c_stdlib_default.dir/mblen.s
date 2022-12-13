	.text
	.file	"mblen.c"
	.globl	mblen                   //  -- Begin function mblen
	.type	mblen,@function
mblen:                                  //  @mblen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	beq x0, x15, .LBB0_5
.LBB0_1:                                //  %lor.lhs.false
	.cfi_def_cfa 2, 0
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %if.end
	add x15 ,  x0 ,  x0
	beq x11, x15, .LBB0_3
.LBB0_4:                                //  %if.end
	slti x10 ,  x0 ,  1
.LBB0_5:                                //  %return
	ret
.LBB0_3:
	addi x10 ,  x0 ,  -1
	ret
.Lfunc_end0:
	.size	mblen, .Lfunc_end0-mblen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
