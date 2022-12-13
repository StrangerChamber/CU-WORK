	.text
	.file	"on_exit.c"
	.globl	on_exit                 //  -- Begin function on_exit
	.type	on_exit,@function
on_exit:                                //  @on_exit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	slti x10 ,  x0 ,  1
	add x13 ,  x0 ,  x0
	jal x0, __register_exitproc
.Lfunc_end0:
	.size	on_exit, .Lfunc_end0-on_exit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
