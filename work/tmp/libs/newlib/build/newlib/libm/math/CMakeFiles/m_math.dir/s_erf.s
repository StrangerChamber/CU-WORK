	.text
	.file	"s_erf.c"
	.globl	erf                     //  -- Begin function erf
	.type	erf,@function
erf:                                    //  @erf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	sw x21 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x21 ,  x15 ,  x8
	srli x15 ,  x21 ,  20&31
	sltiu x14 ,  x15 ,  2047
	bltu x0, x14, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	srli x15 ,  x8 ,  30&31
	slti x14 ,  x0 ,  1
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	andi x15 ,  x15 ,  2
	sub x10 ,  x14 ,  x15
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	jal x0, .LBB0_25
.LBB0_2:                                //  %if.end
	lui x30 ,  1072365567&4095
	lui x14 ,  (1072365567>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x21, .LBB0_9
.LBB0_3:                                //  %if.then3
	addi x14 ,  x0 ,  994
	bltu x14, x15, .LBB0_8
.LBB0_4:                                //  %if.then6
	srli x15 ,  x21 ,  23&31
	bltu x0, x15, .LBB0_6
.LBB0_5:                                //  %if.then9
	add x18 ,  x0 ,  x0
	lui x13 ,  (1075838976>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  -2112562327&4095
	lui x15 ,  (-2112562327>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072721594&4095
	lui x15 ,  (1072721594>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	lui x13 ,  (1069547520>>12)&1048575
	add x12 ,  x0 ,  x18
	call __muldf3
	jal x0, .LBB0_26
.LBB0_9:                                //  %if.end39
	lui x30 ,  4092&4095
	lui x14 ,  (4092>>12)&1048575
	srli x15 ,  x21 ,  18&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_13
.LBB0_10:                               //  %if.then42
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	lui x30 ,  -1074790400&4095
	add x9 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x9
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  177604415&4095
	lui x15 ,  (177604415>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084113096&4095
	lui x15 ,  (-1084113096>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1503106539&4095
	lui x15 ,  (1503106539>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1067592246&4095
	lui x15 ,  (1067592246>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1027483884&4095
	lui x15 ,  (1027483884>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078172776&4095
	lui x15 ,  (-1078172776>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -2142166812&4095
	lui x15 ,  (-2142166812>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070882762&4095
	lui x15 ,  (1070882762>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -71777295&4095
	lui x15 ,  (-71777295>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1076374976&4095
	lui x15 ,  (-1076374976>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1382894771&4095
	lui x15 ,  (-1382894771>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071287552&4095
	lui x15 ,  (1071287552>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1091078856&4095
	lui x15 ,  (-1091078856>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084008008&4095
	lui x15 ,  (-1084008008>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1463096605&4095
	lui x15 ,  (1463096605>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1065913172&4095
	lui x15 ,  (1065913172>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1800527132&4095
	lui x15 ,  (1800527132>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066134978&4095
	lui x15 ,  (1066134978>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -412928737&4095
	lui x15 ,  (-412928737>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069557344&4095
	lui x15 ,  (1069557344>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -643831385&4095
	lui x15 ,  (-643831385>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068655452&4095
	lui x15 ,  (1068655452>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1830064333&4095
	lui x15 ,  (-1830064333>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071729392&4095
	lui x15 ,  (1071729392>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  418308899&4095
	lui x15 ,  (418308899>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069235814&4095
	lui x15 ,  (1069235814>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	blt x8, x0, .LBB0_12
.LBB0_11:                               //  %if.then70
	lui x12 ,  (1610612736>>12)&1048575
	lui x13 ,  (1072368321>>12)&1048575
	lui x30 ,  1072368321&4095
	jal x0, .LBB0_24
.LBB0_8:                                //  %if.end16
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  301995692&4095
	lui x15 ,  (301995692>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1090983210&4095
	lui x15 ,  (-1090983210>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  593914084&4095
	lui x15 ,  (593914084>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1082678639&4095
	lui x15 ,  (-1082678639>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -606660273&4095
	lui x15 ,  (-606660273>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1080219055&4095
	lui x15 ,  (-1080219055>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1763490067&4095
	lui x15 ,  (1763490067>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1076572803&4095
	lui x15 ,  (-1076572803>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -2112562328&4095
	lui x15 ,  (-2112562328>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069575866&4095
	lui x15 ,  (1069575866>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1117937952&4095
	lui x15 ,  (1117937952>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1093624765&4095
	lui x15 ,  (-1093624765>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  572267024&4095
	lui x15 ,  (572267024>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1059151305&4095
	lui x15 ,  (1059151305>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -992777457&4095
	lui x15 ,  (-992777457>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1064620066&4095
	lui x15 ,  (1064620066>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1429655226&4095
	lui x15 ,  (1429655226>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068541260&4095
	lui x15 ,  (1068541260>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -841294839&4095
	lui x15 ,  (-841294839>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071216505&4095
	lui x15 ,  (1071216505>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	jal x0, .LBB0_7
.LBB0_13:                               //  %if.end75
	lui x30 ,  2051&4095
	lui x14 ,  (2051>>12)&1048575
	srli x15 ,  x21 ,  19&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_17
.LBB0_14:                               //  %if.then78
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	addi x15 ,  x0 ,  -1
	bge x15, x8, .LBB0_16
.LBB0_15:
	lui x11 ,  (1072693248>>12)&1048575
.LBB0_16:                               //  %if.then78
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_26
.LBB0_6:                                //  %if.end13
	lui x30 ,  -2112562327&4095
	lui x15 ,  (-2112562327>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069575866&4095
	lui x15 ,  (1069575866>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
.LBB0_7:                                //  %cleanup
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	jal x0, .LBB0_25
.LBB0_17:                               //  %if.end83
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	call __divdf3
	lui x30 ,  1074191213&4095
	lui x15 ,  (1074191213>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x21, .LBB0_19
.LBB0_18:                               //  %if.then89
	lui x30 ,  -962936228&4095
	lui x15 ,  (-962936228>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1071406865&4095
	lui x15 ,  (-1071406865>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1474614002&4095
	lui x15 ,  (1474614002>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1068215707&4095
	lui x15 ,  (-1068215707>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -338908238&4095
	lui x15 ,  (-338908238>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1066986660&4095
	lui x15 ,  (-1066986660>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -2077744538&4095
	lui x15 ,  (-2077744538>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1067168591&4095
	lui x15 ,  (-1067168591>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -456416371&4095
	lui x15 ,  (-456416371>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1068552182&4095
	lui x15 ,  (-1068552182>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1102112550&4095
	lui x15 ,  (1102112550>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1071309308&4095
	lui x15 ,  (-1071309308>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -457542816&4095
	lui x15 ,  (-457542816>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075432426&4095
	lui x15 ,  (-1075432426>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1611490357&4095
	lui x15 ,  (1611490357>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1081854958&4095
	lui x15 ,  (-1081854958>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -294348190&4095
	lui x15 ,  (-294348190>>12)&1048575
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  16 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079054350&4095
	lui x15 ,  (-1079054350>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1907864941&4095
	lui x15 ,  (-1907864941>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1075464175&4095
	lui x15 ,  (1075464175>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -297226708&4095
	lui x15 ,  (-297226708>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1079716003&4095
	lui x15 ,  (1079716003>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1077126841&4095
	lui x15 ,  (1077126841>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -1116703097&4095
	sw x15 ,  12 ( x2 )             //  4-byte Folded Spill
	lui x15 ,  (-1116703097>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1080112396&4095
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x15 ,  (1080112396>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	lui x30 ,  1382737697&4095
	lui x15 ,  (1382737697>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	lui x30 ,  1081813261&4095
	lui x15 ,  (1081813261>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x27 ,  x15 ,  x30
	lui x30 ,  -712369551&4095
	lui x15 ,  (-712369551>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1082403609&4095
	lui x15 ,  (1082403609>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  569124968&4095
	lui x15 ,  (569124968>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	lui x30 ,  1081790497&4095
	lui x15 ,  (1081790497>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (1466958612>>12)&1048575
	lui x30 ,  1466958612&4095
	jal x0, .LBB0_20
.LBB0_12:                               //  %if.else
	lui x30 ,  -1075115327&4095
	lui x13 ,  (-1075115327>>12)&1048575
	lui x10 ,  (1610612736>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x13 ,  x30
	jal x0, .LBB0_22
.LBB0_19:                               //  %if.else120
	lui x30 ,  -1680066497&4095
	lui x15 ,  (-1680066497>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1065469874&4095
	lui x15 ,  (-1065469874>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1781422482&4095
	lui x15 ,  (1781422482>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1064303519&4095
	lui x15 ,  (-1064303519>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  326496808&4095
	lui x15 ,  (326496808>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1065096056&4095
	lui x15 ,  (-1065096056>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1137044888&4095
	lui x15 ,  (1137044888>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1067183011&4095
	lui x15 ,  (-1067183011>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1432328538&4095
	lui x15 ,  (1432328538>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1070480887&4095
	lui x15 ,  (-1070480887>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1891796446&4095
	lui x15 ,  (1891796446>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075211334&4095
	lui x15 ,  (-1075211334>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  971534154&4095
	lui x15 ,  (971534154>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1081854958&4095
	lui x15 ,  (-1081854958>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1114713442&4095
	lui x15 ,  (1114713442>>12)&1048575
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  16 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1070173982&4095
	lui x15 ,  (-1070173982>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -408950941&4095
	lui x15 ,  (-408950941>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1081976948&4095
	lui x15 ,  (1081976948>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1077827211&4095
	lui x15 ,  (1077827211>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  639455632&4095
	sw x15 ,  12 ( x2 )             //  4-byte Folded Spill
	lui x15 ,  (639455632>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1081367726&4095
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x15 ,  (1081367726>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	lui x30 ,  572235530&4095
	lui x15 ,  (572235530>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	lui x30 ,  1083704043&4095
	lui x15 ,  (1083704043>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x27 ,  x15 ,  x30
	lui x30 ,  412963096&4095
	lui x15 ,  (412963096>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1084817335&4095
	lui x15 ,  (1084817335>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  1754014826&4095
	lui x15 ,  (1754014826>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	lui x30 ,  1084486169&4095
	lui x15 ,  (1084486169>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (-824230938>>12)&1048575
	lui x30 ,  -824230938&4095
.LBB0_20:                               //  %if.end147
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	or x24 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x22
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x27
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lw x12 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x9 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	call __adddf3
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x23
	call __subdf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	lw x10 ,  20 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	lw x11 ,  16 ( x2 )             //  4-byte Folded Reload
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __adddf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  -1075707904&4095
	lui x15 ,  (-1075707904>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	call __ieee754_exp
	add x9 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __ieee754_exp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x18
	call __divdf3
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	blt x8, x0, .LBB0_23
.LBB0_21:                               //  %if.then167
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
.LBB0_22:                               //  %cleanup
	add x12 ,  x0 ,  x15
	add x13 ,  x0 ,  x14
	call __subdf3
	jal x0, .LBB0_26
.LBB0_23:                               //  %if.else170
	add x12 ,  x0 ,  x0
	lui x13 ,  (-1074790400>>12)&1048575
	lui x30 ,  -1074790400&4095
.LBB0_24:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	or x13 ,  x13 ,  x30
.LBB0_25:                               //  %cleanup
	call __adddf3
.LBB0_26:                               //  %cleanup
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	erf, .Lfunc_end0-erf
	.cfi_endproc
                                        //  -- End function
	.globl	erfc                    //  -- Begin function erfc
	.type	erfc,@function
erfc:                                   //  @erfc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	sw x21 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x21 ,  x15 ,  x8
	srli x15 ,  x21 ,  20&31
	sltiu x14 ,  x15 ,  2047
	bltu x0, x14, .LBB1_2
.LBB1_1:                                //  %if.then
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	srli x15 ,  x8 ,  30&31
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	andi x10 ,  x15 ,  2
	call __floatunsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
.LBB1_17:                               //  %cleanup
	call __adddf3
.LBB1_18:                               //  %cleanup
	add x9 ,  x0 ,  x10
.LBB1_19:                               //  %cleanup
	add x10 ,  x0 ,  x9
.LBB1_20:                               //  %cleanup
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.LBB1_2:                                //  %if.end
	lui x30 ,  1072365567&4095
	lui x14 ,  (1072365567>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x21, .LBB1_5
.LBB1_3:                                //  %if.then3
	addi x14 ,  x0 ,  966
	bltu x14, x15, .LBB1_8
.LBB1_4:                                //  %if.then6
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	jal x0, .LBB1_18
.LBB1_5:                                //  %if.end37
	lui x30 ,  4092&4095
	lui x14 ,  (4092>>12)&1048575
	srli x15 ,  x21 ,  18&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_10
.LBB1_6:                                //  %if.then40
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	lui x30 ,  -1074790400&4095
	add x9 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x9
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  177604415&4095
	lui x15 ,  (177604415>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084113096&4095
	lui x15 ,  (-1084113096>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1503106539&4095
	lui x15 ,  (1503106539>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1067592246&4095
	lui x15 ,  (1067592246>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1027483884&4095
	lui x15 ,  (1027483884>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078172776&4095
	lui x15 ,  (-1078172776>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -2142166812&4095
	lui x15 ,  (-2142166812>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070882762&4095
	lui x15 ,  (1070882762>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -71777295&4095
	lui x15 ,  (-71777295>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1076374976&4095
	lui x15 ,  (-1076374976>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1382894771&4095
	lui x15 ,  (-1382894771>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071287552&4095
	lui x15 ,  (1071287552>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1091078856&4095
	lui x15 ,  (-1091078856>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084008008&4095
	lui x15 ,  (-1084008008>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1463096605&4095
	lui x15 ,  (1463096605>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1065913172&4095
	lui x15 ,  (1065913172>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1800527132&4095
	lui x15 ,  (1800527132>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066134978&4095
	lui x15 ,  (1066134978>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -412928737&4095
	lui x15 ,  (-412928737>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069557344&4095
	lui x15 ,  (1069557344>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -643831385&4095
	lui x15 ,  (-643831385>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068655452&4095
	lui x15 ,  (1068655452>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1830064333&4095
	lui x15 ,  (-1830064333>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071729392&4095
	lui x15 ,  (1071729392>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  418308899&4095
	lui x15 ,  (418308899>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069235814&4095
	lui x15 ,  (1069235814>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	blt x8, x0, .LBB1_16
.LBB1_7:                                //  %if.then68
	lui x30 ,  -2147483648&4095
	lui x13 ,  (-2147483648>>12)&1048575
	add x12 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x10 ,  x13 ,  x30
	lui x30 ,  1069798650&4095
	lui x13 ,  (1069798650>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x13 ,  x30
	add x13 ,  x0 ,  x14
	call __subdf3
	jal x0, .LBB1_18
.LBB1_8:                                //  %if.end7
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  301995692&4095
	lui x15 ,  (301995692>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1090983210&4095
	lui x15 ,  (-1090983210>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  593914084&4095
	lui x15 ,  (593914084>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1082678639&4095
	lui x15 ,  (-1082678639>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -606660273&4095
	lui x15 ,  (-606660273>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1080219055&4095
	lui x15 ,  (-1080219055>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1763490067&4095
	lui x15 ,  (1763490067>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1076572803&4095
	lui x15 ,  (-1076572803>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -2112562328&4095
	lui x15 ,  (-2112562328>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069575866&4095
	lui x15 ,  (1069575866>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1117937952&4095
	lui x15 ,  (1117937952>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1093624765&4095
	lui x15 ,  (-1093624765>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  572267024&4095
	lui x15 ,  (572267024>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1059151305&4095
	lui x15 ,  (1059151305>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -992777457&4095
	lui x15 ,  (-992777457>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1064620066&4095
	lui x15 ,  (1064620066>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1429655226&4095
	lui x15 ,  (1429655226>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068541260&4095
	lui x15 ,  (1068541260>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -841294839&4095
	lui x15 ,  (-841294839>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071216505&4095
	lui x15 ,  (1071216505>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	lui x30 ,  1070596095&4095
	lui x15 ,  (1070596095>>12)&1048575
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB1_13
.LBB1_9:                                //  %if.then29
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	call __subdf3
	jal x0, .LBB1_18
.LBB1_10:                               //  %if.end75
	lui x30 ,  1077673983&4095
	lui x15 ,  (1077673983>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x21, .LBB1_14
.LBB1_11:                               //  %if.then78
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	add x22 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	call __muldf3
	add x9 ,  x0 ,  x0
	add x13 ,  x0 ,  x11
	add x12 ,  x0 ,  x10
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x9
	call __divdf3
	lui x30 ,  1074191212&4095
	lui x15 ,  (1074191212>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x21, .LBB1_21
.LBB1_12:                               //  %if.then84
	lui x30 ,  -962936228&4095
	lui x15 ,  (-962936228>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	sw x22 ,  24 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1071406865&4095
	lui x15 ,  (-1071406865>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1474614002&4095
	lui x15 ,  (1474614002>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1068215707&4095
	lui x15 ,  (-1068215707>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -338908238&4095
	lui x15 ,  (-338908238>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1066986660&4095
	lui x15 ,  (-1066986660>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -2077744538&4095
	lui x15 ,  (-2077744538>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1067168591&4095
	lui x15 ,  (-1067168591>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -456416371&4095
	lui x15 ,  (-456416371>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1068552182&4095
	lui x15 ,  (-1068552182>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1102112550&4095
	lui x15 ,  (1102112550>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1071309308&4095
	lui x15 ,  (-1071309308>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -457542816&4095
	lui x15 ,  (-457542816>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075432426&4095
	lui x15 ,  (-1075432426>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1611490357&4095
	lui x15 ,  (1611490357>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1081854958&4095
	lui x15 ,  (-1081854958>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -294348190&4095
	lui x15 ,  (-294348190>>12)&1048575
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  16 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079054350&4095
	lui x15 ,  (-1079054350>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1907864941&4095
	lui x15 ,  (-1907864941>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1075464175&4095
	lui x15 ,  (1075464175>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -297226708&4095
	lui x15 ,  (-297226708>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1079716003&4095
	lui x15 ,  (1079716003>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1077126841&4095
	lui x15 ,  (1077126841>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -1116703097&4095
	sw x15 ,  12 ( x2 )             //  4-byte Folded Spill
	lui x15 ,  (-1116703097>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1080112396&4095
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x15 ,  (1080112396>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	lui x30 ,  1382737697&4095
	lui x15 ,  (1382737697>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	lui x30 ,  1081813261&4095
	lui x15 ,  (1081813261>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x27 ,  x15 ,  x30
	lui x30 ,  -712369551&4095
	lui x15 ,  (-712369551>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1082403609&4095
	lui x15 ,  (1082403609>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  569124968&4095
	lui x15 ,  (569124968>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	lui x30 ,  1081790497&4095
	lui x15 ,  (1081790497>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (1466958612>>12)&1048575
	lui x30 ,  1466958612&4095
	jal x0, .LBB1_26
.LBB1_13:                               //  %if.else
	lui x30 ,  -1075838976&4095
	add x20 ,  x0 ,  x0
	lui x15 ,  (-1075838976>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x20
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lui x11 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x20
	call __subdf3
	jal x0, .LBB1_18
.LBB1_14:                               //  %if.else173
	bge x0, x8, .LBB1_24
.LBB1_15:                               //  %if.then176
	add x10 ,  x0 ,  x0
	call __math_uflow
	jal x0, .LBB1_18
.LBB1_16:                               //  %if.else71
	lui x30 ,  1072368321&4095
	lui x13 ,  (1072368321>>12)&1048575
	lui x12 ,  (1610612736>>12)&1048575
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	jal x0, .LBB1_17
.LBB1_21:                               //  %if.else115
	bge x8, x0, .LBB1_25
.LBB1_22:                               //  %if.else115
	lui x30 ,  2050&4095
	lui x14 ,  (2050>>12)&1048575
	srli x15 ,  x21 ,  19&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB1_25
.LBB1_23:
	lui x11 ,  (1073741824>>12)&1048575
	jal x0, .LBB1_19
.LBB1_24:
	lui x11 ,  (1073741824>>12)&1048575
	add x9 ,  x0 ,  x0
	jal x0, .LBB1_19
.LBB1_25:                               //  %if.end121
	lui x30 ,  -1680066497&4095
	lui x15 ,  (-1680066497>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	sw x22 ,  24 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1065469874&4095
	lui x15 ,  (-1065469874>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1781422482&4095
	lui x15 ,  (1781422482>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1064303519&4095
	lui x15 ,  (-1064303519>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  326496808&4095
	lui x15 ,  (326496808>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1065096056&4095
	lui x15 ,  (-1065096056>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1137044888&4095
	lui x15 ,  (1137044888>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1067183011&4095
	lui x15 ,  (-1067183011>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1432328538&4095
	lui x15 ,  (1432328538>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1070480887&4095
	lui x15 ,  (-1070480887>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1891796446&4095
	lui x15 ,  (1891796446>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075211334&4095
	lui x15 ,  (-1075211334>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  971534154&4095
	lui x15 ,  (971534154>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1081854958&4095
	lui x15 ,  (-1081854958>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1114713442&4095
	lui x15 ,  (1114713442>>12)&1048575
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  16 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1070173982&4095
	lui x15 ,  (-1070173982>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -408950941&4095
	lui x15 ,  (-408950941>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1081976948&4095
	lui x15 ,  (1081976948>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1077827211&4095
	lui x15 ,  (1077827211>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  639455632&4095
	sw x15 ,  12 ( x2 )             //  4-byte Folded Spill
	lui x15 ,  (639455632>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1081367726&4095
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x15 ,  (1081367726>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	lui x30 ,  572235530&4095
	lui x15 ,  (572235530>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	lui x30 ,  1083704043&4095
	lui x15 ,  (1083704043>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x27 ,  x15 ,  x30
	lui x30 ,  412963096&4095
	lui x15 ,  (412963096>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  1084817335&4095
	lui x15 ,  (1084817335>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  1754014826&4095
	lui x15 ,  (1754014826>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	lui x30 ,  1084486169&4095
	lui x15 ,  (1084486169>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	lui x15 ,  (-824230938>>12)&1048575
	lui x30 ,  -824230938&4095
.LBB1_26:                               //  %if.end148
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	or x24 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x22
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x27
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lw x12 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x19
	call __adddf3
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x18
	add x12 ,  x0 ,  x23
	call __subdf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	lw x10 ,  20 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	lw x11 ,  16 ( x2 )             //  4-byte Folded Reload
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __adddf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  -1075707904&4095
	lui x15 ,  (-1075707904>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	call __ieee754_exp
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __ieee754_exp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x18
	call __divdf3
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	lui x11 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __subdf3
	blt x19, x8, .LBB1_28
.LBB1_27:                               //  %if.end148
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
.LBB1_28:                               //  %if.end148
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	jal x0, .LBB1_20
.Lfunc_end1:
	.size	erfc, .Lfunc_end1-erfc
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
