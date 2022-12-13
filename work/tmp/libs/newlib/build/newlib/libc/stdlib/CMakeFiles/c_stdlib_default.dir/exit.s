	.text
	.file	"exit.c"
	.globl	exit                    //  -- Begin function exit
	.type	exit,@function
exit:                                   //  @exit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11 ,  x0 ,  x0
	add x8 ,  x0 ,  x10
	call __call_exitprocs
	lui x30 ,  _global_impure_ptr&4095
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	lw x15 ,  60 ( x10 )
	beq x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	call_reg, 0 ( x15 )
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x8
	call _exit
.Lfunc_end0:
	.size	exit, .Lfunc_end0-exit
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
