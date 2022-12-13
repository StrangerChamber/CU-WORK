	.text
	.file	"w_scalb.c"
	.globl	scalb                   //  -- Begin function scalb
	.type	scalb,@function
scalb:                                  //  @scalb
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
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x20 ,  x0 ,  x13
	add x21 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	call __ieee754_scalb
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call finite
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __unorddf2
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %entry
	bltu x0, x22, .LBB0_5
.LBB0_2:                                //  %land.lhs.true
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_5
.LBB0_3:                                //  %if.then
	call __errno
	add x8 ,  x0 ,  x0
	addi x15 ,  x0 ,  34
	add x11 ,  x0 ,  x18
	sw x15 ,  0 ( x10 )
	add x13 ,  x0 ,  x8
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	call __gtdf2
	lui x30 ,  -1048576&4095
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	bge x8, x10, .LBB0_10
.LBB0_4:
	lui x9 ,  (2146435072>>12)&1048575
	jal x0, .LBB0_10
.LBB0_5:                                //  %if.end
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB0_8
.LBB0_6:                                //  %if.end
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __eqdf2
	beq x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then9
	call __errno
	addi x15 ,  x0 ,  34
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x10
	call copysign
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	jal x0, .LBB0_10
.LBB0_8:                                //  %if.end12
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call finite
	bltu x0, x10, .LBB0_10
.LBB0_9:                                //  %if.then15
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
.LBB0_10:                               //  %cleanup
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
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
	.size	scalb, .Lfunc_end0-scalb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
