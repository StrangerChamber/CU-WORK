	.text
	.file	"strsignal.c"
	.globl	strsignal               //  -- Begin function strsignal
	.type	strsignal,@function
strsignal:                              //  @strsignal
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	sw x8 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	addi x14 ,  x10 ,  -1
	addi x13 ,  x0 ,  30
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	bltu x13, x14, .LBB0_32
.LBB0_1:                                //  %entry
	lui x30 ,  JTI0_0&4095
	lui x13 ,  (JTI0_0>>12)&1048575
	slli x14 ,  x14 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB0_2:                                //  %sw.bb1
	lui x15 ,  (.str.1>>12)&1048575
	lui x30 ,  .str.1&4095
	jal x0, .LBB0_3
.LBB0_4:                                //  %sw.bb2
	lui x15 ,  (.str.2>>12)&1048575
	lui x30 ,  .str.2&4095
	jal x0, .LBB0_3
.LBB0_5:                                //  %sw.bb3
	lui x15 ,  (.str.3>>12)&1048575
	lui x30 ,  .str.3&4095
	jal x0, .LBB0_3
.LBB0_6:                                //  %sw.bb4
	lui x15 ,  (.str.4>>12)&1048575
	lui x30 ,  .str.4&4095
	jal x0, .LBB0_3
.LBB0_7:                                //  %sw.bb5
	lui x15 ,  (.str.5>>12)&1048575
	lui x30 ,  .str.5&4095
	jal x0, .LBB0_3
.LBB0_8:                                //  %sw.bb6
	lui x15 ,  (.str.6>>12)&1048575
	lui x30 ,  .str.6&4095
	jal x0, .LBB0_3
.LBB0_9:                                //  %sw.bb7
	lui x15 ,  (.str.7>>12)&1048575
	lui x30 ,  .str.7&4095
	jal x0, .LBB0_3
.LBB0_10:                               //  %sw.bb8
	lui x15 ,  (.str.8>>12)&1048575
	lui x30 ,  .str.8&4095
	jal x0, .LBB0_3
.LBB0_11:                               //  %sw.bb9
	lui x15 ,  (.str.9>>12)&1048575
	lui x30 ,  .str.9&4095
	jal x0, .LBB0_3
.LBB0_12:                               //  %sw.bb10
	lui x15 ,  (.str.10>>12)&1048575
	lui x30 ,  .str.10&4095
	jal x0, .LBB0_3
.LBB0_13:                               //  %sw.bb11
	lui x15 ,  (.str.11>>12)&1048575
	lui x30 ,  .str.11&4095
	jal x0, .LBB0_3
.LBB0_14:                               //  %sw.bb12
	lui x15 ,  (.str.12>>12)&1048575
	lui x30 ,  .str.12&4095
	jal x0, .LBB0_3
.LBB0_15:                               //  %sw.bb13
	lui x15 ,  (.str.13>>12)&1048575
	lui x30 ,  .str.13&4095
	jal x0, .LBB0_3
.LBB0_16:                               //  %sw.bb14
	lui x15 ,  (.str.14>>12)&1048575
	lui x30 ,  .str.14&4095
	jal x0, .LBB0_3
.LBB0_17:                               //  %sw.bb15
	lui x15 ,  (.str.15>>12)&1048575
	lui x30 ,  .str.15&4095
	jal x0, .LBB0_3
.LBB0_18:                               //  %sw.bb16
	lui x15 ,  (.str.16>>12)&1048575
	lui x30 ,  .str.16&4095
	jal x0, .LBB0_3
.LBB0_19:                               //  %sw.bb17
	lui x15 ,  (.str.17>>12)&1048575
	lui x30 ,  .str.17&4095
	jal x0, .LBB0_3
.LBB0_20:                               //  %sw.bb18
	lui x15 ,  (.str.18>>12)&1048575
	lui x30 ,  .str.18&4095
	jal x0, .LBB0_3
.LBB0_21:                               //  %sw.bb19
	lui x15 ,  (.str.19>>12)&1048575
	lui x30 ,  .str.19&4095
	jal x0, .LBB0_3
.LBB0_22:                               //  %sw.bb20
	lui x15 ,  (.str.20>>12)&1048575
	lui x30 ,  .str.20&4095
	jal x0, .LBB0_3
.LBB0_32:                               //  %sw.default
	lui x30 ,  .str.30&4095
	addi x8 ,  x15 ,  220
	lui x15 ,  (.str.30>>12)&1048575
	sw x10 ,  8 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x8 ,  0 ( x2 )
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call siprintf
	jal x0, .LBB0_33
.LBB0_23:                               //  %sw.bb21
	lui x15 ,  (.str.21>>12)&1048575
	lui x30 ,  .str.21&4095
	jal x0, .LBB0_3
.LBB0_27:                               //  %sw.bb25
	lui x15 ,  (.str.25>>12)&1048575
	lui x30 ,  .str.25&4095
	jal x0, .LBB0_3
.LBB0_28:                               //  %sw.bb26
	lui x15 ,  (.str.26>>12)&1048575
	lui x30 ,  .str.26&4095
	jal x0, .LBB0_3
.LBB0_29:                               //  %sw.bb27
	lui x15 ,  (.str.27>>12)&1048575
	lui x30 ,  .str.27&4095
	jal x0, .LBB0_3
.LBB0_30:                               //  %sw.bb28
	lui x15 ,  (.str.28>>12)&1048575
	lui x30 ,  .str.28&4095
	jal x0, .LBB0_3
.LBB0_24:                               //  %sw.bb22
	lui x15 ,  (.str.22>>12)&1048575
	lui x30 ,  .str.22&4095
	jal x0, .LBB0_3
