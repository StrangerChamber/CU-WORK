	.text
	.file	"wcstod.c"
	.globl	_wcstod_l               //  -- Begin function _wcstod_l
	.type	_wcstod_l,@function
_wcstod_l:                              //  @_wcstod_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x20 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x10
	addi x23 ,  x11 ,  -4
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  4 ( x23 )
	add x11 ,  x0 ,  x20
	call iswspace_l
	addi x23 ,  x23 ,  4
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %while.end
	add x18 ,  x0 ,  x0
	addi x12 ,  x2 ,  4
	addi x13 ,  x0 ,  -1
	addi x15 ,  x2 ,  12
	add x10 ,  x0 ,  x9
	add x16 ,  x0 ,  x20
	sw x23 ,  4 ( x2 )
	sw x0 ,  16 ( x2 )
	sw x0 ,  12 ( x2 )
	add x14 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call _wcsnrtombs_l
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_11
.LBB0_3:                                //  %if.end4
	addi x21 ,  x10 ,  1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call _malloc_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB0_14
.LBB0_4:                                //  %if.end8
	addi x12 ,  x2 ,  4
	addi x13 ,  x0 ,  -1
	addi x15 ,  x2 ,  12
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x14 ,  x0 ,  x21
	add x16 ,  x0 ,  x20
	sw x0 ,  16 ( x2 )
	sw x0 ,  12 ( x2 )
	call _wcsnrtombs_l
	addi x12 ,  x2 ,  8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call _strtod_l
	add x18 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	beq x0, x8, .LBB0_10
.LBB0_5:                                //  %if.then13
	lui x30 ,  _C_numeric_locale&4095
	lui x15 ,  (_C_numeric_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x22 ,  0 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	add x21 ,  x0 ,  x10
	sltiu x15 ,  x21 ,  2
	bltu x0, x15, .LBB0_9
.LBB0_6:                                //  %if.then18
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call strstr
	beq x0, x10, .LBB0_9
.LBB0_7:                                //  %land.lhs.true
	lw x15 ,  8 ( x2 )
	bgeu x10, x15, .LBB0_9
.LBB0_8:                                //  %if.then22
	sub x15 ,  x15 ,  x21
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x2 )
.LBB0_9:                                //  %if.end24
	lw x14 ,  8 ( x2 )
	slli x15 ,  x19 ,  2&31
	slli x14 ,  x14 ,  2&31
	sub x15 ,  x14 ,  x15
	add x15 ,  x15 ,  x23
	sw x15 ,  0 ( x8 )
.LBB0_10:                               //  %if.end26
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call _free_r
	jal x0, .LBB0_15
.LBB0_11:                               //  %if.then
	beq x0, x8, .LBB0_13
.LBB0_12:                               //  %if.then3
	sw x23 ,  0 ( x8 )
.LBB0_13:
	add x18 ,  x0 ,  x0
.LBB0_14:
	add x20 ,  x0 ,  x18
.LBB0_15:                               //  %cleanup
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wcstod_l, .Lfunc_end0-_wcstod_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstod_r               //  -- Begin function _wcstod_r
	.type	_wcstod_r,@function
_wcstod_r:                              //  @_wcstod_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	jal x0, _wcstod_l
.Lfunc_end1:
	.size	_wcstod_r, .Lfunc_end1-_wcstod_r
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstof_r               //  -- Begin function _wcstof_r
	.type	_wcstof_r,@function
_wcstof_r:                              //  @_wcstof_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call _wcstod_l
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __unorddf2
	bltu x0, x10, .LBB2_1
.LBB2_2:                                //  %if.end
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __truncdfsf2
	jal x0, .LBB2_3
.LBB2_1:                                //  %if.then
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
.LBB2_3:                                //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_wcstof_r, .Lfunc_end2-_wcstof_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstod_l                //  -- Begin function wcstod_l
	.type	wcstod_l,@function
wcstod_l:                               //  @wcstod_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _wcstod_l
.Lfunc_end3:
	.size	wcstod_l, .Lfunc_end3-wcstod_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstod                  //  -- Begin function wcstod
	.type	wcstod,@function
wcstod:                                 //  @wcstod
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	jal x0, _wcstod_l
.Lfunc_end4:
	.size	wcstod, .Lfunc_end4-wcstod
	.cfi_endproc
                                        //  -- End function
	.globl	wcstof_l                //  -- Begin function wcstof_l
	.type	wcstof_l,@function
wcstof_l:                               //  @wcstof_l
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
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x10 ,  0 ( x15 )
	call _wcstod_l
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __unorddf2
	bltu x0, x10, .LBB5_1
.LBB5_2:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __truncdfsf2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x8 ,  x0 ,  x10
	add x12 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	and x11 ,  x20 ,  x18
	call __eqdf2
	beq x0, x10, .LBB5_5
.LBB5_3:                                //  %if.end
	and x10 ,  x20 ,  x8
	lui x11 ,  (2139095040>>12)&1048575
	call __nesf2
	bltu x0, x10, .LBB5_5
.LBB5_4:                                //  %if.then5
	lui x30 ,  _impure_ptr&4095
	addi x14 ,  x0 ,  34
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	sw x14 ,  0 ( x15 )
	jal x0, .LBB5_5
.LBB5_1:                                //  %if.then
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
	add x8 ,  x0 ,  x10
.LBB5_5:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end5:
	.size	wcstof_l, .Lfunc_end5-wcstof_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstof                  //  -- Begin function wcstof
	.type	wcstof,@function
wcstof:                                 //  @wcstof
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
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call _wcstod_l
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __unorddf2
	bltu x0, x10, .LBB6_1
.LBB6_2:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __truncdfsf2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x8 ,  x0 ,  x10
	add x12 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	and x11 ,  x20 ,  x18
	call __eqdf2
	beq x0, x10, .LBB6_5
.LBB6_3:                                //  %if.end
	and x10 ,  x20 ,  x8
	lui x11 ,  (2139095040>>12)&1048575
	call __nesf2
	bltu x0, x10, .LBB6_5
.LBB6_4:                                //  %if.then6
	lui x30 ,  _impure_ptr&4095
	addi x14 ,  x0 ,  34
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	sw x14 ,  0 ( x15 )
	jal x0, .LBB6_5
.LBB6_1:                                //  %if.then
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
	add x8 ,  x0 ,  x10
.LBB6_5:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end6:
	.size	wcstof, .Lfunc_end6-wcstof
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.zero	1
	.size	.str, 1

	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
