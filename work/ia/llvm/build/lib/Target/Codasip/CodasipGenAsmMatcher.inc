/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Assembly Matcher Source Fragment                                           *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_ASSEMBLER_HEADER
#undef GET_ASSEMBLER_HEADER
  // This should be included into the middle of the declaration of
  // your subclasses implementation of MCTargetAsmParser.
  FeatureBitset ComputeAvailableFeatures(const FeatureBitset& FB) const;
  void convertToMCInst(unsigned Kind, MCInst &Inst, unsigned Opcode,
                       const OperandVector &Operands);
  void convertToMapAndConstraints(unsigned Kind,
                           const OperandVector &Operands) override;
  unsigned MatchInstructionImpl(const OperandVector &Operands,
                                MCInst &Inst,
                                uint64_t &ErrorInfo,
                                FeatureBitset &MissingFeatures,
                                bool matchingInlineAsm,
                                unsigned VariantID = 0);
  unsigned MatchInstructionImpl(const OperandVector &Operands,
                                MCInst &Inst,
                                uint64_t &ErrorInfo,
                                bool matchingInlineAsm,
                                unsigned VariantID = 0) {
    FeatureBitset MissingFeatures;
    return MatchInstructionImpl(Operands, Inst, ErrorInfo, MissingFeatures,
                                matchingInlineAsm, VariantID);
  }

#endif // GET_ASSEMBLER_HEADER_INFO


#ifdef GET_OPERAND_DIAGNOSTIC_TYPES
#undef GET_OPERAND_DIAGNOSTIC_TYPES

#endif // GET_OPERAND_DIAGNOSTIC_TYPES


#ifdef GET_REGISTER_MATCHER
#undef GET_REGISTER_MATCHER

// Bits for subtarget features that participate in instruction matching.
enum SubtargetFeatureBits : uint8_t {
};

static unsigned MatchRegisterName(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 2:	 // 9 strings to match.
    if (Name[0] != 'x')
      break;
    switch (Name[1]) {
    default: break;
    case '1':	 // 1 string to match.
      return 2;	 // "x1"
    case '2':	 // 1 string to match.
      return 3;	 // "x2"
    case '3':	 // 1 string to match.
      return 4;	 // "x3"
    case '4':	 // 1 string to match.
      return 5;	 // "x4"
    case '5':	 // 1 string to match.
      return 6;	 // "x5"
    case '6':	 // 1 string to match.
      return 7;	 // "x6"
    case '7':	 // 1 string to match.
      return 8;	 // "x7"
    case '8':	 // 1 string to match.
      return 9;	 // "x8"
    case '9':	 // 1 string to match.
      return 10;	 // "x9"
    }
    break;
  case 3:	 // 22 strings to match.
    if (Name[0] != 'x')
      break;
    switch (Name[1]) {
    default: break;
    case '1':	 // 10 strings to match.
      switch (Name[2]) {
      default: break;
      case '0':	 // 1 string to match.
        return 11;	 // "x10"
      case '1':	 // 1 string to match.
        return 12;	 // "x11"
      case '2':	 // 1 string to match.
        return 13;	 // "x12"
      case '3':	 // 1 string to match.
        return 14;	 // "x13"
      case '4':	 // 1 string to match.
        return 15;	 // "x14"
      case '5':	 // 1 string to match.
        return 16;	 // "x15"
      case '6':	 // 1 string to match.
        return 17;	 // "x16"
      case '7':	 // 1 string to match.
        return 18;	 // "x17"
      case '8':	 // 1 string to match.
        return 19;	 // "x18"
      case '9':	 // 1 string to match.
        return 20;	 // "x19"
      }
      break;
    case '2':	 // 10 strings to match.
      switch (Name[2]) {
      default: break;
      case '0':	 // 1 string to match.
        return 21;	 // "x20"
      case '1':	 // 1 string to match.
        return 22;	 // "x21"
      case '2':	 // 1 string to match.
        return 23;	 // "x22"
      case '3':	 // 1 string to match.
        return 24;	 // "x23"
      case '4':	 // 1 string to match.
        return 25;	 // "x24"
      case '5':	 // 1 string to match.
        return 26;	 // "x25"
      case '6':	 // 1 string to match.
        return 27;	 // "x26"
      case '7':	 // 1 string to match.
        return 28;	 // "x27"
      case '8':	 // 1 string to match.
        return 29;	 // "x28"
      case '9':	 // 1 string to match.
        return 30;	 // "x29"
      }
      break;
    case '3':	 // 2 strings to match.
      switch (Name[2]) {
      default: break;
      case '0':	 // 1 string to match.
        return 31;	 // "x30"
      case '1':	 // 1 string to match.
        return 32;	 // "x31"
      }
      break;
    }
    break;
  }
  return 0;
}

static unsigned MatchRegisterAltName(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 2:	 // 30 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 8 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 11;	 // "a0"
      case '1':	 // 1 string to match.
        return 12;	 // "a1"
      case '2':	 // 1 string to match.
        return 13;	 // "a2"
      case '3':	 // 1 string to match.
        return 14;	 // "a3"
      case '4':	 // 1 string to match.
        return 15;	 // "a4"
      case '5':	 // 1 string to match.
        return 16;	 // "a5"
      case '6':	 // 1 string to match.
        return 17;	 // "a6"
      case '7':	 // 1 string to match.
        return 18;	 // "a7"
      }
      break;
    case 'f':	 // 1 string to match.
      if (Name[1] != 'p')
        break;
      return 9;	 // "fp"
    case 'g':	 // 1 string to match.
      if (Name[1] != 'p')
        break;
      return 4;	 // "gp"
    case 'r':	 // 1 string to match.
      if (Name[1] != 'a')
        break;
      return 2;	 // "ra"
    case 's':	 // 11 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 9;	 // "s0"
      case '1':	 // 1 string to match.
        return 10;	 // "s1"
      case '2':	 // 1 string to match.
        return 19;	 // "s2"
      case '3':	 // 1 string to match.
        return 20;	 // "s3"
      case '4':	 // 1 string to match.
        return 21;	 // "s4"
      case '5':	 // 1 string to match.
        return 22;	 // "s5"
      case '6':	 // 1 string to match.
        return 23;	 // "s6"
      case '7':	 // 1 string to match.
        return 24;	 // "s7"
      case '8':	 // 1 string to match.
        return 25;	 // "s8"
      case '9':	 // 1 string to match.
        return 26;	 // "s9"
      case 'p':	 // 1 string to match.
        return 3;	 // "sp"
      }
      break;
    case 't':	 // 8 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 6;	 // "t0"
      case '1':	 // 1 string to match.
        return 7;	 // "t1"
      case '2':	 // 1 string to match.
        return 8;	 // "t2"
      case '3':	 // 1 string to match.
        return 29;	 // "t3"
      case '4':	 // 1 string to match.
        return 30;	 // "t4"
      case '5':	 // 1 string to match.
        return 31;	 // "t5"
      case '6':	 // 1 string to match.
        return 32;	 // "t6"
      case 'p':	 // 1 string to match.
        return 5;	 // "tp"
      }
      break;
    }
    break;
  case 3:	 // 2 strings to match.
    if (memcmp(Name.data()+0, "s1", 2) != 0)
      break;
    switch (Name[2]) {
    default: break;
    case '0':	 // 1 string to match.
      return 27;	 // "s10"
    case '1':	 // 1 string to match.
      return 28;	 // "s11"
    }
    break;
  }
  return 0;
}

#endif // GET_REGISTER_MATCHER


#ifdef GET_SUBTARGET_FEATURE_NAME
#undef GET_SUBTARGET_FEATURE_NAME

// User-level names for subtarget features that participate in
// instruction matching.
static const char *getSubtargetFeatureName(uint64_t Val) {
  return "(unknown)";
}

#endif // GET_SUBTARGET_FEATURE_NAME


#ifdef GET_MATCHER_IMPLEMENTATION
#undef GET_MATCHER_IMPLEMENTATION

static const uint8_t TiedAsmOperandTable[][3] = { /* empty  */ {0, 0, 0} };

