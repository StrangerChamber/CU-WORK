	.text
	.file	"w_sinh.c"
	.globl	sinh                    //  -- Begin function sinh
	.type	sinh,@function
sinh:                                   //  @sinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	call __ieee754_sinh
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call finite
	beq x0, x10, .LBB0_1
.LBB0_4:                                //  %cleanup
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:                                //  %land.lhs.true
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	call __errno
	add x8 ,  x0 ,  x0
	addi x15 ,  x0 ,  34
	add x11 ,  x0 ,  x18
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	call __gtdf2
	lui x30 ,  -1048576&4095
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	bge x8, x10, .LBB0_4
.LBB0_3:
	lui x9 ,  (2146435072>>12)&1048575
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	sinh, .Lfunc_end0-sinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
