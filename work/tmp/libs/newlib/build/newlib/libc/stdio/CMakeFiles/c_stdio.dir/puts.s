	.text
	.file	"puts.c"
	.globl	_puts_r                 //  -- Begin function _puts_r
	.type	_puts_r,@function
_puts_r:                                //  @_puts_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x10 ,  x0 ,  x9
	call strlen
	lui x30 ,  .str&4095
	sw x9 ,  8 ( x2 )
	lw x9 ,  8 ( x8 )
	addi x15 ,  x10 ,  1
	addi x14 ,  x2 ,  24
	sw x15 ,  8 ( x14 )
	lui x14 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x2 ,  8
	or x14 ,  x14 ,  x30
	sw x10 ,  4 ( x15 )
	sw x15 ,  24 ( x2 )
	sw x14 ,  8 ( x15 )
	addi x14 ,  x0 ,  2
	slti x15 ,  x0 ,  1
	sw x14 ,  28 ( x2 )
	sw x15 ,  20 ( x2 )
	beq x0, x8, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x8 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x15 ,  12 ( x9 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_5
.LBB0_4:                                //  %if.then18
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x9 )
	lw x15 ,  100 ( x9 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x9 )
.LBB0_5:                                //  %do.end26
	addi x12 ,  x2 ,  24
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __sfvwrite_r
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB0_6
.LBB0_7:                                //  %do.end26
	addi x10 ,  x0 ,  -1
	jal x0, .LBB0_8
.LBB0_6:
	addi x10 ,  x0 ,  10
.LBB0_8:                                //  %do.end26
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x8
	call __sinit
	lhu x15 ,  12 ( x9 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB0_4
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	_puts_r, .Lfunc_end0-_puts_r
	.cfi_endproc
                                        //  -- End function
	.globl	puts                    //  -- Begin function puts
	.type	puts,@function
puts:                                   //  @puts
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x8 ,  0 ( x15 )
	call strlen
	lui x30 ,  .str&4095
	addi x15 ,  x10 ,  1
	addi x14 ,  x2 ,  24
	sw x9 ,  8 ( x2 )
	sw x15 ,  8 ( x14 )
	lui x14 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x2 ,  8
	or x14 ,  x14 ,  x30
	sw x10 ,  4 ( x15 )
	sw x15 ,  24 ( x2 )
	sw x14 ,  8 ( x15 )
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  2
	sw x15 ,  20 ( x2 )
	sw x14 ,  28 ( x2 )
	lw x9 ,  8 ( x8 )
	beq x0, x8, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x8 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lhu x15 ,  12 ( x9 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_5
.LBB1_4:                                //  %if.then18.i
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x9 )
	lw x15 ,  100 ( x9 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x9 )
.LBB1_5:                                //  %_puts_r.exit
	addi x12 ,  x2 ,  24
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __sfvwrite_r
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB1_6
.LBB1_7:                                //  %_puts_r.exit
	addi x10 ,  x0 ,  -1
	jal x0, .LBB1_8
.LBB1_6:
	addi x10 ,  x0 ,  10
.LBB1_8:                                //  %_puts_r.exit
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.LBB1_2:                                //  %if.then.i
	add x10 ,  x0 ,  x8
	call __sinit
	lhu x15 ,  12 ( x9 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB1_4
	jal x0, .LBB1_5
.Lfunc_end1:
	.size	puts, .Lfunc_end1-puts
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"\n"
	.size	.str, 2

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