namespace {
enum OperatorConversionKind {
  CVT_Done,
  CVT_Reg,
  CVT_Tied,
  CVT_95_Reg,
  CVT_95_addImmOperands,
  CVT_NUM_CONVERTERS
};

enum InstructionConversionKind {
  Convert_NoOperands,
  Convert__Reg1_3,
  Convert__Reg1_2,
  Convert__Reg1_2__Reg1_3,
  Convert__Reg1_1,
  Convert__Reg1_1__Reg1_3,
  Convert__Reg1_1__Reg1_2,
  Convert__Reg1_1__Reg1_3__Reg1_2,
  Convert__Imm1_3,
  Convert__Reg1_2__Imm1_3,
  Convert__Reg1_1__Imm1_3,
  Convert__Reg1_1__Reg1_2__Imm1_3,
  Convert__Imm1_2,
  Convert__Reg1_1__Imm1_2,
  Convert__Imm1_1,
  Convert__Reg1_3__Imm1_1,
  Convert__Reg1_4__Imm1_2,
  Convert__Imm1_2__Reg1_4,
  Convert__Reg1_1__Reg1_4__Imm1_2,
  Convert__Reg1_1__Reg1_2__Reg1_3,
  CVT_NUM_SIGNATURES
};

} // end anonymous namespace

