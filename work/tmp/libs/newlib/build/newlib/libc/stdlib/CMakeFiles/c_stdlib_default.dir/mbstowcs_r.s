	.text
	.file	"mbstowcs_r.c"
	.globl	_mbstowcs_r             //  -- Begin function _mbstowcs_r
	.type	_mbstowcs_r,@function
_mbstowcs_r:                            //  @_mbstowcs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x14
	add x19 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x21 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	bne x21, x9, .LBB0_2
.LBB0_1:
	slti x19 ,  x0 ,  1
.LBB0_2:                                //  %entry
	beq x0, x19, .LBB0_10
.LBB0_3:                                //  %while.body.preheader
	add x22 ,  x0 ,  x0
	lui x23 ,  (__global_locale>>12)&1048575
	add x9 ,  x0 ,  x22
	jal x0, .LBB0_4
.LBB0_9:                                //  %if.end8
                                        //    in Loop: Header=BB0_4 Depth=1
	sltu x14 ,  x0 ,  x21
	add x18 ,  x10 ,  x18
	addi x9 ,  x9 ,  1
	add x21 ,  x0 ,  x15
	sub x19 ,  x19 ,  x14
	beq x0, x19, .LBB0_10
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  __global_locale&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x23 ,  x30
	lw x24 ,  228 ( x15 )
	call __locale_mb_cur_max
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x18
	add x14 ,  x0 ,  x8
	call_reg, 0 ( x24 )
	blt x10, x0, .LBB0_5
.LBB0_6:                                //  %if.else
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x10, .LBB0_10
.LBB0_7:                                //  %if.end8
                                        //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x22
	beq x21, x22, .LBB0_9
.LBB0_8:                                //  %if.end8
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x21 ,  4
	jal x0, .LBB0_9
.LBB0_5:                                //  %if.then4
	sw x0 ,  0 ( x8 )
	addi x9 ,  x0 ,  -1
.LBB0_10:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_mbstowcs_r, .Lfunc_end0-_mbstowcs_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
