	.text
	.file	"sf_cbrt.c"
	.globl	cbrtf                   //  -- Begin function cbrtf
	.type	cbrtf,@function
cbrtf:                                  //  @cbrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	lui x14 ,  (2147483647>>12)&1048575
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x9 ,  x14 ,  x10
	srli x8 ,  x9 ,  23&31
	sltiu x14 ,  x8 ,  255
	beq x0, x14, .LBB0_1
.LBB0_2:                                //  %if.end
	beq x0, x9, .LBB0_8
.LBB0_3:                                //  %do.body4
	lui x30 ,  709958130&4095
	lui x14 ,  (709958130>>12)&1048575
	lui x13 ,  (642849266>>12)&1048575
	add x20 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  642849266&4095
	srli x30 ,  x30 ,  12&31
	or x18 ,  x13 ,  x30
	beq x8, x20, .LBB0_5
.LBB0_4:                                //  %do.body4
	add x18 ,  x0 ,  x14
.LBB0_5:                                //  %do.body4
	and x19 ,  x15 ,  x10
	lui x11 ,  (1266679808>>12)&1048575
	add x10 ,  x0 ,  x9
	call __mulsf3
	beq x8, x20, .LBB0_7
.LBB0_6:                                //  %do.body4
	add x10 ,  x0 ,  x9
.LBB0_7:                                //  %do.body4
	addi x11 ,  x0 ,  3
	call __udivsi3
	add x8 ,  x18 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __divsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  1057683632&4095
	lui x15 ,  (1057683632>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1068828496&4095
	lui x15 ,  (1068828496>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1087074575&4095
	lui x15 ,  (-1087074575>>12)&1048575
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	lui x30 ,  1070446299&4095
	lui x15 ,  (1070446299>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __divsf3
	lui x30 ,  1052171118&4095
	lui x15 ,  (1052171118>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	or x10 ,  x10 ,  x19
	jal x0, .LBB0_8
.LBB0_1:                                //  %if.then
	add x11 ,  x0 ,  x10
	call __addsf3
.LBB0_8:                                //  %cleanup
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
	.size	cbrtf, .Lfunc_end0-cbrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