static const uint8_t ConversionTable[CVT_NUM_SIGNATURES][7] = {
  // Convert_NoOperands
  { CVT_Done },
  // Convert__Reg1_3
  { CVT_95_Reg, 3, CVT_Done },
  // Convert__Reg1_2
  { CVT_95_Reg, 2, CVT_Done },
  // Convert__Reg1_2__Reg1_3
  { CVT_95_Reg, 2, CVT_95_Reg, 3, CVT_Done },
  // Convert__Reg1_1
  { CVT_95_Reg, 1, CVT_Done },
  // Convert__Reg1_1__Reg1_3
  { CVT_95_Reg, 1, CVT_95_Reg, 3, CVT_Done },
  // Convert__Reg1_1__Reg1_2
  { CVT_95_Reg, 1, CVT_95_Reg, 2, CVT_Done },
  // Convert__Reg1_1__Reg1_3__Reg1_2
  { CVT_95_Reg, 1, CVT_95_Reg, 3, CVT_95_Reg, 2, CVT_Done },
  // Convert__Imm1_3
  { CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Reg1_2__Imm1_3
  { CVT_95_Reg, 2, CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Reg1_1__Imm1_3
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Reg1_1__Reg1_2__Imm1_3
  { CVT_95_Reg, 1, CVT_95_Reg, 2, CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Imm1_2
  { CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_1__Imm1_2
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Imm1_1
  { CVT_95_addImmOperands, 1, CVT_Done },
  // Convert__Reg1_3__Imm1_1
  { CVT_95_Reg, 3, CVT_95_addImmOperands, 1, CVT_Done },
  // Convert__Reg1_4__Imm1_2
  { CVT_95_Reg, 4, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Imm1_2__Reg1_4
  { CVT_95_addImmOperands, 2, CVT_95_Reg, 4, CVT_Done },
  // Convert__Reg1_1__Reg1_4__Imm1_2
  { CVT_95_Reg, 1, CVT_95_Reg, 4, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_1__Reg1_2__Reg1_3
  { CVT_95_Reg, 1, CVT_95_Reg, 2, CVT_95_Reg, 3, CVT_Done },
};

void CodasipAsmParser::
convertToMCInst(unsigned Kind, MCInst &Inst, unsigned Opcode,
                const OperandVector &Operands) {
  assert(Kind < CVT_NUM_SIGNATURES && "Invalid signature!");
  const uint8_t *Converter = ConversionTable[Kind];
  unsigned OpIdx;
  Inst.setOpcode(Opcode);
  for (const uint8_t *p = Converter; *p; p+= 2) {
    OpIdx = *(p + 1);
    switch (*p) {
    default: llvm_unreachable("invalid conversion entry!");
    case CVT_Reg:
      static_cast<CodasipOperand&>(*Operands[OpIdx]).addRegOperands(Inst, 1);
      break;
    case CVT_Tied: {
      assert(OpIdx < (size_t)(std::end(TiedAsmOperandTable) -
                          std::begin(TiedAsmOperandTable)) &&
             "Tied operand not found");
      unsigned TiedResOpnd = TiedAsmOperandTable[OpIdx][0];
      if (TiedResOpnd != (uint8_t) -1)
        Inst.addOperand(Inst.getOperand(TiedResOpnd));
      break;
    }
    case CVT_95_Reg:
      static_cast<CodasipOperand&>(*Operands[OpIdx]).addRegOperands(Inst, 1);
      break;
    case CVT_95_addImmOperands:
      static_cast<CodasipOperand&>(*Operands[OpIdx]).addImmOperands(Inst, 1);
      break;
    }
  }
}

void CodasipAsmParser::
convertToMapAndConstraints(unsigned Kind,
                           const OperandVector &Operands) {
  assert(Kind < CVT_NUM_SIGNATURES && "Invalid signature!");
  unsigned NumMCOperands = 0;
  const uint8_t *Converter = ConversionTable[Kind];
  for (const uint8_t *p = Converter; *p; p+= 2) {
    switch (*p) {
    default: llvm_unreachable("invalid conversion entry!");
    case CVT_Reg:
      Operands[*(p + 1)]->setMCOperandNum(NumMCOperands);
      Operands[*(p + 1)]->setConstraint("r");
      ++NumMCOperands;
      break;
    case CVT_Tied:
      ++NumMCOperands;
      break;
    case CVT_95_Reg:
      Operands[*(p + 1)]->setMCOperandNum(NumMCOperands);
      Operands[*(p + 1)]->setConstraint("r");
      NumMCOperands += 1;
      break;
    case CVT_95_addImmOperands:
      Operands[*(p + 1)]->setMCOperandNum(NumMCOperands);
      Operands[*(p + 1)]->setConstraint("m");
      NumMCOperands += 1;
      break;
    }
  }
}

namespace {

/// MatchClassKind - The kinds of classes which participate in
/// instruction matching.
enum MatchClassKind {
  InvalidMatchClass = 0,
  OptionalMatchClass = 1,
  MCK__40_, // '('
  MCK__41_, // ')'
  MCK_add, // 'add'
  MCK_addi, // 'addi'
  MCK_and, // 'and'
  MCK_andi, // 'andi'
  MCK_auipc, // 'auipc'
  MCK_beq, // 'beq'
  MCK_beqz, // 'beqz'
  MCK_bge, // 'bge'
  MCK_bgeu, // 'bgeu'
  MCK_bgez, // 'bgez'
  MCK_bgt, // 'bgt'
  MCK_bgtu, // 'bgtu'
  MCK_bgtz, // 'bgtz'
  MCK_ble, // 'ble'
  MCK_bleu, // 'bleu'
  MCK_blez, // 'blez'
  MCK_blt, // 'blt'
  MCK_bltu, // 'bltu'
  MCK_bltz, // 'bltz'
  MCK_bne, // 'bne'
  MCK_bnez, // 'bnez'
  MCK_call, // 'call'
  MCK_call_95_reg, // 'call_reg'
  MCK_halt, // 'halt'
  MCK_j, // 'j'
  MCK_jal, // 'jal'
  MCK_jalr, // 'jalr'
  MCK_jr, // 'jr'
  MCK_lb, // 'lb'
  MCK_lbu, // 'lbu'
  MCK_lh, // 'lh'
  MCK_lhu, // 'lhu'
  MCK_li, // 'li'
  MCK_lui, // 'lui'
  MCK_lw, // 'lw'
  MCK_mv, // 'mv'
  MCK_neg, // 'neg'
  MCK_nop, // 'nop'
  MCK_not, // 'not'
  MCK_or, // 'or'
  MCK_ori, // 'ori'
  MCK_ret, // 'ret'
  MCK_sb, // 'sb'
  MCK_seqz, // 'seqz'
  MCK_sgt, // 'sgt'
  MCK_sgtz, // 'sgtz'
  MCK_sh, // 'sh'
  MCK_sll, // 'sll'
  MCK_slli, // 'slli'
  MCK_slt, // 'slt'
  MCK_slti, // 'slti'
  MCK_sltiu, // 'sltiu'
  MCK_sltu, // 'sltu'
  MCK_sltz, // 'sltz'
  MCK_snez, // 'snez'
  MCK_sra, // 'sra'
  MCK_srai, // 'srai'
  MCK_srl, // 'srl'
  MCK_srli, // 'srli'
  MCK_sub, // 'sub'
  MCK_sw, // 'sw'
  MCK_x0, // 'x0'
  MCK_xor, // 'xor'
  MCK_xori, // 'xori'
  MCK_zero, // 'zero'
  MCK_LAST_TOKEN = MCK_zero,
  MCK_xpr_general, // register class 'xpr_general'
  MCK_rf_xpr, // register class 'rf_xpr'
  MCK_LAST_REGISTER = MCK_rf_xpr,
  MCK_Imm, // user defined class 'ImmAsmOperand'
  NumMatchClassKinds
};

}

static unsigned getDiagKindFromRegisterClass(MatchClassKind RegisterClass) {
  return MCTargetAsmParser::Match_InvalidOperand;
}

static MatchClassKind matchTokenString(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 1:	 // 3 strings to match.
    switch (Name[0]) {
    default: break;
    case '(':	 // 1 string to match.
      return MCK__40_;	 // "("
    case ')':	 // 1 string to match.
      return MCK__41_;	 // ")"
    case 'j':	 // 1 string to match.
      return MCK_j;	 // "j"
    }
    break;
  case 2:	 // 11 strings to match.
    switch (Name[0]) {
    default: break;
    case 'j':	 // 1 string to match.
      if (Name[1] != 'r')
        break;
      return MCK_jr;	 // "jr"
    case 'l':	 // 4 strings to match.
      switch (Name[1]) {
      default: break;
      case 'b':	 // 1 string to match.
        return MCK_lb;	 // "lb"
      case 'h':	 // 1 string to match.
        return MCK_lh;	 // "lh"
      case 'i':	 // 1 string to match.
        return MCK_li;	 // "li"
      case 'w':	 // 1 string to match.
        return MCK_lw;	 // "lw"
      }
      break;
    case 'm':	 // 1 string to match.
      if (Name[1] != 'v')
        break;
      return MCK_mv;	 // "mv"
    case 'o':	 // 1 string to match.
      if (Name[1] != 'r')
        break;
      return MCK_or;	 // "or"
    case 's':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case 'b':	 // 1 string to match.
        return MCK_sb;	 // "sb"
      case 'h':	 // 1 string to match.
        return MCK_sh;	 // "sh"
      case 'w':	 // 1 string to match.
        return MCK_sw;	 // "sw"
      }
      break;
    case 'x':	 // 1 string to match.
      if (Name[1] != '0')
        break;
      return MCK_x0;	 // "x0"
    }
    break;
  case 3:	 // 24 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'd':	 // 1 string to match.
        if (Name[2] != 'd')
          break;
        return MCK_add;	 // "add"
      case 'n':	 // 1 string to match.
        if (Name[2] != 'd')
          break;
        return MCK_and;	 // "and"
      }
      break;
    case 'b':	 // 6 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (Name[2] != 'q')
          break;
        return MCK_beq;	 // "beq"
      case 'g':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 1 string to match.
          return MCK_bge;	 // "bge"
        case 't':	 // 1 string to match.
          return MCK_bgt;	 // "bgt"
        }
        break;
      case 'l':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 1 string to match.
          return MCK_ble;	 // "ble"
        case 't':	 // 1 string to match.
          return MCK_blt;	 // "blt"
        }
        break;
      case 'n':	 // 1 string to match.
        if (Name[2] != 'e')
          break;
        return MCK_bne;	 // "bne"
      }
      break;
    case 'j':	 // 1 string to match.
      if (memcmp(Name.data()+1, "al", 2) != 0)
        break;
      return MCK_jal;	 // "jal"
    case 'l':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case 'b':	 // 1 string to match.
        if (Name[2] != 'u')
          break;
        return MCK_lbu;	 // "lbu"
      case 'h':	 // 1 string to match.
        if (Name[2] != 'u')
          break;
        return MCK_lhu;	 // "lhu"
      case 'u':	 // 1 string to match.
        if (Name[2] != 'i')
          break;
        return MCK_lui;	 // "lui"
      }
      break;
    case 'n':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (Name[2] != 'g')
          break;
        return MCK_neg;	 // "neg"
      case 'o':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'p':	 // 1 string to match.
          return MCK_nop;	 // "nop"
        case 't':	 // 1 string to match.
          return MCK_not;	 // "not"
        }
        break;
      }
      break;
    case 'o':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ri", 2) != 0)
        break;
      return MCK_ori;	 // "ori"
    case 'r':	 // 1 string to match.
      if (memcmp(Name.data()+1, "et", 2) != 0)
        break;
      return MCK_ret;	 // "ret"
    case 's':	 // 6 strings to match.
      switch (Name[1]) {
      default: break;
      case 'g':	 // 1 string to match.
        if (Name[2] != 't')
          break;
        return MCK_sgt;	 // "sgt"
      case 'l':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'l':	 // 1 string to match.
          return MCK_sll;	 // "sll"
        case 't':	 // 1 string to match.
          return MCK_slt;	 // "slt"
        }
        break;
      case 'r':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'a':	 // 1 string to match.
          return MCK_sra;	 // "sra"
        case 'l':	 // 1 string to match.
          return MCK_srl;	 // "srl"
        }
        break;
      case 'u':	 // 1 string to match.
        if (Name[2] != 'b')
          break;
        return MCK_sub;	 // "sub"
      }
      break;
    case 'x':	 // 1 string to match.
      if (memcmp(Name.data()+1, "or", 2) != 0)
        break;
      return MCK_xor;	 // "xor"
    }
    break;
  case 4:	 // 26 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'd':	 // 1 string to match.
        if (memcmp(Name.data()+2, "di", 2) != 0)
          break;
        return MCK_addi;	 // "addi"
      case 'n':	 // 1 string to match.
        if (memcmp(Name.data()+2, "di", 2) != 0)
          break;
        return MCK_andi;	 // "andi"
      }
      break;
    case 'b':	 // 10 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (memcmp(Name.data()+2, "qz", 2) != 0)
          break;
        return MCK_beqz;	 // "beqz"
      case 'g':	 // 4 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bgeu;	 // "bgeu"
          case 'z':	 // 1 string to match.
            return MCK_bgez;	 // "bgez"
          }
          break;
        case 't':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bgtu;	 // "bgtu"
          case 'z':	 // 1 string to match.
            return MCK_bgtz;	 // "bgtz"
          }
          break;
        }
        break;
      case 'l':	 // 4 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bleu;	 // "bleu"
          case 'z':	 // 1 string to match.
            return MCK_blez;	 // "blez"
          }
          break;
        case 't':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bltu;	 // "bltu"
          case 'z':	 // 1 string to match.
            return MCK_bltz;	 // "bltz"
          }
          break;
        }
        break;
      case 'n':	 // 1 string to match.
        if (memcmp(Name.data()+2, "ez", 2) != 0)
          break;
        return MCK_bnez;	 // "bnez"
      }
      break;
    case 'c':	 // 1 string to match.
      if (memcmp(Name.data()+1, "all", 3) != 0)
        break;
      return MCK_call;	 // "call"
    case 'h':	 // 1 string to match.
      if (memcmp(Name.data()+1, "alt", 3) != 0)
        break;
      return MCK_halt;	 // "halt"
    case 'j':	 // 1 string to match.
      if (memcmp(Name.data()+1, "alr", 3) != 0)
        break;
      return MCK_jalr;	 // "jalr"
    case 's':	 // 9 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (memcmp(Name.data()+2, "qz", 2) != 0)
          break;
        return MCK_seqz;	 // "seqz"
      case 'g':	 // 1 string to match.
        if (memcmp(Name.data()+2, "tz", 2) != 0)
          break;
        return MCK_sgtz;	 // "sgtz"
      case 'l':	 // 4 strings to match.
        switch (Name[2]) {
        default: break;
        case 'l':	 // 1 string to match.
          if (Name[3] != 'i')
            break;
          return MCK_slli;	 // "slli"
        case 't':	 // 3 strings to match.
          switch (Name[3]) {
          default: break;
          case 'i':	 // 1 string to match.
            return MCK_slti;	 // "slti"
          case 'u':	 // 1 string to match.
            return MCK_sltu;	 // "sltu"
          case 'z':	 // 1 string to match.
            return MCK_sltz;	 // "sltz"
          }
          break;
        }
        break;
      case 'n':	 // 1 string to match.
        if (memcmp(Name.data()+2, "ez", 2) != 0)
          break;
        return MCK_snez;	 // "snez"
      case 'r':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'a':	 // 1 string to match.
          if (Name[3] != 'i')
            break;
          return MCK_srai;	 // "srai"
        case 'l':	 // 1 string to match.
          if (Name[3] != 'i')
            break;
          return MCK_srli;	 // "srli"
        }
        break;
      }
      break;
    case 'x':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ori", 3) != 0)
        break;
      return MCK_xori;	 // "xori"
    case 'z':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ero", 3) != 0)
        break;
      return MCK_zero;	 // "zero"
    }
    break;
  case 5:	 // 2 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 1 string to match.
      if (memcmp(Name.data()+1, "uipc", 4) != 0)
        break;
      return MCK_auipc;	 // "auipc"
    case 's':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ltiu", 4) != 0)
        break;
      return MCK_sltiu;	 // "sltiu"
    }
    break;
  case 8:	 // 1 string to match.
    if (memcmp(Name.data()+0, "call_reg", 8) != 0)
      break;
    return MCK_call_95_reg;	 // "call_reg"
  }
  return InvalidMatchClass;
}

