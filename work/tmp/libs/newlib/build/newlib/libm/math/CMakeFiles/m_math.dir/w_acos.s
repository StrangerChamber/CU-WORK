	.text
	.file	"w_acos.c"
	.globl	acos                    //  -- Begin function acos
	.type	acos,@function
acos:                                   //  @acos
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
	call __ieee754_acos
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __unorddf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call fabs
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __gtdf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	call __errno
	lui x30 ,  .str&4095
	addi x15 ,  x0 ,  33
	sw x15 ,  0 ( x10 )
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nan
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB0_3:                                //  %cleanup
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
.Lfunc_end0:
	.size	acos, .Lfunc_end0-acos
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.zero	1
	.size	.str, 1


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
