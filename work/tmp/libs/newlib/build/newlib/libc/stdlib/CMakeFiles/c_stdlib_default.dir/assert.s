	.text
	.file	"assert.c"
	.globl	__assert_func           //  -- Begin function __assert_func
	.type	__assert_func,@function
__assert_func:                          //  @__assert_func
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	add x5 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x12, x5, .LBB0_2
.LBB0_1:                                //  %entry
	add x12 ,  x0 ,  x14
	add x15 ,  x0 ,  x14
.LBB0_2:                                //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  _impure_ptr&4095
	lui x14 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  .str&4095
	lw x14 ,  0 ( x14 )
	srli x30 ,  x30 ,  12&31
	lw x14 ,  12 ( x14 )
	sw x15 ,  20 ( x2 )
	lui x15 ,  (.str>>12)&1048575
	sw x12 ,  24 ( x2 )
	sw x11 ,  16 ( x2 )
	sw x10 ,  12 ( x2 )
	sw x13 ,  8 ( x2 )
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	sw x14 ,  0 ( x2 )
	call fiprintf
	call abort
.Lfunc_end0:
	.size	__assert_func, .Lfunc_end0-__assert_func
	.cfi_endproc
                                        //  -- End function
	.globl	__assert                //  -- Begin function __assert
	.type	__assert,@function
__assert:                               //  @__assert
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x0
	call __assert_func
.Lfunc_end1:
	.size	__assert, .Lfunc_end1-__assert
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"assertion \"%s\" failed: file \"%s\", line %d%s%s\n"
	.size	.str, 47

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	", function: "
	.size	.str.1, 13

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.zero	1
	.size	.str.2, 1


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