/// isSubclass - Compute whether \p A is a subclass of \p B.
static bool isSubclass(MatchClassKind A, MatchClassKind B) {
  if (A == B)
    return true;

  switch (A) {
  default:
    return false;

  case MCK_xpr_general:
    return B == MCK_rf_xpr;
  }
}

static unsigned validateOperandClass(MCParsedAsmOperand &GOp, MatchClassKind Kind) {
  CodasipOperand &Operand = (CodasipOperand&)GOp;
  if (Kind == InvalidMatchClass)
    return MCTargetAsmParser::Match_InvalidOperand;

  if (Operand.isToken() && Kind <= MCK_LAST_TOKEN)
    return isSubclass(matchTokenString(Operand.getToken()), Kind) ?
             MCTargetAsmParser::Match_Success :
             MCTargetAsmParser::Match_InvalidOperand;

  switch (Kind) {
  default: break;
  // 'Imm' class
  case MCK_Imm: {
    DiagnosticPredicate DP(Operand.isImm());
    if (DP.isMatch())
      return MCTargetAsmParser::Match_Success;
    break;
    }
  } // end switch (Kind)

  if (Operand.isReg()) {
    MatchClassKind OpKind;
    switch (Operand.getReg()) {
    default: OpKind = InvalidMatchClass; break;
    case  Codasip::rf_xpr_0: OpKind = MCK_rf_xpr; break;
    case  Codasip::rf_xpr_1: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_2: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_3: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_4: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_5: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_6: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_7: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_8: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_9: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_10: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_11: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_12: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_13: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_14: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_15: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_16: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_17: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_18: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_19: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_20: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_21: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_22: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_23: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_24: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_25: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_26: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_27: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_28: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_29: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_30: OpKind = MCK_xpr_general; break;
    case  Codasip::rf_xpr_31: OpKind = MCK_xpr_general; break;
    }
    return isSubclass(OpKind, Kind) ? (unsigned)MCTargetAsmParser::Match_Success :
                                      getDiagKindFromRegisterClass(Kind);
  }

  if (Kind > MCK_LAST_TOKEN && Kind <= MCK_LAST_REGISTER)
    return getDiagKindFromRegisterClass(Kind);

  return MCTargetAsmParser::Match_InvalidOperand;
}

#ifndef NDEBUG
const char *getMatchClassName(MatchClassKind Kind) {
  switch (Kind) {
  case InvalidMatchClass: return "InvalidMatchClass";
  case OptionalMatchClass: return "OptionalMatchClass";
  case MCK__40_: return "MCK__40_";
  case MCK__41_: return "MCK__41_";
  case MCK_add: return "MCK_add";
  case MCK_addi: return "MCK_addi";
  case MCK_and: return "MCK_and";
  case MCK_andi: return "MCK_andi";
  case MCK_auipc: return "MCK_auipc";
  case MCK_beq: return "MCK_beq";
  case MCK_beqz: return "MCK_beqz";
  case MCK_bge: return "MCK_bge";
  case MCK_bgeu: return "MCK_bgeu";
  case MCK_bgez: return "MCK_bgez";
  case MCK_bgt: return "MCK_bgt";
  case MCK_bgtu: return "MCK_bgtu";
  case MCK_bgtz: return "MCK_bgtz";
  case MCK_ble: return "MCK_ble";
  case MCK_bleu: return "MCK_bleu";
  case MCK_blez: return "MCK_blez";
  case MCK_blt: return "MCK_blt";
  case MCK_bltu: return "MCK_bltu";
  case MCK_bltz: return "MCK_bltz";
  case MCK_bne: return "MCK_bne";
  case MCK_bnez: return "MCK_bnez";
  case MCK_call: return "MCK_call";
  case MCK_call_95_reg: return "MCK_call_95_reg";
  case MCK_halt: return "MCK_halt";
  case MCK_j: return "MCK_j";
  case MCK_jal: return "MCK_jal";
  case MCK_jalr: return "MCK_jalr";
  case MCK_jr: return "MCK_jr";
  case MCK_lb: return "MCK_lb";
  case MCK_lbu: return "MCK_lbu";
  case MCK_lh: return "MCK_lh";
  case MCK_lhu: return "MCK_lhu";
  case MCK_li: return "MCK_li";
  case MCK_lui: return "MCK_lui";
  case MCK_lw: return "MCK_lw";
  case MCK_mv: return "MCK_mv";
  case MCK_neg: return "MCK_neg";
  case MCK_nop: return "MCK_nop";
  case MCK_not: return "MCK_not";
  case MCK_or: return "MCK_or";
  case MCK_ori: return "MCK_ori";
  case MCK_ret: return "MCK_ret";
  case MCK_sb: return "MCK_sb";
  case MCK_seqz: return "MCK_seqz";
  case MCK_sgt: return "MCK_sgt";
  case MCK_sgtz: return "MCK_sgtz";
  case MCK_sh: return "MCK_sh";
  case MCK_sll: return "MCK_sll";
  case MCK_slli: return "MCK_slli";
  case MCK_slt: return "MCK_slt";
  case MCK_slti: return "MCK_slti";
  case MCK_sltiu: return "MCK_sltiu";
  case MCK_sltu: return "MCK_sltu";
  case MCK_sltz: return "MCK_sltz";
  case MCK_snez: return "MCK_snez";
  case MCK_sra: return "MCK_sra";
  case MCK_srai: return "MCK_srai";
  case MCK_srl: return "MCK_srl";
  case MCK_srli: return "MCK_srli";
  case MCK_sub: return "MCK_sub";
  case MCK_sw: return "MCK_sw";
  case MCK_x0: return "MCK_x0";
  case MCK_xor: return "MCK_xor";
  case MCK_xori: return "MCK_xori";
  case MCK_zero: return "MCK_zero";
  case MCK_xpr_general: return "MCK_xpr_general";
  case MCK_rf_xpr: return "MCK_rf_xpr";
  case MCK_Imm: return "MCK_Imm";
  case NumMatchClassKinds: return "NumMatchClassKinds";
  }
  llvm_unreachable("unhandled MatchClassKind!");
}

#endif // NDEBUG
FeatureBitset CodasipAsmParser::
ComputeAvailableFeatures(const FeatureBitset& FB) const {
  FeatureBitset Features;
  return Features;
}

static bool checkAsmTiedOperandConstraints(const CodasipAsmParser&AsmParser,
                               unsigned Kind,
                               const OperandVector &Operands,
                               uint64_t &ErrorInfo) {
  assert(Kind < CVT_NUM_SIGNATURES && "Invalid signature!");
  const uint8_t *Converter = ConversionTable[Kind];
  for (const uint8_t *p = Converter; *p; p+= 2) {
    switch (*p) {
    case CVT_Tied: {
      unsigned OpIdx = *(p+1);
      assert(OpIdx < (size_t)(std::end(TiedAsmOperandTable) -
                              std::begin(TiedAsmOperandTable)) &&
             "Tied operand not found");
      unsigned OpndNum1 = TiedAsmOperandTable[OpIdx][1];
      unsigned OpndNum2 = TiedAsmOperandTable[OpIdx][2];
      if (OpndNum1 != OpndNum2) {
        auto &SrcOp1 = Operands[OpndNum1];
        auto &SrcOp2 = Operands[OpndNum2];
        if (SrcOp1->isReg() && SrcOp2->isReg()) {
          if (!AsmParser.regsEqual(*SrcOp1, *SrcOp2)) {
            ErrorInfo = OpndNum2;
            return false;
          }
        }
      }
      break;
    }
    default:
      break;
    }
  }
  return true;
}

