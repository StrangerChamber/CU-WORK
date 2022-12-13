	.text
	.file	"ctime_r.c"
	.globl	ctime_r                 //  -- Begin function ctime_r
	.type	ctime_r,@function
ctime_r:                                //  @ctime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	addi x11 ,  x2 ,  4
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	call localtime_r
	add x11 ,  x0 ,  x8
	call asctime_r
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ctime_r, .Lfunc_end0-ctime_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
