	.text
	.file	"catanf.c"
	.globl	catanf                  //  -- Begin function catanf
	.type	catanf,@function
catanf:                                 //  @catanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9 ,  4 ( x11 )
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  16
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x18 ,  0 ( x11 )
	sw x9 ,  36 ( x2 )
	sw x18 ,  32 ( x2 )
	sw x18 ,  16 ( x2 )
	sw x9 ,  20 ( x2 )
	call crealf
	add x11 ,  x0 ,  x0
	sw x18 ,  24 ( x2 )
	sw x18 ,  8 ( x2 )
	sw x9 ,  28 ( x2 )
	add x21 ,  x0 ,  x10
	sw x9 ,  12 ( x2 )
	call __nesf2
	add x20 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	call cimagf
	add x19 ,  x0 ,  x10
	lui x18 ,  (2139095040>>12)&1048575
	lui x9 ,  (2143289344>>12)&1048575
	bltu x0, x20, .LBB0_2
.LBB0_1:                                //  %entry
	lui x11 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x19
	call __gtsf2
	blt x0, x10, .LBB0_5
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x20 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x20
	call __subsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __subsf3
	add x11 ,  x0 ,  x0
	add x22 ,  x0 ,  x10
	call __eqsf2
	beq x0, x10, .LBB0_5
.LBB0_3:                                //  %if.end12
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x21
	call __addsf3
	add x11 ,  x0 ,  x22
	call atan2f
	lui x11 ,  (1056964608>>12)&1048575
	call __mulsf3
	call _redupif
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x0
	add x22 ,  x0 ,  x10
	call __eqsf2
	beq x0, x10, .LBB0_5
.LBB0_4:                                //  %if.end21
	lui x11 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x19
	call __addsf3
	add x11 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x22
	call __divsf3
	call logf
	lui x11 ,  (1048576000>>12)&1048575
	call __mulsf3
	add x19 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __addsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __addsf3
	add x18 ,  x0 ,  x10
.LBB0_5:                                //  %cleanup
	sw x18 ,  4 ( x8 )
	sw x9 ,  0 ( x8 )
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	catanf, .Lfunc_end0-catanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
