	.text
	.file	"psignal.c"
	.globl	psignal                 //  -- Begin function psignal
	.type	psignal,@function
psignal:                                //  @psignal
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  _impure_ptr&4095
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lui x19 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	lw x10 ,  12 ( x15 )
	call fflush
	beq x0, x9, .LBB0_12
.LBB0_1:                                //  %land.lhs.true
	lbu x15 ,  0 ( x9 )
	beq x0, x15, .LBB0_12
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x20 ,  x0 ,  x0
	call strlen
	add x18 ,  x0 ,  x10
	bltu x0, x18, .LBB0_4
	jal x0, .LBB0_7
.LBB0_6:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x18 ,  x18 ,  x15
	add x9 ,  x10 ,  x9
	blt x10, x0, .LBB0_7
.LBB0_3:                                //  %while.cond
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x18, .LBB0_7
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	lw x10 ,  12 ( x15 )
	call fileno
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call write
	add x15 ,  x0 ,  x20
	blt x10, x20, .LBB0_6
.LBB0_5:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_6
.LBB0_7:                                //  %while.end
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	add x10 ,  x0 ,  x9
	call strlen
	add x18 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	bltu x0, x18, .LBB0_9
	jal x0, .LBB0_12
.LBB0_11:                               //  %while.body15
                                        //    in Loop: Header=BB0_9 Depth=1
	sub x18 ,  x18 ,  x15
	add x9 ,  x10 ,  x9
	blt x10, x0, .LBB0_12
.LBB0_8:                                //  %while.cond13
                                        //    in Loop: Header=BB0_9 Depth=1
	beq x0, x18, .LBB0_12
.LBB0_9:                                //  %while.body15
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	lw x10 ,  12 ( x15 )
	call fileno
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call write
	add x15 ,  x0 ,  x20
	blt x10, x20, .LBB0_11
.LBB0_10:                               //  %while.body15
                                        //    in Loop: Header=BB0_9 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_11
.LBB0_12:                               //  %if.end30
	add x10 ,  x0 ,  x8
	call strsignal
	add x8 ,  x0 ,  x10
	call strlen
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	bltu x0, x9, .LBB0_14
	jal x0, .LBB0_17
.LBB0_16:                               //  %while.body37
                                        //    in Loop: Header=BB0_14 Depth=1
	sub x9 ,  x9 ,  x15
	add x8 ,  x10 ,  x8
	blt x10, x0, .LBB0_17
.LBB0_13:                               //  %while.cond35
                                        //    in Loop: Header=BB0_14 Depth=1
	beq x0, x9, .LBB0_17
.LBB0_14:                               //  %while.body37
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	lw x10 ,  12 ( x15 )
	call fileno
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call write
	add x15 ,  x0 ,  x18
	blt x10, x18, .LBB0_16
.LBB0_15:                               //  %while.body37
                                        //    in Loop: Header=BB0_14 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_16
.LBB0_17:                               //  %while.end51
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	add x10 ,  x0 ,  x8
	call strlen
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	bltu x0, x9, .LBB0_19
	jal x0, .LBB0_22
.LBB0_21:                               //  %while.body57
                                        //    in Loop: Header=BB0_19 Depth=1
	sub x9 ,  x9 ,  x15
	add x8 ,  x10 ,  x8
	blt x10, x0, .LBB0_22
.LBB0_18:                               //  %while.cond55
                                        //    in Loop: Header=BB0_19 Depth=1
	beq x0, x9, .LBB0_22
.LBB0_19:                               //  %while.body57
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	lw x10 ,  12 ( x15 )
	call fileno
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call write
	add x15 ,  x0 ,  x18
	blt x10, x18, .LBB0_21
.LBB0_20:                               //  %while.body57
                                        //    in Loop: Header=BB0_19 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_21
.LBB0_22:                               //  %while.end71
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	psignal, .Lfunc_end0-psignal
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	": "
	.size	.str, 3

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"\n"
	.size	.str.1, 2


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
