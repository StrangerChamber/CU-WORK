	.text
	.file	"w_hypot.c"
	.globl	hypot                   //  -- Begin function hypot
	.type	hypot,@function
hypot:                                  //  @hypot
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x21 ,  x0 ,  x10
	call __ieee754_hypot
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	call finite
	bltu x0, x10, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call finite
	beq x0, x10, .LBB0_4
.LBB0_2:                                //  %land.lhs.true4
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  34
	lui x8 ,  (2146435072>>12)&1048575
	add x9 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
.LBB0_4:                                //  %cleanup
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	hypot, .Lfunc_end0-hypot
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
