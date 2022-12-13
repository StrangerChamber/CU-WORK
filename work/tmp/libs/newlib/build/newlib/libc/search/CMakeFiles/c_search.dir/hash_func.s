	.text
	.file	"hash_func.c"
	.type	hash4,@function         //  -- Begin function hash4
hash4:                                  //  @hash4
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x11, .LBB0_1
.LBB0_3:                                //  %if.then
	lui x30 ,  JTI0_0&4095
	addi x15 ,  x11 ,  7
	lui x13 ,  (JTI0_0>>12)&1048575
	add x10 ,  x0 ,  x0
	srli x9 ,  x15 ,  3&31
	andi x15 ,  x11 ,  7
	srli x30 ,  x30 ,  12&31
	slli x14 ,  x15 ,  2&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB0_1:
	add x15 ,  x0 ,  x0
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x15
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_4:                                //  %do.body
	addi x11 ,  x0 ,  33
	add x10 ,  x0 ,  x15
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x8 ,  x8 ,  1
	add x10 ,  x15 ,  x10
.LBB0_5:                                //  %sw.bb3
	addi x11 ,  x0 ,  33
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x8 ,  x8 ,  1
	add x10 ,  x15 ,  x10
.LBB0_6:                                //  %sw.bb9
	addi x11 ,  x0 ,  33
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x8 ,  x8 ,  1
	add x10 ,  x15 ,  x10
.LBB0_7:                                //  %sw.bb15
	addi x11 ,  x0 ,  33
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x8 ,  x8 ,  1
	add x10 ,  x15 ,  x10
.LBB0_8:                                //  %sw.bb21
	addi x11 ,  x0 ,  33
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x8 ,  x8 ,  1
	add x10 ,  x15 ,  x10
.LBB0_9:                                //  %sw.bb27
	addi x11 ,  x0 ,  33
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x8 ,  x8 ,  1
	add x10 ,  x15 ,  x10
.LBB0_10:                               //  %sw.bb33
	addi x11 ,  x0 ,  33
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x8 ,  x8 ,  1
	add x10 ,  x15 ,  x10
.LBB0_11:                               //  %sw.bb39
	addi x11 ,  x0 ,  33
	call __mulsi3
	lbu x15 ,  0 ( x8 )
	addi x9 ,  x9 ,  -1
	add x15 ,  x15 ,  x10
	beq x0, x9, .LBB0_2
.LBB0_12:
	addi x8 ,  x8 ,  1
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	hash4, .Lfunc_end0-hash4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_4
	.long	.LBB0_11
	.long	.LBB0_10
	.long	.LBB0_9
	.long	.LBB0_8
	.long	.LBB0_7
	.long	.LBB0_6
	.long	.LBB0_5
                                        //  -- End function
	.address_space	0
	.type	__default_hash,@object  //  @__default_hash
	.data
	.globl	__default_hash
	.p2align	2
__default_hash:
	.long	hash4
	.size	__default_hash, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
