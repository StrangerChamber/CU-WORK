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


// write your own calling conventions here

def CC_Codasip: CallingConv<[
  CCDelegateTo<CC_Codasip_Gen>
]>;

def RetCC_Codasip: CallingConv<[
  CCDelegateTo<RetCC_Codasip_Gen>
]>;

// experimental
def RetCC_Codasip_Ext: CallingConv<[
  
  CCDelegateTo<RetCC_Codasip>
]>;
