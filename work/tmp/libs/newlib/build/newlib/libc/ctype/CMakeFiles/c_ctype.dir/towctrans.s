	.text
	.file	"towctrans.c"
	.globl	_towctrans_r            //  -- Begin function _towctrans_r
	.type	_towctrans_r,@function
_towctrans_r:                           //  @_towctrans_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x10 ,  x0 ,  x11
	addi x15 ,  x12 ,  -1
	slti x14 ,  x0 ,  1
	bltu x14, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x15 ,  x0 ,  x0
	add x11 ,  x0 ,  x12
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x12 ,  x0 ,  x15
	call towctrans_l
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
.LBB0_2:                                //  %return
	ret
.Lfunc_end0:
	.size	_towctrans_r, .Lfunc_end0-_towctrans_r
	.cfi_endproc
                                        //  -- End function
	.globl	towctrans               //  -- Begin function towctrans
	.type	towctrans,@function
towctrans:                              //  @towctrans
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	addi x15 ,  x11 ,  -1
	slti x14 ,  x0 ,  1
	bltu x14, x15, .LBB1_2
.LBB1_1:                                //  %if.then.i
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x12 ,  x0 ,  x0
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call towctrans_l
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
.LBB1_2:                                //  %_towctrans_r.exit
	ret
.Lfunc_end1:
	.size	towctrans, .Lfunc_end1-towctrans
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
