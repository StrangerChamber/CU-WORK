/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|*  * Codasip Disassembler                                                    *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#include "llvm/MC/MCInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/DataTypes.h"
#include "llvm/Support/LEB128.h"
#include "llvm/Support/raw_ostream.h"
#include <assert.h>

namespace llvm {

// Helper functions for extracting fields from encoded instructions.
// InsnType must either be integral or an APInt-like object that must:
// * Have a static const max_size_in_bits equal to the number of bits in the
//   encoding.
// * be default-constructible and copy-constructible
// * be constructible from a uint64_t
// * be constructible from an APInt (this can be private)
// * Support getBitsSet(loBit, hiBit)
// * be convertible to uint64_t
// * Support the ~, &, ==, !=, and |= operators with other objects of the same type
// * Support shift (<<, >>) with signed and unsigned integers on the RHS
// * Support put (<<) to raw_ostream&
template<typename InsnType>
#if defined(_MSC_VER) && !defined(__clang__)
__declspec(noinline)
#endif
static InsnType fieldFromInstruction(InsnType insn, unsigned startBit,
                                     unsigned numBits, std::true_type) {
  assert(startBit + numBits <= 64 && "Cannot support >64-bit extractions!");
  assert(startBit + numBits <= (sizeof(InsnType) * 8) &&
         "Instruction field out of bounds!");
  InsnType fieldMask;
  if (numBits == sizeof(InsnType) * 8)
    fieldMask = (InsnType)(-1LL);
  else
    fieldMask = (((InsnType)1 << numBits) - 1) << startBit;
  return (insn & fieldMask) >> startBit;
}

template<typename InsnType>
static InsnType fieldFromInstruction(InsnType insn, unsigned startBit,
                                     unsigned numBits, std::false_type) {
  assert(startBit + numBits <= InsnType::max_size_in_bits && "Instruction field out of bounds!");
  InsnType fieldMask = InsnType::getBitsSet(0, numBits);
  return (insn >> startBit) & fieldMask;
}

template<typename InsnType>
static InsnType fieldFromInstruction(InsnType insn, unsigned startBit,
                                     unsigned numBits) {
  return fieldFromInstruction(insn, startBit, numBits, std::is_integral<InsnType>());
}

static const uint8_t DecoderTable32[] = {
/* 0 */       MCD::OPC_ExtractField, 0, 7,  // Inst{6-0} ...
/* 3 */       MCD::OPC_FilterValue, 3, 218, 0, 0, // Skip to: 226
/* 8 */       MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 11 */      MCD::OPC_FilterValue, 0, 38, 0, 0, // Skip to: 54
/* 16 */      MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 19 */      MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 39
/* 24 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 35
/* 31 */      MCD::OPC_Decode, 196, 3, 0, // Opcode: i_itype_loads__opc_lb__x_0__simm12__x_0__
/* 35 */      MCD::OPC_Decode, 198, 3, 1, // Opcode: i_itype_loads__opc_lb__x_0__simm12__xpr_general__
/* 39 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 50
/* 46 */      MCD::OPC_Decode, 202, 3, 2, // Opcode: i_itype_loads__opc_lb__xpr_general__simm12__x_0__
/* 50 */      MCD::OPC_Decode, 204, 3, 3, // Opcode: i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__
/* 54 */      MCD::OPC_FilterValue, 1, 38, 0, 0, // Skip to: 97
/* 59 */      MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 62 */      MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 82
/* 67 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 78
/* 74 */      MCD::OPC_Decode, 214, 3, 0, // Opcode: i_itype_loads__opc_lh__x_0__simm12__x_0__
/* 78 */      MCD::OPC_Decode, 216, 3, 1, // Opcode: i_itype_loads__opc_lh__x_0__simm12__xpr_general__
/* 82 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 93
/* 89 */      MCD::OPC_Decode, 220, 3, 2, // Opcode: i_itype_loads__opc_lh__xpr_general__simm12__x_0__
/* 93 */      MCD::OPC_Decode, 222, 3, 3, // Opcode: i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__
/* 97 */      MCD::OPC_FilterValue, 2, 38, 0, 0, // Skip to: 140
/* 102 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 105 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 125
/* 110 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 121
/* 117 */     MCD::OPC_Decode, 232, 3, 0, // Opcode: i_itype_loads__opc_lw__x_0__simm12__x_0__
/* 121 */     MCD::OPC_Decode, 234, 3, 1, // Opcode: i_itype_loads__opc_lw__x_0__simm12__xpr_general__
/* 125 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 136
/* 132 */     MCD::OPC_Decode, 238, 3, 2, // Opcode: i_itype_loads__opc_lw__xpr_general__simm12__x_0__
/* 136 */     MCD::OPC_Decode, 240, 3, 3, // Opcode: i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__
/* 140 */     MCD::OPC_FilterValue, 4, 38, 0, 0, // Skip to: 183
/* 145 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 148 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 168
/* 153 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 164
/* 160 */     MCD::OPC_Decode, 205, 3, 0, // Opcode: i_itype_loads__opc_lbu__x_0__simm12__x_0__
/* 164 */     MCD::OPC_Decode, 207, 3, 1, // Opcode: i_itype_loads__opc_lbu__x_0__simm12__xpr_general__
/* 168 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 179
/* 175 */     MCD::OPC_Decode, 211, 3, 2, // Opcode: i_itype_loads__opc_lbu__xpr_general__simm12__x_0__
/* 179 */     MCD::OPC_Decode, 213, 3, 3, // Opcode: i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__
/* 183 */     MCD::OPC_FilterValue, 5, 120, 7, 0, // Skip to: 2100
/* 188 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 191 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 211
/* 196 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 207
/* 203 */     MCD::OPC_Decode, 223, 3, 0, // Opcode: i_itype_loads__opc_lhu__x_0__simm12__x_0__
/* 207 */     MCD::OPC_Decode, 225, 3, 1, // Opcode: i_itype_loads__opc_lhu__x_0__simm12__xpr_general__
/* 211 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 222
/* 218 */     MCD::OPC_Decode, 229, 3, 2, // Opcode: i_itype_loads__opc_lhu__xpr_general__simm12__x_0__
/* 222 */     MCD::OPC_Decode, 231, 3, 3, // Opcode: i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__
/* 226 */     MCD::OPC_FilterValue, 19, 150, 1, 0, // Skip to: 637
/* 231 */     MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 234 */     MCD::OPC_FilterValue, 0, 38, 0, 0, // Skip to: 277
/* 239 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 242 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 262
/* 247 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 258
/* 254 */     MCD::OPC_Decode, 128, 3, 0, // Opcode: i_itype_alu__opc_addi__x_0__x_0__simm12__
/* 258 */     MCD::OPC_Decode, 130, 3, 4, // Opcode: i_itype_alu__opc_addi__x_0__xpr_general__simm12__
/* 262 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 273
/* 269 */     MCD::OPC_Decode, 134, 3, 2, // Opcode: i_itype_alu__opc_addi__xpr_general__x_0__simm12__
/* 273 */     MCD::OPC_Decode, 136, 3, 3, // Opcode: i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__
/* 277 */     MCD::OPC_FilterValue, 1, 46, 0, 0, // Skip to: 328
/* 282 */     MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 285 */     MCD::OPC_FilterValue, 0, 18, 7, 0, // Skip to: 2100
/* 290 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 293 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 313
/* 298 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 309
/* 305 */     MCD::OPC_Decode, 175, 6, 5, // Opcode: i_rtype_shift__opc_slli__x_0__x_0__uimm5__
/* 309 */     MCD::OPC_Decode, 177, 6, 6, // Opcode: i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__
/* 313 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 324
/* 320 */     MCD::OPC_Decode, 181, 6, 7, // Opcode: i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__
/* 324 */     MCD::OPC_Decode, 183, 6, 8, // Opcode: i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__
/* 328 */     MCD::OPC_FilterValue, 2, 38, 0, 0, // Skip to: 371
/* 333 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 336 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 356
/* 341 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 352
/* 348 */     MCD::OPC_Decode, 155, 3, 0, // Opcode: i_itype_alu__opc_slti__x_0__x_0__simm12__
/* 352 */     MCD::OPC_Decode, 157, 3, 4, // Opcode: i_itype_alu__opc_slti__x_0__xpr_general__simm12__
/* 356 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 367
/* 363 */     MCD::OPC_Decode, 161, 3, 2, // Opcode: i_itype_alu__opc_slti__xpr_general__x_0__simm12__
/* 367 */     MCD::OPC_Decode, 163, 3, 3, // Opcode: i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__
/* 371 */     MCD::OPC_FilterValue, 3, 38, 0, 0, // Skip to: 414
/* 376 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 379 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 399
/* 384 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 395
/* 391 */     MCD::OPC_Decode, 164, 3, 0, // Opcode: i_itype_alu__opc_sltiu__x_0__x_0__simm12__
/* 395 */     MCD::OPC_Decode, 166, 3, 4, // Opcode: i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__
/* 399 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 410
/* 406 */     MCD::OPC_Decode, 170, 3, 2, // Opcode: i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__
/* 410 */     MCD::OPC_Decode, 172, 3, 3, // Opcode: i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__
/* 414 */     MCD::OPC_FilterValue, 4, 38, 0, 0, // Skip to: 457
/* 419 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 422 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 442
/* 427 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 438
/* 434 */     MCD::OPC_Decode, 173, 3, 0, // Opcode: i_itype_alu__opc_xori__x_0__x_0__simm12__
/* 438 */     MCD::OPC_Decode, 175, 3, 4, // Opcode: i_itype_alu__opc_xori__x_0__xpr_general__simm12__
/* 442 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 453
/* 449 */     MCD::OPC_Decode, 179, 3, 2, // Opcode: i_itype_alu__opc_xori__xpr_general__x_0__simm12__
/* 453 */     MCD::OPC_Decode, 181, 3, 3, // Opcode: i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__
/* 457 */     MCD::OPC_FilterValue, 5, 89, 0, 0, // Skip to: 551
/* 462 */     MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 465 */     MCD::OPC_FilterValue, 0, 38, 0, 0, // Skip to: 508
/* 470 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 473 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 493
/* 478 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 489
/* 485 */     MCD::OPC_Decode, 193, 6, 5, // Opcode: i_rtype_shift__opc_srli__x_0__x_0__uimm5__
/* 489 */     MCD::OPC_Decode, 195, 6, 6, // Opcode: i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__
/* 493 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 504
/* 500 */     MCD::OPC_Decode, 199, 6, 7, // Opcode: i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__
/* 504 */     MCD::OPC_Decode, 201, 6, 8, // Opcode: i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__
/* 508 */     MCD::OPC_FilterValue, 32, 51, 6, 0, // Skip to: 2100
/* 513 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 516 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 536
/* 521 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 532
/* 528 */     MCD::OPC_Decode, 184, 6, 5, // Opcode: i_rtype_shift__opc_srai__x_0__x_0__uimm5__
/* 532 */     MCD::OPC_Decode, 186, 6, 6, // Opcode: i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__
/* 536 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 547
/* 543 */     MCD::OPC_Decode, 190, 6, 7, // Opcode: i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__
/* 547 */     MCD::OPC_Decode, 192, 6, 8, // Opcode: i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__
/* 551 */     MCD::OPC_FilterValue, 6, 38, 0, 0, // Skip to: 594
/* 556 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 559 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 579
/* 564 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 575
/* 571 */     MCD::OPC_Decode, 146, 3, 0, // Opcode: i_itype_alu__opc_ori__x_0__x_0__simm12__
/* 575 */     MCD::OPC_Decode, 148, 3, 4, // Opcode: i_itype_alu__opc_ori__x_0__xpr_general__simm12__
/* 579 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 590
/* 586 */     MCD::OPC_Decode, 152, 3, 2, // Opcode: i_itype_alu__opc_ori__xpr_general__x_0__simm12__
/* 590 */     MCD::OPC_Decode, 154, 3, 3, // Opcode: i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__
/* 594 */     MCD::OPC_FilterValue, 7, 221, 5, 0, // Skip to: 2100
/* 599 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 602 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 622
/* 607 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 618
/* 614 */     MCD::OPC_Decode, 137, 3, 0, // Opcode: i_itype_alu__opc_andi__x_0__x_0__simm12__
/* 618 */     MCD::OPC_Decode, 139, 3, 4, // Opcode: i_itype_alu__opc_andi__x_0__xpr_general__simm12__
/* 622 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 633
/* 629 */     MCD::OPC_Decode, 143, 3, 2, // Opcode: i_itype_alu__opc_andi__xpr_general__x_0__simm12__
/* 633 */     MCD::OPC_Decode, 145, 3, 3, // Opcode: i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__
/* 637 */     MCD::OPC_FilterValue, 23, 15, 0, 0, // Skip to: 657
/* 642 */     MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 653
/* 649 */     MCD::OPC_Decode, 164, 7, 9, // Opcode: i_utype_ops__opc_auipc__x_0__uimm20__
/* 653 */     MCD::OPC_Decode, 166, 7, 10, // Opcode: i_utype_ops__opc_auipc__xpr_general__uimm20__
/* 657 */     MCD::OPC_FilterValue, 35, 129, 0, 0, // Skip to: 791
/* 662 */     MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 665 */     MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 707
/* 670 */     MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 681
/* 677 */     MCD::OPC_Decode, 137, 7, 11, // Opcode: i_stype_store__opc_sb__x_0__simm12__x_0__
/* 681 */     MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 692
/* 688 */     MCD::OPC_Decode, 139, 7, 12, // Opcode: i_stype_store__opc_sb__x_0__simm12__xpr_general__
/* 692 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 703
/* 699 */     MCD::OPC_Decode, 143, 7, 13, // Opcode: i_stype_store__opc_sb__xpr_general__simm12__x_0__
/* 703 */     MCD::OPC_Decode, 145, 7, 14, // Opcode: i_stype_store__opc_sb__xpr_general__simm12__xpr_general__
/* 707 */     MCD::OPC_FilterValue, 1, 37, 0, 0, // Skip to: 749
/* 712 */     MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 723
/* 719 */     MCD::OPC_Decode, 146, 7, 11, // Opcode: i_stype_store__opc_sh__x_0__simm12__x_0__
/* 723 */     MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 734
/* 730 */     MCD::OPC_Decode, 148, 7, 12, // Opcode: i_stype_store__opc_sh__x_0__simm12__xpr_general__
/* 734 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 745
/* 741 */     MCD::OPC_Decode, 152, 7, 13, // Opcode: i_stype_store__opc_sh__xpr_general__simm12__x_0__
/* 745 */     MCD::OPC_Decode, 154, 7, 14, // Opcode: i_stype_store__opc_sh__xpr_general__simm12__xpr_general__
/* 749 */     MCD::OPC_FilterValue, 2, 66, 5, 0, // Skip to: 2100
/* 754 */     MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 765
/* 761 */     MCD::OPC_Decode, 155, 7, 11, // Opcode: i_stype_store__opc_sw__x_0__simm12__x_0__
/* 765 */     MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 776
/* 772 */     MCD::OPC_Decode, 157, 7, 12, // Opcode: i_stype_store__opc_sw__x_0__simm12__xpr_general__
/* 776 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 787
/* 783 */     MCD::OPC_Decode, 161, 7, 13, // Opcode: i_stype_store__opc_sw__xpr_general__simm12__x_0__
/* 787 */     MCD::OPC_Decode, 163, 7, 14, // Opcode: i_stype_store__opc_sw__xpr_general__simm12__xpr_general__
/* 791 */     MCD::OPC_FilterValue, 51, 169, 3, 0, // Skip to: 1733
/* 796 */     MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 799 */     MCD::OPC_FilterValue, 0, 177, 0, 0, // Skip to: 981
/* 804 */     MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 807 */     MCD::OPC_FilterValue, 0, 82, 0, 0, // Skip to: 894
/* 812 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 815 */     MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 857
/* 820 */     MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 831
/* 827 */     MCD::OPC_Decode, 161, 4, 15, // Opcode: i_rtype_alu__opc_add__x_0__x_0__x_0__
/* 831 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 842
/* 838 */     MCD::OPC_Decode, 163, 4, 16, // Opcode: i_rtype_alu__opc_add__x_0__x_0__xpr_general__
/* 842 */     MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 853
/* 849 */     MCD::OPC_Decode, 167, 4, 17, // Opcode: i_rtype_alu__opc_add__x_0__xpr_general__x_0__
/* 853 */     MCD::OPC_Decode, 169, 4, 18, // Opcode: i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__
/* 857 */     MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 868
/* 864 */     MCD::OPC_Decode, 179, 4, 19, // Opcode: i_rtype_alu__opc_add__xpr_general__x_0__x_0__
/* 868 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 879
/* 875 */     MCD::OPC_Decode, 181, 4, 20, // Opcode: i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__
/* 879 */     MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 890
/* 886 */     MCD::OPC_Decode, 185, 4, 21, // Opcode: i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__
/* 890 */     MCD::OPC_Decode, 187, 4, 22, // Opcode: i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__
/* 894 */     MCD::OPC_FilterValue, 32, 177, 4, 0, // Skip to: 2100
/* 899 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 902 */     MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 944
/* 907 */     MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 918
/* 914 */     MCD::OPC_Decode, 249, 5, 15, // Opcode: i_rtype_alu__opc_sub__x_0__x_0__x_0__
/* 918 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 929
/* 925 */     MCD::OPC_Decode, 251, 5, 16, // Opcode: i_rtype_alu__opc_sub__x_0__x_0__xpr_general__
/* 929 */     MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 940
/* 936 */     MCD::OPC_Decode, 255, 5, 17, // Opcode: i_rtype_alu__opc_sub__x_0__xpr_general__x_0__
/* 940 */     MCD::OPC_Decode, 129, 6, 18, // Opcode: i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__
/* 944 */     MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 955
/* 951 */     MCD::OPC_Decode, 139, 6, 19, // Opcode: i_rtype_alu__opc_sub__xpr_general__x_0__x_0__
/* 955 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 966
/* 962 */     MCD::OPC_Decode, 141, 6, 20, // Opcode: i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__
/* 966 */     MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 977
/* 973 */     MCD::OPC_Decode, 145, 6, 21, // Opcode: i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__
/* 977 */     MCD::OPC_Decode, 147, 6, 23, // Opcode: i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__
/* 981 */     MCD::OPC_FilterValue, 1, 90, 0, 0, // Skip to: 1076
/* 986 */     MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 989 */     MCD::OPC_FilterValue, 0, 82, 4, 0, // Skip to: 2100
/* 994 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 997 */     MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1039
/* 1002 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1013
/* 1009 */    MCD::OPC_Decode, 242, 4, 15, // Opcode: i_rtype_alu__opc_sll__x_0__x_0__x_0__
/* 1013 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1024
/* 1020 */    MCD::OPC_Decode, 244, 4, 16, // Opcode: i_rtype_alu__opc_sll__x_0__x_0__xpr_general__
/* 1024 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1035
/* 1031 */    MCD::OPC_Decode, 248, 4, 17, // Opcode: i_rtype_alu__opc_sll__x_0__xpr_general__x_0__
/* 1035 */    MCD::OPC_Decode, 250, 4, 18, // Opcode: i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__
/* 1039 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1050
/* 1046 */    MCD::OPC_Decode, 132, 5, 19, // Opcode: i_rtype_alu__opc_sll__xpr_general__x_0__x_0__
/* 1050 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1061
/* 1057 */    MCD::OPC_Decode, 134, 5, 20, // Opcode: i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__
/* 1061 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1072
/* 1068 */    MCD::OPC_Decode, 138, 5, 21, // Opcode: i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__
/* 1072 */    MCD::OPC_Decode, 140, 5, 23, // Opcode: i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__
/* 1076 */    MCD::OPC_FilterValue, 2, 90, 0, 0, // Skip to: 1171
/* 1081 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 1084 */    MCD::OPC_FilterValue, 0, 243, 3, 0, // Skip to: 2100
/* 1089 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 1092 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1134
/* 1097 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1108
/* 1104 */    MCD::OPC_Decode, 141, 5, 15, // Opcode: i_rtype_alu__opc_slt__x_0__x_0__x_0__
/* 1108 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1119
/* 1115 */    MCD::OPC_Decode, 143, 5, 16, // Opcode: i_rtype_alu__opc_slt__x_0__x_0__xpr_general__
/* 1119 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1130
/* 1126 */    MCD::OPC_Decode, 147, 5, 17, // Opcode: i_rtype_alu__opc_slt__x_0__xpr_general__x_0__
/* 1130 */    MCD::OPC_Decode, 149, 5, 18, // Opcode: i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__
/* 1134 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1145
/* 1141 */    MCD::OPC_Decode, 159, 5, 19, // Opcode: i_rtype_alu__opc_slt__xpr_general__x_0__x_0__
/* 1145 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1156
/* 1152 */    MCD::OPC_Decode, 161, 5, 20, // Opcode: i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__
/* 1156 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1167
/* 1163 */    MCD::OPC_Decode, 165, 5, 21, // Opcode: i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__
/* 1167 */    MCD::OPC_Decode, 167, 5, 23, // Opcode: i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__
/* 1171 */    MCD::OPC_FilterValue, 3, 90, 0, 0, // Skip to: 1266
/* 1176 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 1179 */    MCD::OPC_FilterValue, 0, 148, 3, 0, // Skip to: 2100
/* 1184 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 1187 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1229
/* 1192 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1203
/* 1199 */    MCD::OPC_Decode, 168, 5, 15, // Opcode: i_rtype_alu__opc_sltu__x_0__x_0__x_0__
/* 1203 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1214
/* 1210 */    MCD::OPC_Decode, 170, 5, 16, // Opcode: i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__
/* 1214 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1225
/* 1221 */    MCD::OPC_Decode, 174, 5, 17, // Opcode: i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__
/* 1225 */    MCD::OPC_Decode, 176, 5, 18, // Opcode: i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__
/* 1229 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1240
/* 1236 */    MCD::OPC_Decode, 186, 5, 19, // Opcode: i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__
/* 1240 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1251
/* 1247 */    MCD::OPC_Decode, 188, 5, 20, // Opcode: i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__
/* 1251 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1262
/* 1258 */    MCD::OPC_Decode, 192, 5, 21, // Opcode: i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__
/* 1262 */    MCD::OPC_Decode, 194, 5, 23, // Opcode: i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__
/* 1266 */    MCD::OPC_FilterValue, 4, 90, 0, 0, // Skip to: 1361
/* 1271 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 1274 */    MCD::OPC_FilterValue, 0, 53, 3, 0, // Skip to: 2100
/* 1279 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 1282 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1324
/* 1287 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1298
/* 1294 */    MCD::OPC_Decode, 148, 6, 15, // Opcode: i_rtype_alu__opc_xor__x_0__x_0__x_0__
/* 1298 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1309
/* 1305 */    MCD::OPC_Decode, 150, 6, 16, // Opcode: i_rtype_alu__opc_xor__x_0__x_0__xpr_general__
/* 1309 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1320
/* 1316 */    MCD::OPC_Decode, 154, 6, 17, // Opcode: i_rtype_alu__opc_xor__x_0__xpr_general__x_0__
/* 1320 */    MCD::OPC_Decode, 156, 6, 18, // Opcode: i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__
/* 1324 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1335
/* 1331 */    MCD::OPC_Decode, 166, 6, 19, // Opcode: i_rtype_alu__opc_xor__xpr_general__x_0__x_0__
/* 1335 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1346
/* 1342 */    MCD::OPC_Decode, 168, 6, 20, // Opcode: i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__
/* 1346 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1357
/* 1353 */    MCD::OPC_Decode, 172, 6, 21, // Opcode: i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__
/* 1357 */    MCD::OPC_Decode, 174, 6, 22, // Opcode: i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__
/* 1361 */    MCD::OPC_FilterValue, 5, 177, 0, 0, // Skip to: 1543
/* 1366 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 1369 */    MCD::OPC_FilterValue, 0, 82, 0, 0, // Skip to: 1456
/* 1374 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 1377 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1419
/* 1382 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1393
/* 1389 */    MCD::OPC_Decode, 222, 5, 15, // Opcode: i_rtype_alu__opc_srl__x_0__x_0__x_0__
/* 1393 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1404
/* 1400 */    MCD::OPC_Decode, 224, 5, 16, // Opcode: i_rtype_alu__opc_srl__x_0__x_0__xpr_general__
/* 1404 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1415
/* 1411 */    MCD::OPC_Decode, 228, 5, 17, // Opcode: i_rtype_alu__opc_srl__x_0__xpr_general__x_0__
/* 1415 */    MCD::OPC_Decode, 230, 5, 18, // Opcode: i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__
/* 1419 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1430
/* 1426 */    MCD::OPC_Decode, 240, 5, 19, // Opcode: i_rtype_alu__opc_srl__xpr_general__x_0__x_0__
/* 1430 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1441
/* 1437 */    MCD::OPC_Decode, 242, 5, 20, // Opcode: i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__
/* 1441 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1452
/* 1448 */    MCD::OPC_Decode, 246, 5, 21, // Opcode: i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__
/* 1452 */    MCD::OPC_Decode, 248, 5, 23, // Opcode: i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__
/* 1456 */    MCD::OPC_FilterValue, 32, 127, 2, 0, // Skip to: 2100
/* 1461 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 1464 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1506
/* 1469 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1480
/* 1476 */    MCD::OPC_Decode, 195, 5, 15, // Opcode: i_rtype_alu__opc_sra__x_0__x_0__x_0__
/* 1480 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1491
/* 1487 */    MCD::OPC_Decode, 197, 5, 16, // Opcode: i_rtype_alu__opc_sra__x_0__x_0__xpr_general__
/* 1491 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1502
/* 1498 */    MCD::OPC_Decode, 201, 5, 17, // Opcode: i_rtype_alu__opc_sra__x_0__xpr_general__x_0__
/* 1502 */    MCD::OPC_Decode, 203, 5, 18, // Opcode: i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__
/* 1506 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1517
/* 1513 */    MCD::OPC_Decode, 213, 5, 19, // Opcode: i_rtype_alu__opc_sra__xpr_general__x_0__x_0__
/* 1517 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1528
/* 1524 */    MCD::OPC_Decode, 215, 5, 20, // Opcode: i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__
/* 1528 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1539
/* 1535 */    MCD::OPC_Decode, 219, 5, 21, // Opcode: i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__
/* 1539 */    MCD::OPC_Decode, 221, 5, 23, // Opcode: i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__
/* 1543 */    MCD::OPC_FilterValue, 6, 90, 0, 0, // Skip to: 1638
/* 1548 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 1551 */    MCD::OPC_FilterValue, 0, 32, 2, 0, // Skip to: 2100
/* 1556 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 1559 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1601
/* 1564 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1575
/* 1571 */    MCD::OPC_Decode, 215, 4, 15, // Opcode: i_rtype_alu__opc_or__x_0__x_0__x_0__
/* 1575 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1586
/* 1582 */    MCD::OPC_Decode, 217, 4, 16, // Opcode: i_rtype_alu__opc_or__x_0__x_0__xpr_general__
/* 1586 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1597
/* 1593 */    MCD::OPC_Decode, 221, 4, 17, // Opcode: i_rtype_alu__opc_or__x_0__xpr_general__x_0__
/* 1597 */    MCD::OPC_Decode, 223, 4, 18, // Opcode: i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__
/* 1601 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1612
/* 1608 */    MCD::OPC_Decode, 233, 4, 19, // Opcode: i_rtype_alu__opc_or__xpr_general__x_0__x_0__
/* 1612 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1623
/* 1619 */    MCD::OPC_Decode, 235, 4, 20, // Opcode: i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__
/* 1623 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1634
/* 1630 */    MCD::OPC_Decode, 239, 4, 21, // Opcode: i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__
/* 1634 */    MCD::OPC_Decode, 241, 4, 22, // Opcode: i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__
/* 1638 */    MCD::OPC_FilterValue, 7, 201, 1, 0, // Skip to: 2100
/* 1643 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 1646 */    MCD::OPC_FilterValue, 0, 193, 1, 0, // Skip to: 2100
/* 1651 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 1654 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1696
/* 1659 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1670
/* 1666 */    MCD::OPC_Decode, 188, 4, 15, // Opcode: i_rtype_alu__opc_and__x_0__x_0__x_0__
/* 1670 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1681
/* 1677 */    MCD::OPC_Decode, 190, 4, 16, // Opcode: i_rtype_alu__opc_and__x_0__x_0__xpr_general__
/* 1681 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1692
/* 1688 */    MCD::OPC_Decode, 194, 4, 17, // Opcode: i_rtype_alu__opc_and__x_0__xpr_general__x_0__
/* 1692 */    MCD::OPC_Decode, 196, 4, 18, // Opcode: i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__
/* 1696 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1707
/* 1703 */    MCD::OPC_Decode, 206, 4, 19, // Opcode: i_rtype_alu__opc_and__xpr_general__x_0__x_0__
/* 1707 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1718
/* 1714 */    MCD::OPC_Decode, 208, 4, 20, // Opcode: i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__
/* 1718 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1729
/* 1725 */    MCD::OPC_Decode, 212, 4, 21, // Opcode: i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__
/* 1729 */    MCD::OPC_Decode, 214, 4, 22, // Opcode: i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__
/* 1733 */    MCD::OPC_FilterValue, 55, 15, 0, 0, // Skip to: 1753
/* 1738 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 1749
/* 1745 */    MCD::OPC_Decode, 167, 7, 9, // Opcode: i_utype_ops__opc_lui__x_0__uimm20__
/* 1749 */    MCD::OPC_Decode, 169, 7, 10, // Opcode: i_utype_ops__opc_lui__xpr_general__uimm20__
/* 1753 */    MCD::OPC_FilterValue, 63, 11, 0, 0, // Skip to: 1769
/* 1758 */    MCD::OPC_CheckField, 7, 25, 0, 79, 1, 0, // Skip to: 2100
/* 1765 */    MCD::OPC_Decode, 255, 2, 15, // Opcode: i_halt__opc_halt__
/* 1769 */    MCD::OPC_FilterValue, 99, 255, 0, 0, // Skip to: 2029
/* 1774 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 1777 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 1819
/* 1782 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1793
/* 1789 */    MCD::OPC_Decode, 184, 2, 24, // Opcode: i_btype_branches__opc_beq__x_0__x_0__relative_addr12__
/* 1793 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1804
/* 1800 */    MCD::OPC_Decode, 190, 2, 25, // Opcode: i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__
/* 1804 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1815
/* 1811 */    MCD::OPC_Decode, 194, 2, 26, // Opcode: i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__
/* 1815 */    MCD::OPC_Decode, 196, 2, 27, // Opcode: i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__
/* 1819 */    MCD::OPC_FilterValue, 1, 37, 0, 0, // Skip to: 1861
/* 1824 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1835
/* 1831 */    MCD::OPC_Decode, 241, 2, 24, // Opcode: i_btype_branches__opc_bne__x_0__x_0__relative_addr12__
/* 1835 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1846
/* 1842 */    MCD::OPC_Decode, 243, 2, 25, // Opcode: i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__
/* 1846 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1857
/* 1853 */    MCD::OPC_Decode, 247, 2, 26, // Opcode: i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__
/* 1857 */    MCD::OPC_Decode, 249, 2, 27, // Opcode: i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__
/* 1861 */    MCD::OPC_FilterValue, 4, 37, 0, 0, // Skip to: 1903
/* 1866 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1877
/* 1873 */    MCD::OPC_Decode, 223, 2, 24, // Opcode: i_btype_branches__opc_blt__x_0__x_0__relative_addr12__
/* 1877 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1888
/* 1884 */    MCD::OPC_Decode, 225, 2, 25, // Opcode: i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__
/* 1888 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1899
/* 1895 */    MCD::OPC_Decode, 229, 2, 26, // Opcode: i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__
/* 1899 */    MCD::OPC_Decode, 231, 2, 27, // Opcode: i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__
/* 1903 */    MCD::OPC_FilterValue, 5, 37, 0, 0, // Skip to: 1945
/* 1908 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1919
/* 1915 */    MCD::OPC_Decode, 197, 2, 24, // Opcode: i_btype_branches__opc_bge__x_0__x_0__relative_addr12__
/* 1919 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1930
/* 1926 */    MCD::OPC_Decode, 203, 2, 25, // Opcode: i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__
/* 1930 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1941
/* 1937 */    MCD::OPC_Decode, 207, 2, 26, // Opcode: i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__
/* 1941 */    MCD::OPC_Decode, 209, 2, 27, // Opcode: i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__
/* 1945 */    MCD::OPC_FilterValue, 6, 37, 0, 0, // Skip to: 1987
/* 1950 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 1961
/* 1957 */    MCD::OPC_Decode, 232, 2, 24, // Opcode: i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__
/* 1961 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 1972
/* 1968 */    MCD::OPC_Decode, 234, 2, 25, // Opcode: i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__
/* 1972 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 1983
/* 1979 */    MCD::OPC_Decode, 238, 2, 26, // Opcode: i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__
/* 1983 */    MCD::OPC_Decode, 240, 2, 27, // Opcode: i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__
/* 1987 */    MCD::OPC_FilterValue, 7, 108, 0, 0, // Skip to: 2100
/* 1992 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 2003
/* 1999 */    MCD::OPC_Decode, 210, 2, 24, // Opcode: i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__
/* 2003 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 2014
/* 2010 */    MCD::OPC_Decode, 216, 2, 25, // Opcode: i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__
/* 2014 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 2025
/* 2021 */    MCD::OPC_Decode, 220, 2, 26, // Opcode: i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__
/* 2025 */    MCD::OPC_Decode, 222, 2, 27, // Opcode: i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__
/* 2029 */    MCD::OPC_FilterValue, 103, 46, 0, 0, // Skip to: 2080
/* 2034 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 2037 */    MCD::OPC_FilterValue, 0, 58, 0, 0, // Skip to: 2100
/* 2042 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 2045 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 2065
/* 2050 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 2061
/* 2057 */    MCD::OPC_Decode, 182, 3, 0, // Opcode: i_itype_jlreg__opc_jalr__x_0__simm12__x_0__
/* 2061 */    MCD::OPC_Decode, 188, 3, 4, // Opcode: i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__
/* 2065 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 2076
/* 2072 */    MCD::OPC_Decode, 193, 3, 2, // Opcode: i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__
/* 2076 */    MCD::OPC_Decode, 195, 3, 3, // Opcode: i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__
/* 2080 */    MCD::OPC_FilterValue, 111, 15, 0, 0, // Skip to: 2100
/* 2085 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 2096
/* 2092 */    MCD::OPC_Decode, 249, 3, 28, // Opcode: i_jtype_jlink__opc_jal__x_0__relative_addr20__
/* 2096 */    MCD::OPC_Decode, 255, 3, 29, // Opcode: i_jtype_jlink__opc_jal__xpr_general__relative_addr20__
/* 2100 */    MCD::OPC_Fail,
  0
};

static bool checkDecoderPredicate(unsigned Idx, const FeatureBitset& Bits) {
  llvm_unreachable("Invalid index!");
}

template<typename InsnType>
static DecodeStatus decodeToMCInst(DecodeStatus S, unsigned Idx, InsnType insn, MCInst &MI,
                                   uint64_t Address, const void *Decoder, bool &DecodeComplete) {
  DecodeComplete = true;
  InsnType tmp;
  switch (Idx) {
  default: llvm_unreachable("Invalid index!");
  case 0:
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 1:
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 2:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 3:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 4:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 5:
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 6:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 7:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 8:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 9:
    tmp = fieldFromInstruction(insn, 12, 20);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 10:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 12, 20);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 11:
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 12:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 13:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 14:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 15:
    return S;
  case 16:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 17:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 18:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 19:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 20:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 21:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 22:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 23:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 24:
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 25:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 26:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 27:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 28:
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 12, 8) << 11;
    tmp |= fieldFromInstruction(insn, 20, 1) << 10;
    tmp |= fieldFromInstruction(insn, 21, 10) << 0;
    tmp |= fieldFromInstruction(insn, 31, 1) << 19;
    if (decodeMI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 29:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (Decodexpr_generalRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 12, 8) << 11;
    tmp |= fieldFromInstruction(insn, 20, 1) << 10;
    tmp |= fieldFromInstruction(insn, 21, 10) << 0;
    tmp |= fieldFromInstruction(insn, 31, 1) << 19;
    if (decodeMI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  }
}

template<typename InsnType>
static DecodeStatus decodeInstruction(const uint8_t DecodeTable[], MCInst &MI,
                                      InsnType insn, uint64_t Address,
                                      const void *DisAsm,
                                      const MCSubtargetInfo &STI) {
  const FeatureBitset& Bits = STI.getFeatureBits();

  const uint8_t *Ptr = DecodeTable;
  InsnType CurFieldValue = 0;
  DecodeStatus S = MCDisassembler::Success;
  while (true) {
    ptrdiff_t Loc = Ptr - DecodeTable;
    switch (*Ptr) {
    default:
      errs() << Loc << ": Unexpected decode table opcode!\n";
      return MCDisassembler::Fail;
    case MCD::OPC_ExtractField: {
      unsigned Start = *++Ptr;
      unsigned Len = *++Ptr;
      ++Ptr;
      CurFieldValue = fieldFromInstruction(insn, Start, Len);
      LLVM_DEBUG(dbgs() << Loc << ": OPC_ExtractField(" << Start << ", "
                   << Len << "): " << CurFieldValue << "\n");
      break;
    }
    case MCD::OPC_FilterValue: {
      // Decode the field value.
      unsigned Len;
      InsnType Val = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;

      // Perform the filter operation.
      if (Val != CurFieldValue)
        Ptr += NumToSkip;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_FilterValue(" << Val << ", " << NumToSkip
                   << "): " << ((Val != CurFieldValue) ? "FAIL:" : "PASS:")
                   << " continuing at " << (Ptr - DecodeTable) << "\n");

      break;
    }
    case MCD::OPC_CheckField: {
      unsigned Start = *++Ptr;
      unsigned Len = *++Ptr;
      InsnType FieldValue = fieldFromInstruction(insn, Start, Len);
      // Decode the field value.
      InsnType ExpectedValue = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;

      // If the actual and expected values don't match, skip.
      if (ExpectedValue != FieldValue)
        Ptr += NumToSkip;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_CheckField(" << Start << ", "
                   << Len << ", " << ExpectedValue << ", " << NumToSkip
                   << "): FieldValue = " << FieldValue << ", ExpectedValue = "
                   << ExpectedValue << ": "
                   << ((ExpectedValue == FieldValue) ? "PASS\n" : "FAIL\n"));
      break;
    }
    case MCD::OPC_CheckPredicate: {
      unsigned Len;
      // Decode the Predicate Index value.
      unsigned PIdx = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;
      // Check the predicate.
      bool Pred;
      if (!(Pred = checkDecoderPredicate(PIdx, Bits)))
        Ptr += NumToSkip;
      (void)Pred;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_CheckPredicate(" << PIdx << "): "
            << (Pred ? "PASS\n" : "FAIL\n"));

      break;
    }
    case MCD::OPC_Decode: {
      unsigned Len;
      // Decode the Opcode value.
      unsigned Opc = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      unsigned DecodeIdx = decodeULEB128(Ptr, &Len);
      Ptr += Len;

      MI.clear();
      MI.setOpcode(Opc);
      bool DecodeComplete;
      S = decodeToMCInst(S, DecodeIdx, insn, MI, Address, DisAsm, DecodeComplete);
      assert(DecodeComplete);

      LLVM_DEBUG(dbgs() << Loc << ": OPC_Decode: opcode " << Opc
                   << ", using decoder " << DecodeIdx << ": "
                   << (S != MCDisassembler::Fail ? "PASS" : "FAIL") << "\n");
      return S;
    }
    case MCD::OPC_TryDecode: {
      unsigned Len;
      // Decode the Opcode value.
      unsigned Opc = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      unsigned DecodeIdx = decodeULEB128(Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;

      // Perform the decode operation.
      MCInst TmpMI;
      TmpMI.setOpcode(Opc);
      bool DecodeComplete;
      S = decodeToMCInst(S, DecodeIdx, insn, TmpMI, Address, DisAsm, DecodeComplete);
      LLVM_DEBUG(dbgs() << Loc << ": OPC_TryDecode: opcode " << Opc
                   << ", using decoder " << DecodeIdx << ": ");

      if (DecodeComplete) {
        // Decoding complete.
        LLVM_DEBUG(dbgs() << (S != MCDisassembler::Fail ? "PASS" : "FAIL") << "\n");
        MI = TmpMI;
        return S;
      } else {
        assert(S == MCDisassembler::Fail);
        // If the decoding was incomplete, skip.
        Ptr += NumToSkip;
        LLVM_DEBUG(dbgs() << "FAIL: continuing at " << (Ptr - DecodeTable) << "\n");
        // Reset decode status. This also drops a SoftFail status that could be
        // set before the decode attempt.
        S = MCDisassembler::Success;
      }
      break;
    }
    case MCD::OPC_SoftFail: {
      // Decode the mask values.
      unsigned Len;
      InsnType PositiveMask = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      InsnType NegativeMask = decodeULEB128(Ptr, &Len);
      Ptr += Len;
      bool Fail = (insn & PositiveMask) || (~insn & NegativeMask);
      if (Fail)
        S = MCDisassembler::SoftFail;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_SoftFail: " << (Fail ? "FAIL\n":"PASS\n"));
      break;
    }
    case MCD::OPC_Fail: {
      LLVM_DEBUG(dbgs() << Loc << ": OPC_Fail\n");
      return MCDisassembler::Fail;
    }
    }
  }
  llvm_unreachable("bogosity detected in disassembler state machine!");
}


} // End llvm namespace