static const char *const MnemonicTable =
    "\003add\004addi\003and\004andi\005auipc\003beq\004beqz\003bge\004bgeu\004"
    "bgez\003bgt\004bgtu\004bgtz\003ble\004bleu\004blez\003blt\004bltu\004bl"
    "tz\003bne\004bnez\004call\010call_reg\004halt\001j\003jal\004jalr\002jr"
    "\002lb\003lbu\002lh\003lhu\002li\003lui\002lw\002mv\003neg\003nop\003no"
    "t\002or\003ori\003ret\002sb\004seqz\003sgt\004sgtz\002sh\003sll\004slli"
    "\003slt\004slti\005sltiu\004sltu\004sltz\004snez\003sra\004srai\003srl\004"
    "srli\003sub\002sw\003xor\004xori";

// Feature bitsets.
enum : uint8_t {
  AMFBS_None,
};

const static FeatureBitset FeatureBitsets[] {
  {}, // AMFBS_None
};

namespace {
  struct MatchEntry {
    uint16_t Mnemonic;
    uint16_t Opcode;
    uint8_t ConvertFn;
    uint8_t RequiredFeaturesIdx;
    uint8_t Classes[6];
    StringRef getMnemonic() const {
      return StringRef(MnemonicTable + Mnemonic + 1,
                       MnemonicTable[Mnemonic]);
    }
  };

  // Predicate for searching for an opcode.
  struct LessOpcode {
    bool operator()(const MatchEntry &LHS, StringRef RHS) {
      return LHS.getMnemonic() < RHS;
    }
    bool operator()(StringRef LHS, const MatchEntry &RHS) {
      return LHS < RHS.getMnemonic();
    }
    bool operator()(const MatchEntry &LHS, const MatchEntry &RHS) {
      return LHS.getMnemonic() < RHS.getMnemonic();
    }
  };
} // end anonymous namespace.

