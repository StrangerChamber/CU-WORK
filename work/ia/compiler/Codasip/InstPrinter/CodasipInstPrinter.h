/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2022 Codasip s.r.o.
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2022-12-07
 * \author  Codasip (c) C compiler backend generator
 * \version 9.1.1-1255
 * \brief   Source for compiler backend
 * \project cu_riscv32i_cycle_accurate.ia
 * \note          Codasip Studio version: 9.1.1-1255
 *                Licensee: Lockular Limited  (C60_2200_2176)
 *                Project: cu_riscv32i_cycle_accurate.ia
 *                Date: 2022-12-07 21:39:27
 *                Copyright (C) 2022 Codasip s.r.o.
 */


#ifndef LLVM_LIB_TARGET_CODASIP_INSTPRINTER_CODASIPINSTPRINTER_H
#define LLVM_LIB_TARGET_CODASIP_INSTPRINTER_CODASIPINSTPRINTER_H

#include "llvm/MC/MCInstPrinter.h"
#include "llvm/MC/MCSubtargetInfo.h"

namespace llvm {

/// How many slots in a bundle?
#define SLOTS 1

class MCOperand;

class CodasipInstPrinter : public MCInstPrinter
{
public:
  CodasipInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII, const MCRegisterInfo &MRI);
  void printInst(const MCInst *MI, raw_ostream &O, StringRef Annot, const MCSubtargetInfo &STI) override;
  void printRegName(raw_ostream &OS, unsigned RegNo) const override;
  void PrintBundle(const MCInst *bund, raw_ostream &O);
  // Called from generated file
  void printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  // Rest methods are autogenerated by tblgen.
  void printInstruction(const MCInst *MI, raw_ostream &O);
  bool printAliasInstr(const MCInst *MI, raw_ostream &O);
  void printCustomAliasOperand(const MCInst *MI, unsigned OpIdx, unsigned PrintMethodIdx, raw_ostream &O);
  const char* getInstructionName(unsigned Opcode); // FIXME this is not generated anymore?
  static const char* getRegisterName(unsigned regNo, unsigned altInd);
  // Check the given bundle
  static bool CheckBundle(const MCInst *bund);
};

} // end namespace llvm

#endif
