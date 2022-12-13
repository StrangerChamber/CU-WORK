	.text
	.file	"hcreate_r.c"
	.globl	hcreate_r               //  -- Begin function hcreate_r
	.type	hcreate_r,@function
hcreate_r:                              //  @hcreate_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_3
.LBB0_1:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
.LBB0_2:                                //  %cleanup
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x0
.LBB0_14:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:                                //  %if.end
	addi x15 ,  x0 ,  16
	bgeu x15, x10, .LBB0_4
.LBB0_5:                                //  %if.end
	srli x15 ,  x10 ,  26&31
	add x9 ,  x0 ,  x0
	bne x15, x9, .LBB0_6
.LBB0_7:                                //  %if.end
	addi x15 ,  x10 ,  -1
	and x15 ,  x15 ,  x10
	bltu x0, x15, .LBB0_8
	jal x0, .LBB0_11
.LBB0_4:                                //  %if.end
	add x10 ,  x0 ,  x15
	srli x15 ,  x10 ,  26&31
	add x9 ,  x0 ,  x0
	beq x15, x9, .LBB0_7
.LBB0_6:                                //  %if.end
	lui x10 ,  (67108864>>12)&1048575
	addi x15 ,  x10 ,  -1
	and x15 ,  x15 ,  x10
	beq x0, x15, .LBB0_11
.LBB0_8:                                //  %for.body.preheader
	addi x15 ,  x0 ,  -1
.LBB0_9:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x15 ,  x15 ,  1
	srli x10 ,  x10 ,  1&31
	bltu x0, x10, .LBB0_9
.LBB0_10:                               //  %for.end
	addi x14 ,  x0 ,  2
	sll x10 ,  x14 ,  x15
.LBB0_11:                               //  %if.end10
	sw x10 ,  4 ( x8 )
	slli x10 ,  x10 ,  2&31
	call malloc
	add x15 ,  x0 ,  x10
	sw x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_15
.LBB0_12:                               //  %for.cond19.preheader
	lw x14 ,  4 ( x8 )
	slti x10 ,  x0 ,  1
	beq x0, x14, .LBB0_14
.LBB0_13:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x9 ,  x9 ,  1
	bltu x9, x14, .LBB0_13
	jal x0, .LBB0_14
.LBB0_15:                               //  %if.then16
	call __errno
	addi x15 ,  x0 ,  12
	jal x0, .LBB0_2
.Lfunc_end0:
	.size	hcreate_r, .Lfunc_end0-hcreate_r
	.cfi_endproc
                                        //  -- End function
	.globl	hdestroy_r              //  -- Begin function hdestroy_r
	.type	hdestroy_r,@function
hdestroy_r:                             //  @hdestroy_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x10 ,  0 ( x8 )
	beq x0, x10, .LBB1_2
.LBB1_1:                                //  %if.end
	call free
	sw x0 ,  0 ( x8 )
.LBB1_2:                                //  %return
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	hdestroy_r, .Lfunc_end1-hdestroy_r
	.cfi_endproc
                                        //  -- End function
	.globl	hsearch_r               //  -- Begin function hsearch_r
	.type	hsearch_r,@function
hsearch_r:                              //  @hsearch_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x20 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	lw x18 ,  0 ( x9 )
	add x10 ,  x0 ,  x18
	call strlen
	lui x30 ,  __default_hash&4095
	lui x15 ,  (__default_hash>>12)&1048575
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	call_reg, 0 ( x15 )
	lw x15 ,  4 ( x20 )
	lw x14 ,  0 ( x20 )
	addi x15 ,  x15 ,  -1
	and x15 ,  x10 ,  x15
	slli x15 ,  x15 ,  2&31
	add x20 ,  x15 ,  x14
	lw x21 ,  0 ( x20 )
	beq x0, x21, .LBB2_3
.LBB2_1:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  4 ( x21 )
	add x11 ,  x0 ,  x18
	call strcmp
	beq x0, x10, .LBB2_9
.LBB2_2:                                //  %if.end
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x21 ,  0 ( x21 )
	bltu x0, x21, .LBB2_1
.LBB2_3:                                //  %if.else
	beq x0, x19, .LBB2_4
.LBB2_5:                                //  %if.end14
	addi x10 ,  x0 ,  12
	call malloc
	beq x0, x10, .LBB2_4
.LBB2_6:                                //  %if.end18
	lw x15 ,  0 ( x20 )
	sw x10 ,  0 ( x20 )
	sw x18 ,  4 ( x10 )
	lw x14 ,  4 ( x9 )
	sw x15 ,  0 ( x10 )
	addi x15 ,  x10 ,  4
	sw x14 ,  8 ( x10 )
	jal x0, .LBB2_7
.LBB2_4:                                //  %if.then12
	sw x0 ,  0 ( x8 )
	add x10 ,  x0 ,  x0
	jal x0, .LBB2_8
.LBB2_9:                                //  %if.then9
	addi x15 ,  x21 ,  4
.LBB2_7:                                //  %cleanup
	slti x10 ,  x0 ,  1
	sw x15 ,  0 ( x8 )
.LBB2_8:                                //  %cleanup
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
.Lfunc_end2:
	.size	hsearch_r, .Lfunc_end2-hsearch_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
