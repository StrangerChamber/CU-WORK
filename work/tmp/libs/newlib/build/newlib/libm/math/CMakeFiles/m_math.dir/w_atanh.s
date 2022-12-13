	.text
	.file	"w_atanh.c"
	.globl	atanh                   //  -- Begin function atanh
	.type	atanh,@function
atanh:                                  //  @atanh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call __ieee754_atanh
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __unorddf2
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	add x20 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x12 ,  x0 ,  x20
	call __gedf2
	blt x10, x0, .LBB0_5
.LBB0_2:                                //  %if.then3
	call __errno
	addi x15 ,  x0 ,  33
	lui x13 ,  (1072693248>>12)&1048575
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x20
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x21
	call __gtdf2
	bge x0, x10, .LBB0_4
.LBB0_3:
	lui x19 ,  (2146959360>>12)&1048575
	add x18 ,  x0 ,  x20
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.else
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x12
	call __divdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
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
	.size	atanh, .Lfunc_end0-atanh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
