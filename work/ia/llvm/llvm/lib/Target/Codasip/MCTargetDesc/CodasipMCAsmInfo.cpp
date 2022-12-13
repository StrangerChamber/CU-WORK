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


// Codasip assembler uses GAS standards.

#include "CodasipMCAsmInfo.h"

llvm::CodasipMCAsmInfo::CodasipMCAsmInfo(const Triple &)
{
  // this kind of comment is supported always
  CommentString = "// ";
  // turn debug info on
  SupportsDebugInformation = true;
  ExceptionsType = ExceptionHandling::None;
  CodePointerSize = CalleeSaveStackSlotSize = 4;
  IsLittleEndian = 1;
  StackGrowsUp = 0;
  // debug info
  DwarfRegNumForCFI = true;
  // code fill value
  
    AddressSpaces.emplace_back(CodasipAddressSpace("as_all", CodasipAddressSpace::ALL, 32, 8, 1, 1));

  AlignmentIsInBytes = 1;
}
