	.text
	.file	"argz_replace.c"
	.globl	argz_replace            //  -- Begin function argz_replace
	.type	argz_replace,@function
argz_replace:                           //  @argz_replace
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x12
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x22 ,  x0 ,  x14
	add x20 ,  x0 ,  x13
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	call strlen
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call strlen
	lw x15 ,  0 ( x8 )
	add x24 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	sw x15 ,  16 ( x2 )
	lw x15 ,  0 ( x9 )
	sw x0 ,  0 ( x22 )
	sw x15 ,  12 ( x2 )
	beq x0, x15, .LBB0_19
.LBB0_1:                                //  %while.body.preheader
	lw x19 ,  0 ( x9 )
	sub x27 ,  x24 ,  x23
	addi x25 ,  x2 ,  16
	addi x26 ,  x2 ,  12
	jal x0, .LBB0_2
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  12 ( x2 )
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	call _buf_findstr
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  0 ( x22 )
	add x19 ,  x19 ,  x27
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x22 )
	jal x0, .LBB0_4
.LBB0_5:                                //  %while.end
	lw x15 ,  0 ( x22 )
	beq x0, x15, .LBB0_19
.LBB0_6:                                //  %if.then6
	add x10 ,  x0 ,  x19
	call malloc
	addi x18 ,  x0 ,  12
	beq x0, x10, .LBB0_19
.LBB0_7:                                //  %if.end10
	lw x15 ,  0 ( x8 )
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	lw x14 ,  0 ( x9 )
	sw x15 ,  16 ( x2 )
	sw x14 ,  12 ( x2 )
	beq x0, x14, .LBB0_8
.LBB0_9:                                //  %while.body13.preheader
	addi x27 ,  x2 ,  16
	addi x22 ,  x2 ,  12
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x15
	jal x0, .LBB0_10
.LBB0_12:                               //  %if.end25
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x15 ,  12 ( x2 )
	beq x0, x15, .LBB0_13
.LBB0_10:                               //  %while.body13
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x22
	call _buf_findstr
	beq x0, x10, .LBB0_12
.LBB0_11:                               //  %if.then16
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x15 ,  16 ( x2 )
	add x18 ,  x26 ,  x23
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	sub x12 ,  x15 ,  x18
	call memcpy
	lw x15 ,  16 ( x2 )
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x24
	sub x15 ,  x15 ,  x18
	add x25 ,  x15 ,  x25
	add x10 ,  x0 ,  x25
	call memcpy
	lw x26 ,  16 ( x2 )
	add x25 ,  x24 ,  x25
	jal x0, .LBB0_12
.LBB0_13:                               //  %while.end26.loopexit
	lw x14 ,  0 ( x9 )
	addi x18 ,  x0 ,  12
	lw x15 ,  0 ( x8 )
	jal x0, .LBB0_14
.LBB0_8:
	add x14 ,  x0 ,  x0
	add x26 ,  x0 ,  x15
	add x25 ,  x0 ,  x10
.LBB0_14:                               //  %while.end26
	add x15 ,  x14 ,  x15
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	sub x12 ,  x15 ,  x26
	call memcpy
	lw x10 ,  0 ( x8 )
	add x11 ,  x0 ,  x19
	call realloc
	beq x0, x10, .LBB0_15
.LBB0_16:                               //  %if.end35
	lw x18 ,  8 ( x2 )              //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	sw x10 ,  0 ( x8 )
	add x11 ,  x0 ,  x18
	call memcpy
	sw x19 ,  0 ( x9 )
	bltu x0, x19, .LBB0_18
.LBB0_17:                               //  %if.then37
	lw x10 ,  0 ( x8 )
	call free
	sw x0 ,  0 ( x8 )
.LBB0_18:                               //  %if.end38
	add x10 ,  x0 ,  x18
	call free
	add x18 ,  x0 ,  x0
	jal x0, .LBB0_19
.LBB0_15:                               //  %if.then34
	lw x10 ,  8 ( x2 )              //  4-byte Folded Reload
	call free
.LBB0_19:                               //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	argz_replace, .Lfunc_end0-argz_replace
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
