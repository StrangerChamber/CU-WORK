	.text
	.file	"fcloseall.c"
	.globl	_fcloseall_r            //  -- Begin function _fcloseall_r
	.type	_fcloseall_r,@function
_fcloseall_r:                           //  @_fcloseall_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _fclose_r&4095
	lui x15 ,  (_fclose_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, _fwalk_reent
.Lfunc_end0:
	.size	_fcloseall_r, .Lfunc_end0-_fcloseall_r
	.cfi_endproc
                                        //  -- End function
	.globl	fcloseall               //  -- Begin function fcloseall
	.type	fcloseall,@function
fcloseall:                              //  @fcloseall
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _global_impure_ptr&4095
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _fclose_r&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (_fclose_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, _fwalk_reent
.Lfunc_end1:
	.size	fcloseall, .Lfunc_end1-fcloseall
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
