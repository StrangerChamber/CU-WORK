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


#ifndef CODASIPGENPASSCONFIG_H
#define CODASIPGENPASSCONFIG_H

#include "llvm/IR/PassManager.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "CodasipTargetMachine.h"

namespace llvm
{

class CodasipGenPassConfig: public TargetPassConfig
{
public:
  CodasipGenPassConfig(CodasipTargetMachine &TM, PassManagerBase &PM): TargetPassConfig(TM,PM) {}
  CodasipTargetMachine& getCodasipTargetMachine() const {return getTM<CodasipTargetMachine>();}
  bool addPreISel() override;
  bool addInstSelector() override;
  void addMachinePasses() override;
  void addPreRegAlloc() override;
  void addMachineLateOptimization() override;
  void addPreSched2() override;
  void addPreEmitPass() override;
  void addPreEmitPass2() override;
  bool addSuperBlockPreRegAlloc() override;
};

}

#endif //CODASIPGENPASSCONFIG_H