static const MatchEntry MatchTable0[] = {
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 0 /* add */, Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_add, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__x_0__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_x0, MCK_x0, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__x_0__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_x0, MCK_zero, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__x_0__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_addi, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__x_0_alias__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_zero, MCK_x0, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__x_0_alias__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_zero, MCK_zero, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__x_0_alias__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_addi, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__xpr_general__x_0__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_addi, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__xpr_general__x_0_alias__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_addi, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_addi, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 9 /* and */, Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_and, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__x_0__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_x0, MCK_x0, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__x_0__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_x0, MCK_zero, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__x_0__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_andi, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__x_0_alias__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_zero, MCK_x0, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__x_0_alias__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_zero, MCK_zero, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__x_0_alias__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_andi, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__xpr_general__x_0__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_andi, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__xpr_general__x_0_alias__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_andi, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_andi, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 18 /* auipc */, Codasip::i_utype_ops__opc_auipc__x_0__uimm20__, Convert__Imm1_2, AMFBS_None, { MCK_auipc, MCK_x0, MCK_Imm }, },
  { 18 /* auipc */, Codasip::i_utype_ops__opc_auipc__x_0_alias__uimm20__, Convert__Imm1_2, AMFBS_None, { MCK_auipc, MCK_zero, MCK_Imm }, },
  { 18 /* auipc */, Codasip::i_utype_ops__opc_auipc__xpr_general__uimm20__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_auipc, MCK_xpr_general, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_x0, MCK_x0, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_x0, MCK_zero, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_beq, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_zero, MCK_x0, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_zero, MCK_zero, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_beq, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_beq, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_beq, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_beq, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 28 /* beqz */, Codasip::i_beqz_alias__x_0__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_beqz, MCK_x0, MCK_Imm }, },
  { 28 /* beqz */, Codasip::i_beqz_alias__x_0_alias__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_beqz, MCK_zero, MCK_Imm }, },
  { 28 /* beqz */, Codasip::i_beqz_alias__xpr_general__relative_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_beqz, MCK_xpr_general, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_x0, MCK_x0, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_x0, MCK_zero, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bge, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_zero, MCK_x0, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_zero, MCK_zero, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bge, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bge, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bge, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bge, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 42 /* bgez */, Codasip::i_bgez_alias__x_0__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgez, MCK_x0, MCK_Imm }, },
  { 42 /* bgez */, Codasip::i_bgez_alias__x_0_alias__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgez, MCK_zero, MCK_Imm }, },
  { 42 /* bgez */, Codasip::i_bgez_alias__xpr_general__relative_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bgez, MCK_xpr_general, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_x0, MCK_x0, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_x0, MCK_zero, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgt, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_zero, MCK_x0, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_zero, MCK_zero, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgt, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgt, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgt, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgt, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 56 /* bgtz */, Codasip::i_bgtz_alias__x_0__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgtz, MCK_x0, MCK_Imm }, },
  { 56 /* bgtz */, Codasip::i_bgtz_alias__x_0_alias__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgtz, MCK_zero, MCK_Imm }, },
  { 56 /* bgtz */, Codasip::i_bgtz_alias__xpr_general__relative_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bgtz, MCK_xpr_general, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_x0, MCK_x0, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_x0, MCK_zero, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ble, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_zero, MCK_x0, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_zero, MCK_zero, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ble, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ble, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ble, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_ble, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bleu, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bleu, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bleu, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bleu, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bleu, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 70 /* blez */, Codasip::i_blez_alias__x_0__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_blez, MCK_x0, MCK_Imm }, },
  { 70 /* blez */, Codasip::i_blez_alias__x_0_alias__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_blez, MCK_zero, MCK_Imm }, },
  { 70 /* blez */, Codasip::i_blez_alias__xpr_general__relative_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_blez, MCK_xpr_general, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_x0, MCK_x0, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_x0, MCK_zero, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_blt, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_zero, MCK_x0, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_zero, MCK_zero, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_blt, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_blt, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_blt, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_blt, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bltu, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bltu, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bltu, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bltu, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bltu, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 84 /* bltz */, Codasip::i_bltz_alias__x_0__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bltz, MCK_x0, MCK_Imm }, },
  { 84 /* bltz */, Codasip::i_bltz_alias__x_0_alias__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bltz, MCK_zero, MCK_Imm }, },
  { 84 /* bltz */, Codasip::i_bltz_alias__xpr_general__relative_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bltz, MCK_xpr_general, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__x_0__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_x0, MCK_x0, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__x_0__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_x0, MCK_zero, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bne, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__x_0_alias__x_0__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_zero, MCK_x0, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__x_0_alias__x_0_alias__relative_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_zero, MCK_zero, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__x_0_alias__xpr_general__relative_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bne, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bne, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__xpr_general__x_0_alias__relative_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bne, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bne, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 93 /* bnez */, Codasip::i_bnez_alias__x_0__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bnez, MCK_x0, MCK_Imm }, },
  { 93 /* bnez */, Codasip::i_bnez_alias__x_0_alias__relative_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bnez, MCK_zero, MCK_Imm }, },
  { 93 /* bnez */, Codasip::i_bnez_alias__xpr_general__relative_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bnez, MCK_xpr_general, MCK_Imm }, },
  { 98 /* call */, Codasip::i_call_alias__relative_addr20__, Convert__Imm1_1, AMFBS_None, { MCK_call, MCK_Imm }, },
  { 103 /* call_reg */, Codasip::i_call_reg_alias__simm12__x_0__, Convert__Imm1_1, AMFBS_None, { MCK_call_95_reg, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 103 /* call_reg */, Codasip::i_call_reg_alias__simm12__x_0_alias__, Convert__Imm1_1, AMFBS_None, { MCK_call_95_reg, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 103 /* call_reg */, Codasip::i_call_reg_alias__simm12__xpr_general__, Convert__Reg1_3__Imm1_1, AMFBS_None, { MCK_call_95_reg, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 112 /* halt */, Codasip::i_halt__opc_halt__, Convert_NoOperands, AMFBS_None, { MCK_halt }, },
  { 117 /* j */, Codasip::i_j_alias__relative_addr20__, Convert__Imm1_1, AMFBS_None, { MCK_j, MCK_Imm }, },
  { 119 /* jal */, Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__, Convert__Imm1_2, AMFBS_None, { MCK_jal, MCK_x0, MCK_Imm }, },
  { 119 /* jal */, Codasip::i_jtype_jlink__opc_jal__x_0_alias__relative_addr20__, Convert__Imm1_2, AMFBS_None, { MCK_jal, MCK_zero, MCK_Imm }, },
  { 119 /* jal */, Codasip::i_jtype_jlink__opc_jal__xpr_general__relative_addr20__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_jal, MCK_xpr_general, MCK_Imm }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_jalr, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_jalr, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_jalr, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_jalr, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_jalr, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_jalr, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_jalr, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_jalr, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 123 /* jalr */, Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_jalr, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 128 /* jr */, Codasip::i_jr_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_jr, MCK_x0 }, },
  { 128 /* jr */, Codasip::i_jr_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_jr, MCK_zero }, },
  { 128 /* jr */, Codasip::i_jr_alias__xpr_general__, Convert__Reg1_1, AMFBS_None, { MCK_jr, MCK_xpr_general }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__x_0__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lb, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lb, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lb, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lb, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 131 /* lb */, Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lb, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__x_0__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lbu, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lbu, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lbu, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lbu, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 134 /* lbu */, Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lbu, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__x_0__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lh, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lh, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lh, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lh, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 138 /* lh */, Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lh, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__x_0__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lhu, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lhu, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lhu, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lhu, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 141 /* lhu */, Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lhu, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 145 /* li */, Codasip::i_li_alias__x_0__simm12__, Convert__Imm1_2, AMFBS_None, { MCK_li, MCK_x0, MCK_Imm }, },
  { 145 /* li */, Codasip::i_li_alias__x_0_alias__simm12__, Convert__Imm1_2, AMFBS_None, { MCK_li, MCK_zero, MCK_Imm }, },
  { 145 /* li */, Codasip::i_li_alias__xpr_general__simm12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_li, MCK_xpr_general, MCK_Imm }, },
  { 148 /* lui */, Codasip::i_utype_ops__opc_lui__x_0__uimm20__, Convert__Imm1_2, AMFBS_None, { MCK_lui, MCK_x0, MCK_Imm }, },
  { 148 /* lui */, Codasip::i_utype_ops__opc_lui__x_0_alias__uimm20__, Convert__Imm1_2, AMFBS_None, { MCK_lui, MCK_zero, MCK_Imm }, },
  { 148 /* lui */, Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lui, MCK_xpr_general, MCK_Imm }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__x_0__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lw, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_lw, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lw, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lw, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 152 /* lw */, Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lw, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 155 /* mv */, Codasip::i_mv_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_x0, MCK_x0 }, },
  { 155 /* mv */, Codasip::i_mv_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_x0, MCK_zero }, },
  { 155 /* mv */, Codasip::i_mv_alias__x_0__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_mv, MCK_x0, MCK_xpr_general }, },
  { 155 /* mv */, Codasip::i_mv_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_zero, MCK_x0 }, },
  { 155 /* mv */, Codasip::i_mv_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_zero, MCK_zero }, },
  { 155 /* mv */, Codasip::i_mv_alias__x_0_alias__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_mv, MCK_zero, MCK_xpr_general }, },
  { 155 /* mv */, Codasip::i_mv_alias__xpr_general__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_mv, MCK_xpr_general, MCK_x0 }, },
  { 155 /* mv */, Codasip::i_mv_alias__xpr_general__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_mv, MCK_xpr_general, MCK_zero }, },
  { 155 /* mv */, Codasip::i_mv_alias__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_mv, MCK_xpr_general, MCK_xpr_general }, },
  { 158 /* neg */, Codasip::i_neg_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_x0, MCK_x0 }, },
  { 158 /* neg */, Codasip::i_neg_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_x0, MCK_zero }, },
  { 158 /* neg */, Codasip::i_neg_alias__x_0__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_neg, MCK_x0, MCK_xpr_general }, },
  { 158 /* neg */, Codasip::i_neg_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_zero, MCK_x0 }, },
  { 158 /* neg */, Codasip::i_neg_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_zero, MCK_zero }, },
  { 158 /* neg */, Codasip::i_neg_alias__x_0_alias__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_neg, MCK_zero, MCK_xpr_general }, },
  { 158 /* neg */, Codasip::i_neg_alias__xpr_general__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_neg, MCK_xpr_general, MCK_x0 }, },
  { 158 /* neg */, Codasip::i_neg_alias__xpr_general__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_neg, MCK_xpr_general, MCK_zero }, },
  { 158 /* neg */, Codasip::i_neg_alias__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_neg, MCK_xpr_general, MCK_xpr_general }, },
  { 162 /* nop */, Codasip::i_nop_alias__, Convert_NoOperands, AMFBS_None, { MCK_nop }, },
  { 166 /* not */, Codasip::i_not_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_x0, MCK_x0 }, },
  { 166 /* not */, Codasip::i_not_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_x0, MCK_zero }, },
  { 166 /* not */, Codasip::i_not_alias__x_0__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_not, MCK_x0, MCK_xpr_general }, },
  { 166 /* not */, Codasip::i_not_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_zero, MCK_x0 }, },
  { 166 /* not */, Codasip::i_not_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_zero, MCK_zero }, },
  { 166 /* not */, Codasip::i_not_alias__x_0_alias__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_not, MCK_zero, MCK_xpr_general }, },
  { 166 /* not */, Codasip::i_not_alias__xpr_general__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_not, MCK_xpr_general, MCK_x0 }, },
  { 166 /* not */, Codasip::i_not_alias__xpr_general__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_not, MCK_xpr_general, MCK_zero }, },
  { 166 /* not */, Codasip::i_not_alias__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_not, MCK_xpr_general, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 170 /* or */, Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_or, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__x_0__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_x0, MCK_x0, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__x_0__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_x0, MCK_zero, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__x_0__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ori, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__x_0_alias__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_zero, MCK_x0, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__x_0_alias__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_zero, MCK_zero, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__x_0_alias__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ori, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__xpr_general__x_0__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ori, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__xpr_general__x_0_alias__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ori, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 173 /* ori */, Codasip::i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_ori, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 177 /* ret */, Codasip::i_ret_alias__, Convert_NoOperands, AMFBS_None, { MCK_ret }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sb, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sb, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 181 /* sb */, Codasip::i_stype_store__opc_sb__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_sb, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_x0, MCK_x0 }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_x0, MCK_zero }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__x_0__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_seqz, MCK_x0, MCK_xpr_general }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_zero, MCK_x0 }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_zero, MCK_zero }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__x_0_alias__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_seqz, MCK_zero, MCK_xpr_general }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__xpr_general__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_seqz, MCK_xpr_general, MCK_x0 }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__xpr_general__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_seqz, MCK_xpr_general, MCK_zero }, },
  { 184 /* seqz */, Codasip::i_seqz_alias__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_seqz, MCK_xpr_general, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_x0, MCK_x0, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_x0, MCK_x0, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sgt, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_x0, MCK_zero, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_x0, MCK_zero, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sgt, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sgt, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sgt, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sgt, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_zero, MCK_x0, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_zero, MCK_x0, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sgt, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_zero, MCK_zero, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgt, MCK_zero, MCK_zero, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sgt, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sgt, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sgt, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sgt, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 189 /* sgt */, Codasip::i_sgt_alias__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sgt, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_x0, MCK_x0 }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_x0, MCK_zero }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__x_0__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_sgtz, MCK_x0, MCK_xpr_general }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_zero, MCK_x0 }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_zero, MCK_zero }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__x_0_alias__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_sgtz, MCK_zero, MCK_xpr_general }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__xpr_general__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sgtz, MCK_xpr_general, MCK_x0 }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__xpr_general__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sgtz, MCK_xpr_general, MCK_zero }, },
  { 193 /* sgtz */, Codasip::i_sgtz_alias__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sgtz, MCK_xpr_general, MCK_xpr_general }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sh, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sh, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 198 /* sh */, Codasip::i_stype_store__opc_sh__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_sh, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_x0, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_x0, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_zero, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_zero, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_x0, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_x0, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_zero, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_zero, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 201 /* sll */, Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sll, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__x_0__x_0__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_x0, MCK_x0, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__x_0__x_0_alias__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_x0, MCK_zero, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slli, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__x_0_alias__x_0__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_zero, MCK_x0, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__x_0_alias__x_0_alias__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_zero, MCK_zero, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__x_0_alias__xpr_general__uimm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slli, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slli, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__xpr_general__x_0_alias__uimm5__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slli, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 205 /* slli */, Codasip::i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_slli, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_x0, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_x0, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_zero, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_zero, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_slt, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_x0, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_x0, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_zero, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_zero, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_slt, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 210 /* slt */, Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_slt, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__x_0__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_x0, MCK_x0, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__x_0__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_x0, MCK_zero, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__x_0__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slti, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__x_0_alias__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_zero, MCK_x0, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__x_0_alias__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_zero, MCK_zero, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__x_0_alias__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slti, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slti, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__xpr_general__x_0_alias__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slti, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 214 /* slti */, Codasip::i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_slti, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__x_0__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__x_0__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__x_0_alias__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__x_0_alias__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__x_0_alias__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0_alias__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 219 /* sltiu */, Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_x0, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_x0, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_zero, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_zero, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sltu, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_x0, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_x0, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_zero, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_zero, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sltu, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 225 /* sltu */, Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sltu, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_x0, MCK_x0 }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_x0, MCK_zero }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__x_0__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_sltz, MCK_x0, MCK_xpr_general }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_zero, MCK_x0 }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_zero, MCK_zero }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__x_0_alias__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_sltz, MCK_zero, MCK_xpr_general }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__xpr_general__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sltz, MCK_xpr_general, MCK_x0 }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__xpr_general__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sltz, MCK_xpr_general, MCK_zero }, },
  { 230 /* sltz */, Codasip::i_sltz_alias__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sltz, MCK_xpr_general, MCK_xpr_general }, },
  { 235 /* snez */, Codasip::i_snez_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_x0, MCK_x0 }, },
  { 235 /* snez */, Codasip::i_snez_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_x0, MCK_zero }, },
  { 235 /* snez */, Codasip::i_snez_alias__x_0__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_snez, MCK_x0, MCK_xpr_general }, },
  { 235 /* snez */, Codasip::i_snez_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_zero, MCK_x0 }, },
  { 235 /* snez */, Codasip::i_snez_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_zero, MCK_zero }, },
  { 235 /* snez */, Codasip::i_snez_alias__x_0_alias__xpr_general__, Convert__Reg1_2, AMFBS_None, { MCK_snez, MCK_zero, MCK_xpr_general }, },
  { 235 /* snez */, Codasip::i_snez_alias__xpr_general__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_snez, MCK_xpr_general, MCK_x0 }, },
  { 235 /* snez */, Codasip::i_snez_alias__xpr_general__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_snez, MCK_xpr_general, MCK_zero }, },
  { 235 /* snez */, Codasip::i_snez_alias__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_snez, MCK_xpr_general, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_x0, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_x0, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_zero, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_zero, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_x0, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_x0, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_zero, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_zero, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 240 /* sra */, Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sra, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__x_0__x_0__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_x0, MCK_x0, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__x_0__x_0_alias__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_x0, MCK_zero, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srai, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__x_0_alias__x_0__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_zero, MCK_x0, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__x_0_alias__x_0_alias__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_zero, MCK_zero, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__x_0_alias__xpr_general__uimm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srai, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srai, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__xpr_general__x_0_alias__uimm5__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srai, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 244 /* srai */, Codasip::i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_srai, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_x0, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_x0, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_zero, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_zero, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_x0, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_x0, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_zero, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_zero, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 249 /* srl */, Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_srl, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__x_0__x_0__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_x0, MCK_x0, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__x_0__x_0_alias__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_x0, MCK_zero, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srli, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__x_0_alias__x_0__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_zero, MCK_x0, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__x_0_alias__x_0_alias__uimm5__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_zero, MCK_zero, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__x_0_alias__xpr_general__uimm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srli, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srli, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__xpr_general__x_0_alias__uimm5__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srli, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 253 /* srli */, Codasip::i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_srli, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_x0, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_x0, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_zero, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_zero, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sub, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_x0, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_x0, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_zero, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_zero, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sub, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 258 /* sub */, Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sub, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__x_0__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__x_0__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__x_0__simm12__xpr_general__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__x_0_alias__simm12__x_0__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__x_0_alias__simm12__x_0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__x_0_alias__simm12__xpr_general__, Convert__Imm1_2__Reg1_4, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__xpr_general__simm12__x_0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sw, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__xpr_general__simm12__x_0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sw, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 262 /* sw */, Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_sw, MCK_xpr_general, MCK_Imm, MCK__40_, MCK_xpr_general, MCK__41_ }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_x0, MCK_xpr_general, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_x0, MCK_xpr_general, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_xpr_general, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0__x_0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0_alias__x_0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__x_0_alias__xpr_general__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_zero, MCK_xpr_general, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__xpr_general__x_0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_zero, MCK_xpr_general, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__x_0_alias__xpr_general__xpr_general__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_xpr_general, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_x0, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_x0, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_x0, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_zero, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__x_0_alias__x_0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_zero, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__x_0_alias__xpr_general__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_zero, MCK_xpr_general }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_xpr_general, MCK_x0 }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_xpr_general, MCK_zero }, },
  { 265 /* xor */, Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_xor, MCK_xpr_general, MCK_xpr_general, MCK_xpr_general }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__x_0__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_x0, MCK_x0, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__x_0__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_x0, MCK_zero, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__x_0__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_xori, MCK_x0, MCK_xpr_general, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__x_0_alias__x_0__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_zero, MCK_x0, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__x_0_alias__x_0_alias__simm12__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_zero, MCK_zero, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__x_0_alias__xpr_general__simm12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_xori, MCK_zero, MCK_xpr_general, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__xpr_general__x_0__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_xori, MCK_xpr_general, MCK_x0, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__xpr_general__x_0_alias__simm12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_xori, MCK_xpr_general, MCK_zero, MCK_Imm }, },
  { 269 /* xori */, Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_xori, MCK_xpr_general, MCK_xpr_general, MCK_Imm }, },
};

