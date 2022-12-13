	.text
	.file	"perror.c"
	.globl	_perror_r               //  -- Begin function _perror_r
	.type	_perror_r,@function
_perror_r:                              //  @_perror_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x8 ,  12 ( x9 )
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	beq x0, x18, .LBB0_15
.LBB0_4:                                //  %land.lhs.true8
	lbu x15 ,  0 ( x18 )
	beq x0, x15, .LBB0_15
.LBB0_5:                                //  %if.then12
	add x10 ,  x0 ,  x18
	add x20 ,  x0 ,  x0
	call strlen
	add x19 ,  x0 ,  x10
	bltu x0, x19, .LBB0_7
	jal x0, .LBB0_10
.LBB0_9:                                //  %while.body
                                        //    in Loop: Header=BB0_7 Depth=1
	sub x19 ,  x19 ,  x15
	add x18 ,  x10 ,  x18
	blt x10, x0, .LBB0_10
.LBB0_6:                                //  %while.cond
                                        //    in Loop: Header=BB0_7 Depth=1
	beq x0, x19, .LBB0_10
.LBB0_7:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	call fileno
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call _write_r
	add x15 ,  x0 ,  x20
	blt x10, x20, .LBB0_9
.LBB0_8:                                //  %while.body
                                        //    in Loop: Header=BB0_7 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_9
.LBB0_10:                               //  %while.end
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	add x10 ,  x0 ,  x18
	call strlen
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	bltu x0, x19, .LBB0_12
	jal x0, .LBB0_15
.LBB0_14:                               //  %while.body26
                                        //    in Loop: Header=BB0_12 Depth=1
	sub x19 ,  x19 ,  x15
	add x18 ,  x10 ,  x18
	blt x10, x0, .LBB0_15
.LBB0_11:                               //  %while.cond24
                                        //    in Loop: Header=BB0_12 Depth=1
	beq x0, x19, .LBB0_15
.LBB0_12:                               //  %while.body26
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	call fileno
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call _write_r
	add x15 ,  x0 ,  x20
	blt x10, x20, .LBB0_14
.LBB0_13:                               //  %while.body26
                                        //    in Loop: Header=BB0_12 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_14
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _fflush_r
	bltu x0, x18, .LBB0_4
.LBB0_15:                               //  %if.end40
	lw x11 ,  0 ( x9 )
	slti x12 ,  x0 ,  1
	addi x13 ,  x2 ,  4
	add x10 ,  x0 ,  x9
	call _strerror_r
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_21
.LBB0_16:                               //  %if.then44
	add x10 ,  x0 ,  x18
	call strlen
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	bltu x0, x19, .LBB0_18
	jal x0, .LBB0_21
.LBB0_20:                               //  %while.body50
                                        //    in Loop: Header=BB0_18 Depth=1
	sub x19 ,  x19 ,  x15
	add x18 ,  x10 ,  x18
	blt x10, x0, .LBB0_21
.LBB0_17:                               //  %while.cond48
                                        //    in Loop: Header=BB0_18 Depth=1
	beq x0, x19, .LBB0_21
.LBB0_18:                               //  %while.body50
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	call fileno
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call _write_r
	add x15 ,  x0 ,  x20
	blt x10, x20, .LBB0_20
.LBB0_19:                               //  %while.body50
                                        //    in Loop: Header=BB0_18 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_20
.LBB0_21:                               //  %if.end64
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	add x10 ,  x0 ,  x18
	call strlen
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	bltu x0, x19, .LBB0_23
	jal x0, .LBB0_26
.LBB0_25:                               //  %while.body70
                                        //    in Loop: Header=BB0_23 Depth=1
	sub x19 ,  x19 ,  x15
	add x18 ,  x10 ,  x18
	blt x10, x0, .LBB0_26
.LBB0_22:                               //  %while.cond68
                                        //    in Loop: Header=BB0_23 Depth=1
	beq x0, x19, .LBB0_26
.LBB0_23:                               //  %while.body70
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	call fileno
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call _write_r
	add x15 ,  x0 ,  x20
	blt x10, x20, .LBB0_25
.LBB0_24:                               //  %while.body70
                                        //    in Loop: Header=BB0_23 Depth=1
	add x15 ,  x0 ,  x10
	jal x0, .LBB0_25
.LBB0_26:                               //  %while.end83
	lhu x15 ,  12 ( x8 )
	lui x30 ,  61439&4095
	lui x14 ,  (61439>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	or x14 ,  x14 ,  x30
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	and x15 ,  x14 ,  x15
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	sh x15 ,  12 ( x8 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_perror_r, .Lfunc_end0-_perror_r
	.cfi_endproc
                                        //  -- End function
	.globl	perror                  //  -- Begin function perror
	.type	perror,@function
perror:                                 //  @perror
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _perror_r
.Lfunc_end1:
	.size	perror, .Lfunc_end1-perror
	.cfi_endproc
                                        //  -- End function
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

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
