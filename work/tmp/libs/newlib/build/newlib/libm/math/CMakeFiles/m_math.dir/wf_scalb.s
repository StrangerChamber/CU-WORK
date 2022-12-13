	.text
	.file	"wf_scalb.c"
	.globl	scalbf                  //  -- Begin function scalbf
	.type	scalbf,@function
scalbf:                                 //  @scalbf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x18 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call __ieee754_scalbf
	add x8 ,  x0 ,  x10
	call finitef
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __unordsf2
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %entry
	bltu x0, x19, .LBB0_5
.LBB0_2:                                //  %land.lhs.true
	add x10 ,  x0 ,  x9
	call finitef
	beq x0, x10, .LBB0_5
.LBB0_3:                                //  %if.then
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __gtsf2
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	bge x18, x10, .LBB0_9
.LBB0_4:
	lui x8 ,  (2139095040>>12)&1048575
	jal x0, .LBB0_9
.LBB0_5:                                //  %if.end
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	call __nesf2
	bltu x0, x10, .LBB0_8
.LBB0_6:                                //  %if.end
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __eqsf2
	beq x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then12
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x9
	call __extendsfdf2
	add x12 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	add x13 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	call copysign
	call __truncdfsf2
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_10
.LBB0_8:                                //  %if.end17
	add x10 ,  x0 ,  x18
	call finitef
	bltu x0, x10, .LBB0_10
.LBB0_9:                                //  %if.then20
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
.LBB0_10:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	scalbf, .Lfunc_end0-scalbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
