	.text
	.file	"gettzinfo.c"
	.globl	__gettzinfo             //  -- Begin function __gettzinfo
	.type	__gettzinfo,@function
__gettzinfo:                            //  @__gettzinfo
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  tzinfo&4095
	lui x15 ,  (tzinfo>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	ret
.Lfunc_end0:
	.size	__gettzinfo, .Lfunc_end0-__gettzinfo
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	tzinfo,@object          //  @tzinfo
	.data
	.p2align	2
tzinfo:
	.long	1                       //  0x1
	.long	0                       //  0x0
	.byte	74                      //  0x4a
	.zero	3
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.quad	0                       //  0x0
	.long	0                       //  0x0
	.byte	74                      //  0x4a
	.zero	3
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.long	0                       //  0x0
	.quad	0                       //  0x0
	.long	0                       //  0x0
	.size	tzinfo, 72


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
