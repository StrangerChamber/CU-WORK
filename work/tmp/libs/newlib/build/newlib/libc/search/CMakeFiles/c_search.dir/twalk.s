	.text
	.file	"twalk.c"
	.globl	twalk                   //  -- Begin function twalk
	.type	twalk,@function
twalk:                                  //  @twalk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	beq x0, x11, .LBB0_3
.LBB0_2:                                //  %if.then
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x12 ,  x0 ,  x0
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call trecurse
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
.LBB0_3:                                //  %if.end
	ret
.Lfunc_end0:
	.size	twalk, .Lfunc_end0-twalk
	.cfi_endproc
                                        //  -- End function
	.type	trecurse,@function      //  -- Begin function trecurse
trecurse:                               //  @trecurse
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x9 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x15 ,  4 ( x18 )
	bltu x0, x15, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  8 ( x18 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.else
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call_reg, 0 ( x8 )
	lw x10 ,  4 ( x18 )
	addi x19 ,  x9 ,  1
	beq x0, x10, .LBB1_5
.LBB1_4:                                //  %if.then4
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	call trecurse
.LBB1_5:                                //  %if.end
	slti x11 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call_reg, 0 ( x8 )
	lw x10 ,  8 ( x18 )
	beq x0, x10, .LBB1_7
.LBB1_6:                                //  %if.then8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	call trecurse
.LBB1_7:                                //  %if.end11
	addi x11 ,  x0 ,  2
.LBB1_8:                                //  %if.end12
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call_reg, 0 ( x8 )
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB1_2:                                //  %if.then
	addi x11 ,  x0 ,  3
	jal x0, .LBB1_8
.Lfunc_end1:
	.size	trecurse, .Lfunc_end1-trecurse
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
