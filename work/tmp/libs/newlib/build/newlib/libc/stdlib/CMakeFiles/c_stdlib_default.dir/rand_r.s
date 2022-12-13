	.text
	.file	"rand_r.c"
	.globl	rand_r                  //  -- Begin function rand_r
	.type	rand_r,@function
rand_r:                                 //  @rand_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	lui x30 ,  305420679&4095
	lui x14 ,  (305420679>>12)&1048575
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x19 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x15 ,  0 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x9 ,  x14 ,  x30
	beq x15, x19, .LBB0_2
.LBB0_1:                                //  %entry
	add x9 ,  x0 ,  x15
.LBB0_2:                                //  %entry
	lui x30 ,  127773&4095
	lui x15 ,  (127773>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divsi3
	lui x30 ,  -127773&4095
	lui x15 ,  (-127773>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsi3
	lui x30 ,  16807&4095
	lui x15 ,  (16807>>12)&1048575
	add x10 ,  x9 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsi3
	lui x30 ,  -2836&4095
	lui x15 ,  (-2836>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsi3
	lui x30 ,  2147483647&4095
	lui x14 ,  (2147483647>>12)&1048575
	add x15 ,  x10 ,  x9
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bge x15, x19, .LBB0_4
.LBB0_3:
	add x15 ,  x14 ,  x15
.LBB0_4:                                //  %entry
	sw x15 ,  0 ( x8 )
	and x10 ,  x14 ,  x15
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	rand_r, .Lfunc_end0-rand_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
