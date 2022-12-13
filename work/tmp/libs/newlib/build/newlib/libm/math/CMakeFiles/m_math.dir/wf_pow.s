	.text
	.file	"wf_pow.c"
	.globl	powf                    //  -- Begin function powf
	.type	powf,@function
powf:                                   //  @powf
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
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	call __ieee754_powf
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __unordsf2
	bltu x0, x10, .LBB0_17
.LBB0_1:                                //  %if.end
	add x19 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __nesf2
	bltu x0, x10, .LBB0_6
.LBB0_2:                                //  %if.then2
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __eqsf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui x8 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_17
.LBB0_6:                                //  %if.end11
	add x10 ,  x0 ,  x8
	call finitef
	beq x0, x10, .LBB0_7
.LBB0_13:                               //  %if.end27
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	call __nesf2
	bltu x0, x10, .LBB0_17
.LBB0_14:                               //  %land.lhs.true29
	add x10 ,  x0 ,  x18
	call finitef
	beq x0, x10, .LBB0_17
.LBB0_15:                               //  %land.lhs.true32
	add x10 ,  x0 ,  x9
	call finitef
	bltu x0, x10, .LBB0_16
	jal x0, .LBB0_17
.LBB0_4:                                //  %if.end5
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __ltsf2
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call finitef
	bge x18, x0, .LBB0_17
.LBB0_5:                                //  %if.end5
	beq x0, x10, .LBB0_17
.LBB0_16:                               //  %if.then35
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_17
.LBB0_7:                                //  %if.then14
	add x10 ,  x0 ,  x18
	call finitef
	beq x0, x10, .LBB0_13
.LBB0_8:                                //  %land.lhs.true17
	add x10 ,  x0 ,  x9
	call finitef
	beq x0, x10, .LBB0_13
.LBB0_9:                                //  %if.then20
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __unordsf2
	bne x10, x19, .LBB0_10
.LBB0_11:                               //  %if.then20
	addi x9 ,  x0 ,  34
	jal x0, .LBB0_12
.LBB0_10:
	addi x9 ,  x0 ,  33
.LBB0_12:                               //  %if.then20
	call __errno
	sw x9 ,  0 ( x10 )
.LBB0_17:                               //  %cleanup
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
	.size	powf, .Lfunc_end0-powf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
