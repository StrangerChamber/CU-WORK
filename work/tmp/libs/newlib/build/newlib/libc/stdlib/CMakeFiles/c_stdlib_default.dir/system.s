	.text
	.file	"system.c"
	.globl	_system_r               //  -- Begin function _system_r
	.type	_system_r,@function
_system_r:                              //  @_system_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call __errno
	addi x15 ,  x0 ,  88
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	sw x15 ,  0 ( x10 )
	addi x10 ,  x0 ,  -1
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	_system_r, .Lfunc_end0-_system_r
	.cfi_endproc
                                        //  -- End function
	.globl	system                  //  -- Begin function system
	.type	system,@function
system:                                 //  @system
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB1_1
.LBB1_2:                                //  %if.end.i
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call __errno
	addi x15 ,  x0 ,  88
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	sw x15 ,  0 ( x10 )
	addi x10 ,  x0 ,  -1
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB1_1:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end1:
	.size	system, .Lfunc_end1-system
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