#include "llvm/Support/Debug.h"
#include "llvm/Support/Format.h"

unsigned CodasipAsmParser::
MatchInstructionImpl(const OperandVector &Operands,
                     MCInst &Inst,
                     uint64_t &ErrorInfo,
                     FeatureBitset &MissingFeatures,
                     bool matchingInlineAsm, unsigned VariantID) {
  // Eliminate obvious mismatches.
  if (Operands.size() > 6) {
    ErrorInfo = 6;
    return Match_InvalidOperand;
  }

  // Get the current feature set.
  const FeatureBitset &AvailableFeatures = getAvailableFeatures();

  // Get the instruction mnemonic, which is the first token.
  StringRef Mnemonic;
  if (Operands[0]->isToken())
    Mnemonic = ((CodasipOperand&)*Operands[0]).getToken();

  // Some state to try to produce better error messages.
  bool HadMatchOtherThanFeatures = false;
  bool HadMatchOtherThanPredicate = false;
  unsigned RetCode = Match_InvalidOperand;
  MissingFeatures.set();
  // Set ErrorInfo to the operand that mismatches if it is
  // wrong for all instances of the instruction.
  ErrorInfo = ~0ULL;
  // Find the appropriate table for this asm variant.
  const MatchEntry *Start, *End;
  switch (VariantID) {
  default: llvm_unreachable("invalid variant!");
  case 0: Start = std::begin(MatchTable0); End = std::end(MatchTable0); break;
  }
  // Search the table.
  auto MnemonicRange = std::make_pair(Start, End);
  unsigned SIndex = Mnemonic.empty() ? 0 : 1;
  if (!Mnemonic.empty())
    MnemonicRange = std::equal_range(Start, End, Mnemonic.lower(), LessOpcode());

  DEBUG_WITH_TYPE("asm-matcher", dbgs() << "AsmMatcher: found " <<
  std::distance(MnemonicRange.first, MnemonicRange.second) << 
  " encodings with mnemonic '" << Mnemonic << "'\n");

  // Return a more specific error code if no mnemonics match.
  if (MnemonicRange.first == MnemonicRange.second)
    return Match_MnemonicFail;

  for (const MatchEntry *it = MnemonicRange.first, *ie = MnemonicRange.second;
       it != ie; ++it) {
    const FeatureBitset &RequiredFeatures = FeatureBitsets[it->RequiredFeaturesIdx];
    bool HasRequiredFeatures =
      (AvailableFeatures & RequiredFeatures) == RequiredFeatures;
    DEBUG_WITH_TYPE("asm-matcher", dbgs() << "Trying to match opcode "
                                          << MII.getName(it->Opcode) << "\n");
    bool OperandsValid = true;
    for (unsigned FormalIdx = SIndex, ActualIdx = SIndex; FormalIdx != 6; ++FormalIdx) {
      auto Formal = static_cast<MatchClassKind>(it->Classes[FormalIdx]);
      DEBUG_WITH_TYPE("asm-matcher",
                      dbgs() << "  Matching formal operand class " << getMatchClassName(Formal)
                             << " against actual operand at index " << ActualIdx);
      if (ActualIdx < Operands.size())
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << " (";
                        Operands[ActualIdx]->print(dbgs()); dbgs() << "): ");
      else
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << ": ");
      if (ActualIdx >= Operands.size()) {
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << "actual operand index out of range ");
        OperandsValid = (Formal == InvalidMatchClass) || isSubclass(Formal, OptionalMatchClass);
        if (!OperandsValid) ErrorInfo = ActualIdx;
        break;
      }
      MCParsedAsmOperand &Actual = *Operands[ActualIdx];
      unsigned Diag = validateOperandClass(Actual, Formal);
      if (Diag == Match_Success) {
        DEBUG_WITH_TYPE("asm-matcher",
                        dbgs() << "match success using generic matcher\n");
        ++ActualIdx;
        continue;
      }
      // If the generic handler indicates an invalid operand
      // failure, check for a special case.
      if (Diag != Match_Success) {
        unsigned TargetDiag = validateTargetOperandClass(Actual, Formal);
        if (TargetDiag == Match_Success) {
          DEBUG_WITH_TYPE("asm-matcher",
                          dbgs() << "match success using target matcher\n");
          ++ActualIdx;
          continue;
        }
        // If the target matcher returned a specific error code use
        // that, else use the one from the generic matcher.
        if (TargetDiag != Match_InvalidOperand && HasRequiredFeatures)
          Diag = TargetDiag;
      }
      // If current formal operand wasn't matched and it is optional
      // then try to match next formal operand
      if (Diag == Match_InvalidOperand && isSubclass(Formal, OptionalMatchClass)) {
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << "ignoring optional operand\n");
        continue;
      }
      // If this operand is broken for all of the instances of this
      // mnemonic, keep track of it so we can report loc info.
      // If we already had a match that only failed due to a
      // target predicate, that diagnostic is preferred.
      if (!HadMatchOtherThanPredicate &&
          (it == MnemonicRange.first || ErrorInfo <= ActualIdx)) {
        if (HasRequiredFeatures && (ErrorInfo != ActualIdx || Diag != Match_InvalidOperand))
          RetCode = Diag;
        ErrorInfo = ActualIdx;
      }
      // Otherwise, just reject this instance of the mnemonic.
      OperandsValid = false;
      break;
    }

    if (!OperandsValid) {
      DEBUG_WITH_TYPE("asm-matcher", dbgs() << "Opcode result: multiple "
                                               "operand mismatches, ignoring "
                                               "this opcode\n");
      continue;
    }
    if (!HasRequiredFeatures) {
      HadMatchOtherThanFeatures = true;
      FeatureBitset NewMissingFeatures = RequiredFeatures & ~AvailableFeatures;
      DEBUG_WITH_TYPE("asm-matcher", dbgs() << "Missing target features:";
                       for (unsigned I = 0, E = NewMissingFeatures.size(); I != E; ++I)
                         if (NewMissingFeatures[I])
                           dbgs() << ' ' << I;
                       dbgs() << "\n");
      if (NewMissingFeatures.count() <=
          MissingFeatures.count())
        MissingFeatures = NewMissingFeatures;
      continue;
    }

    Inst.clear();

    Inst.setOpcode(it->Opcode);
    // We have a potential match but have not rendered the operands.
    // Check the target predicate to handle any context sensitive
    // constraints.
    // For example, Ties that are referenced multiple times must be
    // checked here to ensure the input is the same for each match
    // constraints. If we leave it any later the ties will have been
    // canonicalized
    unsigned MatchResult;
    if ((MatchResult = checkEarlyTargetMatchPredicate(Inst, Operands)) != Match_Success) {
      Inst.clear();
      DEBUG_WITH_TYPE(
          "asm-matcher",
          dbgs() << "Early target match predicate failed with diag code "
                 << MatchResult << "\n");
      RetCode = MatchResult;
      HadMatchOtherThanPredicate = true;
      continue;
    }

    if (matchingInlineAsm) {
      convertToMapAndConstraints(it->ConvertFn, Operands);
      if (!checkAsmTiedOperandConstraints(*this, it->ConvertFn, Operands, ErrorInfo))
        return Match_InvalidTiedOperand;

      return Match_Success;
    }

    // We have selected a definite instruction, convert the parsed
    // operands into the appropriate MCInst.
    convertToMCInst(it->ConvertFn, Inst, it->Opcode, Operands);

    // We have a potential match. Check the target predicate to
    // handle any context sensitive constraints.
    if ((MatchResult = checkTargetMatchPredicate(Inst)) != Match_Success) {
      DEBUG_WITH_TYPE("asm-matcher",
                      dbgs() << "Target match predicate failed with diag code "
                             << MatchResult << "\n");
      Inst.clear();
      RetCode = MatchResult;
      HadMatchOtherThanPredicate = true;
      continue;
    }

    if (!checkAsmTiedOperandConstraints(*this, it->ConvertFn, Operands, ErrorInfo))
      return Match_InvalidTiedOperand;

    DEBUG_WITH_TYPE(
        "asm-matcher",
        dbgs() << "Opcode result: complete match, selecting this opcode\n");
    return Match_Success;
  }

  // Okay, we had no match.  Try to return a useful error code.
  if (HadMatchOtherThanPredicate || !HadMatchOtherThanFeatures)
    return RetCode;

  ErrorInfo = 0;
  return Match_MissingFeature;
}

