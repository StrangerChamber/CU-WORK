	.text
	.file	"sf_erf.c"
	.globl	erff                    //  -- Begin function erff
	.type	erff,@function
erff:                                   //  @erff
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x19 ,  x15 ,  x8
	srli x15 ,  x19 ,  23&31
	sltiu x14 ,  x15 ,  255
	beq x0, x14, .LBB0_1
.LBB0_2:                                //  %if.end
	srli x14 ,  x19 ,  19&31
	addi x13 ,  x0 ,  2026
	bltu x13, x14, .LBB0_9
.LBB0_3:                                //  %if.then3
	addi x14 ,  x0 ,  98
	bltu x14, x15, .LBB0_8
.LBB0_4:                                //  %if.then6
	srli x15 ,  x19 ,  26&31
	bltu x0, x15, .LBB0_6
.LBB0_5:                                //  %if.then9
	lui x11 ,  (1090519040>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  1065579988&4095
	lui x15 ,  (1065579988>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	lui x11 ,  (1040187392>>12)&1048575
	call __mulsf3
	jal x0, .LBB0_25
.LBB0_1:                                //  %if.then
	srli x15 ,  x8 ,  30&31
	slti x14 ,  x0 ,  1
	andi x15 ,  x15 ,  2
	sub x10 ,  x14 ,  x15
	call __floatsisf
	add x9 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x9
	jal x0, .LBB0_24
.LBB0_9:                                //  %if.end39
	srli x15 ,  x19 ,  21&31
	addi x14 ,  x0 ,  508
	bltu x14, x15, .LBB0_13
.LBB0_10:                               //  %if.then42
	add x10 ,  x0 ,  x8
	call fabsf
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1156712000&4095
	lui x15 ,  (-1156712000>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1024545203&4095
	lui x15 ,  (1024545203>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1109189438&4095
	lui x15 ,  (-1109189438>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1050869332&4095
	lui x15 ,  (1050869332>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1094807032&4095
	lui x15 ,  (-1094807032>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1054107653&4095
	lui x15 ,  (1054107653>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1155871290&4095
	lui x15 ,  (-1155871290>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1011112611&4095
	lui x15 ,  (1011112611>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1012887059&4095
	lui x15 ,  (1012887059>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1040265991&4095
	lui x15 ,  (1040265991>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1033050855&4095
	lui x15 ,  (1033050855>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1057642373&4095
	lui x15 ,  (1057642373>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1037693745&4095
	lui x15 ,  (1037693745>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x15 ,  x0 ,  x10
	blt x8, x0, .LBB0_12
.LBB0_11:                               //  %if.then70
	lui x14 ,  (1062753803>>12)&1048575
	lui x30 ,  1062753803&4095
	jal x0, .LBB0_23
.LBB0_8:                                //  %if.end16
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1211672911&4095
	lui x15 ,  (-1211672911>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1145236343&4095
	lui x15 ,  (-1145236343>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1125559665&4095
	lui x15 ,  (-1125559665>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1096389653&4095
	lui x15 ,  (-1096389653>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1040414164&4095
	lui x15 ,  (1040414164>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1232805350&4095
	lui x15 ,  (-1232805350>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  957017673&4095
	lui x15 ,  (957017673>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1000767766&4095
	lui x15 ,  (1000767766>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1032137315&4095
	lui x15 ,  (1032137315>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1053539278&4095
	lui x15 ,  (1053539278>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_7
.LBB0_13:                               //  %if.end75
	srli x15 ,  x19 ,  22&31
	sltiu x15 ,  x15 ,  259
	bltu x0, x15, .LBB0_16
.LBB0_14:                               //  %if.then78
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	addi x15 ,  x0 ,  -1
	bge x15, x8, .LBB0_25
.LBB0_15:
	lui x10 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_25
.LBB0_6:                                //  %if.end13
	lui x30 ,  1040414164&4095
	lui x15 ,  (1040414164>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
.LBB0_7:                                //  %cleanup
	call __mulsf3
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_24
.LBB0_16:                               //  %if.end83
	add x10 ,  x0 ,  x8
	call fabsf
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	call __divsf3
	lui x30 ,  1077336941&4095
	lui x15 ,  (1077336941>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x19, .LBB0_18
.LBB0_17:                               //  %if.then89
	lui x30 ,  -1055062146&4095
	lui x15 ,  (-1055062146>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1029532885&4095
	lui x15 ,  (-1029532885>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1019700505&4095
	lui x15 ,  (-1019700505>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1021155956&4095
	lui x15 ,  (-1021155956>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1032224681&4095
	lui x15 ,  (-1032224681>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1054281694&4095
	lui x15 ,  (-1054281694>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1087266633&4095
	lui x15 ,  (-1087266633>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1138646893&4095
	lui x15 ,  (-1138646893>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1116242025&4095
	lui x15 ,  (-1116242025>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1087520636&4095
	lui x15 ,  (1087520636>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1121535263&4095
	lui x15 ,  (1121535263>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1100821966&4095
	lui x15 ,  (1100821966>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	lui x30 ,  1124706403&4095
	lui x15 ,  (1124706403>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1138313327&4095
	lui x15 ,  (1138313327>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  1143036105&4095
	lui x15 ,  (1143036105>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (1138131211>>12)&1048575
	lui x30 ,  1138131211&4095
	jal x0, .LBB0_19
.LBB0_12:                               //  %if.else
	lui x30 ,  -1084729845&4095
	lui x14 ,  (-1084729845>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	jal x0, .LBB0_21
.LBB0_18:                               //  %if.else120
	lui x30 ,  -1007566219&4095
	lui x15 ,  (-1007566219>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -998235381&4095
	lui x15 ,  (-998235381>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1004575679&4095
	lui x15 ,  (-1004575679>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1021271318&4095
	lui x15 ,  (-1021271318>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1047654325&4095
	lui x15 ,  (-1047654325>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1085497900&4095
	lui x15 ,  (-1085497900>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1138646894&4095
	lui x15 ,  (-1138646894>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1045199086&4095
	lui x15 ,  (-1045199086>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1139622823&4095
	lui x15 ,  (1139622823>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1106424921&4095
	lui x15 ,  (1106424921>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	lui x30 ,  1134749041&4095
	lui x15 ,  (1134749041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1153439577&4095
	lui x15 ,  (1153439577>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  1162345915&4095
	lui x15 ,  (1162345915>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (1159696590>>12)&1048575
	lui x30 ,  1159696590&4095
.LBB0_19:                               //  %do.body148
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x18
	or x24 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x24
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x23
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x22
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x21
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	lui x30 ,  -4096&4095
	lui x15 ,  (-4096>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x20 ,  x15 ,  x9
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1089470464&4095
	lui x15 ,  (-1089470464>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
	call __ieee754_expf
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x9
	call __subsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __addsf3
	call __ieee754_expf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __divsf3
	add x15 ,  x0 ,  x10
	blt x8, x0, .LBB0_22
.LBB0_20:                               //  %if.then173
	lui x10 ,  (1065353216>>12)&1048575
.LBB0_21:                               //  %cleanup
	add x11 ,  x0 ,  x15
	call __subsf3
	jal x0, .LBB0_25
.LBB0_22:                               //  %if.else176
	lui x14 ,  (-1082130432>>12)&1048575
	lui x30 ,  -1082130432&4095
.LBB0_23:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x15
	or x11 ,  x14 ,  x30
.LBB0_24:                               //  %cleanup
	call __addsf3
.LBB0_25:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	erff, .Lfunc_end0-erff
	.cfi_endproc
                                        //  -- End function
	.globl	erfcf                   //  -- Begin function erfcf
	.type	erfcf,@function
erfcf:                                  //  @erfcf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x19 ,  x15 ,  x8
	srli x15 ,  x19 ,  23&31
	sltiu x14 ,  x15 ,  255
	beq x0, x14, .LBB1_4
.LBB1_1:                                //  %if.end
	srli x14 ,  x19 ,  19&31
	addi x13 ,  x0 ,  2026
	bltu x13, x14, .LBB1_7
.LBB1_2:                                //  %if.then3
	addi x14 ,  x0 ,  70
	bltu x14, x15, .LBB1_10
.LBB1_3:                                //  %if.then6
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x8
	call __subsf3
	jal x0, .LBB1_6
.LBB1_4:                                //  %if.then
	srli x15 ,  x8 ,  30&31
	andi x10 ,  x15 ,  2
	call __floatunsisf
	add x9 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x9
.LBB1_5:                                //  %cleanup
	call __addsf3
.LBB1_6:                                //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.LBB1_7:                                //  %if.end37
	srli x15 ,  x19 ,  21&31
	addi x14 ,  x0 ,  508
	bltu x14, x15, .LBB1_12
.LBB1_8:                                //  %if.then40
	add x10 ,  x0 ,  x8
	call fabsf
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1156712000&4095
	lui x15 ,  (-1156712000>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1024545203&4095
	lui x15 ,  (1024545203>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1109189438&4095
	lui x15 ,  (-1109189438>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1050869332&4095
	lui x15 ,  (1050869332>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1094807032&4095
	lui x15 ,  (-1094807032>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1054107653&4095
	lui x15 ,  (1054107653>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1155871290&4095
	lui x15 ,  (-1155871290>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1011112611&4095
	lui x15 ,  (1011112611>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1012887059&4095
	lui x15 ,  (1012887059>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1040265991&4095
	lui x15 ,  (1040265991>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1033050855&4095
	lui x15 ,  (1033050855>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1057642373&4095
	lui x15 ,  (1057642373>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1037693745&4095
	lui x15 ,  (1037693745>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x15 ,  x0 ,  x10
	blt x8, x0, .LBB1_18
.LBB1_9:                                //  %if.then68
	lui x30 ,  1042196436&4095
	lui x14 ,  (1042196436>>12)&1048575
	add x11 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	call __subsf3
	jal x0, .LBB1_6
.LBB1_10:                               //  %if.end7
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1211672911&4095
	lui x15 ,  (-1211672911>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1145236343&4095
	lui x15 ,  (-1145236343>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1125559665&4095
	lui x15 ,  (-1125559665>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1096389653&4095
	lui x15 ,  (-1096389653>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1040414164&4095
	lui x15 ,  (1040414164>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1232805350&4095
	lui x15 ,  (-1232805350>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  957017673&4095
	lui x15 ,  (957017673>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1000767766&4095
	lui x15 ,  (1000767766>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1032137315&4095
	lui x15 ,  (1032137315>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1053539278&4095
	lui x15 ,  (1053539278>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  1048575999&4095
	lui x15 ,  (1048575999>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB1_15
.LBB1_11:                               //  %if.then29
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	call __subsf3
	jal x0, .LBB1_6
.LBB1_12:                               //  %if.end75
	addi x14 ,  x0 ,  526
	bltu x14, x15, .LBB1_16
.LBB1_13:                               //  %if.then78
	add x10 ,  x0 ,  x8
	call fabsf
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	call __divsf3
	lui x30 ,  1077336940&4095
	lui x15 ,  (1077336940>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x19, .LBB1_19
.LBB1_14:                               //  %if.then84
	lui x30 ,  -1055062146&4095
	lui x15 ,  (-1055062146>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1029532885&4095
	lui x15 ,  (-1029532885>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1019700505&4095
	lui x15 ,  (-1019700505>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1021155956&4095
	lui x15 ,  (-1021155956>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1032224681&4095
	lui x15 ,  (-1032224681>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1054281694&4095
	lui x15 ,  (-1054281694>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1087266633&4095
	lui x15 ,  (-1087266633>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1138646893&4095
	lui x15 ,  (-1138646893>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1116242025&4095
	lui x15 ,  (-1116242025>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1087520636&4095
	lui x15 ,  (1087520636>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1121535263&4095
	lui x15 ,  (1121535263>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1100821966&4095
	lui x15 ,  (1100821966>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	lui x30 ,  1124706403&4095
	lui x15 ,  (1124706403>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1138313327&4095
	lui x15 ,  (1138313327>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  1143036105&4095
	lui x15 ,  (1143036105>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (1138131211>>12)&1048575
	lui x30 ,  1138131211&4095
	jal x0, .LBB1_24
.LBB1_15:                               //  %if.else
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1056964608>>12)&1048575
	call __subsf3
	jal x0, .LBB1_6
.LBB1_16:                               //  %if.else179
	bge x0, x8, .LBB1_22
.LBB1_17:                               //  %if.then182
	add x10 ,  x0 ,  x0
	call __math_uflow
	call __truncdfsf2
	jal x0, .LBB1_6
.LBB1_18:                               //  %if.else71
	lui x30 ,  1062753803&4095
	lui x14 ,  (1062753803>>12)&1048575
	add x10 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	jal x0, .LBB1_5
.LBB1_19:                               //  %if.else115
	bge x8, x0, .LBB1_23
.LBB1_20:                               //  %if.else115
	srli x15 ,  x19 ,  22&31
	addi x14 ,  x0 ,  258
	bgeu x14, x15, .LBB1_23
.LBB1_22:
	lui x10 ,  (1073741824>>12)&1048575
	jal x0, .LBB1_6
.LBB1_23:                               //  %if.end121
	lui x30 ,  -1007566219&4095
	lui x15 ,  (-1007566219>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -998235381&4095
	lui x15 ,  (-998235381>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1004575679&4095
	lui x15 ,  (-1004575679>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1021271318&4095
	lui x15 ,  (-1021271318>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1047654325&4095
	lui x15 ,  (-1047654325>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1085497900&4095
	lui x15 ,  (-1085497900>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1138646894&4095
	lui x15 ,  (-1138646894>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1045199086&4095
	lui x15 ,  (-1045199086>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1139622823&4095
	lui x15 ,  (1139622823>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1106424921&4095
	lui x15 ,  (1106424921>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	lui x30 ,  1134749041&4095
	lui x15 ,  (1134749041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1153439577&4095
	lui x15 ,  (1153439577>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  1162345915&4095
	lui x15 ,  (1162345915>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (1159696590>>12)&1048575
	lui x30 ,  1159696590&4095
.LBB1_24:                               //  %do.body149
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x18
	or x24 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x24
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x23
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x22
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x21
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	lui x30 ,  -4096&4095
	lui x15 ,  (-4096>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x20 ,  x15 ,  x9
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1089470464&4095
	lui x15 ,  (-1089470464>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
	call __ieee754_expf
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x9
	call __subsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __addsf3
	call __ieee754_expf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __divsf3
	add x9 ,  x0 ,  x10
	lui x10 ,  (1073741824>>12)&1048575
	add x11 ,  x0 ,  x9
	call __subsf3
	add x15 ,  x0 ,  x0
	blt x15, x8, .LBB1_26
.LBB1_25:                               //  %do.body149
	add x9 ,  x0 ,  x10
.LBB1_26:                               //  %do.body149
	add x10 ,  x0 ,  x9
	jal x0, .LBB1_6
.Lfunc_end1:
	.size	erfcf, .Lfunc_end1-erfcf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
