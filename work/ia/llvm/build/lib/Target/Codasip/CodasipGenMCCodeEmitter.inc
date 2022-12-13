/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Machine Code Emitter                                                       *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

uint64_t CodasipMCCodeEmitter::getBinaryCodeForInstr(const MCInst &MI,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const {
  static const uint64_t InstBits[] = {
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(99),	// i_beqz_alias__x_0__relative_addr12__
    UINT64_C(99),	// i_beqz_alias__x_0_alias__relative_addr12__
    UINT64_C(99),	// i_beqz_alias__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_bgez_alias__x_0__relative_addr12__
    UINT64_C(20579),	// i_bgez_alias__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_bgez_alias__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__x_0__x_0__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__x_0__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__x_0__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__x_0_alias__x_0__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__xpr_general__x_0__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_bgt_alias__xpr_general__xpr_general__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__x_0__x_0__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__x_0__x_0_alias__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__x_0__xpr_general__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__x_0_alias__x_0__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__xpr_general__x_0__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(24675),	// i_bgtu_alias__xpr_general__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_bgtz_alias__x_0__relative_addr12__
    UINT64_C(16483),	// i_bgtz_alias__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_bgtz_alias__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__x_0__x_0__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__x_0__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__x_0__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__x_0_alias__x_0__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__xpr_general__x_0__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_ble_alias__xpr_general__xpr_general__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__x_0__x_0__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__x_0__x_0_alias__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__x_0__xpr_general__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__x_0_alias__x_0__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__xpr_general__x_0__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(28771),	// i_bleu_alias__xpr_general__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_blez_alias__x_0__relative_addr12__
    UINT64_C(20579),	// i_blez_alias__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_blez_alias__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_bltz_alias__x_0__relative_addr12__
    UINT64_C(16483),	// i_bltz_alias__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_bltz_alias__xpr_general__relative_addr12__
    UINT64_C(4195),	// i_bnez_alias__x_0__relative_addr12__
    UINT64_C(4195),	// i_bnez_alias__x_0_alias__relative_addr12__
    UINT64_C(4195),	// i_bnez_alias__xpr_general__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__x_0__x_0__relative_addr12__
    UINT64_C(0),	// i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_
    UINT64_C(0),	// i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC
    UINT64_C(99),	// i_btype_branches__opc_beq__x_0__x_0_alias__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__x_0_alias__x_0__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(99),	// i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__x_0__x_0__relative_addr12__
    UINT64_C(0),	// i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_
    UINT64_C(0),	// i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC
    UINT64_C(20579),	// i_btype_branches__opc_bge__x_0__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__x_0_alias__x_0__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(20579),	// i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__
    UINT64_C(0),	// i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_
    UINT64_C(0),	// i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__x_0__x_0_alias__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__x_0_alias__x_0__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(28771),	// i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__x_0__x_0__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__x_0__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__x_0_alias__x_0__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(16483),	// i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__x_0__x_0_alias__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__x_0_alias__x_0__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(24675),	// i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__x_0__x_0__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__x_0__x_0_alias__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__x_0_alias__x_0__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__x_0_alias__x_0_alias__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__x_0_alias__xpr_general__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__xpr_general__x_0_alias__relative_addr12__
    UINT64_C(4195),	// i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__
    UINT64_C(239),	// i_call_alias__relative_addr20__
    UINT64_C(231),	// i_call_reg_alias__simm12__x_0__
    UINT64_C(231),	// i_call_reg_alias__simm12__x_0_alias__
    UINT64_C(231),	// i_call_reg_alias__simm12__xpr_general__
    UINT64_C(0),	// i_call_reg_alias__simm12__xpr_general__immspec_1_
    UINT64_C(63),	// i_halt__opc_halt__
    UINT64_C(19),	// i_itype_alu__opc_addi__x_0__x_0__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__x_0__x_0_alias__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__x_0__xpr_general__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__x_0_alias__x_0__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__x_0_alias__x_0_alias__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__x_0_alias__xpr_general__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__xpr_general__x_0__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__xpr_general__x_0_alias__simm12__
    UINT64_C(19),	// i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__x_0__x_0__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__x_0__x_0_alias__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__x_0__xpr_general__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__x_0_alias__x_0__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__x_0_alias__x_0_alias__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__x_0_alias__xpr_general__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__xpr_general__x_0__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__xpr_general__x_0_alias__simm12__
    UINT64_C(28691),	// i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__x_0__x_0__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__x_0__x_0_alias__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__x_0__xpr_general__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__x_0_alias__x_0__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__x_0_alias__x_0_alias__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__x_0_alias__xpr_general__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__xpr_general__x_0__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__xpr_general__x_0_alias__simm12__
    UINT64_C(24595),	// i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__x_0__x_0__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__x_0__x_0_alias__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__x_0__xpr_general__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__x_0_alias__x_0__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__x_0_alias__x_0_alias__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__x_0_alias__xpr_general__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__xpr_general__x_0__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__xpr_general__x_0_alias__simm12__
    UINT64_C(8211),	// i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__x_0__x_0__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__x_0__x_0_alias__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__x_0_alias__x_0__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__x_0_alias__x_0_alias__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__x_0_alias__xpr_general__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__xpr_general__x_0_alias__simm12__
    UINT64_C(12307),	// i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__x_0__x_0__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__x_0__x_0_alias__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__x_0__xpr_general__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__x_0_alias__x_0__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__x_0_alias__x_0_alias__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__x_0_alias__xpr_general__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__xpr_general__x_0__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__xpr_general__x_0_alias__simm12__
    UINT64_C(16403),	// i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__x_0__simm12__x_0__
    UINT64_C(0),	// i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_
    UINT64_C(0),	// i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_MC
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__x_0__simm12__x_0_alias__
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__
    UINT64_C(0),	// i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_TAILCALL_CLONE_
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0__
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0_alias__
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__x_0_alias__simm12__xpr_general__
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0_alias__
    UINT64_C(103),	// i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__
    UINT64_C(3),	// i_itype_loads__opc_lb__x_0__simm12__x_0__
    UINT64_C(3),	// i_itype_loads__opc_lb__x_0__simm12__x_0_alias__
    UINT64_C(3),	// i_itype_loads__opc_lb__x_0__simm12__xpr_general__
    UINT64_C(3),	// i_itype_loads__opc_lb__x_0_alias__simm12__x_0__
    UINT64_C(3),	// i_itype_loads__opc_lb__x_0_alias__simm12__x_0_alias__
    UINT64_C(3),	// i_itype_loads__opc_lb__x_0_alias__simm12__xpr_general__
    UINT64_C(3),	// i_itype_loads__opc_lb__xpr_general__simm12__x_0__
    UINT64_C(3),	// i_itype_loads__opc_lb__xpr_general__simm12__x_0_alias__
    UINT64_C(3),	// i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__x_0__simm12__x_0__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__x_0__simm12__x_0_alias__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__x_0__simm12__xpr_general__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__x_0_alias__simm12__x_0__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__x_0_alias__simm12__x_0_alias__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__x_0_alias__simm12__xpr_general__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__xpr_general__simm12__x_0__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__xpr_general__simm12__x_0_alias__
    UINT64_C(16387),	// i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__
    UINT64_C(4099),	// i_itype_loads__opc_lh__x_0__simm12__x_0__
    UINT64_C(4099),	// i_itype_loads__opc_lh__x_0__simm12__x_0_alias__
    UINT64_C(4099),	// i_itype_loads__opc_lh__x_0__simm12__xpr_general__
    UINT64_C(4099),	// i_itype_loads__opc_lh__x_0_alias__simm12__x_0__
    UINT64_C(4099),	// i_itype_loads__opc_lh__x_0_alias__simm12__x_0_alias__
    UINT64_C(4099),	// i_itype_loads__opc_lh__x_0_alias__simm12__xpr_general__
    UINT64_C(4099),	// i_itype_loads__opc_lh__xpr_general__simm12__x_0__
    UINT64_C(4099),	// i_itype_loads__opc_lh__xpr_general__simm12__x_0_alias__
    UINT64_C(4099),	// i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__x_0__simm12__x_0__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__x_0__simm12__x_0_alias__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__x_0__simm12__xpr_general__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__x_0_alias__simm12__x_0__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__x_0_alias__simm12__x_0_alias__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__x_0_alias__simm12__xpr_general__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__xpr_general__simm12__x_0__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__xpr_general__simm12__x_0_alias__
    UINT64_C(20483),	// i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__
    UINT64_C(8195),	// i_itype_loads__opc_lw__x_0__simm12__x_0__
    UINT64_C(8195),	// i_itype_loads__opc_lw__x_0__simm12__x_0_alias__
    UINT64_C(8195),	// i_itype_loads__opc_lw__x_0__simm12__xpr_general__
    UINT64_C(8195),	// i_itype_loads__opc_lw__x_0_alias__simm12__x_0__
    UINT64_C(8195),	// i_itype_loads__opc_lw__x_0_alias__simm12__x_0_alias__
    UINT64_C(8195),	// i_itype_loads__opc_lw__x_0_alias__simm12__xpr_general__
    UINT64_C(8195),	// i_itype_loads__opc_lw__xpr_general__simm12__x_0__
    UINT64_C(8195),	// i_itype_loads__opc_lw__xpr_general__simm12__x_0_alias__
    UINT64_C(8195),	// i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__
    UINT64_C(111),	// i_j_alias__relative_addr20__
    UINT64_C(0),	// i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_
    UINT64_C(0),	// i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC
    UINT64_C(103),	// i_jr_alias__x_0__
    UINT64_C(103),	// i_jr_alias__x_0_alias__
    UINT64_C(103),	// i_jr_alias__xpr_general__
    UINT64_C(111),	// i_jtype_jlink__opc_jal__x_0__relative_addr20__
    UINT64_C(0),	// i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_
    UINT64_C(0),	// i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC
    UINT64_C(111),	// i_jtype_jlink__opc_jal__x_0_alias__relative_addr20__
    UINT64_C(111),	// i_jtype_jlink__opc_jal__xpr_general__relative_addr20__
    UINT64_C(19),	// i_li_alias__x_0__simm12__
    UINT64_C(19),	// i_li_alias__x_0_alias__simm12__
    UINT64_C(19),	// i_li_alias__xpr_general__simm12__
    UINT64_C(19),	// i_mv_alias__x_0__x_0__
    UINT64_C(19),	// i_mv_alias__x_0__x_0_alias__
    UINT64_C(19),	// i_mv_alias__x_0__xpr_general__
    UINT64_C(19),	// i_mv_alias__x_0_alias__x_0__
    UINT64_C(19),	// i_mv_alias__x_0_alias__x_0_alias__
    UINT64_C(19),	// i_mv_alias__x_0_alias__xpr_general__
    UINT64_C(19),	// i_mv_alias__xpr_general__x_0__
    UINT64_C(19),	// i_mv_alias__xpr_general__x_0_alias__
    UINT64_C(19),	// i_mv_alias__xpr_general__xpr_general__
    UINT64_C(1073741875),	// i_neg_alias__x_0__x_0__
    UINT64_C(1073741875),	// i_neg_alias__x_0__x_0_alias__
    UINT64_C(1073741875),	// i_neg_alias__x_0__xpr_general__
    UINT64_C(1073741875),	// i_neg_alias__x_0_alias__x_0__
    UINT64_C(1073741875),	// i_neg_alias__x_0_alias__x_0_alias__
    UINT64_C(1073741875),	// i_neg_alias__x_0_alias__xpr_general__
    UINT64_C(1073741875),	// i_neg_alias__xpr_general__x_0__
    UINT64_C(1073741875),	// i_neg_alias__xpr_general__x_0_alias__
    UINT64_C(1073741875),	// i_neg_alias__xpr_general__xpr_general__
    UINT64_C(19),	// i_nop_alias__
    UINT64_C(4293935123),	// i_not_alias__x_0__x_0__
    UINT64_C(4293935123),	// i_not_alias__x_0__x_0_alias__
    UINT64_C(4293935123),	// i_not_alias__x_0__xpr_general__
    UINT64_C(4293935123),	// i_not_alias__x_0_alias__x_0__
    UINT64_C(4293935123),	// i_not_alias__x_0_alias__x_0_alias__
    UINT64_C(4293935123),	// i_not_alias__x_0_alias__xpr_general__
    UINT64_C(4293935123),	// i_not_alias__xpr_general__x_0__
    UINT64_C(4293935123),	// i_not_alias__xpr_general__x_0_alias__
    UINT64_C(4293935123),	// i_not_alias__xpr_general__xpr_general__
    UINT64_C(32871),	// i_ret_alias__
    UINT64_C(0),	// i_ret_alias__TAILCALL_CLONE_
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__x_0__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__x_0__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__x_0__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__x_0_alias__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__x_0_alias__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__x_0_alias__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__xpr_general__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__xpr_general__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__x_0__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__x_0__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__x_0__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__x_0_alias__xpr_general__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__x_0__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__x_0__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__x_0_alias__xpr_general__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__xpr_general__x_0_alias__
    UINT64_C(51),	// i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__x_0__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__x_0__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__x_0__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__x_0_alias__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__x_0_alias__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__x_0_alias__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__xpr_general__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__xpr_general__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__x_0__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__x_0__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__x_0__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__x_0_alias__xpr_general__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__x_0__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__x_0__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__x_0_alias__xpr_general__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__xpr_general__x_0_alias__
    UINT64_C(28723),	// i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__x_0__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__x_0__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__x_0__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__x_0_alias__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__x_0_alias__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__x_0_alias__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__xpr_general__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__xpr_general__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__x_0__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__x_0__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__x_0__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__x_0_alias__xpr_general__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__x_0__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__x_0__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__x_0_alias__xpr_general__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__xpr_general__x_0_alias__
    UINT64_C(24627),	// i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__x_0__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__x_0__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__x_0__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__x_0_alias__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__x_0_alias__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__x_0_alias__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__xpr_general__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__xpr_general__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__x_0__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__x_0__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__x_0__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__x_0_alias__xpr_general__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__x_0__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__x_0__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__x_0_alias__xpr_general__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0_alias__
    UINT64_C(4147),	// i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__x_0__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__x_0__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__x_0__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__x_0_alias__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__xpr_general__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__x_0__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__x_0__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__x_0__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__x_0_alias__xpr_general__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__x_0__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__x_0__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__x_0__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__x_0__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__x_0_alias__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__xpr_general__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__x_0__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__x_0_alias__xpr_general__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__x_0__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__x_0_alias__xpr_general__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0_alias__
    UINT64_C(12339),	// i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__x_0__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__x_0__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__x_0__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__x_0_alias__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__x_0_alias__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__x_0_alias__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__xpr_general__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__xpr_general__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__x_0__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__x_0__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__x_0__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__x_0_alias__xpr_general__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__x_0__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__x_0__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__x_0_alias__xpr_general__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0_alias__
    UINT64_C(1073762355),	// i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__x_0__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__x_0__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__x_0__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__x_0_alias__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__x_0_alias__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__x_0_alias__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__xpr_general__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__xpr_general__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__x_0__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__x_0__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__x_0__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__x_0_alias__xpr_general__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__x_0__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__x_0__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__x_0_alias__xpr_general__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0_alias__
    UINT64_C(20531),	// i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__x_0__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__x_0__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__x_0__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__x_0_alias__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__x_0_alias__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__x_0_alias__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__xpr_general__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__xpr_general__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__x_0__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__x_0__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__x_0__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__x_0_alias__xpr_general__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__x_0__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__x_0__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__x_0_alias__xpr_general__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0_alias__
    UINT64_C(1073741875),	// i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__x_0__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__x_0__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__x_0__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__x_0_alias__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__x_0_alias__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__x_0_alias__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__xpr_general__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__xpr_general__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__x_0__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__x_0__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__x_0__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__x_0_alias__xpr_general__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__x_0__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__x_0__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__x_0_alias__xpr_general__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0_alias__
    UINT64_C(16435),	// i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__x_0__x_0__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__x_0__x_0_alias__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__x_0_alias__x_0__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__x_0_alias__x_0_alias__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__x_0_alias__xpr_general__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__xpr_general__x_0_alias__uimm5__
    UINT64_C(4115),	// i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__x_0__x_0__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__x_0__x_0_alias__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__x_0_alias__x_0__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__x_0_alias__x_0_alias__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__x_0_alias__xpr_general__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__xpr_general__x_0_alias__uimm5__
    UINT64_C(1073762323),	// i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__x_0__x_0__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__x_0__x_0_alias__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__x_0_alias__x_0__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__x_0_alias__x_0_alias__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__x_0_alias__xpr_general__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__xpr_general__x_0_alias__uimm5__
    UINT64_C(20499),	// i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__
    UINT64_C(1060883),	// i_seqz_alias__x_0__x_0__
    UINT64_C(1060883),	// i_seqz_alias__x_0__x_0_alias__
    UINT64_C(1060883),	// i_seqz_alias__x_0__xpr_general__
    UINT64_C(1060883),	// i_seqz_alias__x_0_alias__x_0__
    UINT64_C(1060883),	// i_seqz_alias__x_0_alias__x_0_alias__
    UINT64_C(1060883),	// i_seqz_alias__x_0_alias__xpr_general__
    UINT64_C(1060883),	// i_seqz_alias__xpr_general__x_0__
    UINT64_C(1060883),	// i_seqz_alias__xpr_general__x_0_alias__
    UINT64_C(1060883),	// i_seqz_alias__xpr_general__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__x_0__x_0__x_0__
    UINT64_C(8243),	// i_sgt_alias__x_0__x_0__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__x_0__x_0__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__x_0__x_0_alias__x_0__
    UINT64_C(8243),	// i_sgt_alias__x_0__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__x_0__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__x_0__xpr_general__x_0__
    UINT64_C(8243),	// i_sgt_alias__x_0__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__x_0__xpr_general__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__x_0__x_0__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__x_0__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__x_0__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__x_0_alias__x_0__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__xpr_general__x_0__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__x_0_alias__xpr_general__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__x_0__x_0__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__x_0__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__x_0__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__x_0_alias__x_0__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__xpr_general__x_0__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_sgt_alias__xpr_general__xpr_general__xpr_general__
    UINT64_C(8243),	// i_sgtz_alias__x_0__x_0__
    UINT64_C(8243),	// i_sgtz_alias__x_0__x_0_alias__
    UINT64_C(8243),	// i_sgtz_alias__x_0__xpr_general__
    UINT64_C(8243),	// i_sgtz_alias__x_0_alias__x_0__
    UINT64_C(8243),	// i_sgtz_alias__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_sgtz_alias__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_sgtz_alias__xpr_general__x_0__
    UINT64_C(8243),	// i_sgtz_alias__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_sgtz_alias__xpr_general__xpr_general__
    UINT64_C(8243),	// i_sltz_alias__x_0__x_0__
    UINT64_C(8243),	// i_sltz_alias__x_0__x_0_alias__
    UINT64_C(8243),	// i_sltz_alias__x_0__xpr_general__
    UINT64_C(8243),	// i_sltz_alias__x_0_alias__x_0__
    UINT64_C(8243),	// i_sltz_alias__x_0_alias__x_0_alias__
    UINT64_C(8243),	// i_sltz_alias__x_0_alias__xpr_general__
    UINT64_C(8243),	// i_sltz_alias__xpr_general__x_0__
    UINT64_C(8243),	// i_sltz_alias__xpr_general__x_0_alias__
    UINT64_C(8243),	// i_sltz_alias__xpr_general__xpr_general__
    UINT64_C(12339),	// i_snez_alias__x_0__x_0__
    UINT64_C(12339),	// i_snez_alias__x_0__x_0_alias__
    UINT64_C(12339),	// i_snez_alias__x_0__xpr_general__
    UINT64_C(12339),	// i_snez_alias__x_0_alias__x_0__
    UINT64_C(12339),	// i_snez_alias__x_0_alias__x_0_alias__
    UINT64_C(12339),	// i_snez_alias__x_0_alias__xpr_general__
    UINT64_C(12339),	// i_snez_alias__xpr_general__x_0__
    UINT64_C(12339),	// i_snez_alias__xpr_general__x_0_alias__
    UINT64_C(12339),	// i_snez_alias__xpr_general__xpr_general__
    UINT64_C(35),	// i_stype_store__opc_sb__x_0__simm12__x_0__
    UINT64_C(35),	// i_stype_store__opc_sb__x_0__simm12__x_0_alias__
    UINT64_C(35),	// i_stype_store__opc_sb__x_0__simm12__xpr_general__
    UINT64_C(35),	// i_stype_store__opc_sb__x_0_alias__simm12__x_0__
    UINT64_C(35),	// i_stype_store__opc_sb__x_0_alias__simm12__x_0_alias__
    UINT64_C(35),	// i_stype_store__opc_sb__x_0_alias__simm12__xpr_general__
    UINT64_C(35),	// i_stype_store__opc_sb__xpr_general__simm12__x_0__
    UINT64_C(35),	// i_stype_store__opc_sb__xpr_general__simm12__x_0_alias__
    UINT64_C(35),	// i_stype_store__opc_sb__xpr_general__simm12__xpr_general__
    UINT64_C(4131),	// i_stype_store__opc_sh__x_0__simm12__x_0__
    UINT64_C(4131),	// i_stype_store__opc_sh__x_0__simm12__x_0_alias__
    UINT64_C(4131),	// i_stype_store__opc_sh__x_0__simm12__xpr_general__
    UINT64_C(4131),	// i_stype_store__opc_sh__x_0_alias__simm12__x_0__
    UINT64_C(4131),	// i_stype_store__opc_sh__x_0_alias__simm12__x_0_alias__
    UINT64_C(4131),	// i_stype_store__opc_sh__x_0_alias__simm12__xpr_general__
    UINT64_C(4131),	// i_stype_store__opc_sh__xpr_general__simm12__x_0__
    UINT64_C(4131),	// i_stype_store__opc_sh__xpr_general__simm12__x_0_alias__
    UINT64_C(4131),	// i_stype_store__opc_sh__xpr_general__simm12__xpr_general__
    UINT64_C(8227),	// i_stype_store__opc_sw__x_0__simm12__x_0__
    UINT64_C(8227),	// i_stype_store__opc_sw__x_0__simm12__x_0_alias__
    UINT64_C(8227),	// i_stype_store__opc_sw__x_0__simm12__xpr_general__
    UINT64_C(8227),	// i_stype_store__opc_sw__x_0_alias__simm12__x_0__
    UINT64_C(8227),	// i_stype_store__opc_sw__x_0_alias__simm12__x_0_alias__
    UINT64_C(8227),	// i_stype_store__opc_sw__x_0_alias__simm12__xpr_general__
    UINT64_C(8227),	// i_stype_store__opc_sw__xpr_general__simm12__x_0__
    UINT64_C(8227),	// i_stype_store__opc_sw__xpr_general__simm12__x_0_alias__
    UINT64_C(8227),	// i_stype_store__opc_sw__xpr_general__simm12__xpr_general__
    UINT64_C(23),	// i_utype_ops__opc_auipc__x_0__uimm20__
    UINT64_C(23),	// i_utype_ops__opc_auipc__x_0_alias__uimm20__
    UINT64_C(23),	// i_utype_ops__opc_auipc__xpr_general__uimm20__
    UINT64_C(55),	// i_utype_ops__opc_lui__x_0__uimm20__
    UINT64_C(55),	// i_utype_ops__opc_lui__x_0_alias__uimm20__
    UINT64_C(55),	// i_utype_ops__opc_lui__xpr_general__uimm20__
    UINT64_C(0)
  };
  const unsigned opcode = MI.getOpcode();
  uint64_t Value = InstBits[opcode];
  uint64_t op = 0;
  (void)op;  // suppress warning
  switch (opcode) {
    case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_:
    case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA:
    case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC:
    case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_:
    case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA:
    case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC:
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_:
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA:
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC:
    case Codasip::i_call_reg_alias__simm12__xpr_general__immspec_1_:
    case Codasip::i_halt__opc_halt__:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_BA:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ES:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_MC:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_TAILCALL_CLONE_:
    case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_:
    case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA:
    case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC:
    case Codasip::i_jr_alias__x_0__:
    case Codasip::i_jr_alias__x_0_alias__:
    case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_:
    case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA:
    case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC:
    case Codasip::i_mv_alias__x_0__x_0__:
    case Codasip::i_mv_alias__x_0__x_0_alias__:
    case Codasip::i_mv_alias__x_0_alias__x_0__:
    case Codasip::i_mv_alias__x_0_alias__x_0_alias__:
    case Codasip::i_neg_alias__x_0__x_0__:
    case Codasip::i_neg_alias__x_0__x_0_alias__:
    case Codasip::i_neg_alias__x_0_alias__x_0__:
    case Codasip::i_neg_alias__x_0_alias__x_0_alias__:
    case Codasip::i_nop_alias__:
    case Codasip::i_not_alias__x_0__x_0__:
    case Codasip::i_not_alias__x_0__x_0_alias__:
    case Codasip::i_not_alias__x_0_alias__x_0__:
    case Codasip::i_not_alias__x_0_alias__x_0_alias__:
    case Codasip::i_ret_alias__:
    case Codasip::i_ret_alias__TAILCALL_CLONE_:
    case Codasip::i_rtype_alu__opc_add__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_add__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_add__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_add__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_and__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_and__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_or__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_or__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sll__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sll__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_slt__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_slt__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sra__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sra__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_srl__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_srl__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sub__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sub__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__x_0__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_xor__x_0__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__x_0__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_xor__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_seqz_alias__x_0__x_0__:
    case Codasip::i_seqz_alias__x_0__x_0_alias__:
    case Codasip::i_seqz_alias__x_0_alias__x_0__:
    case Codasip::i_seqz_alias__x_0_alias__x_0_alias__:
    case Codasip::i_sgt_alias__x_0__x_0__x_0__:
    case Codasip::i_sgt_alias__x_0__x_0__x_0_alias__:
    case Codasip::i_sgt_alias__x_0__x_0_alias__x_0__:
    case Codasip::i_sgt_alias__x_0__x_0_alias__x_0_alias__:
    case Codasip::i_sgt_alias__x_0_alias__x_0__x_0__:
    case Codasip::i_sgt_alias__x_0_alias__x_0__x_0_alias__:
    case Codasip::i_sgt_alias__x_0_alias__x_0_alias__x_0__:
    case Codasip::i_sgt_alias__x_0_alias__x_0_alias__x_0_alias__:
    case Codasip::i_sgtz_alias__x_0__x_0__:
    case Codasip::i_sgtz_alias__x_0__x_0_alias__:
    case Codasip::i_sgtz_alias__x_0_alias__x_0__:
    case Codasip::i_sgtz_alias__x_0_alias__x_0_alias__:
    case Codasip::i_sltz_alias__x_0__x_0__:
    case Codasip::i_sltz_alias__x_0__x_0_alias__:
    case Codasip::i_sltz_alias__x_0_alias__x_0__:
    case Codasip::i_sltz_alias__x_0_alias__x_0_alias__:
    case Codasip::i_snez_alias__x_0__x_0__:
    case Codasip::i_snez_alias__x_0__x_0_alias__:
    case Codasip::i_snez_alias__x_0_alias__x_0__:
    case Codasip::i_snez_alias__x_0_alias__x_0_alias__: {
      break;
    }
    case Codasip::i_rtype_shift__opc_slli__x_0__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_slli__x_0__x_0_alias__uimm5__:
    case Codasip::i_rtype_shift__opc_slli__x_0_alias__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_slli__x_0_alias__x_0_alias__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__x_0__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__x_0__x_0_alias__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__x_0_alias__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__x_0_alias__x_0_alias__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__x_0__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__x_0__x_0_alias__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__x_0_alias__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__x_0_alias__x_0_alias__uimm5__: {
      // op: op0
      op = encodeMI5valueIH1_13default_start7_5uimm53imm1_5uimm5(MI, 0, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_stype_store__opc_sb__x_0__simm12__x_0__:
    case Codasip::i_stype_store__opc_sb__x_0__simm12__x_0_alias__:
    case Codasip::i_stype_store__opc_sb__x_0_alias__simm12__x_0__:
    case Codasip::i_stype_store__opc_sb__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_stype_store__opc_sh__x_0__simm12__x_0__:
    case Codasip::i_stype_store__opc_sh__x_0__simm12__x_0_alias__:
    case Codasip::i_stype_store__opc_sh__x_0_alias__simm12__x_0__:
    case Codasip::i_stype_store__opc_sh__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_stype_store__opc_sw__x_0__simm12__x_0__:
    case Codasip::i_stype_store__opc_sw__x_0__simm12__x_0_alias__:
    case Codasip::i_stype_store__opc_sw__x_0_alias__simm12__x_0__:
    case Codasip::i_stype_store__opc_sw__x_0_alias__simm12__x_0_alias__: {
      // op: op0
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_stype_store__opc_sb__x_0_alias__simm12__xpr_general__:
    case Codasip::i_stype_store__opc_sh__x_0_alias__simm12__xpr_general__:
    case Codasip::i_stype_store__opc_sw__x_0_alias__simm12__xpr_general__: {
      // op: op0
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_call_reg_alias__simm12__x_0__:
    case Codasip::i_call_reg_alias__simm12__x_0_alias__:
    case Codasip::i_itype_alu__opc_addi__x_0__x_0__simm12__:
    case Codasip::i_itype_alu__opc_addi__x_0__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_addi__x_0_alias__x_0__simm12__:
    case Codasip::i_itype_alu__opc_addi__x_0_alias__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_andi__x_0__x_0__simm12__:
    case Codasip::i_itype_alu__opc_andi__x_0__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_andi__x_0_alias__x_0__simm12__:
    case Codasip::i_itype_alu__opc_andi__x_0_alias__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_ori__x_0__x_0__simm12__:
    case Codasip::i_itype_alu__opc_ori__x_0__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_ori__x_0_alias__x_0__simm12__:
    case Codasip::i_itype_alu__opc_ori__x_0_alias__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_slti__x_0__x_0__simm12__:
    case Codasip::i_itype_alu__opc_slti__x_0__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_slti__x_0_alias__x_0__simm12__:
    case Codasip::i_itype_alu__opc_slti__x_0_alias__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__x_0__x_0__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__x_0__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__x_0_alias__x_0__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__x_0_alias__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_xori__x_0__x_0__simm12__:
    case Codasip::i_itype_alu__opc_xori__x_0__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_xori__x_0_alias__x_0__simm12__:
    case Codasip::i_itype_alu__opc_xori__x_0_alias__x_0_alias__simm12__:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0_alias__:
    case Codasip::i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0__:
    case Codasip::i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lb__x_0__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lb__x_0__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lb__x_0_alias__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lb__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lbu__x_0__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lbu__x_0__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lbu__x_0_alias__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lbu__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lh__x_0__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lh__x_0__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lh__x_0_alias__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lh__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lhu__x_0__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lhu__x_0__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lhu__x_0_alias__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lhu__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lw__x_0__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lw__x_0__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lw__x_0_alias__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lw__x_0_alias__simm12__x_0_alias__:
    case Codasip::i_li_alias__x_0__simm12__:
    case Codasip::i_li_alias__x_0_alias__simm12__: {
      // op: op0
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 0, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_itype_jlreg__opc_jalr__x_0_alias__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lb__x_0__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lb__x_0_alias__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lbu__x_0__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lbu__x_0_alias__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lh__x_0__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lh__x_0_alias__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lhu__x_0__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lhu__x_0_alias__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lw__x_0__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lw__x_0_alias__simm12__xpr_general__: {
      // op: op0
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 0, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_utype_ops__opc_auipc__x_0__uimm20__:
    case Codasip::i_utype_ops__opc_auipc__x_0_alias__uimm20__:
    case Codasip::i_utype_ops__opc_lui__x_0__uimm20__:
    case Codasip::i_utype_ops__opc_lui__x_0_alias__uimm20__: {
      // op: op0
      op = encodeMI5valueIH1_13default_start8_6uimm203imm1_6uimm20(MI, 0, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_beq__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_beq__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_beq__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__x_0__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__x_0__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__x_0_alias__x_0_alias__relative_addr12__: {
      // op: op0
      op = encodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_beqz_alias__x_0__relative_addr12__:
    case Codasip::i_beqz_alias__x_0_alias__relative_addr12__:
    case Codasip::i_bgez_alias__x_0__relative_addr12__:
    case Codasip::i_bgez_alias__x_0_alias__relative_addr12__:
    case Codasip::i_bgt_alias__x_0__x_0__relative_addr12__:
    case Codasip::i_bgt_alias__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_bgt_alias__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_bgt_alias__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_bgtu_alias__x_0__x_0__relative_addr12__:
    case Codasip::i_bgtu_alias__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_bgtu_alias__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_bgtu_alias__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_bgtz_alias__x_0__relative_addr12__:
    case Codasip::i_bgtz_alias__x_0_alias__relative_addr12__:
    case Codasip::i_ble_alias__x_0__x_0__relative_addr12__:
    case Codasip::i_ble_alias__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_ble_alias__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_ble_alias__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_bleu_alias__x_0__x_0__relative_addr12__:
    case Codasip::i_bleu_alias__x_0__x_0_alias__relative_addr12__:
    case Codasip::i_bleu_alias__x_0_alias__x_0__relative_addr12__:
    case Codasip::i_bleu_alias__x_0_alias__x_0_alias__relative_addr12__:
    case Codasip::i_blez_alias__x_0__relative_addr12__:
    case Codasip::i_blez_alias__x_0_alias__relative_addr12__:
    case Codasip::i_bltz_alias__x_0__relative_addr12__:
    case Codasip::i_bltz_alias__x_0_alias__relative_addr12__:
    case Codasip::i_bnez_alias__x_0__relative_addr12__:
    case Codasip::i_bnez_alias__x_0_alias__relative_addr12__: {
      // op: op0
      op = encodeMI6addr12IH1_13default_start18_15relative_addr124simm1_15relative_addr12(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_call_alias__relative_addr20__:
    case Codasip::i_j_alias__relative_addr20__:
    case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__:
    case Codasip::i_jtype_jlink__opc_jal__x_0_alias__relative_addr20__: {
      // op: op0
      op = encodeMI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(524288)) << 12;
      Value |= (op & UINT64_C(1023)) << 21;
      Value |= (op & UINT64_C(1024)) << 10;
      Value |= (op & UINT64_C(522240)) << 1;
      break;
    }
    case Codasip::i_jr_alias__xpr_general__:
    case Codasip::i_mv_alias__x_0__xpr_general__:
    case Codasip::i_mv_alias__x_0_alias__xpr_general__:
    case Codasip::i_not_alias__x_0__xpr_general__:
    case Codasip::i_not_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_add__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_and__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_or__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sll__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_slt__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sra__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_srl__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sub__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__x_0__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_xor__x_0__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_seqz_alias__x_0__xpr_general__:
    case Codasip::i_seqz_alias__x_0_alias__xpr_general__:
    case Codasip::i_sgt_alias__x_0__x_0__xpr_general__:
    case Codasip::i_sgt_alias__x_0__x_0_alias__xpr_general__:
    case Codasip::i_sgt_alias__x_0_alias__x_0__xpr_general__:
    case Codasip::i_sgt_alias__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_sltz_alias__x_0__xpr_general__:
    case Codasip::i_sltz_alias__x_0_alias__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__:
    case Codasip::i_rtype_shift__opc_slli__x_0_alias__xpr_general__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__x_0_alias__xpr_general__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__x_0_alias__xpr_general__uimm5__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI5valueIH1_13default_start7_5uimm53imm1_5uimm5(MI, 1, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_itype_alu__opc_addi__x_0__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_addi__x_0_alias__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_andi__x_0__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_andi__x_0_alias__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_ori__x_0__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_ori__x_0_alias__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_slti__x_0__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_slti__x_0_alias__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__x_0_alias__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_xori__x_0__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_xori__x_0_alias__xpr_general__simm12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_beq__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__xpr_general__x_0_alias__relative_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_beqz_alias__xpr_general__relative_addr12__:
    case Codasip::i_bgez_alias__xpr_general__relative_addr12__:
    case Codasip::i_bgt_alias__x_0__xpr_general__relative_addr12__:
    case Codasip::i_bgt_alias__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_bgtu_alias__x_0__xpr_general__relative_addr12__:
    case Codasip::i_bgtu_alias__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_ble_alias__x_0__xpr_general__relative_addr12__:
    case Codasip::i_ble_alias__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_bleu_alias__x_0__xpr_general__relative_addr12__:
    case Codasip::i_bleu_alias__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_bltz_alias__xpr_general__relative_addr12__:
    case Codasip::i_bnez_alias__xpr_general__relative_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI6addr12IH1_13default_start18_15relative_addr124simm1_15relative_addr12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__xpr_general__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op2
      op = encodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_neg_alias__x_0__xpr_general__:
    case Codasip::i_neg_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__x_0__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__x_0__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0_alias__xpr_general__:
    case Codasip::i_sgt_alias__x_0__xpr_general__x_0__:
    case Codasip::i_sgt_alias__x_0__xpr_general__x_0_alias__:
    case Codasip::i_sgt_alias__x_0_alias__xpr_general__x_0__:
    case Codasip::i_sgt_alias__x_0_alias__xpr_general__x_0_alias__:
    case Codasip::i_sgtz_alias__x_0__xpr_general__:
    case Codasip::i_sgtz_alias__x_0_alias__xpr_general__:
    case Codasip::i_snez_alias__x_0__xpr_general__:
    case Codasip::i_snez_alias__x_0_alias__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_stype_store__opc_sb__xpr_general__simm12__x_0__:
    case Codasip::i_stype_store__opc_sb__xpr_general__simm12__x_0_alias__:
    case Codasip::i_stype_store__opc_sh__xpr_general__simm12__x_0__:
    case Codasip::i_stype_store__opc_sh__xpr_general__simm12__x_0_alias__:
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__x_0__:
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__x_0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_beq__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bge__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bgeu__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_blt__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bltu__x_0_alias__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__:
    case Codasip::i_btype_branches__opc_bne__x_0_alias__xpr_general__relative_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_bgt_alias__xpr_general__x_0__relative_addr12__:
    case Codasip::i_bgt_alias__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_bgtu_alias__xpr_general__x_0__relative_addr12__:
    case Codasip::i_bgtu_alias__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_bgtz_alias__xpr_general__relative_addr12__:
    case Codasip::i_ble_alias__xpr_general__x_0__relative_addr12__:
    case Codasip::i_ble_alias__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_bleu_alias__xpr_general__x_0__relative_addr12__:
    case Codasip::i_bleu_alias__xpr_general__x_0_alias__relative_addr12__:
    case Codasip::i_blez_alias__xpr_general__relative_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI6addr12IH1_13default_start18_15relative_addr124simm1_15relative_addr12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_sgt_alias__x_0__xpr_general__xpr_general__:
    case Codasip::i_sgt_alias__x_0_alias__xpr_general__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_bgt_alias__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_bgtu_alias__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_ble_alias__xpr_general__xpr_general__relative_addr12__:
    case Codasip::i_bleu_alias__xpr_general__xpr_general__relative_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI6addr12IH1_13default_start18_15relative_addr124simm1_15relative_addr12(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_stype_store__opc_sb__xpr_general__simm12__xpr_general__:
    case Codasip::i_stype_store__opc_sh__xpr_general__simm12__xpr_general__:
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op2
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_mv_alias__xpr_general__x_0__:
    case Codasip::i_mv_alias__xpr_general__x_0_alias__:
    case Codasip::i_neg_alias__xpr_general__x_0__:
    case Codasip::i_neg_alias__xpr_general__x_0_alias__:
    case Codasip::i_not_alias__xpr_general__x_0__:
    case Codasip::i_not_alias__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__x_0__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_seqz_alias__xpr_general__x_0__:
    case Codasip::i_seqz_alias__xpr_general__x_0_alias__:
    case Codasip::i_sgt_alias__xpr_general__x_0__x_0__:
    case Codasip::i_sgt_alias__xpr_general__x_0__x_0_alias__:
    case Codasip::i_sgt_alias__xpr_general__x_0_alias__x_0__:
    case Codasip::i_sgt_alias__xpr_general__x_0_alias__x_0_alias__:
    case Codasip::i_sgtz_alias__xpr_general__x_0__:
    case Codasip::i_sgtz_alias__xpr_general__x_0_alias__:
    case Codasip::i_sltz_alias__xpr_general__x_0__:
    case Codasip::i_sltz_alias__xpr_general__x_0_alias__:
    case Codasip::i_snez_alias__xpr_general__x_0__:
    case Codasip::i_snez_alias__xpr_general__x_0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      break;
    }
    case Codasip::i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_slli__xpr_general__x_0_alias__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__xpr_general__x_0_alias__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__xpr_general__x_0_alias__uimm5__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI5valueIH1_13default_start7_5uimm53imm1_5uimm5(MI, 1, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_itype_alu__opc_addi__xpr_general__x_0__simm12__:
    case Codasip::i_itype_alu__opc_addi__xpr_general__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_andi__xpr_general__x_0__simm12__:
    case Codasip::i_itype_alu__opc_andi__xpr_general__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_ori__xpr_general__x_0__simm12__:
    case Codasip::i_itype_alu__opc_ori__xpr_general__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__:
    case Codasip::i_itype_alu__opc_slti__xpr_general__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0_alias__simm12__:
    case Codasip::i_itype_alu__opc_xori__xpr_general__x_0__simm12__:
    case Codasip::i_itype_alu__opc_xori__xpr_general__x_0_alias__simm12__:
    case Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__:
    case Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0_alias__:
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__x_0__:
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__x_0_alias__:
    case Codasip::i_li_alias__xpr_general__simm12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_utype_ops__opc_auipc__xpr_general__uimm20__:
    case Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI5valueIH1_13default_start8_6uimm203imm1_6uimm20(MI, 1, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_jtype_jlink__opc_jal__xpr_general__relative_addr20__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(524288)) << 12;
      Value |= (op & UINT64_C(1023)) << 21;
      Value |= (op & UINT64_C(1024)) << 10;
      Value |= (op & UINT64_C(522240)) << 1;
      break;
    }
    case Codasip::i_mv_alias__xpr_general__xpr_general__:
    case Codasip::i_not_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_seqz_alias__xpr_general__xpr_general__:
    case Codasip::i_sgt_alias__xpr_general__x_0__xpr_general__:
    case Codasip::i_sgt_alias__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_sltz_alias__xpr_general__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__:
    case Codasip::i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__:
    case Codasip::i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI5valueIH1_13default_start7_5uimm53imm1_5uimm5(MI, 2, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:
    case Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_neg_alias__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sll__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sra__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_srl__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0_alias__xpr_general__:
    case Codasip::i_sgt_alias__xpr_general__xpr_general__x_0__:
    case Codasip::i_sgt_alias__xpr_general__xpr_general__x_0_alias__:
    case Codasip::i_sgtz_alias__xpr_general__xpr_general__:
    case Codasip::i_snez_alias__xpr_general__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_sgt_alias__xpr_general__xpr_general__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__:
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__:
    case Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__:
    case Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__:
    case Codasip::i_stype_store__opc_sw__x_0__simm12__xpr_general__: {
      // op: op1
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_call_reg_alias__simm12__xpr_general__:
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__: {
      // op: op1
      op = encodeMI5valueIH1_13default_start8_6simm124simm1_6simm12(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
  default:
    std::string msg;
    raw_string_ostream Msg(msg);
    Msg << "Not supported instr: " << MI;
    report_fatal_error(Msg.str());
  }
  return Value;
}

#ifdef ENABLE_INSTR_PREDICATE_VERIFIER
#undef ENABLE_INSTR_PREDICATE_VERIFIER
#include <sstream>

// Bits for subtarget features that participate in instruction matching.
enum SubtargetFeatureBits : uint8_t {
};

#ifndef NDEBUG
static const char *SubtargetFeatureNames[] = {
  nullptr
};

#endif // NDEBUG
FeatureBitset CodasipMCCodeEmitter::
computeAvailableFeatures(const FeatureBitset& FB) const {
  FeatureBitset Features;
  return Features;
}

#ifndef NDEBUG
// Feature bitsets.
enum : uint8_t {
  CEFBS_None,
};

const static FeatureBitset FeatureBitsets[] {
  {}, // CEFBS_None
};
#endif // NDEBUG

void CodasipMCCodeEmitter::verifyInstructionPredicates(
    const MCInst &Inst, const FeatureBitset &AvailableFeatures) const {
#ifndef NDEBUG
  static uint8_t RequiredFeaturesRefs[] = {
    CEFBS_None, // PHI = 0
    CEFBS_None, // INLINEASM = 1
    CEFBS_None, // INLINEASM_BR = 2
    CEFBS_None, // CFI_INSTRUCTION = 3
    CEFBS_None, // EH_LABEL = 4
    CEFBS_None, // GC_LABEL = 5
    CEFBS_None, // ANNOTATION_LABEL = 6
    CEFBS_None, // KILL = 7
    CEFBS_None, // EXTRACT_SUBREG = 8
    CEFBS_None, // INSERT_SUBREG = 9
    CEFBS_None, // IMPLICIT_DEF = 10
    CEFBS_None, // SUBREG_TO_REG = 11
    CEFBS_None, // COPY_TO_REGCLASS = 12
    CEFBS_None, // DBG_VALUE = 13
    CEFBS_None, // DBG_LABEL = 14
    CEFBS_None, // REG_SEQUENCE = 15
    CEFBS_None, // COPY = 16
    CEFBS_None, // BUNDLE = 17
    CEFBS_None, // LIFETIME_START = 18
    CEFBS_None, // LIFETIME_END = 19
    CEFBS_None, // STACKMAP = 20
    CEFBS_None, // FENTRY_CALL = 21
    CEFBS_None, // PATCHPOINT = 22
    CEFBS_None, // LOAD_STACK_GUARD = 23
    CEFBS_None, // STATEPOINT = 24
    CEFBS_None, // LOCAL_ESCAPE = 25
    CEFBS_None, // FAULTING_OP = 26
    CEFBS_None, // PATCHABLE_OP = 27
    CEFBS_None, // PATCHABLE_FUNCTION_ENTER = 28
    CEFBS_None, // PATCHABLE_RET = 29
    CEFBS_None, // PATCHABLE_FUNCTION_EXIT = 30
    CEFBS_None, // PATCHABLE_TAIL_CALL = 31
    CEFBS_None, // PATCHABLE_EVENT_CALL = 32
    CEFBS_None, // PATCHABLE_TYPED_EVENT_CALL = 33
    CEFBS_None, // ICALL_BRANCH_FUNNEL = 34
    CEFBS_None, // G_ADD = 35
    CEFBS_None, // G_SUB = 36
    CEFBS_None, // G_MUL = 37
    CEFBS_None, // G_SDIV = 38
    CEFBS_None, // G_UDIV = 39
    CEFBS_None, // G_SREM = 40
    CEFBS_None, // G_UREM = 41
    CEFBS_None, // G_AND = 42
    CEFBS_None, // G_OR = 43
    CEFBS_None, // G_XOR = 44
    CEFBS_None, // G_IMPLICIT_DEF = 45
    CEFBS_None, // G_PHI = 46
    CEFBS_None, // G_FRAME_INDEX = 47
    CEFBS_None, // G_GLOBAL_VALUE = 48
    CEFBS_None, // G_EXTRACT = 49
    CEFBS_None, // G_UNMERGE_VALUES = 50
    CEFBS_None, // G_INSERT = 51
    CEFBS_None, // G_MERGE_VALUES = 52
    CEFBS_None, // G_BUILD_VECTOR = 53
    CEFBS_None, // G_BUILD_VECTOR_TRUNC = 54
    CEFBS_None, // G_CONCAT_VECTORS = 55
    CEFBS_None, // G_PTRTOINT = 56
    CEFBS_None, // G_INTTOPTR = 57
    CEFBS_None, // G_BITCAST = 58
    CEFBS_None, // G_INTRINSIC_TRUNC = 59
    CEFBS_None, // G_INTRINSIC_ROUND = 60
    CEFBS_None, // G_LOAD = 61
    CEFBS_None, // G_SEXTLOAD = 62
    CEFBS_None, // G_ZEXTLOAD = 63
    CEFBS_None, // G_STORE = 64
    CEFBS_None, // G_ATOMIC_CMPXCHG_WITH_SUCCESS = 65
    CEFBS_None, // G_ATOMIC_CMPXCHG = 66
    CEFBS_None, // G_ATOMICRMW_XCHG = 67
    CEFBS_None, // G_ATOMICRMW_ADD = 68
    CEFBS_None, // G_ATOMICRMW_SUB = 69
    CEFBS_None, // G_ATOMICRMW_AND = 70
    CEFBS_None, // G_ATOMICRMW_NAND = 71
    CEFBS_None, // G_ATOMICRMW_OR = 72
    CEFBS_None, // G_ATOMICRMW_XOR = 73
    CEFBS_None, // G_ATOMICRMW_MAX = 74
    CEFBS_None, // G_ATOMICRMW_MIN = 75
    CEFBS_None, // G_ATOMICRMW_UMAX = 76
    CEFBS_None, // G_ATOMICRMW_UMIN = 77
    CEFBS_None, // G_FENCE = 78
    CEFBS_None, // G_BRCOND = 79
    CEFBS_None, // G_BRINDIRECT = 80
    CEFBS_None, // G_INTRINSIC = 81
    CEFBS_None, // G_INTRINSIC_W_SIDE_EFFECTS = 82
    CEFBS_None, // G_ANYEXT = 83
    CEFBS_None, // G_TRUNC = 84
    CEFBS_None, // G_CONSTANT = 85
    CEFBS_None, // G_FCONSTANT = 86
    CEFBS_None, // G_VASTART = 87
    CEFBS_None, // G_VAARG = 88
    CEFBS_None, // G_SEXT = 89
    CEFBS_None, // G_ZEXT = 90
    CEFBS_None, // G_SHL = 91
    CEFBS_None, // G_LSHR = 92
    CEFBS_None, // G_ASHR = 93
    CEFBS_None, // G_ICMP = 94
    CEFBS_None, // G_FCMP = 95
    CEFBS_None, // G_SELECT = 96
    CEFBS_None, // G_UADDO = 97
    CEFBS_None, // G_UADDE = 98
    CEFBS_None, // G_USUBO = 99
    CEFBS_None, // G_USUBE = 100
    CEFBS_None, // G_SADDO = 101
    CEFBS_None, // G_SADDE = 102
    CEFBS_None, // G_SSUBO = 103
    CEFBS_None, // G_SSUBE = 104
    CEFBS_None, // G_UMULO = 105
    CEFBS_None, // G_SMULO = 106
    CEFBS_None, // G_UMULH = 107
    CEFBS_None, // G_SMULH = 108
    CEFBS_None, // G_FADD = 109
    CEFBS_None, // G_FSUB = 110
    CEFBS_None, // G_FMUL = 111
    CEFBS_None, // G_FMA = 112
    CEFBS_None, // G_FDIV = 113
    CEFBS_None, // G_FREM = 114
    CEFBS_None, // G_FPOW = 115
    CEFBS_None, // G_FEXP = 116
    CEFBS_None, // G_FEXP2 = 117
    CEFBS_None, // G_FLOG = 118
    CEFBS_None, // G_FLOG2 = 119
    CEFBS_None, // G_FLOG10 = 120
    CEFBS_None, // G_FNEG = 121
    CEFBS_None, // G_FPEXT = 122
    CEFBS_None, // G_FPTRUNC = 123
    CEFBS_None, // G_FPTOSI = 124
    CEFBS_None, // G_FPTOUI = 125
    CEFBS_None, // G_SITOFP = 126
    CEFBS_None, // G_UITOFP = 127
    CEFBS_None, // G_FABS = 128
    CEFBS_None, // G_FCOPYSIGN = 129
    CEFBS_None, // G_FCANONICALIZE = 130
    CEFBS_None, // G_FMINNUM = 131
    CEFBS_None, // G_FMAXNUM = 132
    CEFBS_None, // G_FMINNUM_IEEE = 133
    CEFBS_None, // G_FMAXNUM_IEEE = 134
    CEFBS_None, // G_FMINIMUM = 135
    CEFBS_None, // G_FMAXIMUM = 136
    CEFBS_None, // G_GEP = 137
    CEFBS_None, // G_PTR_MASK = 138
    CEFBS_None, // G_SMIN = 139
    CEFBS_None, // G_SMAX = 140
    CEFBS_None, // G_UMIN = 141
    CEFBS_None, // G_UMAX = 142
    CEFBS_None, // G_BR = 143
    CEFBS_None, // G_BRJT = 144
    CEFBS_None, // G_INSERT_VECTOR_ELT = 145
    CEFBS_None, // G_EXTRACT_VECTOR_ELT = 146
    CEFBS_None, // G_SHUFFLE_VECTOR = 147
    CEFBS_None, // G_CTTZ = 148
    CEFBS_None, // G_CTTZ_ZERO_UNDEF = 149
    CEFBS_None, // G_CTLZ = 150
    CEFBS_None, // G_CTLZ_ZERO_UNDEF = 151
    CEFBS_None, // G_CTPOP = 152
    CEFBS_None, // G_BSWAP = 153
    CEFBS_None, // G_FCEIL = 154
    CEFBS_None, // G_FCOS = 155
    CEFBS_None, // G_FSIN = 156
    CEFBS_None, // G_FSQRT = 157
    CEFBS_None, // G_FFLOOR = 158
    CEFBS_None, // G_FRINT = 159
    CEFBS_None, // G_FNEARBYINT = 160
    CEFBS_None, // G_ADDRSPACE_CAST = 161
    CEFBS_None, // G_BLOCK_ADDR = 162
    CEFBS_None, // G_JUMP_TABLE = 163
    CEFBS_None, // CALLEND = 164
    CEFBS_None, // CALLSTART = 165
    CEFBS_None, // EH_SJLJ_SETUP_DISPATCH = 166
    CEFBS_None, // EH_SjLj_LongJmp = 167
    CEFBS_None, // EH_SjLj_SetJmp = 168
    CEFBS_None, // EH_SjLj_Setup = 169
    CEFBS_None, // e_movi32__ = 170
    CEFBS_None, // e_movi32__BA = 171
    CEFBS_None, // e_movi32__CP = 172
    CEFBS_None, // e_movi32__ES = 173
    CEFBS_None, // e_movi32__GA = 174
    CEFBS_None, // e_movi32__JT = 175
    CEFBS_None, // e_movi32__MC = 176
    CEFBS_None, // hwloop_loop_decrement_reg = 177
    CEFBS_None, // hwloop_set_loop_iterations = 178
    CEFBS_None, // i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ = 179
    CEFBS_None, // i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ = 180
    CEFBS_None, // i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ = 181
    CEFBS_None, // i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ = 182
    CEFBS_None, // i_call_alias__relative_addr20__BA = 183
    CEFBS_None, // i_call_alias__relative_addr20__ES = 184
    CEFBS_None, // i_call_alias__relative_addr20__MC = 185
    CEFBS_None, // i_call_reg_alias__simm12__x_0__BA = 186
    CEFBS_None, // i_call_reg_alias__simm12__x_0__ES = 187
    CEFBS_None, // i_call_reg_alias__simm12__x_0__MC = 188
    CEFBS_None, // i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__6_BIGIMM_EMUL_ = 189
    CEFBS_None, // i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__7_BIGIMM_EMUL_ = 190
    CEFBS_None, // i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__8_BIGIMM_EMUL_ = 191
    CEFBS_None, // i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__0__ = 192
    CEFBS_None, // i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__1__ = 193
    CEFBS_None, // i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__0__ = 194
    CEFBS_None, // i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__1__ = 195
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_ = 196
    CEFBS_None, // i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__immspec_1_ = 197
    CEFBS_None, // i_itype_loads__opc_lb__x_0__simm12__xpr_general__immspec_1_ = 198
    CEFBS_None, // i_itype_loads__opc_lb__xpr_general__simm12__x_0__AEXT_CLONE_ = 199
    CEFBS_None, // i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__AEXT_CLONE_ = 200
    CEFBS_None, // i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_ = 201
    CEFBS_None, // i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_ = 202
    CEFBS_None, // i_itype_loads__opc_lbu__xpr_general__simm12__x_0__AEXT_CLONE_ = 203
    CEFBS_None, // i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__AEXT_CLONE_ = 204
    CEFBS_None, // i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_ = 205
    CEFBS_None, // i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_ = 206
    CEFBS_None, // i_itype_loads__opc_lh__x_0__simm12__xpr_general__immspec_1_ = 207
    CEFBS_None, // i_itype_loads__opc_lh__xpr_general__simm12__x_0__AEXT_CLONE_ = 208
    CEFBS_None, // i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__AEXT_CLONE_ = 209
    CEFBS_None, // i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_ = 210
    CEFBS_None, // i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_ = 211
    CEFBS_None, // i_itype_loads__opc_lhu__xpr_general__simm12__x_0__AEXT_CLONE_ = 212
    CEFBS_None, // i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__AEXT_CLONE_ = 213
    CEFBS_None, // i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_ = 214
    CEFBS_None, // i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_ = 215
    CEFBS_None, // i_itype_loads__opc_lw__x_0__simm12__xpr_general__immspec_1_ = 216
    CEFBS_None, // i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__2_REG_EMUL_ = 217
    CEFBS_None, // i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__3_BIGIMM_EMUL_ = 218
    CEFBS_None, // i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__5_BIGIMM_EMUL_ = 219
    CEFBS_None, // i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__immspec_1_ = 220
    CEFBS_None, // i_jal_abs_calias__opc_jal__x_0__relative_addr20__ = 221
    CEFBS_None, // i_jal_abs_calias__opc_jal__xpr_general__relative_addr20__ = 222
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__swappedCmpClone0__ = 223
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__swappedCmpClone0__ = 224
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_ = 225
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_ = 226
    CEFBS_None, // i_stype_store__opc_sb__x_0__simm12__x_0__i32_TRUNC_CLONE_ = 227
    CEFBS_None, // i_stype_store__opc_sb__x_0__simm12__xpr_general__i32_TRUNC_CLONE_ = 228
    CEFBS_None, // i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_ = 229
    CEFBS_None, // i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_ = 230
    CEFBS_None, // i_stype_store__opc_sb__xpr_general__simm12__xpr_general__immspec_1_ = 231
    CEFBS_None, // i_stype_store__opc_sh__x_0__simm12__x_0__i32_TRUNC_CLONE_ = 232
    CEFBS_None, // i_stype_store__opc_sh__x_0__simm12__xpr_general__i32_TRUNC_CLONE_ = 233
    CEFBS_None, // i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_ = 234
    CEFBS_None, // i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_ = 235
    CEFBS_None, // i_stype_store__opc_sh__xpr_general__simm12__xpr_general__immspec_1_ = 236
    CEFBS_None, // i_stype_store__opc_sw__x_0__simm12__xpr_general__immspec_1_ = 237
    CEFBS_None, // i_stype_store__opc_sw__xpr_general__simm12__xpr_general__0_REG_EMUL_ = 238
    CEFBS_None, // i_stype_store__opc_sw__xpr_general__simm12__xpr_general__1_BIGIMM_EMUL_ = 239
    CEFBS_None, // i_stype_store__opc_sw__xpr_general__simm12__xpr_general__4_BIGIMM_EMUL_ = 240
    CEFBS_None, // i_stype_store__opc_sw__xpr_general__simm12__xpr_general__immspec_1_ = 241
    CEFBS_None, // i_utype_ops__opc_auipc__xpr_general__uimm20__immspec_1_ = 242
    CEFBS_None, // i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__1_ = 243
    CEFBS_None, // i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__2_ = 244
    CEFBS_None, // i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__5_ = 245
    CEFBS_None, // i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__6_ = 246
    CEFBS_None, // rule_SELECT_10 = 247
    CEFBS_None, // rule_SELECT_11 = 248
    CEFBS_None, // rule_SELECT_12 = 249
    CEFBS_None, // rule_SELECT_13 = 250
    CEFBS_None, // rule_SELECT_14 = 251
    CEFBS_None, // rule_SELECT_15 = 252
    CEFBS_None, // rule_SELECT_16 = 253
    CEFBS_None, // rule_SELECT_17 = 254
    CEFBS_None, // rule_SELECT_7 = 255
    CEFBS_None, // rule_SELECT_8 = 256
    CEFBS_None, // rule_SELECT_9 = 257
    CEFBS_None, // i_beqz_alias__x_0__relative_addr12__ = 258
    CEFBS_None, // i_beqz_alias__x_0_alias__relative_addr12__ = 259
    CEFBS_None, // i_beqz_alias__xpr_general__relative_addr12__ = 260
    CEFBS_None, // i_bgez_alias__x_0__relative_addr12__ = 261
    CEFBS_None, // i_bgez_alias__x_0_alias__relative_addr12__ = 262
    CEFBS_None, // i_bgez_alias__xpr_general__relative_addr12__ = 263
    CEFBS_None, // i_bgt_alias__x_0__x_0__relative_addr12__ = 264
    CEFBS_None, // i_bgt_alias__x_0__x_0_alias__relative_addr12__ = 265
    CEFBS_None, // i_bgt_alias__x_0__xpr_general__relative_addr12__ = 266
    CEFBS_None, // i_bgt_alias__x_0_alias__x_0__relative_addr12__ = 267
    CEFBS_None, // i_bgt_alias__x_0_alias__x_0_alias__relative_addr12__ = 268
    CEFBS_None, // i_bgt_alias__x_0_alias__xpr_general__relative_addr12__ = 269
    CEFBS_None, // i_bgt_alias__xpr_general__x_0__relative_addr12__ = 270
    CEFBS_None, // i_bgt_alias__xpr_general__x_0_alias__relative_addr12__ = 271
    CEFBS_None, // i_bgt_alias__xpr_general__xpr_general__relative_addr12__ = 272
    CEFBS_None, // i_bgtu_alias__x_0__x_0__relative_addr12__ = 273
    CEFBS_None, // i_bgtu_alias__x_0__x_0_alias__relative_addr12__ = 274
    CEFBS_None, // i_bgtu_alias__x_0__xpr_general__relative_addr12__ = 275
    CEFBS_None, // i_bgtu_alias__x_0_alias__x_0__relative_addr12__ = 276
    CEFBS_None, // i_bgtu_alias__x_0_alias__x_0_alias__relative_addr12__ = 277
    CEFBS_None, // i_bgtu_alias__x_0_alias__xpr_general__relative_addr12__ = 278
    CEFBS_None, // i_bgtu_alias__xpr_general__x_0__relative_addr12__ = 279
    CEFBS_None, // i_bgtu_alias__xpr_general__x_0_alias__relative_addr12__ = 280
    CEFBS_None, // i_bgtu_alias__xpr_general__xpr_general__relative_addr12__ = 281
    CEFBS_None, // i_bgtz_alias__x_0__relative_addr12__ = 282
    CEFBS_None, // i_bgtz_alias__x_0_alias__relative_addr12__ = 283
    CEFBS_None, // i_bgtz_alias__xpr_general__relative_addr12__ = 284
    CEFBS_None, // i_ble_alias__x_0__x_0__relative_addr12__ = 285
    CEFBS_None, // i_ble_alias__x_0__x_0_alias__relative_addr12__ = 286
    CEFBS_None, // i_ble_alias__x_0__xpr_general__relative_addr12__ = 287
    CEFBS_None, // i_ble_alias__x_0_alias__x_0__relative_addr12__ = 288
    CEFBS_None, // i_ble_alias__x_0_alias__x_0_alias__relative_addr12__ = 289
    CEFBS_None, // i_ble_alias__x_0_alias__xpr_general__relative_addr12__ = 290
    CEFBS_None, // i_ble_alias__xpr_general__x_0__relative_addr12__ = 291
    CEFBS_None, // i_ble_alias__xpr_general__x_0_alias__relative_addr12__ = 292
    CEFBS_None, // i_ble_alias__xpr_general__xpr_general__relative_addr12__ = 293
    CEFBS_None, // i_bleu_alias__x_0__x_0__relative_addr12__ = 294
    CEFBS_None, // i_bleu_alias__x_0__x_0_alias__relative_addr12__ = 295
    CEFBS_None, // i_bleu_alias__x_0__xpr_general__relative_addr12__ = 296
    CEFBS_None, // i_bleu_alias__x_0_alias__x_0__relative_addr12__ = 297
    CEFBS_None, // i_bleu_alias__x_0_alias__x_0_alias__relative_addr12__ = 298
    CEFBS_None, // i_bleu_alias__x_0_alias__xpr_general__relative_addr12__ = 299
    CEFBS_None, // i_bleu_alias__xpr_general__x_0__relative_addr12__ = 300
    CEFBS_None, // i_bleu_alias__xpr_general__x_0_alias__relative_addr12__ = 301
    CEFBS_None, // i_bleu_alias__xpr_general__xpr_general__relative_addr12__ = 302
    CEFBS_None, // i_blez_alias__x_0__relative_addr12__ = 303
    CEFBS_None, // i_blez_alias__x_0_alias__relative_addr12__ = 304
    CEFBS_None, // i_blez_alias__xpr_general__relative_addr12__ = 305
    CEFBS_None, // i_bltz_alias__x_0__relative_addr12__ = 306
    CEFBS_None, // i_bltz_alias__x_0_alias__relative_addr12__ = 307
    CEFBS_None, // i_bltz_alias__xpr_general__relative_addr12__ = 308
    CEFBS_None, // i_bnez_alias__x_0__relative_addr12__ = 309
    CEFBS_None, // i_bnez_alias__x_0_alias__relative_addr12__ = 310
    CEFBS_None, // i_bnez_alias__xpr_general__relative_addr12__ = 311
    CEFBS_None, // i_btype_branches__opc_beq__x_0__x_0__relative_addr12__ = 312
    CEFBS_None, // i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ = 313
    CEFBS_None, // i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA = 314
    CEFBS_None, // i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES = 315
    CEFBS_None, // i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC = 316
    CEFBS_None, // i_btype_branches__opc_beq__x_0__x_0_alias__relative_addr12__ = 317
    CEFBS_None, // i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__ = 318
    CEFBS_None, // i_btype_branches__opc_beq__x_0_alias__x_0__relative_addr12__ = 319
    CEFBS_None, // i_btype_branches__opc_beq__x_0_alias__x_0_alias__relative_addr12__ = 320
    CEFBS_None, // i_btype_branches__opc_beq__x_0_alias__xpr_general__relative_addr12__ = 321
    CEFBS_None, // i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__ = 322
    CEFBS_None, // i_btype_branches__opc_beq__xpr_general__x_0_alias__relative_addr12__ = 323
    CEFBS_None, // i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__ = 324
    CEFBS_None, // i_btype_branches__opc_bge__x_0__x_0__relative_addr12__ = 325
    CEFBS_None, // i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ = 326
    CEFBS_None, // i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA = 327
    CEFBS_None, // i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES = 328
    CEFBS_None, // i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC = 329
    CEFBS_None, // i_btype_branches__opc_bge__x_0__x_0_alias__relative_addr12__ = 330
    CEFBS_None, // i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__ = 331
    CEFBS_None, // i_btype_branches__opc_bge__x_0_alias__x_0__relative_addr12__ = 332
    CEFBS_None, // i_btype_branches__opc_bge__x_0_alias__x_0_alias__relative_addr12__ = 333
    CEFBS_None, // i_btype_branches__opc_bge__x_0_alias__xpr_general__relative_addr12__ = 334
    CEFBS_None, // i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__ = 335
    CEFBS_None, // i_btype_branches__opc_bge__xpr_general__x_0_alias__relative_addr12__ = 336
    CEFBS_None, // i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__ = 337
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__ = 338
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ = 339
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA = 340
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES = 341
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC = 342
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0__x_0_alias__relative_addr12__ = 343
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__ = 344
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0_alias__x_0__relative_addr12__ = 345
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0_alias__x_0_alias__relative_addr12__ = 346
    CEFBS_None, // i_btype_branches__opc_bgeu__x_0_alias__xpr_general__relative_addr12__ = 347
    CEFBS_None, // i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__ = 348
    CEFBS_None, // i_btype_branches__opc_bgeu__xpr_general__x_0_alias__relative_addr12__ = 349
    CEFBS_None, // i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__ = 350
    CEFBS_None, // i_btype_branches__opc_blt__x_0__x_0__relative_addr12__ = 351
    CEFBS_None, // i_btype_branches__opc_blt__x_0__x_0_alias__relative_addr12__ = 352
    CEFBS_None, // i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__ = 353
    CEFBS_None, // i_btype_branches__opc_blt__x_0_alias__x_0__relative_addr12__ = 354
    CEFBS_None, // i_btype_branches__opc_blt__x_0_alias__x_0_alias__relative_addr12__ = 355
    CEFBS_None, // i_btype_branches__opc_blt__x_0_alias__xpr_general__relative_addr12__ = 356
    CEFBS_None, // i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__ = 357
    CEFBS_None, // i_btype_branches__opc_blt__xpr_general__x_0_alias__relative_addr12__ = 358
    CEFBS_None, // i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__ = 359
    CEFBS_None, // i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__ = 360
    CEFBS_None, // i_btype_branches__opc_bltu__x_0__x_0_alias__relative_addr12__ = 361
    CEFBS_None, // i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__ = 362
    CEFBS_None, // i_btype_branches__opc_bltu__x_0_alias__x_0__relative_addr12__ = 363
    CEFBS_None, // i_btype_branches__opc_bltu__x_0_alias__x_0_alias__relative_addr12__ = 364
    CEFBS_None, // i_btype_branches__opc_bltu__x_0_alias__xpr_general__relative_addr12__ = 365
    CEFBS_None, // i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__ = 366
    CEFBS_None, // i_btype_branches__opc_bltu__xpr_general__x_0_alias__relative_addr12__ = 367
    CEFBS_None, // i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__ = 368
    CEFBS_None, // i_btype_branches__opc_bne__x_0__x_0__relative_addr12__ = 369
    CEFBS_None, // i_btype_branches__opc_bne__x_0__x_0_alias__relative_addr12__ = 370
    CEFBS_None, // i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__ = 371
    CEFBS_None, // i_btype_branches__opc_bne__x_0_alias__x_0__relative_addr12__ = 372
    CEFBS_None, // i_btype_branches__opc_bne__x_0_alias__x_0_alias__relative_addr12__ = 373
    CEFBS_None, // i_btype_branches__opc_bne__x_0_alias__xpr_general__relative_addr12__ = 374
    CEFBS_None, // i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__ = 375
    CEFBS_None, // i_btype_branches__opc_bne__xpr_general__x_0_alias__relative_addr12__ = 376
    CEFBS_None, // i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__ = 377
    CEFBS_None, // i_call_alias__relative_addr20__ = 378
    CEFBS_None, // i_call_reg_alias__simm12__x_0__ = 379
    CEFBS_None, // i_call_reg_alias__simm12__x_0_alias__ = 380
    CEFBS_None, // i_call_reg_alias__simm12__xpr_general__ = 381
    CEFBS_None, // i_call_reg_alias__simm12__xpr_general__immspec_1_ = 382
    CEFBS_None, // i_halt__opc_halt__ = 383
    CEFBS_None, // i_itype_alu__opc_addi__x_0__x_0__simm12__ = 384
    CEFBS_None, // i_itype_alu__opc_addi__x_0__x_0_alias__simm12__ = 385
    CEFBS_None, // i_itype_alu__opc_addi__x_0__xpr_general__simm12__ = 386
    CEFBS_None, // i_itype_alu__opc_addi__x_0_alias__x_0__simm12__ = 387
    CEFBS_None, // i_itype_alu__opc_addi__x_0_alias__x_0_alias__simm12__ = 388
    CEFBS_None, // i_itype_alu__opc_addi__x_0_alias__xpr_general__simm12__ = 389
    CEFBS_None, // i_itype_alu__opc_addi__xpr_general__x_0__simm12__ = 390
    CEFBS_None, // i_itype_alu__opc_addi__xpr_general__x_0_alias__simm12__ = 391
    CEFBS_None, // i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__ = 392
    CEFBS_None, // i_itype_alu__opc_andi__x_0__x_0__simm12__ = 393
    CEFBS_None, // i_itype_alu__opc_andi__x_0__x_0_alias__simm12__ = 394
    CEFBS_None, // i_itype_alu__opc_andi__x_0__xpr_general__simm12__ = 395
    CEFBS_None, // i_itype_alu__opc_andi__x_0_alias__x_0__simm12__ = 396
    CEFBS_None, // i_itype_alu__opc_andi__x_0_alias__x_0_alias__simm12__ = 397
    CEFBS_None, // i_itype_alu__opc_andi__x_0_alias__xpr_general__simm12__ = 398
    CEFBS_None, // i_itype_alu__opc_andi__xpr_general__x_0__simm12__ = 399
    CEFBS_None, // i_itype_alu__opc_andi__xpr_general__x_0_alias__simm12__ = 400
    CEFBS_None, // i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__ = 401
    CEFBS_None, // i_itype_alu__opc_ori__x_0__x_0__simm12__ = 402
    CEFBS_None, // i_itype_alu__opc_ori__x_0__x_0_alias__simm12__ = 403
    CEFBS_None, // i_itype_alu__opc_ori__x_0__xpr_general__simm12__ = 404
    CEFBS_None, // i_itype_alu__opc_ori__x_0_alias__x_0__simm12__ = 405
    CEFBS_None, // i_itype_alu__opc_ori__x_0_alias__x_0_alias__simm12__ = 406
    CEFBS_None, // i_itype_alu__opc_ori__x_0_alias__xpr_general__simm12__ = 407
    CEFBS_None, // i_itype_alu__opc_ori__xpr_general__x_0__simm12__ = 408
    CEFBS_None, // i_itype_alu__opc_ori__xpr_general__x_0_alias__simm12__ = 409
    CEFBS_None, // i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__ = 410
    CEFBS_None, // i_itype_alu__opc_slti__x_0__x_0__simm12__ = 411
    CEFBS_None, // i_itype_alu__opc_slti__x_0__x_0_alias__simm12__ = 412
    CEFBS_None, // i_itype_alu__opc_slti__x_0__xpr_general__simm12__ = 413
    CEFBS_None, // i_itype_alu__opc_slti__x_0_alias__x_0__simm12__ = 414
    CEFBS_None, // i_itype_alu__opc_slti__x_0_alias__x_0_alias__simm12__ = 415
    CEFBS_None, // i_itype_alu__opc_slti__x_0_alias__xpr_general__simm12__ = 416
    CEFBS_None, // i_itype_alu__opc_slti__xpr_general__x_0__simm12__ = 417
    CEFBS_None, // i_itype_alu__opc_slti__xpr_general__x_0_alias__simm12__ = 418
    CEFBS_None, // i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__ = 419
    CEFBS_None, // i_itype_alu__opc_sltiu__x_0__x_0__simm12__ = 420
    CEFBS_None, // i_itype_alu__opc_sltiu__x_0__x_0_alias__simm12__ = 421
    CEFBS_None, // i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__ = 422
    CEFBS_None, // i_itype_alu__opc_sltiu__x_0_alias__x_0__simm12__ = 423
    CEFBS_None, // i_itype_alu__opc_sltiu__x_0_alias__x_0_alias__simm12__ = 424
    CEFBS_None, // i_itype_alu__opc_sltiu__x_0_alias__xpr_general__simm12__ = 425
    CEFBS_None, // i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__ = 426
    CEFBS_None, // i_itype_alu__opc_sltiu__xpr_general__x_0_alias__simm12__ = 427
    CEFBS_None, // i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__ = 428
    CEFBS_None, // i_itype_alu__opc_xori__x_0__x_0__simm12__ = 429
    CEFBS_None, // i_itype_alu__opc_xori__x_0__x_0_alias__simm12__ = 430
    CEFBS_None, // i_itype_alu__opc_xori__x_0__xpr_general__simm12__ = 431
    CEFBS_None, // i_itype_alu__opc_xori__x_0_alias__x_0__simm12__ = 432
    CEFBS_None, // i_itype_alu__opc_xori__x_0_alias__x_0_alias__simm12__ = 433
    CEFBS_None, // i_itype_alu__opc_xori__x_0_alias__xpr_general__simm12__ = 434
    CEFBS_None, // i_itype_alu__opc_xori__xpr_general__x_0__simm12__ = 435
    CEFBS_None, // i_itype_alu__opc_xori__xpr_general__x_0_alias__simm12__ = 436
    CEFBS_None, // i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__ = 437
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__x_0__ = 438
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ = 439
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_BA = 440
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ES = 441
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_MC = 442
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__x_0_alias__ = 443
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__ = 444
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_TAILCALL_CLONE_ = 445
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0__ = 446
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0_alias__ = 447
    CEFBS_None, // i_itype_jlreg__opc_jalr__x_0_alias__simm12__xpr_general__ = 448
    CEFBS_None, // i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__ = 449
    CEFBS_None, // i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0_alias__ = 450
    CEFBS_None, // i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__ = 451
    CEFBS_None, // i_itype_loads__opc_lb__x_0__simm12__x_0__ = 452
    CEFBS_None, // i_itype_loads__opc_lb__x_0__simm12__x_0_alias__ = 453
    CEFBS_None, // i_itype_loads__opc_lb__x_0__simm12__xpr_general__ = 454
    CEFBS_None, // i_itype_loads__opc_lb__x_0_alias__simm12__x_0__ = 455
    CEFBS_None, // i_itype_loads__opc_lb__x_0_alias__simm12__x_0_alias__ = 456
    CEFBS_None, // i_itype_loads__opc_lb__x_0_alias__simm12__xpr_general__ = 457
    CEFBS_None, // i_itype_loads__opc_lb__xpr_general__simm12__x_0__ = 458
    CEFBS_None, // i_itype_loads__opc_lb__xpr_general__simm12__x_0_alias__ = 459
    CEFBS_None, // i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__ = 460
    CEFBS_None, // i_itype_loads__opc_lbu__x_0__simm12__x_0__ = 461
    CEFBS_None, // i_itype_loads__opc_lbu__x_0__simm12__x_0_alias__ = 462
    CEFBS_None, // i_itype_loads__opc_lbu__x_0__simm12__xpr_general__ = 463
    CEFBS_None, // i_itype_loads__opc_lbu__x_0_alias__simm12__x_0__ = 464
    CEFBS_None, // i_itype_loads__opc_lbu__x_0_alias__simm12__x_0_alias__ = 465
    CEFBS_None, // i_itype_loads__opc_lbu__x_0_alias__simm12__xpr_general__ = 466
    CEFBS_None, // i_itype_loads__opc_lbu__xpr_general__simm12__x_0__ = 467
    CEFBS_None, // i_itype_loads__opc_lbu__xpr_general__simm12__x_0_alias__ = 468
    CEFBS_None, // i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__ = 469
    CEFBS_None, // i_itype_loads__opc_lh__x_0__simm12__x_0__ = 470
    CEFBS_None, // i_itype_loads__opc_lh__x_0__simm12__x_0_alias__ = 471
    CEFBS_None, // i_itype_loads__opc_lh__x_0__simm12__xpr_general__ = 472
    CEFBS_None, // i_itype_loads__opc_lh__x_0_alias__simm12__x_0__ = 473
    CEFBS_None, // i_itype_loads__opc_lh__x_0_alias__simm12__x_0_alias__ = 474
    CEFBS_None, // i_itype_loads__opc_lh__x_0_alias__simm12__xpr_general__ = 475
    CEFBS_None, // i_itype_loads__opc_lh__xpr_general__simm12__x_0__ = 476
    CEFBS_None, // i_itype_loads__opc_lh__xpr_general__simm12__x_0_alias__ = 477
    CEFBS_None, // i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__ = 478
    CEFBS_None, // i_itype_loads__opc_lhu__x_0__simm12__x_0__ = 479
    CEFBS_None, // i_itype_loads__opc_lhu__x_0__simm12__x_0_alias__ = 480
    CEFBS_None, // i_itype_loads__opc_lhu__x_0__simm12__xpr_general__ = 481
    CEFBS_None, // i_itype_loads__opc_lhu__x_0_alias__simm12__x_0__ = 482
    CEFBS_None, // i_itype_loads__opc_lhu__x_0_alias__simm12__x_0_alias__ = 483
    CEFBS_None, // i_itype_loads__opc_lhu__x_0_alias__simm12__xpr_general__ = 484
    CEFBS_None, // i_itype_loads__opc_lhu__xpr_general__simm12__x_0__ = 485
    CEFBS_None, // i_itype_loads__opc_lhu__xpr_general__simm12__x_0_alias__ = 486
    CEFBS_None, // i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__ = 487
    CEFBS_None, // i_itype_loads__opc_lw__x_0__simm12__x_0__ = 488
    CEFBS_None, // i_itype_loads__opc_lw__x_0__simm12__x_0_alias__ = 489
    CEFBS_None, // i_itype_loads__opc_lw__x_0__simm12__xpr_general__ = 490
    CEFBS_None, // i_itype_loads__opc_lw__x_0_alias__simm12__x_0__ = 491
    CEFBS_None, // i_itype_loads__opc_lw__x_0_alias__simm12__x_0_alias__ = 492
    CEFBS_None, // i_itype_loads__opc_lw__x_0_alias__simm12__xpr_general__ = 493
    CEFBS_None, // i_itype_loads__opc_lw__xpr_general__simm12__x_0__ = 494
    CEFBS_None, // i_itype_loads__opc_lw__xpr_general__simm12__x_0_alias__ = 495
    CEFBS_None, // i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__ = 496
    CEFBS_None, // i_j_alias__relative_addr20__ = 497
    CEFBS_None, // i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ = 498
    CEFBS_None, // i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA = 499
    CEFBS_None, // i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES = 500
    CEFBS_None, // i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC = 501
    CEFBS_None, // i_jr_alias__x_0__ = 502
    CEFBS_None, // i_jr_alias__x_0_alias__ = 503
    CEFBS_None, // i_jr_alias__xpr_general__ = 504
    CEFBS_None, // i_jtype_jlink__opc_jal__x_0__relative_addr20__ = 505
    CEFBS_None, // i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ = 506
    CEFBS_None, // i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA = 507
    CEFBS_None, // i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES = 508
    CEFBS_None, // i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC = 509
    CEFBS_None, // i_jtype_jlink__opc_jal__x_0_alias__relative_addr20__ = 510
    CEFBS_None, // i_jtype_jlink__opc_jal__xpr_general__relative_addr20__ = 511
    CEFBS_None, // i_li_alias__x_0__simm12__ = 512
    CEFBS_None, // i_li_alias__x_0_alias__simm12__ = 513
    CEFBS_None, // i_li_alias__xpr_general__simm12__ = 514
    CEFBS_None, // i_mv_alias__x_0__x_0__ = 515
    CEFBS_None, // i_mv_alias__x_0__x_0_alias__ = 516
    CEFBS_None, // i_mv_alias__x_0__xpr_general__ = 517
    CEFBS_None, // i_mv_alias__x_0_alias__x_0__ = 518
    CEFBS_None, // i_mv_alias__x_0_alias__x_0_alias__ = 519
    CEFBS_None, // i_mv_alias__x_0_alias__xpr_general__ = 520
    CEFBS_None, // i_mv_alias__xpr_general__x_0__ = 521
    CEFBS_None, // i_mv_alias__xpr_general__x_0_alias__ = 522
    CEFBS_None, // i_mv_alias__xpr_general__xpr_general__ = 523
    CEFBS_None, // i_neg_alias__x_0__x_0__ = 524
    CEFBS_None, // i_neg_alias__x_0__x_0_alias__ = 525
    CEFBS_None, // i_neg_alias__x_0__xpr_general__ = 526
    CEFBS_None, // i_neg_alias__x_0_alias__x_0__ = 527
    CEFBS_None, // i_neg_alias__x_0_alias__x_0_alias__ = 528
    CEFBS_None, // i_neg_alias__x_0_alias__xpr_general__ = 529
    CEFBS_None, // i_neg_alias__xpr_general__x_0__ = 530
    CEFBS_None, // i_neg_alias__xpr_general__x_0_alias__ = 531
    CEFBS_None, // i_neg_alias__xpr_general__xpr_general__ = 532
    CEFBS_None, // i_nop_alias__ = 533
    CEFBS_None, // i_not_alias__x_0__x_0__ = 534
    CEFBS_None, // i_not_alias__x_0__x_0_alias__ = 535
    CEFBS_None, // i_not_alias__x_0__xpr_general__ = 536
    CEFBS_None, // i_not_alias__x_0_alias__x_0__ = 537
    CEFBS_None, // i_not_alias__x_0_alias__x_0_alias__ = 538
    CEFBS_None, // i_not_alias__x_0_alias__xpr_general__ = 539
    CEFBS_None, // i_not_alias__xpr_general__x_0__ = 540
    CEFBS_None, // i_not_alias__xpr_general__x_0_alias__ = 541
    CEFBS_None, // i_not_alias__xpr_general__xpr_general__ = 542
    CEFBS_None, // i_ret_alias__ = 543
    CEFBS_None, // i_ret_alias__TAILCALL_CLONE_ = 544
    CEFBS_None, // i_rtype_alu__opc_add__x_0__x_0__x_0__ = 545
    CEFBS_None, // i_rtype_alu__opc_add__x_0__x_0__x_0_alias__ = 546
    CEFBS_None, // i_rtype_alu__opc_add__x_0__x_0__xpr_general__ = 547
    CEFBS_None, // i_rtype_alu__opc_add__x_0__x_0_alias__x_0__ = 548
    CEFBS_None, // i_rtype_alu__opc_add__x_0__x_0_alias__x_0_alias__ = 549
    CEFBS_None, // i_rtype_alu__opc_add__x_0__x_0_alias__xpr_general__ = 550
    CEFBS_None, // i_rtype_alu__opc_add__x_0__xpr_general__x_0__ = 551
    CEFBS_None, // i_rtype_alu__opc_add__x_0__xpr_general__x_0_alias__ = 552
    CEFBS_None, // i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__ = 553
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__x_0__x_0__ = 554
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__x_0__x_0_alias__ = 555
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__x_0__xpr_general__ = 556
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0__ = 557
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0_alias__ = 558
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__x_0_alias__xpr_general__ = 559
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0__ = 560
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0_alias__ = 561
    CEFBS_None, // i_rtype_alu__opc_add__x_0_alias__xpr_general__xpr_general__ = 562
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__x_0__x_0__ = 563
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__x_0__x_0_alias__ = 564
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__ = 565
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0__ = 566
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0_alias__ = 567
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__x_0_alias__xpr_general__ = 568
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__ = 569
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__xpr_general__x_0_alias__ = 570
    CEFBS_None, // i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__ = 571
    CEFBS_None, // i_rtype_alu__opc_and__x_0__x_0__x_0__ = 572
    CEFBS_None, // i_rtype_alu__opc_and__x_0__x_0__x_0_alias__ = 573
    CEFBS_None, // i_rtype_alu__opc_and__x_0__x_0__xpr_general__ = 574
    CEFBS_None, // i_rtype_alu__opc_and__x_0__x_0_alias__x_0__ = 575
    CEFBS_None, // i_rtype_alu__opc_and__x_0__x_0_alias__x_0_alias__ = 576
    CEFBS_None, // i_rtype_alu__opc_and__x_0__x_0_alias__xpr_general__ = 577
    CEFBS_None, // i_rtype_alu__opc_and__x_0__xpr_general__x_0__ = 578
    CEFBS_None, // i_rtype_alu__opc_and__x_0__xpr_general__x_0_alias__ = 579
    CEFBS_None, // i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__ = 580
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__x_0__x_0__ = 581
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__x_0__x_0_alias__ = 582
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__x_0__xpr_general__ = 583
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0__ = 584
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0_alias__ = 585
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__x_0_alias__xpr_general__ = 586
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0__ = 587
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0_alias__ = 588
    CEFBS_None, // i_rtype_alu__opc_and__x_0_alias__xpr_general__xpr_general__ = 589
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__x_0__x_0__ = 590
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__x_0__x_0_alias__ = 591
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__ = 592
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0__ = 593
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0_alias__ = 594
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__x_0_alias__xpr_general__ = 595
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__ = 596
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__xpr_general__x_0_alias__ = 597
    CEFBS_None, // i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__ = 598
    CEFBS_None, // i_rtype_alu__opc_or__x_0__x_0__x_0__ = 599
    CEFBS_None, // i_rtype_alu__opc_or__x_0__x_0__x_0_alias__ = 600
    CEFBS_None, // i_rtype_alu__opc_or__x_0__x_0__xpr_general__ = 601
    CEFBS_None, // i_rtype_alu__opc_or__x_0__x_0_alias__x_0__ = 602
    CEFBS_None, // i_rtype_alu__opc_or__x_0__x_0_alias__x_0_alias__ = 603
    CEFBS_None, // i_rtype_alu__opc_or__x_0__x_0_alias__xpr_general__ = 604
    CEFBS_None, // i_rtype_alu__opc_or__x_0__xpr_general__x_0__ = 605
    CEFBS_None, // i_rtype_alu__opc_or__x_0__xpr_general__x_0_alias__ = 606
    CEFBS_None, // i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__ = 607
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__x_0__x_0__ = 608
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__x_0__x_0_alias__ = 609
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__x_0__xpr_general__ = 610
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0__ = 611
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0_alias__ = 612
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__x_0_alias__xpr_general__ = 613
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0__ = 614
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0_alias__ = 615
    CEFBS_None, // i_rtype_alu__opc_or__x_0_alias__xpr_general__xpr_general__ = 616
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__x_0__x_0__ = 617
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__x_0__x_0_alias__ = 618
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__ = 619
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0__ = 620
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0_alias__ = 621
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__x_0_alias__xpr_general__ = 622
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__ = 623
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__xpr_general__x_0_alias__ = 624
    CEFBS_None, // i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__ = 625
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__x_0__x_0__ = 626
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__x_0__x_0_alias__ = 627
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__x_0__xpr_general__ = 628
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__x_0_alias__x_0__ = 629
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__x_0_alias__x_0_alias__ = 630
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__x_0_alias__xpr_general__ = 631
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__xpr_general__x_0__ = 632
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__xpr_general__x_0_alias__ = 633
    CEFBS_None, // i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__ = 634
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__x_0__x_0__ = 635
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__x_0__x_0_alias__ = 636
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__x_0__xpr_general__ = 637
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0__ = 638
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0_alias__ = 639
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__x_0_alias__xpr_general__ = 640
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0__ = 641
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0_alias__ = 642
    CEFBS_None, // i_rtype_alu__opc_sll__x_0_alias__xpr_general__xpr_general__ = 643
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__x_0__x_0__ = 644
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__x_0__x_0_alias__ = 645
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__ = 646
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0__ = 647
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0_alias__ = 648
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__x_0_alias__xpr_general__ = 649
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__ = 650
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0_alias__ = 651
    CEFBS_None, // i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__ = 652
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__x_0__x_0__ = 653
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__x_0__x_0_alias__ = 654
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__x_0__xpr_general__ = 655
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__x_0_alias__x_0__ = 656
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__x_0_alias__x_0_alias__ = 657
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__x_0_alias__xpr_general__ = 658
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__xpr_general__x_0__ = 659
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__xpr_general__x_0_alias__ = 660
    CEFBS_None, // i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__ = 661
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__x_0__x_0__ = 662
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__x_0__x_0_alias__ = 663
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__x_0__xpr_general__ = 664
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0__ = 665
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0_alias__ = 666
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__x_0_alias__xpr_general__ = 667
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0__ = 668
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0_alias__ = 669
    CEFBS_None, // i_rtype_alu__opc_slt__x_0_alias__xpr_general__xpr_general__ = 670
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__x_0__x_0__ = 671
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__x_0__x_0_alias__ = 672
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__ = 673
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0__ = 674
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0_alias__ = 675
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__x_0_alias__xpr_general__ = 676
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__ = 677
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0_alias__ = 678
    CEFBS_None, // i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__ = 679
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__x_0__x_0__ = 680
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__x_0__x_0_alias__ = 681
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__ = 682
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0__ = 683
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0_alias__ = 684
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__x_0_alias__xpr_general__ = 685
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__ = 686
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__xpr_general__x_0_alias__ = 687
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__ = 688
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0__ = 689
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0_alias__ = 690
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__x_0__xpr_general__ = 691
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0__ = 692
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0_alias__ = 693
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__xpr_general__ = 694
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0__ = 695
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0_alias__ = 696
    CEFBS_None, // i_rtype_alu__opc_sltu__x_0_alias__xpr_general__xpr_general__ = 697
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__ = 698
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__x_0__x_0_alias__ = 699
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__ = 700
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0__ = 701
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0_alias__ = 702
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__x_0_alias__xpr_general__ = 703
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__ = 704
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0_alias__ = 705
    CEFBS_None, // i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__ = 706
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__x_0__x_0__ = 707
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__x_0__x_0_alias__ = 708
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__x_0__xpr_general__ = 709
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__x_0_alias__x_0__ = 710
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__x_0_alias__x_0_alias__ = 711
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__x_0_alias__xpr_general__ = 712
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__xpr_general__x_0__ = 713
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__xpr_general__x_0_alias__ = 714
    CEFBS_None, // i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__ = 715
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__x_0__x_0__ = 716
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__x_0__x_0_alias__ = 717
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__x_0__xpr_general__ = 718
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0__ = 719
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0_alias__ = 720
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__x_0_alias__xpr_general__ = 721
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0__ = 722
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0_alias__ = 723
    CEFBS_None, // i_rtype_alu__opc_sra__x_0_alias__xpr_general__xpr_general__ = 724
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__x_0__x_0__ = 725
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__x_0__x_0_alias__ = 726
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__ = 727
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0__ = 728
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0_alias__ = 729
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__x_0_alias__xpr_general__ = 730
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__ = 731
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0_alias__ = 732
    CEFBS_None, // i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__ = 733
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__x_0__x_0__ = 734
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__x_0__x_0_alias__ = 735
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__x_0__xpr_general__ = 736
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__x_0_alias__x_0__ = 737
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__x_0_alias__x_0_alias__ = 738
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__x_0_alias__xpr_general__ = 739
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__xpr_general__x_0__ = 740
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__xpr_general__x_0_alias__ = 741
    CEFBS_None, // i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__ = 742
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__x_0__x_0__ = 743
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__x_0__x_0_alias__ = 744
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__x_0__xpr_general__ = 745
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0__ = 746
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0_alias__ = 747
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__x_0_alias__xpr_general__ = 748
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0__ = 749
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0_alias__ = 750
    CEFBS_None, // i_rtype_alu__opc_srl__x_0_alias__xpr_general__xpr_general__ = 751
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__x_0__x_0__ = 752
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__x_0__x_0_alias__ = 753
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__ = 754
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0__ = 755
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0_alias__ = 756
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__x_0_alias__xpr_general__ = 757
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__ = 758
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0_alias__ = 759
    CEFBS_None, // i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__ = 760
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__x_0__x_0__ = 761
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__x_0__x_0_alias__ = 762
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__x_0__xpr_general__ = 763
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__x_0_alias__x_0__ = 764
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__x_0_alias__x_0_alias__ = 765
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__x_0_alias__xpr_general__ = 766
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__xpr_general__x_0__ = 767
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__xpr_general__x_0_alias__ = 768
    CEFBS_None, // i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__ = 769
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__x_0__x_0__ = 770
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__x_0__x_0_alias__ = 771
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__x_0__xpr_general__ = 772
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0__ = 773
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0_alias__ = 774
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__x_0_alias__xpr_general__ = 775
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0__ = 776
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0_alias__ = 777
    CEFBS_None, // i_rtype_alu__opc_sub__x_0_alias__xpr_general__xpr_general__ = 778
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__x_0__x_0__ = 779
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__x_0__x_0_alias__ = 780
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__ = 781
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0__ = 782
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0_alias__ = 783
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__x_0_alias__xpr_general__ = 784
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__ = 785
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0_alias__ = 786
    CEFBS_None, // i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__ = 787
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__x_0__x_0__ = 788
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__x_0__x_0_alias__ = 789
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__x_0__xpr_general__ = 790
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__x_0_alias__x_0__ = 791
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__x_0_alias__x_0_alias__ = 792
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__x_0_alias__xpr_general__ = 793
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__xpr_general__x_0__ = 794
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__xpr_general__x_0_alias__ = 795
    CEFBS_None, // i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__ = 796
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__x_0__x_0__ = 797
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__x_0__x_0_alias__ = 798
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__x_0__xpr_general__ = 799
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0__ = 800
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0_alias__ = 801
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__x_0_alias__xpr_general__ = 802
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0__ = 803
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0_alias__ = 804
    CEFBS_None, // i_rtype_alu__opc_xor__x_0_alias__xpr_general__xpr_general__ = 805
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__x_0__x_0__ = 806
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__x_0__x_0_alias__ = 807
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__ = 808
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0__ = 809
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0_alias__ = 810
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__x_0_alias__xpr_general__ = 811
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__ = 812
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0_alias__ = 813
    CEFBS_None, // i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__ = 814
    CEFBS_None, // i_rtype_shift__opc_slli__x_0__x_0__uimm5__ = 815
    CEFBS_None, // i_rtype_shift__opc_slli__x_0__x_0_alias__uimm5__ = 816
    CEFBS_None, // i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__ = 817
    CEFBS_None, // i_rtype_shift__opc_slli__x_0_alias__x_0__uimm5__ = 818
    CEFBS_None, // i_rtype_shift__opc_slli__x_0_alias__x_0_alias__uimm5__ = 819
    CEFBS_None, // i_rtype_shift__opc_slli__x_0_alias__xpr_general__uimm5__ = 820
    CEFBS_None, // i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__ = 821
    CEFBS_None, // i_rtype_shift__opc_slli__xpr_general__x_0_alias__uimm5__ = 822
    CEFBS_None, // i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__ = 823
    CEFBS_None, // i_rtype_shift__opc_srai__x_0__x_0__uimm5__ = 824
    CEFBS_None, // i_rtype_shift__opc_srai__x_0__x_0_alias__uimm5__ = 825
    CEFBS_None, // i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__ = 826
    CEFBS_None, // i_rtype_shift__opc_srai__x_0_alias__x_0__uimm5__ = 827
    CEFBS_None, // i_rtype_shift__opc_srai__x_0_alias__x_0_alias__uimm5__ = 828
    CEFBS_None, // i_rtype_shift__opc_srai__x_0_alias__xpr_general__uimm5__ = 829
    CEFBS_None, // i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__ = 830
    CEFBS_None, // i_rtype_shift__opc_srai__xpr_general__x_0_alias__uimm5__ = 831
    CEFBS_None, // i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__ = 832
    CEFBS_None, // i_rtype_shift__opc_srli__x_0__x_0__uimm5__ = 833
    CEFBS_None, // i_rtype_shift__opc_srli__x_0__x_0_alias__uimm5__ = 834
    CEFBS_None, // i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__ = 835
    CEFBS_None, // i_rtype_shift__opc_srli__x_0_alias__x_0__uimm5__ = 836
    CEFBS_None, // i_rtype_shift__opc_srli__x_0_alias__x_0_alias__uimm5__ = 837
    CEFBS_None, // i_rtype_shift__opc_srli__x_0_alias__xpr_general__uimm5__ = 838
    CEFBS_None, // i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__ = 839
    CEFBS_None, // i_rtype_shift__opc_srli__xpr_general__x_0_alias__uimm5__ = 840
    CEFBS_None, // i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__ = 841
    CEFBS_None, // i_seqz_alias__x_0__x_0__ = 842
    CEFBS_None, // i_seqz_alias__x_0__x_0_alias__ = 843
    CEFBS_None, // i_seqz_alias__x_0__xpr_general__ = 844
    CEFBS_None, // i_seqz_alias__x_0_alias__x_0__ = 845
    CEFBS_None, // i_seqz_alias__x_0_alias__x_0_alias__ = 846
    CEFBS_None, // i_seqz_alias__x_0_alias__xpr_general__ = 847
    CEFBS_None, // i_seqz_alias__xpr_general__x_0__ = 848
    CEFBS_None, // i_seqz_alias__xpr_general__x_0_alias__ = 849
    CEFBS_None, // i_seqz_alias__xpr_general__xpr_general__ = 850
    CEFBS_None, // i_sgt_alias__x_0__x_0__x_0__ = 851
    CEFBS_None, // i_sgt_alias__x_0__x_0__x_0_alias__ = 852
    CEFBS_None, // i_sgt_alias__x_0__x_0__xpr_general__ = 853
    CEFBS_None, // i_sgt_alias__x_0__x_0_alias__x_0__ = 854
    CEFBS_None, // i_sgt_alias__x_0__x_0_alias__x_0_alias__ = 855
    CEFBS_None, // i_sgt_alias__x_0__x_0_alias__xpr_general__ = 856
    CEFBS_None, // i_sgt_alias__x_0__xpr_general__x_0__ = 857
    CEFBS_None, // i_sgt_alias__x_0__xpr_general__x_0_alias__ = 858
    CEFBS_None, // i_sgt_alias__x_0__xpr_general__xpr_general__ = 859
    CEFBS_None, // i_sgt_alias__x_0_alias__x_0__x_0__ = 860
    CEFBS_None, // i_sgt_alias__x_0_alias__x_0__x_0_alias__ = 861
    CEFBS_None, // i_sgt_alias__x_0_alias__x_0__xpr_general__ = 862
    CEFBS_None, // i_sgt_alias__x_0_alias__x_0_alias__x_0__ = 863
    CEFBS_None, // i_sgt_alias__x_0_alias__x_0_alias__x_0_alias__ = 864
    CEFBS_None, // i_sgt_alias__x_0_alias__x_0_alias__xpr_general__ = 865
    CEFBS_None, // i_sgt_alias__x_0_alias__xpr_general__x_0__ = 866
    CEFBS_None, // i_sgt_alias__x_0_alias__xpr_general__x_0_alias__ = 867
    CEFBS_None, // i_sgt_alias__x_0_alias__xpr_general__xpr_general__ = 868
    CEFBS_None, // i_sgt_alias__xpr_general__x_0__x_0__ = 869
    CEFBS_None, // i_sgt_alias__xpr_general__x_0__x_0_alias__ = 870
    CEFBS_None, // i_sgt_alias__xpr_general__x_0__xpr_general__ = 871
    CEFBS_None, // i_sgt_alias__xpr_general__x_0_alias__x_0__ = 872
    CEFBS_None, // i_sgt_alias__xpr_general__x_0_alias__x_0_alias__ = 873
    CEFBS_None, // i_sgt_alias__xpr_general__x_0_alias__xpr_general__ = 874
    CEFBS_None, // i_sgt_alias__xpr_general__xpr_general__x_0__ = 875
    CEFBS_None, // i_sgt_alias__xpr_general__xpr_general__x_0_alias__ = 876
    CEFBS_None, // i_sgt_alias__xpr_general__xpr_general__xpr_general__ = 877
    CEFBS_None, // i_sgtz_alias__x_0__x_0__ = 878
    CEFBS_None, // i_sgtz_alias__x_0__x_0_alias__ = 879
    CEFBS_None, // i_sgtz_alias__x_0__xpr_general__ = 880
    CEFBS_None, // i_sgtz_alias__x_0_alias__x_0__ = 881
    CEFBS_None, // i_sgtz_alias__x_0_alias__x_0_alias__ = 882
    CEFBS_None, // i_sgtz_alias__x_0_alias__xpr_general__ = 883
    CEFBS_None, // i_sgtz_alias__xpr_general__x_0__ = 884
    CEFBS_None, // i_sgtz_alias__xpr_general__x_0_alias__ = 885
    CEFBS_None, // i_sgtz_alias__xpr_general__xpr_general__ = 886
    CEFBS_None, // i_sltz_alias__x_0__x_0__ = 887
    CEFBS_None, // i_sltz_alias__x_0__x_0_alias__ = 888
    CEFBS_None, // i_sltz_alias__x_0__xpr_general__ = 889
    CEFBS_None, // i_sltz_alias__x_0_alias__x_0__ = 890
    CEFBS_None, // i_sltz_alias__x_0_alias__x_0_alias__ = 891
    CEFBS_None, // i_sltz_alias__x_0_alias__xpr_general__ = 892
    CEFBS_None, // i_sltz_alias__xpr_general__x_0__ = 893
    CEFBS_None, // i_sltz_alias__xpr_general__x_0_alias__ = 894
    CEFBS_None, // i_sltz_alias__xpr_general__xpr_general__ = 895
    CEFBS_None, // i_snez_alias__x_0__x_0__ = 896
    CEFBS_None, // i_snez_alias__x_0__x_0_alias__ = 897
    CEFBS_None, // i_snez_alias__x_0__xpr_general__ = 898
    CEFBS_None, // i_snez_alias__x_0_alias__x_0__ = 899
    CEFBS_None, // i_snez_alias__x_0_alias__x_0_alias__ = 900
    CEFBS_None, // i_snez_alias__x_0_alias__xpr_general__ = 901
    CEFBS_None, // i_snez_alias__xpr_general__x_0__ = 902
    CEFBS_None, // i_snez_alias__xpr_general__x_0_alias__ = 903
    CEFBS_None, // i_snez_alias__xpr_general__xpr_general__ = 904
    CEFBS_None, // i_stype_store__opc_sb__x_0__simm12__x_0__ = 905
    CEFBS_None, // i_stype_store__opc_sb__x_0__simm12__x_0_alias__ = 906
    CEFBS_None, // i_stype_store__opc_sb__x_0__simm12__xpr_general__ = 907
    CEFBS_None, // i_stype_store__opc_sb__x_0_alias__simm12__x_0__ = 908
    CEFBS_None, // i_stype_store__opc_sb__x_0_alias__simm12__x_0_alias__ = 909
    CEFBS_None, // i_stype_store__opc_sb__x_0_alias__simm12__xpr_general__ = 910
    CEFBS_None, // i_stype_store__opc_sb__xpr_general__simm12__x_0__ = 911
    CEFBS_None, // i_stype_store__opc_sb__xpr_general__simm12__x_0_alias__ = 912
    CEFBS_None, // i_stype_store__opc_sb__xpr_general__simm12__xpr_general__ = 913
    CEFBS_None, // i_stype_store__opc_sh__x_0__simm12__x_0__ = 914
    CEFBS_None, // i_stype_store__opc_sh__x_0__simm12__x_0_alias__ = 915
    CEFBS_None, // i_stype_store__opc_sh__x_0__simm12__xpr_general__ = 916
    CEFBS_None, // i_stype_store__opc_sh__x_0_alias__simm12__x_0__ = 917
    CEFBS_None, // i_stype_store__opc_sh__x_0_alias__simm12__x_0_alias__ = 918
    CEFBS_None, // i_stype_store__opc_sh__x_0_alias__simm12__xpr_general__ = 919
    CEFBS_None, // i_stype_store__opc_sh__xpr_general__simm12__x_0__ = 920
    CEFBS_None, // i_stype_store__opc_sh__xpr_general__simm12__x_0_alias__ = 921
    CEFBS_None, // i_stype_store__opc_sh__xpr_general__simm12__xpr_general__ = 922
    CEFBS_None, // i_stype_store__opc_sw__x_0__simm12__x_0__ = 923
    CEFBS_None, // i_stype_store__opc_sw__x_0__simm12__x_0_alias__ = 924
    CEFBS_None, // i_stype_store__opc_sw__x_0__simm12__xpr_general__ = 925
    CEFBS_None, // i_stype_store__opc_sw__x_0_alias__simm12__x_0__ = 926
    CEFBS_None, // i_stype_store__opc_sw__x_0_alias__simm12__x_0_alias__ = 927
    CEFBS_None, // i_stype_store__opc_sw__x_0_alias__simm12__xpr_general__ = 928
    CEFBS_None, // i_stype_store__opc_sw__xpr_general__simm12__x_0__ = 929
    CEFBS_None, // i_stype_store__opc_sw__xpr_general__simm12__x_0_alias__ = 930
    CEFBS_None, // i_stype_store__opc_sw__xpr_general__simm12__xpr_general__ = 931
    CEFBS_None, // i_utype_ops__opc_auipc__x_0__uimm20__ = 932
    CEFBS_None, // i_utype_ops__opc_auipc__x_0_alias__uimm20__ = 933
    CEFBS_None, // i_utype_ops__opc_auipc__xpr_general__uimm20__ = 934
    CEFBS_None, // i_utype_ops__opc_lui__x_0__uimm20__ = 935
    CEFBS_None, // i_utype_ops__opc_lui__x_0_alias__uimm20__ = 936
    CEFBS_None, // i_utype_ops__opc_lui__xpr_general__uimm20__ = 937
  };

  assert(Inst.getOpcode() < 938);
  const FeatureBitset &RequiredFeatures = FeatureBitsets[RequiredFeaturesRefs[Inst.getOpcode()]];
  FeatureBitset MissingFeatures =
      (AvailableFeatures & RequiredFeatures) ^
      RequiredFeatures;
  if (MissingFeatures.any()) {
    std::ostringstream Msg;
    Msg << "Attempting to emit " << MCII.getName(Inst.getOpcode()).str()
        << " instruction but the ";
    for (unsigned i = 0, e = MissingFeatures.size(); i != e; ++i)
      if (MissingFeatures.test(i))
        Msg << SubtargetFeatureNames[i] << " ";
    Msg << "predicate(s) are not met";
    report_fatal_error(Msg.str());
  }
#else
// Silence unused variable warning on targets that don't use MCII for other purposes (e.g. BPF).
(void)MCII;
#endif // NDEBUG
}
#endif
