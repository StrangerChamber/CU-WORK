	.text
	.file	"asctime_r.c"
	.globl	asctime_r               //  -- Begin function asctime_r
	.type	asctime_r,@function
asctime_r:                              //  @asctime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x9, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x10 ,  24 ( x9 )
	addi x18 ,  x0 ,  3
	add x11 ,  x0 ,  x18
	call __mulsi3
	add x19 ,  x0 ,  x10
	lw x10 ,  16 ( x9 )
	add x11 ,  x0 ,  x18
	call __mulsi3
	lui x30 ,  asctime_r.mon_name&4095
	lui x15 ,  (asctime_r.mon_name>>12)&1048575
	lw x11 ,  20 ( x9 )
	sw x8 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	lw x14 ,  12 ( x9 )
	or x15 ,  x15 ,  x30
	lui x30 ,  asctime_r.day_name&4095
	lw x13 ,  8 ( x9 )
	add x15 ,  x10 ,  x15
	srli x30 ,  x30 ,  12&31
	lw x12 ,  4 ( x9 )
	sw x15 ,  12 ( x2 )
	lui x15 ,  (asctime_r.day_name>>12)&1048575
	lw x10 ,  0 ( x9 )
	addi x11 ,  x11 ,  1900
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	sw x11 ,  32 ( x2 )
	sw x14 ,  16 ( x2 )
	add x15 ,  x19 ,  x15
	srli x30 ,  x30 ,  12&31
	sw x13 ,  20 ( x2 )
	sw x15 ,  8 ( x2 )
	lui x15 ,  (.str>>12)&1048575
	sw x12 ,  24 ( x2 )
	or x15 ,  x15 ,  x30
	sw x10 ,  28 ( x2 )
	sw x15 ,  4 ( x2 )
	call siprintf
	jal x0, .LBB0_3
.LBB0_1:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	add x8 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
.LBB0_3:                                //  %return
	add x10 ,  x0 ,  x8
	lw x8 ,  44 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	asctime_r, .Lfunc_end0-asctime_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	asctime_r.day_name,@object //  @asctime_r.day_name
	.section	.rodata,"a",@progbits
asctime_r.day_name:
	.ascii	"Sun"
	.ascii	"Mon"
	.ascii	"Tue"
	.ascii	"Wed"
	.ascii	"Thu"
	.ascii	"Fri"
	.ascii	"Sat"
	.size	asctime_r.day_name, 21

	.address_space	0
	.type	asctime_r.mon_name,@object //  @asctime_r.mon_name
asctime_r.mon_name:
	.ascii	"Jan"
	.ascii	"Feb"
	.ascii	"Mar"
	.ascii	"Apr"
	.ascii	"May"
	.ascii	"Jun"
	.ascii	"Jul"
	.ascii	"Aug"
	.ascii	"Sep"
	.ascii	"Oct"
	.ascii	"Nov"
	.ascii	"Dec"
	.size	asctime_r.mon_name, 36

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%.3s %.3s%3d %.2d:%.2d:%.2d %d\n"
	.size	.str, 32


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
