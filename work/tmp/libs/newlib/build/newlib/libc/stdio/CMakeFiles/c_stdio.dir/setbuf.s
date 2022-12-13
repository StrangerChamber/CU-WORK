	.text
	.file	"setbuf.c"
	.globl	setbuf                  //  -- Begin function setbuf
	.type	setbuf,@function
setbuf:                                 //  @setbuf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	xori x15 ,  x11 ,  0
	addi x13 ,  x0 ,  1024
	sltiu x15 ,  x15 ,  1
	slli x12 ,  x15 ,  1&31
	jal x0, setvbuf
.Lfunc_end0:
	.size	setbuf, .Lfunc_end0-setbuf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
