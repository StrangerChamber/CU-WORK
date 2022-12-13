	.text
	.file	"_Exit.c"
	.globl	_Exit                   //  -- Begin function _Exit
	.type	_Exit,@function
_Exit:                                  //  @_Exit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	call _exit
.Lfunc_end0:
	.size	_Exit, .Lfunc_end0-_Exit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
