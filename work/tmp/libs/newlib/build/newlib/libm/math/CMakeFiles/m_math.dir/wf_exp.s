	.text
	.file	"wf_exp.c"
	.globl	expf                    //  -- Begin function expf
	.type	expf,@function
expf:                                   //  @expf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x9 ,  x0 ,  x10
	call __ieee754_expf
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call finitef
	beq x0, x10, .LBB0_6
.LBB0_1:                                //  %if.then
	lui x30 ,  1118925184&4095
	lui x15 ,  (1118925184>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __gtsf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then2
	call __errno
	addi x15 ,  x0 ,  34
	lui x8 ,  (2139095040>>12)&1048575
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.else
	lui x30 ,  -1026559563&4095
	lui x15 ,  (-1026559563>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __ltsf2
	bge x10, x0, .LBB0_6
.LBB0_4:                                //  %if.then5
	call __errno
	addi x15 ,  x0 ,  34
	add x8 ,  x0 ,  x0
.LBB0_5:                                //  %cleanup
	sw x15 ,  0 ( x10 )
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	expf, .Lfunc_end0-expf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
