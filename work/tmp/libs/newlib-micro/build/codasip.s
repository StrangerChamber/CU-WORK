	.text
	.file	"codasip.c"
	.globl	printf                  //  -- Begin function printf
	.type	printf,@function
printf:                                 //  @printf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	lw x12 ,  128 ( x2 )
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	addi x9 ,  x2 ,  11
	addi x13 ,  x2 ,  132
	addi x11 ,  x0 ,  101
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x10 ,  x0 ,  x9
	sw x13 ,  4 ( x2 )
	call vsniprintf
	add x8 ,  x0 ,  x10
	addi x18 ,  x0 ,  99
	bltu x18, x8, .LBB0_1
.LBB0_2:                                //  %entry
	add x12 ,  x0 ,  x8
	slti x10 ,  x0 ,  1
	add x11 ,  x0 ,  x9
	call write
	bltu x18, x8, .LBB0_4
	jal x0, .LBB0_5
.LBB0_1:
	addi x12 ,  x0 ,  100
	slti x10 ,  x0 ,  1
	add x11 ,  x0 ,  x9
	call write
	bgeu x18, x8, .LBB0_5
.LBB0_4:
	addi x8 ,  x0 ,  -1
.LBB0_5:                                //  %entry
	add x10 ,  x0 ,  x8
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	printf, .Lfunc_end0-printf
	.cfi_endproc
                                        //  -- End function
	.globl	putchar                 //  -- Begin function putchar
	.type	putchar,@function
putchar:                                //  @putchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	slti x9 ,  x0 ,  1
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	addi x11 ,  x2 ,  11
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x9
	sb x8 ,  11 ( x2 )
	call write
	beq x10, x9, .LBB1_2
.LBB1_1:                                //  %entry
	addi x8 ,  x0 ,  -1
.LBB1_2:                                //  %entry
	add x10 ,  x0 ,  x8
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	putchar, .Lfunc_end1-putchar
	.cfi_endproc
                                        //  -- End function
	.globl	puts                    //  -- Begin function puts
	.type	puts,@function
puts:                                   //  @puts
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x9 ,  x0 ,  x10
	call strlen
	slti x8 ,  x0 ,  1
	add x12 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	add x10 ,  x0 ,  x8
	call write
	add x9 ,  x0 ,  x10
	blt x9, x0, .LBB2_5
.LBB2_1:                                //  %if.else
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	add x12 ,  x0 ,  x8
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call write
	beq x10, x8, .LBB2_3
.LBB2_2:                                //  %if.else
	addi x9 ,  x0 ,  -1
.LBB2_3:                                //  %if.else
	add x10 ,  x0 ,  x9
	jal x0, .LBB2_4
.LBB2_5:                                //  %if.end5
	addi x10 ,  x0 ,  -1
.LBB2_4:                                //  %if.else
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	puts, .Lfunc_end2-puts
	.cfi_endproc
                                        //  -- End function
	.globl	eputs                   //  -- Begin function eputs
	.type	eputs,@function
eputs:                                  //  @eputs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x10
	call strlen
	add x12 ,  x0 ,  x10
	addi x10 ,  x0 ,  2
	add x11 ,  x0 ,  x8
	call write
	addi x15 ,  x0 ,  -1
	blt x15, x10, .LBB3_2
.LBB3_1:                                //  %entry
	add x10 ,  x0 ,  x15
.LBB3_2:                                //  %entry
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	eputs, .Lfunc_end3-eputs
	.cfi_endproc
                                        //  -- End function
	.globl	perror                  //  -- Begin function perror
	.type	perror,@function
perror:                                 //  @perror
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x8, .LBB4_3
.LBB4_1:                                //  %land.lhs.true
	lbu x15 ,  0 ( x8 )
	beq x0, x15, .LBB4_3
.LBB4_2:                                //  %if.then
	add x10 ,  x0 ,  x8
	call strlen
	addi x9 ,  x0 ,  2
	add x12 ,  x0 ,  x10
	add x11 ,  x0 ,  x8
	add x10 ,  x0 ,  x9
	call write
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	add x10 ,  x0 ,  x8
	call strlen
	add x12 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call write
.LBB4_3:                                //  %if.end
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	slti x12 ,  x0 ,  1
	addi x13 ,  x2 ,  8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	lw x11 ,  0 ( x10 )
	call _strerror_r
	add x8 ,  x0 ,  x10
	beq x0, x8, .LBB4_5
.LBB4_4:                                //  %if.then7
	add x10 ,  x0 ,  x8
	call strlen
	add x12 ,  x0 ,  x10
	addi x10 ,  x0 ,  2
	add x11 ,  x0 ,  x8
	call write
.LBB4_5:                                //  %if.end9
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	add x10 ,  x0 ,  x8
	call strlen
	add x12 ,  x0 ,  x10
	addi x10 ,  x0 ,  2
	add x11 ,  x0 ,  x8
	call write
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	perror, .Lfunc_end4-perror
	.cfi_endproc
                                        //  -- End function
	.globl	_user_strerror          //  -- Begin function _user_strerror
	.type	_user_strerror,@function
_user_strerror:                         //  @_user_strerror
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end5:
	.size	_user_strerror, .Lfunc_end5-_user_strerror
	.cfi_endproc
                                        //  -- End function
	.globl	exit                    //  -- Begin function exit
	.type	exit,@function
exit:                                   //  @exit
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	call _exit
.Lfunc_end6:
	.size	exit, .Lfunc_end6-exit
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"\n"
	.size	.str, 2

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	": "
	.size	.str.1, 3

	.address_space	0
	.address_space	0
	.type	errno,@object           //  @errno
	.comm	errno,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