.LBB0_31:                               //  %sw.bb29
	lui x15 ,  (.str.29>>12)&1048575
	lui x30 ,  .str.29&4095
	jal x0, .LBB0_3
.LBB0_25:                               //  %sw.bb23
	lui x15 ,  (.str.23>>12)&1048575
	lui x30 ,  .str.23&4095
	jal x0, .LBB0_3
.LBB0_26:                               //  %sw.bb24
	lui x15 ,  (.str.24>>12)&1048575
	lui x30 ,  .str.24&4095
.LBB0_3:                                //  %sw.epilog
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
.LBB0_33:                               //  %sw.epilog
	add x10 ,  x0 ,  x8
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	strsignal, .Lfunc_end0-strsignal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_33
	.long	.LBB0_2
	.long	.LBB0_4
	.long	.LBB0_5
	.long	.LBB0_6
	.long	.LBB0_7
	.long	.LBB0_8
	.long	.LBB0_9
	.long	.LBB0_10
	.long	.LBB0_11
	.long	.LBB0_12
	.long	.LBB0_13
	.long	.LBB0_14
	.long	.LBB0_15
	.long	.LBB0_16
	.long	.LBB0_17
	.long	.LBB0_18
	.long	.LBB0_19
	.long	.LBB0_20
	.long	.LBB0_21
	.long	.LBB0_22
	.long	.LBB0_32
	.long	.LBB0_23
	.long	.LBB0_27
	.long	.LBB0_28
	.long	.LBB0_29
	.long	.LBB0_30
	.long	.LBB0_24
	.long	.LBB0_31
	.long	.LBB0_25
	.long	.LBB0_26
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Hangup"
	.size	.str, 7

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Interrupt"
	.size	.str.1, 10

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"Quit"
	.size	.str.2, 5

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"Illegal instruction"
	.size	.str.3, 20

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"Trace/breakpoint trap"
	.size	.str.4, 22

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"IOT trap"
	.size	.str.5, 9

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"EMT trap"
	.size	.str.6, 9

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"Floating point exception"
	.size	.str.7, 25

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"Killed"
	.size	.str.8, 7

	.address_space	0
	.type	.str.9,@object          //  @.str.9
.str.9:
	.asciz	"Bus error"
	.size	.str.9, 10

	.address_space	0
	.type	.str.10,@object         //  @.str.10
.str.10:
	.asciz	"Segmentation fault"
	.size	.str.10, 19

	.address_space	0
	.type	.str.11,@object         //  @.str.11
.str.11:
	.asciz	"Bad system call"
	.size	.str.11, 16

	.address_space	0
	.type	.str.12,@object         //  @.str.12
.str.12:
	.asciz	"Broken pipe"
	.size	.str.12, 12

	.address_space	0
	.type	.str.13,@object         //  @.str.13
.str.13:
	.asciz	"Alarm clock"
	.size	.str.13, 12

	.address_space	0
	.type	.str.14,@object         //  @.str.14
.str.14:
	.asciz	"Terminated"
	.size	.str.14, 11

	.address_space	0
	.type	.str.15,@object         //  @.str.15
.str.15:
	.asciz	"Urgent I/O condition"
	.size	.str.15, 21

	.address_space	0
	.type	.str.16,@object         //  @.str.16
.str.16:
	.asciz	"Stopped (signal)"
	.size	.str.16, 17

	.address_space	0
	.type	.str.17,@object         //  @.str.17
.str.17:
	.asciz	"Stopped"
	.size	.str.17, 8

	.address_space	0
	.type	.str.18,@object         //  @.str.18
.str.18:
	.asciz	"Continued"
	.size	.str.18, 10

	.address_space	0
	.type	.str.19,@object         //  @.str.19
.str.19:
	.asciz	"Child exited"
	.size	.str.19, 13

	.address_space	0
	.type	.str.20,@object         //  @.str.20
.str.20:
	.asciz	"Stopped (tty input)"
	.size	.str.20, 20

	.address_space	0
	.type	.str.21,@object         //  @.str.21
.str.21:
	.asciz	"I/O possible"
	.size	.str.21, 13

	.address_space	0
	.type	.str.22,@object         //  @.str.22
.str.22:
	.asciz	"Window changed"
	.size	.str.22, 15

	.address_space	0
	.type	.str.23,@object         //  @.str.23
.str.23:
	.asciz	"User defined signal 1"
	.size	.str.23, 22

	.address_space	0
	.type	.str.24,@object         //  @.str.24
.str.24:
	.asciz	"User defined signal 2"
	.size	.str.24, 22

	.address_space	0
	.type	.str.25,@object         //  @.str.25
.str.25:
	.asciz	"CPU time limit exceeded"
	.size	.str.25, 24

	.address_space	0
	.type	.str.26,@object         //  @.str.26
.str.26:
	.asciz	"File size limit exceeded"
	.size	.str.26, 25

	.address_space	0
	.type	.str.27,@object         //  @.str.27
.str.27:
	.asciz	"Virtual timer expired"
	.size	.str.27, 22

	.address_space	0
	.type	.str.28,@object         //  @.str.28
.str.28:
	.asciz	"Profiling timer expired"
	.size	.str.28, 24

	.address_space	0
	.type	.str.29,@object         //  @.str.29
.str.29:
	.asciz	"Resource lost"
	.size	.str.29, 14

	.address_space	0
	.type	.str.30,@object         //  @.str.30
.str.30:
	.asciz	"Unknown signal %d"
	.size	.str.30, 18


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