#endif // GET_MATCHER_IMPLEMENTATION


#ifdef GET_MNEMONIC_SPELL_CHECKER
#undef GET_MNEMONIC_SPELL_CHECKER

static std::string CodasipMnemonicSpellCheck(StringRef S, const FeatureBitset &FBS, unsigned VariantID) {
  const unsigned MaxEditDist = 2;
  std::vector<StringRef> Candidates;
  StringRef Prev = "";

  // Find the appropriate table for this asm variant.
  const MatchEntry *Start, *End;
  switch (VariantID) {
  default: llvm_unreachable("invalid variant!");
  case 0: Start = std::begin(MatchTable0); End = std::end(MatchTable0); break;
  }

  for (auto I = Start; I < End; I++) {
    // Ignore unsupported instructions.
    const FeatureBitset &RequiredFeatures = FeatureBitsets[I->RequiredFeaturesIdx];
    if ((FBS & RequiredFeatures) != RequiredFeatures)
      continue;

    StringRef T = I->getMnemonic();
    // Avoid recomputing the edit distance for the same string.
    if (T.equals(Prev))
      continue;

    Prev = T;
    unsigned Dist = S.edit_distance(T, false, MaxEditDist);
    if (Dist <= MaxEditDist)
      Candidates.push_back(T);
  }

  if (Candidates.empty())
    return "";

  std::string Res = ", did you mean: ";
  unsigned i = 0;
  for( ; i < Candidates.size() - 1; i++)
    Res += Candidates[i].str() + ", ";
  return Res + Candidates[i].str() + "?";
}

#endif // GET_MNEMONIC_SPELL_CHECKER

