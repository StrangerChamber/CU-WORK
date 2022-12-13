#define native_int8  char
#define native_int16 short
#define native_int32 long
#define native_int64 long long
#define __regopindex_type int __attribute__((bit_width(32)))
__regopindex_type codasip_regopindex(int, int) __attribute__((const));
typedef int int12 __attribute__((bit_width(12)));
typedef int int13 __attribute__((bit_width(13)));
typedef signed native_int16 int16;
typedef int int21 __attribute__((bit_width(21)));
typedef signed native_int32 int32;
typedef signed native_int64 int64;
typedef signed native_int8 int8;
typedef unsigned int uint1 __attribute__((bit_width(1)));
typedef unsigned int uint10 __attribute__((bit_width(10)));
typedef unsigned int uint104 __attribute__((bit_width(104)));
typedef unsigned int uint112 __attribute__((bit_width(112)));
typedef unsigned int uint120 __attribute__((bit_width(120)));
typedef unsigned int uint128 __attribute__((bit_width(128)));
typedef unsigned native_int16 uint16;
typedef unsigned int uint17 __attribute__((bit_width(17)));
typedef unsigned int uint2 __attribute__((bit_width(2)));
typedef unsigned int uint20 __attribute__((bit_width(20)));
typedef unsigned int uint24 __attribute__((bit_width(24)));
typedef unsigned int uint3 __attribute__((bit_width(3)));
typedef unsigned native_int32 uint32;
typedef unsigned int uint4 __attribute__((bit_width(4)));
typedef unsigned int uint40 __attribute__((bit_width(40)));
typedef unsigned int uint48 __attribute__((bit_width(48)));
typedef unsigned int uint5 __attribute__((bit_width(5)));
typedef unsigned int uint56 __attribute__((bit_width(56)));
typedef unsigned native_int64 uint64;
typedef unsigned int uint7 __attribute__((bit_width(7)));
typedef unsigned int uint72 __attribute__((bit_width(72)));
typedef unsigned native_int8 uint8;
typedef unsigned int uint80 __attribute__((bit_width(80)));
typedef unsigned int uint88 __attribute__((bit_width(88)));
typedef unsigned int uint96 __attribute__((bit_width(96)));
int _codasip_assert_function(uint1 condition, const char text[], const char file[], int line);
#ifndef codasip_assert
#define codasip_assert(condition, ...) if (condition); else _codasip_assert_function((condition), #condition, __FILE__, __LINE__)
#endif
int _codasip_error_function(int verbosity, const char text[], const char file[], int line);
#ifndef codasip_error
#define codasip_error(verbosity, text, ...) _codasip_error_function((verbosity), text, __FILE__, __LINE__)
#endif
int _codasip_fatal_function(int exit_code, const char text[], const char file[], int line);
#ifndef codasip_fatal
#define codasip_fatal(exit_code, text, ...) _codasip_fatal_function((exit_code), text, __FILE__, __LINE__)
#endif
int _codasip_warning_function(int verbosity, const char text[], const char file[], int line);
#ifndef codasip_warning
#define codasip_warning(verbosity, text, ...) _codasip_warning_function((verbosity), text, __FILE__, __LINE__)
#endif
int12 codasip_immread_int12(int32) __attribute__((const));
int13 codasip_immread_int13(int32) __attribute__((const));
int21 codasip_immread_int21(int32) __attribute__((const));
uint20 codasip_immread_uint20(int32) __attribute__((const));
uint32 codasip_immread_uint32(int32) __attribute__((const));
uint5 codasip_immread_uint5(int32) __attribute__((const));
void codasip_compiler_schedule_class(int32 index);
void codasip_compiler_undefined();
void codasip_compiler_unused();
void codasip_halt();
void codasip_nop();
volatile uint32 if_fetch__[2048];
volatile uint8 if_fetch__sb1__[2048];
volatile uint16 if_fetch__sb2__[2048];
volatile uint24 if_fetch__sb3__[2048];
volatile uint32 if_fetch__sb4__[2048];
volatile uint40 if_fetch__sb5__[2048];
volatile uint48 if_fetch__sb6__[2048];
volatile uint56 if_fetch__sb7__[2048];
volatile uint64 if_fetch__sb8__[2048];
volatile uint72 if_fetch__sb9__[2048];
volatile uint80 if_fetch__sb10__[2048];
volatile uint88 if_fetch__sb11__[2048];
volatile uint96 if_fetch__sb12__[2048];
volatile uint104 if_fetch__sb13__[2048];
volatile uint112 if_fetch__sb14__[2048];
volatile uint120 if_fetch__sb15__[2048];
volatile uint128 if_fetch__sb16__[2048];
volatile uint32 ldst__[2048];
volatile uint8 ldst__sb1__[2048];
volatile uint16 ldst__sb2__[2048];
volatile uint24 ldst__sb3__[2048];
volatile uint32 ldst__sb4__[2048];
volatile uint40 ldst__sb5__[2048];
volatile uint48 ldst__sb6__[2048];
volatile uint56 ldst__sb7__[2048];
volatile uint64 ldst__sb8__[2048];
volatile uint72 ldst__sb9__[2048];
volatile uint80 ldst__sb10__[2048];
volatile uint88 ldst__sb11__[2048];
volatile uint96 ldst__sb12__[2048];
volatile uint104 ldst__sb13__[2048];
volatile uint112 ldst__sb14__[2048];
volatile uint120 ldst__sb15__[2048];
volatile uint128 ldst__sb16__[2048];
volatile uint32 r_pc;
volatile uint32 rf_xpr[32];
int32 sc_load;
uint128 codasip_if_fetch___read__(unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            return if_fetch__sb1__[address];
        }
        case 2:
        {
            return if_fetch__sb2__[address];
        }
        case 3:
        {
            return if_fetch__sb3__[address];
        }
        case 4:
        {
            return if_fetch__sb4__[address];
        }
        case 5:
        {
            return if_fetch__sb5__[address];
        }
        case 6:
        {
            return if_fetch__sb6__[address];
        }
        case 7:
        {
            return if_fetch__sb7__[address];
        }
        case 8:
        {
            return if_fetch__sb8__[address];
        }
        case 9:
        {
            return if_fetch__sb9__[address];
        }
        case 10:
        {
            return if_fetch__sb10__[address];
        }
        case 11:
        {
            return if_fetch__sb11__[address];
        }
        case 12:
        {
            return if_fetch__sb12__[address];
        }
        case 13:
        {
            return if_fetch__sb13__[address];
        }
        case 14:
        {
            return if_fetch__sb14__[address];
        }
        case 15:
        {
            return if_fetch__sb15__[address];
        }
        case 16:
        {
            return if_fetch__sb16__[address];
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            return 0;
        }
    }
}

void codasip_if_fetch___write__(uint128 data, unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            if_fetch__sb1__[address] = data;
            break;
        }
        case 2:
        {
            if_fetch__sb2__[address] = data;
            break;
        }
        case 3:
        {
            if_fetch__sb3__[address] = data;
            break;
        }
        case 4:
        {
            if_fetch__sb4__[address] = data;
            break;
        }
        case 5:
        {
            if_fetch__sb5__[address] = data;
            break;
        }
        case 6:
        {
            if_fetch__sb6__[address] = data;
            break;
        }
        case 7:
        {
            if_fetch__sb7__[address] = data;
            break;
        }
        case 8:
        {
            if_fetch__sb8__[address] = data;
            break;
        }
        case 9:
        {
            if_fetch__sb9__[address] = data;
            break;
        }
        case 10:
        {
            if_fetch__sb10__[address] = data;
            break;
        }
        case 11:
        {
            if_fetch__sb11__[address] = data;
            break;
        }
        case 12:
        {
            if_fetch__sb12__[address] = data;
            break;
        }
        case 13:
        {
            if_fetch__sb13__[address] = data;
            break;
        }
        case 14:
        {
            if_fetch__sb14__[address] = data;
            break;
        }
        case 15:
        {
            if_fetch__sb15__[address] = data;
            break;
        }
        case 16:
        {
            if_fetch__sb16__[address] = data;
            break;
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            break;
        }
    }
}

uint128 codasip_ldst___read__(unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            return ldst__sb1__[address];
        }
        case 2:
        {
            return ldst__sb2__[address];
        }
        case 3:
        {
            return ldst__sb3__[address];
        }
        case 4:
        {
            return ldst__sb4__[address];
        }
        case 5:
        {
            return ldst__sb5__[address];
        }
        case 6:
        {
            return ldst__sb6__[address];
        }
        case 7:
        {
            return ldst__sb7__[address];
        }
        case 8:
        {
            return ldst__sb8__[address];
        }
        case 9:
        {
            return ldst__sb9__[address];
        }
        case 10:
        {
            return ldst__sb10__[address];
        }
        case 11:
        {
            return ldst__sb11__[address];
        }
        case 12:
        {
            return ldst__sb12__[address];
        }
        case 13:
        {
            return ldst__sb13__[address];
        }
        case 14:
        {
            return ldst__sb14__[address];
        }
        case 15:
        {
            return ldst__sb15__[address];
        }
        case 16:
        {
            return ldst__sb16__[address];
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            return 0;
        }
    }
}

void codasip_ldst___write__(uint128 data, unsigned long long address, unsigned int sbc)
{
    switch (sbc)
    {
        case 1:
        {
            ldst__sb1__[address] = data;
            break;
        }
        case 2:
        {
            ldst__sb2__[address] = data;
            break;
        }
        case 3:
        {
            ldst__sb3__[address] = data;
            break;
        }
        case 4:
        {
            ldst__sb4__[address] = data;
            break;
        }
        case 5:
        {
            ldst__sb5__[address] = data;
            break;
        }
        case 6:
        {
            ldst__sb6__[address] = data;
            break;
        }
        case 7:
        {
            ldst__sb7__[address] = data;
            break;
        }
        case 8:
        {
            ldst__sb8__[address] = data;
            break;
        }
        case 9:
        {
            ldst__sb9__[address] = data;
            break;
        }
        case 10:
        {
            ldst__sb10__[address] = data;
            break;
        }
        case 11:
        {
            ldst__sb11__[address] = data;
            break;
        }
        case 12:
        {
            ldst__sb12__[address] = data;
            break;
        }
        case 13:
        {
            ldst__sb13__[address] = data;
            break;
        }
        case 14:
        {
            ldst__sb14__[address] = data;
            break;
        }
        case 15:
        {
            ldst__sb15__[address] = data;
            break;
        }
        case 16:
        {
            ldst__sb16__[address] = data;
            break;
        }
        default:
        {
            codasip_error(0, "Invalid sbc %d.", sbc);
            break;
        }
    }
}

uint32 MI11rf_xpr_read(const uint5 MI5indexIH1_11rf_xpr_read);
void MI12rf_xpr_write(const uint32 MI5valueIH1_12rf_xpr_write, const uint5 MI5indexIH1_12rf_xpr_write);
uint32 MI4load(const uint32 MI3opcIH1_4load, const uint32 MI7addressIH1_4load);
void MI5store(const uint32 MI3opcIH1_5store, const uint32 MI7addressIH1_5store, const uint32 MI6resultIH1_5store);
uint32 MI7read_pc();
void MI8write_pc(const uint32 MI5valueIH1_8write_pc);
uint4 MI9pma_hprot(const uint32 MI7addressIH1_9pma_hprot, const uint1 MI6hprot0IH1_9pma_hprot);
uint32 MI11rf_xpr_read(const uint5 MI5indexIH1_11rf_xpr_read)
{
uint32 MI5valueIH1_11rf_xpr_readB0;


#line 34 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
if ((MI5indexIH1_11rf_xpr_read != (int32)0L))
{
    MI5valueIH1_11rf_xpr_readB0 = rf_xpr[MI5indexIH1_11rf_xpr_read];
}
#line 35 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
else 
{
    MI5valueIH1_11rf_xpr_readB0 = (int32)0L;
}


#line 37 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
;


#line 39 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
return MI5valueIH1_11rf_xpr_readB0;


}

void MI12rf_xpr_write(const uint32 MI5valueIH1_12rf_xpr_write, const uint5 MI5indexIH1_12rf_xpr_write)
{

#line 46 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
if ((MI5indexIH1_12rf_xpr_write != (int32)0L))
{
    rf_xpr[MI5indexIH1_12rf_xpr_write] = MI5valueIH1_12rf_xpr_write;
}


#line 47 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
;


}

uint32 MI4load(const uint32 MI3opcIH1_4load, const uint32 MI7addressIH1_4load)
{
uint32 MI6resultIH1_4loadB0, MI10byte_countIH1_4loadB0;

uint1 MI10cache_respIH1_4loadB0;


#line 59 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_4load)
{
    #line 60 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)259UL:
    {
        #line 61 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_4loadB0 = (int32)4L;
        #line 62 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
    #line 63 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)3UL:
    #line 64 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)515UL:
    {
        #line 65 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_4loadB0 = (int32)1L;
        #line 66 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
    #line 67 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)131UL:
    #line 68 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)643UL:
    {
        #line 69 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_4loadB0 = (int32)2L;
        #line 70 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
    #line 71 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    default:
    {
        #line 72 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_4loadB0 = (int32)0L;
        #line 74 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 82 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
MI10cache_respIH1_4loadB0 = (uint1)(0);


#line 82 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
MI6resultIH1_4loadB0 = codasip_ldst___read__(MI7addressIH1_4load, MI10byte_countIH1_4loadB0);


#line 84 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_4load)
{
    #line 85 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)3UL:
    {
        #line 86 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        return (int32)((int8)(MI6resultIH1_4loadB0));
    }
    #line 87 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)131UL:
    {
        #line 88 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        return (int32)((int16)(MI6resultIH1_4loadB0));
    }
    #line 89 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)515UL:
    #line 90 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)643UL:
    #line 91 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)259UL:
    {
        #line 92 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        return MI6resultIH1_4loadB0;
    }
    #line 93 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    default:
    {
        #line 94 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_4loadB0 = (int32)0L;
        #line 96 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        return MI10byte_countIH1_4loadB0;
        #line 97 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
}


}

void MI5store(const uint32 MI3opcIH1_5store, const uint32 MI7addressIH1_5store, const uint32 MI6resultIH1_5store)
{
uint32 MI10byte_countIH1_5storeB0;

uint1 MI10cache_respIH1_5storeB0;


#line 109 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_5store)
{
    #line 110 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)35UL:
    {
        #line 111 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_5storeB0 = (int32)1L;
        #line 112 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
    #line 113 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)163UL:
    {
        #line 114 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_5storeB0 = (int32)2L;
        #line 115 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
    #line 116 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    case (uint32)291UL:
    {
        #line 117 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_5storeB0 = (int32)4L;
        #line 118 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
    #line 119 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
    default:
    {
        #line 120 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        MI10byte_countIH1_5storeB0 = (int32)0L;
        #line 122 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 130 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
MI10cache_respIH1_5storeB0 = (uint1)(0);


#line 130 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
codasip_ldst___write__(MI6resultIH1_5store, MI7addressIH1_5store, MI10byte_countIH1_5storeB0);


#line 131 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
;


}

uint32 MI7read_pc()
{

#line 141 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
return r_pc;


}

void MI8write_pc(const uint32 MI5valueIH1_8write_pc)
{

#line 147 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
r_pc = MI5valueIH1_8write_pc;


#line 148 "/home/project/cu_riscv32i_cycle_accurate/model/ia/other/ia_utils.codal"
;


}

uint4 MI9pma_hprot(const uint32 MI7addressIH1_9pma_hprot, const uint1 MI6hprot0IH1_9pma_hprot)
{
uint1 MI23is_cacheable_bufferableIH1_9pma_hprotB0;


#line 51 "/home/project/cu_riscv32i_cycle_accurate/model/share/other/utils.codal"
MI23is_cacheable_bufferableIH1_9pma_hprotB0 = ~((uint1)((MI7addressIH1_9pma_hprot >> (int32)31L)));


#line 52 "/home/project/cu_riscv32i_cycle_accurate/model/share/other/utils.codal"
return (((((uint4)((((((uint3)((((((uint2)(MI23is_cacheable_bufferableIH1_9pma_hprotB0) << (int32)1L)) | MI23is_cacheable_bufferableIH1_9pma_hprotB0))) << (int32)1L)) | (uint1)(0x1)))) << (int32)1L)) | MI6hprot0IH1_9pma_hprot));


}

static unsigned int g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index;
static unsigned int g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index;
static unsigned int g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index;
static unsigned int g_MI5imm32_Index;
static unsigned int g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index;
static unsigned int g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index;
static unsigned int g_MI5valueIH1_13default_start8_6uimm203imm1_6uimm20_Index;
static unsigned int g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index;
static unsigned int g_MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20_Index;

void MI11i_itype_aluIH1_13default_start(int32 MI13opc_itype_aluIH1_13default_start16_13opc_itype_alu3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1, int12 MI6simm12IH1_13default_start8_6simm124simm)
{
{
    uint32 MI4src1IH1_13default_start1_11i_itype_aluB0, MI6resultIH1_13default_start1_11i_itype_aluB0;
    int32 MI9immediateIH1_13default_start1_11i_itype_aluB0;
    #line 297 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_itype_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1);
    #line 298 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI9immediateIH1_13default_start1_11i_itype_aluB0 = (int32)(MI6simm12IH1_13default_start8_6simm124simm);
    #line 300 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    switch (MI13opc_itype_aluIH1_13default_start16_13opc_itype_alu3opc)
    {
        #line 301 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x13):
        {
            #line 302 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_itype_aluB0 = (MI4src1IH1_13default_start1_11i_itype_aluB0 + MI9immediateIH1_13default_start1_11i_itype_aluB0);
            #line 303 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 304 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x113):
        {
            #line 305 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            if (((int32)(MI4src1IH1_13default_start1_11i_itype_aluB0) < (int32)(MI9immediateIH1_13default_start1_11i_itype_aluB0)))
            {
                MI6resultIH1_13default_start1_11i_itype_aluB0 = (int32)1L;
            }
            #line 306 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            else 
            {
                MI6resultIH1_13default_start1_11i_itype_aluB0 = (int32)0L;
            }
            #line 307 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 308 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x193):
        {
            #line 309 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            if (((uint32)(MI4src1IH1_13default_start1_11i_itype_aluB0) < ((uint32)((int32)(MI9immediateIH1_13default_start1_11i_itype_aluB0)))))
            {
                MI6resultIH1_13default_start1_11i_itype_aluB0 = (int32)1L;
            }
            #line 310 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            else 
            {
                MI6resultIH1_13default_start1_11i_itype_aluB0 = (int32)0L;
            }
            #line 311 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 312 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x213):
        {
            #line 313 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_itype_aluB0 = (MI4src1IH1_13default_start1_11i_itype_aluB0 ^ MI9immediateIH1_13default_start1_11i_itype_aluB0);
            #line 314 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 315 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x313):
        {
            #line 316 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_itype_aluB0 = (MI4src1IH1_13default_start1_11i_itype_aluB0 | MI9immediateIH1_13default_start1_11i_itype_aluB0);
            #line 317 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 318 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x393):
        {
            #line 319 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_itype_aluB0 = (MI4src1IH1_13default_start1_11i_itype_aluB0 & MI9immediateIH1_13default_start1_11i_itype_aluB0);
            #line 320 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 321 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        default:
        {
            #line 322 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_itype_aluB0 = (int32)0L;
            #line 324 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
    }
    #line 327 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_itype_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
}
}

void MI11i_nop_aliasIH1_13default_start()
{
{
    {
        #line 595 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        codasip_nop();
    }
}
}

void MI11i_ret_aliasIH1_13default_start()
{
{
    uint32 MI12jump_addressIH1_13default_start1_11i_ret_aliasB0;
    #line 880 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI12jump_addressIH1_13default_start1_11i_ret_aliasB0 = MI11rf_xpr_read((int32)1L);
    #line 882 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI8write_pc(MI12jump_addressIH1_13default_start1_11i_ret_aliasB0);
}
}

void MI11i_rtype_aluIH1_13default_start(int32 MI13opc_rtype_aluIH1_13default_start16_13opc_rtype_alu3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs2)
{
{
    uint32 MI4src1IH1_13default_start1_11i_rtype_aluB0, MI4src2IH1_13default_start1_11i_rtype_aluB0, MI6resultIH1_13default_start1_11i_rtype_aluB0;
    #line 176 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_rtype_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1);
    #line 177 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_rtype_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs2);
    #line 184 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    switch (MI13opc_rtype_aluIH1_13default_start16_13opc_rtype_alu3opc)
    {
        #line 186 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x33):
        {
            #line 187 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (MI4src1IH1_13default_start1_11i_rtype_aluB0 + MI4src2IH1_13default_start1_11i_rtype_aluB0);
            #line 188 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 189 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x8033):
        {
            #line 190 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (MI4src1IH1_13default_start1_11i_rtype_aluB0 - MI4src2IH1_13default_start1_11i_rtype_aluB0);
            #line 191 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 192 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0xb3):
        {
            #line 193 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (MI4src1IH1_13default_start1_11i_rtype_aluB0 << MI4src2IH1_13default_start1_11i_rtype_aluB0);
            #line 194 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 195 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x133):
        {
            #line 196 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            if ((((int32)(MI4src1IH1_13default_start1_11i_rtype_aluB0)) < ((int32)(MI4src2IH1_13default_start1_11i_rtype_aluB0))))
            {
                MI6resultIH1_13default_start1_11i_rtype_aluB0 = (int32)1L;
            }
            #line 197 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            else 
            {
                MI6resultIH1_13default_start1_11i_rtype_aluB0 = (int32)0L;
            }
            #line 198 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 199 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x1b3):
        {
            #line 200 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            if ((MI4src1IH1_13default_start1_11i_rtype_aluB0 < MI4src2IH1_13default_start1_11i_rtype_aluB0))
            {
                MI6resultIH1_13default_start1_11i_rtype_aluB0 = (int32)1L;
            }
            #line 201 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            else 
            {
                MI6resultIH1_13default_start1_11i_rtype_aluB0 = (int32)0L;
            }
            #line 202 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 203 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x233):
        {
            #line 204 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (MI4src1IH1_13default_start1_11i_rtype_aluB0 ^ MI4src2IH1_13default_start1_11i_rtype_aluB0);
            #line 205 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 206 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x2b3):
        {
            #line 207 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (MI4src1IH1_13default_start1_11i_rtype_aluB0 >> (uint5)(MI4src2IH1_13default_start1_11i_rtype_aluB0));
            #line 208 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 209 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x82b3):
        {
            #line 210 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = ((int32)(MI4src1IH1_13default_start1_11i_rtype_aluB0) >> (uint5)(MI4src2IH1_13default_start1_11i_rtype_aluB0));
            #line 211 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 212 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x333):
        {
            #line 213 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (MI4src1IH1_13default_start1_11i_rtype_aluB0 | MI4src2IH1_13default_start1_11i_rtype_aluB0);
            #line 214 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 215 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x3b3):
        {
            #line 216 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (MI4src1IH1_13default_start1_11i_rtype_aluB0 & MI4src2IH1_13default_start1_11i_rtype_aluB0);
            #line 217 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 218 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        default:
        {
            #line 219 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_rtype_aluB0 = (int32)0L;
            #line 221 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
    }
    #line 226 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_rtype_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
}
}

void MI11i_utype_opsIH1_13default_start(int32 MI13opc_utype_opsIH1_13default_start16_13opc_utype_ops3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, uint20 MI6uimm20IH1_13default_start8_6uimm203imm)
{
{
    uint32 MI6resultIH1_13default_start1_11i_utype_opsB0, MI10current_pcIH1_13default_start1_11i_utype_opsB0;
    #line 423 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_utype_opsB0 = (int32)0L;
    #line 425 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    switch (MI13opc_utype_opsIH1_13default_start16_13opc_utype_ops3opc)
    {
        #line 426 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint7)(0x37):
        {
            #line 427 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_utype_opsB0 = ((int32)(MI6uimm20IH1_13default_start8_6uimm203imm) << (int32)12L);
            #line 428 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_utype_opsB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
            #line 429 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 430 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint7)(0x17):
        {
            #line 431 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI10current_pcIH1_13default_start1_11i_utype_opsB0 = (MI7read_pc() - (int32)4L);
            #line 432 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_utype_opsB0 = (MI10current_pcIH1_13default_start1_11i_utype_opsB0 + (((int32)(MI6uimm20IH1_13default_start8_6uimm203imm) << (int32)12L)));
            #line 433 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_utype_opsB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
            #line 434 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 435 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        default:
        {
            #line 436 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_11i_utype_opsB0 = (int32)0L;
            #line 438 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
    }
}
}

void MI12i_call_aliasIH1_13default_start(int32 MI15relative_addr20IH1_13default_start18_15relative_addr204simm)
{
{
    {
        uint32 MI12jump_addressIH1_13default_start1_12i_call_aliasB0B0;
        #line 902 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI12rf_xpr_write(r_pc, (int32)1L);
        #line 909 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI12jump_addressIH1_13default_start1_12i_call_aliasB0B0 = ((MI7read_pc() + (int32)(MI15relative_addr20IH1_13default_start18_15relative_addr204simm)) - (int32)4L);
        #line 910 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI8write_pc(MI12jump_addressIH1_13default_start1_12i_call_aliasB0B0);
    }
}
}

void MI13i_itype_jlregIH1_13default_start(int32 MI15opc_itype_jlregIH1_13default_start18_15opc_itype_jlreg3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, int12 MI6simm12IH1_13default_start8_6simm124simm, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1)
{
{
    uint32 MI14target_addressIH1_13default_start1_13i_itype_jlregB0, MI10current_pcIH1_13default_start1_13i_itype_jlregB0, MI8reg_addrIH1_13default_start1_13i_itype_jlregB0;
    #line 488 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    if ((MI15opc_itype_jlregIH1_13default_start18_15opc_itype_jlreg3opc == (uint10)(0x67)))
    {
        #line 489 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI10current_pcIH1_13default_start1_13i_itype_jlregB0 = MI7read_pc();
        #line 490 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI8reg_addrIH1_13default_start1_13i_itype_jlregB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1);
        #line 491 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI14target_addressIH1_13default_start1_13i_itype_jlregB0 = (((MI8reg_addrIH1_13default_start1_13i_itype_jlregB0 + (int32)(MI6simm12IH1_13default_start8_6simm124simm))) & (int32)-2L);
        #line 492 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI12rf_xpr_write(MI10current_pcIH1_13default_start1_13i_itype_jlregB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
        #line 493 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI8write_pc(MI14target_addressIH1_13default_start1_13i_itype_jlregB0);
    }
    #line 494 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    else 
    {
    }
}
}

void MI13i_itype_loadsIH1_13default_start(int32 MI15opc_itype_loadsIH1_13default_start18_15opc_itype_loads3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, int12 MI6simm12IH1_13default_start8_6simm124simm, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1)
{
{
    uint32 MI7addressIH1_13default_start1_13i_itype_loadsB0, MI6resultIH1_13default_start1_13i_itype_loadsB0;
    {
        #line 356 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 358 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_13i_itype_loadsB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1) + (int32)(MI6simm12IH1_13default_start8_6simm124simm));
    #line 359 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_13i_itype_loadsB0 = MI4load(MI15opc_itype_loadsIH1_13default_start18_15opc_itype_loads3opc, MI7addressIH1_13default_start1_13i_itype_loadsB0);
    #line 360 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_13i_itype_loadsB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
}
}

void MI13i_jtype_jlinkIH1_13default_start(int32 MI15opc_jtype_jlinkIH1_13default_start18_15opc_jtype_jlink3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, int32 MI15relative_addr20IH1_13default_start18_15relative_addr204simm)
{
{
    uint32 MI14target_addressIH1_13default_start1_13i_jtype_jlinkB0, MI10current_pcIH1_13default_start1_13i_jtype_jlinkB0;
    #line 460 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    if ((MI15opc_jtype_jlinkIH1_13default_start18_15opc_jtype_jlink3opc == (uint7)(0x6f)))
    {
        #line 461 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI10current_pcIH1_13default_start1_13i_jtype_jlinkB0 = MI7read_pc();
        #line 462 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI12rf_xpr_write(MI10current_pcIH1_13default_start1_13i_jtype_jlinkB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
        #line 463 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI14target_addressIH1_13default_start1_13i_jtype_jlinkB0 = ((MI10current_pcIH1_13default_start1_13i_jtype_jlinkB0 + MI15relative_addr20IH1_13default_start18_15relative_addr204simm) - (int32)4L);
        #line 464 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI8write_pc(MI14target_addressIH1_13default_start1_13i_jtype_jlinkB0);
    }
    #line 465 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    else 
    {
    }
}
}

void MI13i_rtype_shiftIH1_13default_start(int32 MI15opc_rtype_shiftIH1_13default_start18_15opc_rtype_shift3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1, uint5 MI5uimm5IH1_13default_start7_5uimm53imm)
{
{
    uint32 MI4src1IH1_13default_start1_13i_rtype_shiftB0, MI9immediateIH1_13default_start1_13i_rtype_shiftB0, MI6resultIH1_13default_start1_13i_rtype_shiftB0;
    #line 250 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_13i_rtype_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1);
    #line 251 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI9immediateIH1_13default_start1_13i_rtype_shiftB0 = (uint5)(MI5uimm5IH1_13default_start7_5uimm53imm);
    #line 253 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    switch (MI15opc_rtype_shiftIH1_13default_start18_15opc_rtype_shift3opc)
    {
        #line 254 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x93):
        {
            #line 255 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_13i_rtype_shiftB0 = ((uint32)(MI4src1IH1_13default_start1_13i_rtype_shiftB0) << MI9immediateIH1_13default_start1_13i_rtype_shiftB0);
            #line 256 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 257 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x293):
        {
            #line 258 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_13i_rtype_shiftB0 = ((uint32)(MI4src1IH1_13default_start1_13i_rtype_shiftB0) >> MI9immediateIH1_13default_start1_13i_rtype_shiftB0);
            #line 259 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 260 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint17)(0x8293):
        {
            #line 261 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_13i_rtype_shiftB0 = (((int32)(MI4src1IH1_13default_start1_13i_rtype_shiftB0)) >> MI9immediateIH1_13default_start1_13i_rtype_shiftB0);
            #line 262 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 263 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        default:
        {
            #line 264 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_13i_rtype_shiftB0 = (int32)0L;
            #line 266 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
    }
    #line 269 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_13i_rtype_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all2rd);
}
}

void MI13i_stype_storeIH1_13default_start(int32 MI15opc_stype_storeIH1_13default_start18_15opc_stype_store3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs2, int12 MI6simm12IH1_13default_start8_6simm124simm, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1)
{
{
    uint32 MI7addressIH1_13default_start1_13i_stype_storeB0, MI6resultIH1_13default_start1_13i_stype_storeB0;
    #line 383 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_13i_stype_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1) + (int32)(MI6simm12IH1_13default_start8_6simm124simm));
    #line 384 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_13i_stype_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs2);
    #line 385 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI5store(MI15opc_stype_storeIH1_13default_start18_15opc_stype_store3opc, MI7addressIH1_13default_start1_13i_stype_storeB0, MI6resultIH1_13default_start1_13i_stype_storeB0);
    {
    }
}
}

uint32 MI15relative_addr12IH1_13default_start18_15relative_addr123imm(uint32 MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12)
{
    return ((uint32)(MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12) << (int32)1L);
}

int32 MI15relative_addr20IH1_13default_start18_15relative_addr204simm(int32 MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20)
{
    return ((int32)(MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20) << (int32)1L);
}

void MI16i_btype_branchesIH1_13default_start(int32 MI18opc_btype_branchesIH1_13default_start21_18opc_btype_branches3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs2, uint32 MI15relative_addr12IH1_13default_start18_15relative_addr123imm)
{
{
    uint32 MI6resultIH1_13default_start1_16i_btype_branchesB0, MI14target_addressIH1_13default_start1_16i_btype_branchesB0;
    uint32 MI4src1IH1_13default_start1_16i_btype_branchesB0, MI4src2IH1_13default_start1_16i_btype_branchesB0;
    #line 525 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_16i_btype_branchesB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1);
    #line 526 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_16i_btype_branchesB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs2);
    #line 529 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI14target_addressIH1_13default_start1_16i_btype_branchesB0 = ((r_pc + (int32)(MI15relative_addr12IH1_13default_start18_15relative_addr123imm)) - (int32)4L);
    #line 536 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    switch (MI18opc_btype_branchesIH1_13default_start21_18opc_btype_branches3opc)
    {
        #line 537 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x63):
        {
            #line 538 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_16i_btype_branchesB0 = ((((MI4src1IH1_13default_start1_16i_btype_branchesB0 == MI4src2IH1_13default_start1_16i_btype_branchesB0))) ? ((int32)1L) : ((int32)0L));
            #line 539 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 540 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0xe3):
        {
            #line 541 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_16i_btype_branchesB0 = ((((MI4src1IH1_13default_start1_16i_btype_branchesB0 != MI4src2IH1_13default_start1_16i_btype_branchesB0))) ? ((int32)1L) : ((int32)0L));
            #line 542 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 543 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x263):
        {
            #line 544 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_16i_btype_branchesB0 = (((((int32)(MI4src1IH1_13default_start1_16i_btype_branchesB0) < (int32)(MI4src2IH1_13default_start1_16i_btype_branchesB0)))) ? ((int32)1L) : ((int32)0L));
            #line 545 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 546 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x2e3):
        {
            #line 547 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_16i_btype_branchesB0 = (((((int32)(MI4src1IH1_13default_start1_16i_btype_branchesB0) >= (int32)(MI4src2IH1_13default_start1_16i_btype_branchesB0)))) ? ((int32)1L) : ((int32)0L));
            #line 548 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 549 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x363):
        {
            #line 550 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_16i_btype_branchesB0 = (((((uint32)(MI4src1IH1_13default_start1_16i_btype_branchesB0) < (uint32)(MI4src2IH1_13default_start1_16i_btype_branchesB0)))) ? ((int32)1L) : ((int32)0L));
            #line 551 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 552 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        case (uint10)(0x3e3):
        {
            #line 553 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_16i_btype_branchesB0 = (((((uint32)(MI4src1IH1_13default_start1_16i_btype_branchesB0) >= (uint32)(MI4src2IH1_13default_start1_16i_btype_branchesB0)))) ? ((int32)1L) : ((int32)0L));
            #line 554 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
        #line 555 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        default:
        {
            #line 556 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            MI6resultIH1_13default_start1_16i_btype_branchesB0 = (int32)0L;
            #line 558 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
            break;
        }
    }
    #line 560 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    if (MI6resultIH1_13default_start1_16i_btype_branchesB0)
    {
        MI8write_pc(MI14target_addressIH1_13default_start1_16i_btype_branchesB0);
    }
}
}

void MI16i_call_reg_aliasIH1_13default_start(int12 MI6simm12IH1_13default_start8_6simm124simm, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all3rs1)
{
{
    {
        uint32 MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0B0;
        #line 932 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI12rf_xpr_write(MI7read_pc(), (int32)1L);
        #line 934 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0B0 = (((MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all3rs1) + (int32)(MI6simm12IH1_13default_start8_6simm124simm))) & (uint32)4294967292UL);
        #line 935 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI8write_pc(MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0B0);
    }
}
}

void MI16i_jal_abs_caliasIH1_13default_start(int32 MI7opc_jalIH1_13default_start9_7opc_jal3opc, __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all2rd, int32 MI15relative_addr20IH1_13default_start18_15relative_addr204simm)
{
{
    {
        #line 950 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI12rf_xpr_write(MI7read_pc(), MI7xpr_allIH1_13default_start9_7xpr_all2rd);
        #line 951 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        MI8write_pc((int32)(MI15relative_addr20IH1_13default_start18_15relative_addr204simm));
    }
}
}

int32 MI3x_0IH1_13default_start9_7xpr_all3rs2()
{
    return (int32)0L;
}

uint5 MI5uimm5IH1_13default_start7_5uimm53imm(uint5 MI5valueIH1_13default_start7_5uimm53imm1_5uimm5)
{
    return MI5valueIH1_13default_start7_5uimm53imm1_5uimm5;
}

uint5 MI5valueIH1_13default_start7_5uimm53imm1_5uimm5()
{
    return codasip_immread_uint5(g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index);
}

int12 MI5valueIH1_13default_start8_6simm124simm1_6simm12()
{
    return codasip_immread_int12(g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index);
}

uint20 MI5valueIH1_13default_start8_6uimm203imm1_6uimm20()
{
    return codasip_immread_uint20(g_MI5valueIH1_13default_start8_6uimm203imm1_6uimm20_Index);
}

uint32 MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12()
{
    return  (  (  ( codasip_immread_int13(g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index) - (int64)((int64)((int13)0)) )  )  >> (int13)1 ) ;
}

int32 MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20()
{
    return  (  (  ( codasip_immread_int21(g_MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20_Index) - (int64)((int64)((int21)0)) )  )  >> (int21)1 ) ;
}

void MI6i_haltIH1_13default_start(int32 MI8opc_haltIH1_13default_start10_8opc_halt3opc)
{
{
    {
        #line 1076 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
        codasip_compiler_unused();
    }
    #line 1078 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    codasip_halt();
}
}

int32 MI6opc_lbIH1_13default_start18_15opc_itype_loads3opc()
{
    return (uint10)(0x3);
}

int32 MI6opc_lhIH1_13default_start18_15opc_itype_loads3opc()
{
    return (uint10)(0x83);
}

int32 MI6opc_lwIH1_13default_start18_15opc_itype_loads3opc()
{
    return (uint10)(0x103);
}

int32 MI6opc_orIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x333);
}

int32 MI6opc_sbIH1_13default_start18_15opc_stype_store3opc()
{
    return (uint10)(0x23);
}

int32 MI6opc_shIH1_13default_start18_15opc_stype_store3opc()
{
    return (uint10)(0xa3);
}

int32 MI6opc_swIH1_13default_start18_15opc_stype_store3opc()
{
    return (uint10)(0x123);
}

int12 MI6simm12IH1_13default_start8_6simm124simm(int12 MI5valueIH1_13default_start8_6simm124simm1_6simm12)
{
    return MI5valueIH1_13default_start8_6simm124simm1_6simm12;
}

uint20 MI6uimm20IH1_13default_start8_6uimm203imm(uint20 MI5valueIH1_13default_start8_6uimm203imm1_6uimm20)
{
    return MI5valueIH1_13default_start8_6uimm203imm1_6uimm20;
}

int32 MI7opc_addIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x33);
}

int32 MI7opc_andIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x3b3);
}

int32 MI7opc_beqIH1_13default_start21_18opc_btype_branches3opc()
{
    return (uint10)(0x63);
}

int32 MI7opc_bgeIH1_13default_start21_18opc_btype_branches3opc()
{
    return (uint10)(0x2e3);
}

int32 MI7opc_bltIH1_13default_start21_18opc_btype_branches3opc()
{
    return (uint10)(0x263);
}

int32 MI7opc_bneIH1_13default_start21_18opc_btype_branches3opc()
{
    return (uint10)(0xe3);
}

int32 MI7opc_jalIH1_13default_start9_7opc_jal3opc()
{
    return (uint7)(0x6f);
}

int32 MI7opc_lbuIH1_13default_start18_15opc_itype_loads3opc()
{
    return (uint10)(0x203);
}

int32 MI7opc_lhuIH1_13default_start18_15opc_itype_loads3opc()
{
    return (uint10)(0x283);
}

int32 MI7opc_luiIH1_13default_start16_13opc_utype_ops3opc()
{
    return (uint7)(0x37);
}

int32 MI7opc_oriIH1_13default_start16_13opc_itype_alu3opc()
{
    return (uint10)(0x313);
}

int32 MI7opc_sllIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0xb3);
}

int32 MI7opc_sltIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x133);
}

int32 MI7opc_sraIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x82b3);
}

int32 MI7opc_srlIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x2b3);
}

int32 MI7opc_subIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x8033);
}

int32 MI7opc_xorIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x233);
}

int32 MI8opc_addiIH1_13default_start16_13opc_itype_alu3opc()
{
    return (uint10)(0x13);
}

int32 MI8opc_andiIH1_13default_start16_13opc_itype_alu3opc()
{
    return (uint10)(0x393);
}

int32 MI8opc_bgeuIH1_13default_start21_18opc_btype_branches3opc()
{
    return (uint10)(0x3e3);
}

int32 MI8opc_bltuIH1_13default_start21_18opc_btype_branches3opc()
{
    return (uint10)(0x363);
}

int32 MI8opc_haltIH1_13default_start10_8opc_halt3opc()
{
    return (uint7)(0x3f);
}

int32 MI8opc_jalrIH1_13default_start18_15opc_itype_jlreg3opc()
{
    return (uint10)(0x67);
}

int32 MI8opc_slliIH1_13default_start18_15opc_rtype_shift3opc()
{
    return (uint17)(0x93);
}

int32 MI8opc_sltiIH1_13default_start16_13opc_itype_alu3opc()
{
    return (uint10)(0x113);
}

int32 MI8opc_sltuIH1_13default_start16_13opc_rtype_alu3opc()
{
    return (uint17)(0x1b3);
}

int32 MI8opc_sraiIH1_13default_start18_15opc_rtype_shift3opc()
{
    return (uint17)(0x8293);
}

int32 MI8opc_srliIH1_13default_start18_15opc_rtype_shift3opc()
{
    return (uint17)(0x293);
}

int32 MI8opc_xoriIH1_13default_start16_13opc_itype_alu3opc()
{
    return (uint10)(0x213);
}

int32 MI9opc_auipcIH1_13default_start16_13opc_utype_ops3opc()
{
    return (uint7)(0x17);
}

int32 MI9opc_sltiuIH1_13default_start16_13opc_itype_alu3opc()
{
    return (uint10)(0x193);
}

void i_btype_branches__opc_beq__x_0__x_0__relative_addr12__();
void i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__();
void i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__();
void i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__();
void i_btype_branches__opc_bge__x_0__x_0__relative_addr12__();
void i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__();
void i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__();
void i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__();
void i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__();
void i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__();
void i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__();
void i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__();
void i_btype_branches__opc_blt__x_0__x_0__relative_addr12__();
void i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__();
void i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__();
void i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__();
void i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__();
void i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__();
void i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__();
void i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__();
void i_btype_branches__opc_bne__x_0__x_0__relative_addr12__();
void i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__();
void i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__();
void i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__();
void i_call_alias__relative_addr20__();
void i_call_reg_alias__simm12__x_0__();
void i_call_reg_alias__simm12__xpr_general__();
void i_halt__opc_halt__();
void i_itype_alu__opc_addi__x_0__x_0__simm12__();
void i_itype_alu__opc_addi__x_0__xpr_general__simm12__();
void i_itype_alu__opc_addi__xpr_general__x_0__simm12__();
void i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__();
void i_itype_alu__opc_andi__x_0__x_0__simm12__();
void i_itype_alu__opc_andi__x_0__xpr_general__simm12__();
void i_itype_alu__opc_andi__xpr_general__x_0__simm12__();
void i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__();
void i_itype_alu__opc_ori__x_0__x_0__simm12__();
void i_itype_alu__opc_ori__x_0__xpr_general__simm12__();
void i_itype_alu__opc_ori__xpr_general__x_0__simm12__();
void i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__();
void i_itype_alu__opc_slti__x_0__x_0__simm12__();
void i_itype_alu__opc_slti__x_0__xpr_general__simm12__();
void i_itype_alu__opc_slti__xpr_general__x_0__simm12__();
void i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__();
void i_itype_alu__opc_sltiu__x_0__x_0__simm12__();
void i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__();
void i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__();
void i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__();
void i_itype_alu__opc_xori__x_0__x_0__simm12__();
void i_itype_alu__opc_xori__x_0__xpr_general__simm12__();
void i_itype_alu__opc_xori__xpr_general__x_0__simm12__();
void i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__();
void i_itype_jlreg__opc_jalr__x_0__simm12__x_0__();
void i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__();
void i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__();
void i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__();
void i_itype_loads__opc_lb__x_0__simm12__x_0__();
void i_itype_loads__opc_lb__x_0__simm12__xpr_general__();
void i_itype_loads__opc_lb__xpr_general__simm12__x_0__();
void i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__();
void i_itype_loads__opc_lbu__x_0__simm12__x_0__();
void i_itype_loads__opc_lbu__x_0__simm12__xpr_general__();
void i_itype_loads__opc_lbu__xpr_general__simm12__x_0__();
void i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__();
void i_itype_loads__opc_lh__x_0__simm12__x_0__();
void i_itype_loads__opc_lh__x_0__simm12__xpr_general__();
void i_itype_loads__opc_lh__xpr_general__simm12__x_0__();
void i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__();
void i_itype_loads__opc_lhu__x_0__simm12__x_0__();
void i_itype_loads__opc_lhu__x_0__simm12__xpr_general__();
void i_itype_loads__opc_lhu__xpr_general__simm12__x_0__();
void i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__();
void i_itype_loads__opc_lw__x_0__simm12__x_0__();
void i_itype_loads__opc_lw__x_0__simm12__xpr_general__();
void i_itype_loads__opc_lw__xpr_general__simm12__x_0__();
void i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__();
void i_jal_abs_calias__opc_jal__x_0__relative_addr20__();
void i_jal_abs_calias__opc_jal__xpr_general__relative_addr20__();
void i_jtype_jlink__opc_jal__x_0__relative_addr20__();
void i_jtype_jlink__opc_jal__xpr_general__relative_addr20__();
void i_nop_alias__();
void i_ret_alias__();
void i_rtype_alu__opc_add__x_0__x_0__x_0__();
void i_rtype_alu__opc_add__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_add__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_add__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_and__x_0__x_0__x_0__();
void i_rtype_alu__opc_and__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_and__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_and__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_or__x_0__x_0__x_0__();
void i_rtype_alu__opc_or__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_or__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_or__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_sll__x_0__x_0__x_0__();
void i_rtype_alu__opc_sll__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_sll__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_sll__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_slt__x_0__x_0__x_0__();
void i_rtype_alu__opc_slt__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_slt__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_slt__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_sltu__x_0__x_0__x_0__();
void i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_sra__x_0__x_0__x_0__();
void i_rtype_alu__opc_sra__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_sra__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_sra__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_srl__x_0__x_0__x_0__();
void i_rtype_alu__opc_srl__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_srl__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_srl__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_sub__x_0__x_0__x_0__();
void i_rtype_alu__opc_sub__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_sub__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_sub__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__();
void i_rtype_alu__opc_xor__x_0__x_0__x_0__();
void i_rtype_alu__opc_xor__x_0__x_0__xpr_general__();
void i_rtype_alu__opc_xor__x_0__xpr_general__x_0__();
void i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__();
void i_rtype_alu__opc_xor__xpr_general__x_0__x_0__();
void i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__();
void i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__();
void i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__();
void i_rtype_shift__opc_slli__x_0__x_0__uimm5__();
void i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__();
void i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__();
void i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__();
void i_rtype_shift__opc_srai__x_0__x_0__uimm5__();
void i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__();
void i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__();
void i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__();
void i_rtype_shift__opc_srli__x_0__x_0__uimm5__();
void i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__();
void i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__();
void i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__();
void i_stype_store__opc_sb__x_0__simm12__x_0__();
void i_stype_store__opc_sb__x_0__simm12__xpr_general__();
void i_stype_store__opc_sb__xpr_general__simm12__x_0__();
void i_stype_store__opc_sb__xpr_general__simm12__xpr_general__();
void i_stype_store__opc_sh__x_0__simm12__x_0__();
void i_stype_store__opc_sh__x_0__simm12__xpr_general__();
void i_stype_store__opc_sh__xpr_general__simm12__x_0__();
void i_stype_store__opc_sh__xpr_general__simm12__xpr_general__();
void i_stype_store__opc_sw__x_0__simm12__x_0__();
void i_stype_store__opc_sw__x_0__simm12__xpr_general__();
void i_stype_store__opc_sw__xpr_general__simm12__x_0__();
void i_stype_store__opc_sw__xpr_general__simm12__xpr_general__();
void i_utype_ops__opc_auipc__x_0__uimm20__();
void i_utype_ops__opc_auipc__xpr_general__uimm20__();
void i_utype_ops__opc_lui__x_0__uimm20__();
void i_utype_ops__opc_lui__xpr_general__uimm20__();
int32 opc_add__();
int32 opc_addi__();
int32 opc_and__();
int32 opc_andi__();
int32 opc_auipc__();
int32 opc_beq__();
int32 opc_bge__();
int32 opc_bgeu__();
int32 opc_blt__();
int32 opc_bltu__();
int32 opc_bne__();
int32 opc_halt__();
int32 opc_jal__();
int32 opc_jalr__();
int32 opc_lb__();
int32 opc_lbu__();
int32 opc_lh__();
int32 opc_lhu__();
int32 opc_lui__();
int32 opc_lw__();
int32 opc_or__();
int32 opc_ori__();
int32 opc_sb__();
int32 opc_sh__();
int32 opc_sll__();
int32 opc_slli__();
int32 opc_slt__();
int32 opc_slti__();
int32 opc_sltiu__();
int32 opc_sltu__();
int32 opc_sra__();
int32 opc_srai__();
int32 opc_srl__();
int32 opc_srli__();
int32 opc_sub__();
int32 opc_sw__();
int32 opc_xor__();
int32 opc_xori__();
uint32 relative_addr12__();
int32 relative_addr20__();
int12 simm12__();
uint20 uimm20__();
uint5 uimm5__();
int32 x_0__();
__regopindex_type xpr_general__(const unsigned int index);

void i_btype_branches__opc_beq__x_0__x_0__relative_addr12__()
{
    int32 opc = opc_beq__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 0;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__()
{
    int32 opc = opc_beq__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__()
{
    int32 opc = opc_beq__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__()
{
    int32 opc = opc_beq__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 2;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bge__x_0__x_0__relative_addr12__()
{
    int32 opc = opc_bge__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 0;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__()
{
    int32 opc = opc_bge__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__()
{
    int32 opc = opc_bge__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__()
{
    int32 opc = opc_bge__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 2;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__()
{
    int32 opc = opc_bgeu__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 0;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__()
{
    int32 opc = opc_bgeu__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__()
{
    int32 opc = opc_bgeu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__()
{
    int32 opc = opc_bgeu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 2;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_blt__x_0__x_0__relative_addr12__()
{
    int32 opc = opc_blt__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 0;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__()
{
    int32 opc = opc_blt__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__()
{
    int32 opc = opc_blt__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__()
{
    int32 opc = opc_blt__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 2;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__()
{
    int32 opc = opc_bltu__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 0;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__()
{
    int32 opc = opc_bltu__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__()
{
    int32 opc = opc_bltu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__()
{
    int32 opc = opc_bltu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 2;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bne__x_0__x_0__relative_addr12__()
{
    int32 opc = opc_bne__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 0;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__()
{
    int32 opc = opc_bne__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__()
{
    int32 opc = opc_bne__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 1;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__()
{
    int32 opc = opc_bne__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12_Index = 2;
    uint32 imm = relative_addr12__();
    MI16i_btype_branchesIH1_13default_start(opc, rs1, rs2, imm);
}

void i_call_alias__relative_addr20__()
{
    g_MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20_Index = 0;
    int32 simm = relative_addr20__();
    MI12i_call_aliasIH1_13default_start(simm);
}

void i_call_reg_alias__simm12__x_0__()
{
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI16i_call_reg_aliasIH1_13default_start(simm, rs1);
}

void i_call_reg_alias__simm12__xpr_general__()
{
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI16i_call_reg_aliasIH1_13default_start(simm, rs1);
}

void i_halt__opc_halt__()
{
    int32 opc = opc_halt__();
    MI6i_haltIH1_13default_start(opc);
}

void i_itype_alu__opc_addi__x_0__x_0__simm12__()
{
    int32 opc = opc_addi__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_addi__x_0__xpr_general__simm12__()
{
    int32 opc = opc_addi__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_addi__xpr_general__x_0__simm12__()
{
    int32 opc = opc_addi__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__()
{
    int32 opc = opc_addi__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 2;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_andi__x_0__x_0__simm12__()
{
    int32 opc = opc_andi__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_andi__x_0__xpr_general__simm12__()
{
    int32 opc = opc_andi__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_andi__xpr_general__x_0__simm12__()
{
    int32 opc = opc_andi__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__()
{
    int32 opc = opc_andi__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 2;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_ori__x_0__x_0__simm12__()
{
    int32 opc = opc_ori__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_ori__x_0__xpr_general__simm12__()
{
    int32 opc = opc_ori__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_ori__xpr_general__x_0__simm12__()
{
    int32 opc = opc_ori__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__()
{
    int32 opc = opc_ori__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 2;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_slti__x_0__x_0__simm12__()
{
    int32 opc = opc_slti__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_slti__x_0__xpr_general__simm12__()
{
    int32 opc = opc_slti__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_slti__xpr_general__x_0__simm12__()
{
    int32 opc = opc_slti__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__()
{
    int32 opc = opc_slti__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 2;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_sltiu__x_0__x_0__simm12__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__()
{
    int32 opc = opc_sltiu__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__()
{
    int32 opc = opc_sltiu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__()
{
    int32 opc = opc_sltiu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 2;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_xori__x_0__x_0__simm12__()
{
    int32 opc = opc_xori__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_xori__x_0__xpr_general__simm12__()
{
    int32 opc = opc_xori__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_xori__xpr_general__x_0__simm12__()
{
    int32 opc = opc_xori__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__()
{
    int32 opc = opc_xori__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 2;
    int12 simm = simm12__();
    MI11i_itype_aluIH1_13default_start(opc, rd, rs1, simm);
}

void i_itype_jlreg__opc_jalr__x_0__simm12__x_0__()
{
    int32 opc = opc_jalr__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_jlregIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__()
{
    int32 opc = opc_jalr__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_jlregIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__()
{
    int32 opc = opc_jalr__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_jlregIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_jalr__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_jlregIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lb__x_0__simm12__x_0__()
{
    int32 opc = opc_lb__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lb__x_0__simm12__xpr_general__()
{
    int32 opc = opc_lb__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lb__xpr_general__simm12__x_0__()
{
    int32 opc = opc_lb__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_lb__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lbu__x_0__simm12__x_0__()
{
    int32 opc = opc_lbu__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lbu__x_0__simm12__xpr_general__()
{
    int32 opc = opc_lbu__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lbu__xpr_general__simm12__x_0__()
{
    int32 opc = opc_lbu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_lbu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lh__x_0__simm12__x_0__()
{
    int32 opc = opc_lh__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lh__x_0__simm12__xpr_general__()
{
    int32 opc = opc_lh__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lh__xpr_general__simm12__x_0__()
{
    int32 opc = opc_lh__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_lh__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lhu__x_0__simm12__x_0__()
{
    int32 opc = opc_lhu__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lhu__x_0__simm12__xpr_general__()
{
    int32 opc = opc_lhu__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lhu__xpr_general__simm12__x_0__()
{
    int32 opc = opc_lhu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_lhu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lw__x_0__simm12__x_0__()
{
    int32 opc = opc_lw__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lw__x_0__simm12__xpr_general__()
{
    int32 opc = opc_lw__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lw__xpr_general__simm12__x_0__()
{
    int32 opc = opc_lw__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_lw__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_itype_loadsIH1_13default_start(opc, rd, simm, rs1);
}

void i_jal_abs_calias__opc_jal__x_0__relative_addr20__()
{
    int32 opc = opc_jal__();
    __regopindex_type rd = x_0__();
    g_MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20_Index = 0;
    int32 simm = relative_addr20__();
    MI16i_jal_abs_caliasIH1_13default_start(opc, rd, simm);
}

void i_jal_abs_calias__opc_jal__xpr_general__relative_addr20__()
{
    int32 opc = opc_jal__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20_Index = 1;
    int32 simm = relative_addr20__();
    MI16i_jal_abs_caliasIH1_13default_start(opc, rd, simm);
}

void i_jtype_jlink__opc_jal__x_0__relative_addr20__()
{
    int32 opc = opc_jal__();
    __regopindex_type rd = x_0__();
    g_MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20_Index = 0;
    int32 simm = relative_addr20__();
    MI13i_jtype_jlinkIH1_13default_start(opc, rd, simm);
}

void i_jtype_jlink__opc_jal__xpr_general__relative_addr20__()
{
    int32 opc = opc_jal__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20_Index = 1;
    int32 simm = relative_addr20__();
    MI13i_jtype_jlinkIH1_13default_start(opc, rd, simm);
}

void i_nop_alias__()
{
    MI11i_nop_aliasIH1_13default_start();
}

void i_ret_alias__()
{
    MI11i_ret_aliasIH1_13default_start();
}

void i_rtype_alu__opc_add__x_0__x_0__x_0__()
{
    int32 opc = opc_add__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_add__x_0__x_0__xpr_general__()
{
    int32 opc = opc_add__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_add__x_0__xpr_general__x_0__()
{
    int32 opc = opc_add__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_add__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_add__xpr_general__x_0__x_0__()
{
    int32 opc = opc_add__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_add__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_add__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_add__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__x_0__x_0__x_0__()
{
    int32 opc = opc_and__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__x_0__x_0__xpr_general__()
{
    int32 opc = opc_and__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__x_0__xpr_general__x_0__()
{
    int32 opc = opc_and__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_and__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__xpr_general__x_0__x_0__()
{
    int32 opc = opc_and__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_and__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_and__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_and__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__x_0__x_0__x_0__()
{
    int32 opc = opc_or__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__x_0__x_0__xpr_general__()
{
    int32 opc = opc_or__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__x_0__xpr_general__x_0__()
{
    int32 opc = opc_or__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_or__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__xpr_general__x_0__x_0__()
{
    int32 opc = opc_or__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_or__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_or__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_or__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__x_0__x_0__x_0__()
{
    int32 opc = opc_sll__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__x_0__x_0__xpr_general__()
{
    int32 opc = opc_sll__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__x_0__xpr_general__x_0__()
{
    int32 opc = opc_sll__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_sll__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__xpr_general__x_0__x_0__()
{
    int32 opc = opc_sll__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_sll__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_sll__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_sll__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__x_0__x_0__x_0__()
{
    int32 opc = opc_slt__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__x_0__x_0__xpr_general__()
{
    int32 opc = opc_slt__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__x_0__xpr_general__x_0__()
{
    int32 opc = opc_slt__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_slt__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__xpr_general__x_0__x_0__()
{
    int32 opc = opc_slt__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_slt__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_slt__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_slt__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__x_0__x_0__x_0__()
{
    int32 opc = opc_sltu__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__()
{
    int32 opc = opc_sltu__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__()
{
    int32 opc = opc_sltu__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_sltu__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__()
{
    int32 opc = opc_sltu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_sltu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_sltu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_sltu__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__x_0__x_0__x_0__()
{
    int32 opc = opc_sra__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__x_0__x_0__xpr_general__()
{
    int32 opc = opc_sra__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__x_0__xpr_general__x_0__()
{
    int32 opc = opc_sra__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_sra__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__xpr_general__x_0__x_0__()
{
    int32 opc = opc_sra__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_sra__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_sra__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_sra__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__x_0__x_0__x_0__()
{
    int32 opc = opc_srl__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__x_0__x_0__xpr_general__()
{
    int32 opc = opc_srl__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__x_0__xpr_general__x_0__()
{
    int32 opc = opc_srl__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_srl__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__xpr_general__x_0__x_0__()
{
    int32 opc = opc_srl__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_srl__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_srl__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_srl__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__x_0__x_0__x_0__()
{
    int32 opc = opc_sub__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__x_0__x_0__xpr_general__()
{
    int32 opc = opc_sub__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__x_0__xpr_general__x_0__()
{
    int32 opc = opc_sub__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_sub__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__xpr_general__x_0__x_0__()
{
    int32 opc = opc_sub__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_sub__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_sub__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_sub__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__x_0__x_0__x_0__()
{
    int32 opc = opc_xor__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__x_0__x_0__xpr_general__()
{
    int32 opc = opc_xor__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__x_0__xpr_general__x_0__()
{
    int32 opc = opc_xor__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__()
{
    int32 opc = opc_xor__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__xpr_general__x_0__x_0__()
{
    int32 opc = opc_xor__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__()
{
    int32 opc = opc_xor__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 1;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__()
{
    int32 opc = opc_xor__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    __regopindex_type rs2 = x_0__();
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__()
{
    int32 opc = opc_xor__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 2;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    MI11i_rtype_aluIH1_13default_start(opc, rd, rs1, rs2);
}

void i_rtype_shift__opc_slli__x_0__x_0__uimm5__()
{
    int32 opc = opc_slli__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 0;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__()
{
    int32 opc = opc_slli__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 1;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__()
{
    int32 opc = opc_slli__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 1;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__()
{
    int32 opc = opc_slli__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 2;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srai__x_0__x_0__uimm5__()
{
    int32 opc = opc_srai__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 0;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__()
{
    int32 opc = opc_srai__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 1;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__()
{
    int32 opc = opc_srai__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 1;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__()
{
    int32 opc = opc_srai__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 2;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srli__x_0__x_0__uimm5__()
{
    int32 opc = opc_srli__();
    __regopindex_type rd = x_0__();
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 0;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__()
{
    int32 opc = opc_srli__();
    __regopindex_type rd = x_0__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 0;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 1;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__()
{
    int32 opc = opc_srli__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    __regopindex_type rs1 = x_0__();
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 1;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__()
{
    int32 opc = opc_srli__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    g_MI5valueIH1_13default_start7_5uimm53imm1_5uimm5_Index = 2;
    uint5 imm = uimm5__();
    MI13i_rtype_shiftIH1_13default_start(opc, rd, rs1, imm);
}

void i_stype_store__opc_sb__x_0__simm12__x_0__()
{
    int32 opc = opc_sb__();
    __regopindex_type rs2 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sb__x_0__simm12__xpr_general__()
{
    int32 opc = opc_sb__();
    __regopindex_type rs2 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sb__xpr_general__simm12__x_0__()
{
    int32 opc = opc_sb__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sb__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_sb__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sh__x_0__simm12__x_0__()
{
    int32 opc = opc_sh__();
    __regopindex_type rs2 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sh__x_0__simm12__xpr_general__()
{
    int32 opc = opc_sh__();
    __regopindex_type rs2 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sh__xpr_general__simm12__x_0__()
{
    int32 opc = opc_sh__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sh__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_sh__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sw__x_0__simm12__x_0__()
{
    int32 opc = opc_sw__();
    __regopindex_type rs2 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sw__x_0__simm12__xpr_general__()
{
    int32 opc = opc_sw__();
    __regopindex_type rs2 = x_0__();
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 0;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 1;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sw__xpr_general__simm12__x_0__()
{
    int32 opc = opc_sw__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    __regopindex_type rs1 = x_0__();
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_stype_store__opc_sw__xpr_general__simm12__xpr_general__()
{
    int32 opc = opc_sw__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index = 0;
    __regopindex_type rs2 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs2_Index);
    g_MI5valueIH1_13default_start8_6simm124simm1_6simm12_Index = 1;
    int12 simm = simm12__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index = 2;
    __regopindex_type rs1 = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all3rs1_Index);
    MI13i_stype_storeIH1_13default_start(opc, rs2, simm, rs1);
}

void i_utype_ops__opc_auipc__x_0__uimm20__()
{
    int32 opc = opc_auipc__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6uimm203imm1_6uimm20_Index = 0;
    uint20 imm = uimm20__();
    MI11i_utype_opsIH1_13default_start(opc, rd, imm);
}

void i_utype_ops__opc_auipc__xpr_general__uimm20__()
{
    int32 opc = opc_auipc__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6uimm203imm1_6uimm20_Index = 1;
    uint20 imm = uimm20__();
    MI11i_utype_opsIH1_13default_start(opc, rd, imm);
}

void i_utype_ops__opc_lui__x_0__uimm20__()
{
    int32 opc = opc_lui__();
    __regopindex_type rd = x_0__();
    g_MI5valueIH1_13default_start8_6uimm203imm1_6uimm20_Index = 0;
    uint20 imm = uimm20__();
    MI11i_utype_opsIH1_13default_start(opc, rd, imm);
}

void i_utype_ops__opc_lui__xpr_general__uimm20__()
{
    int32 opc = opc_lui__();
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 0;
    __regopindex_type rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
    g_MI5valueIH1_13default_start8_6uimm203imm1_6uimm20_Index = 1;
    uint20 imm = uimm20__();
    MI11i_utype_opsIH1_13default_start(opc, rd, imm);
}

int32 opc_add__()
{
    return MI7opc_addIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_addi__()
{
    return MI8opc_addiIH1_13default_start16_13opc_itype_alu3opc();
}

int32 opc_and__()
{
    return MI7opc_andIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_andi__()
{
    return MI8opc_andiIH1_13default_start16_13opc_itype_alu3opc();
}

int32 opc_auipc__()
{
    return MI9opc_auipcIH1_13default_start16_13opc_utype_ops3opc();
}

int32 opc_beq__()
{
    return MI7opc_beqIH1_13default_start21_18opc_btype_branches3opc();
}

int32 opc_bge__()
{
    return MI7opc_bgeIH1_13default_start21_18opc_btype_branches3opc();
}

int32 opc_bgeu__()
{
    return MI8opc_bgeuIH1_13default_start21_18opc_btype_branches3opc();
}

int32 opc_blt__()
{
    return MI7opc_bltIH1_13default_start21_18opc_btype_branches3opc();
}

int32 opc_bltu__()
{
    return MI8opc_bltuIH1_13default_start21_18opc_btype_branches3opc();
}

int32 opc_bne__()
{
    return MI7opc_bneIH1_13default_start21_18opc_btype_branches3opc();
}

int32 opc_halt__()
{
    return MI8opc_haltIH1_13default_start10_8opc_halt3opc();
}

int32 opc_jal__()
{
    return MI7opc_jalIH1_13default_start9_7opc_jal3opc();
}

int32 opc_jalr__()
{
    return MI8opc_jalrIH1_13default_start18_15opc_itype_jlreg3opc();
}

int32 opc_lb__()
{
    return MI6opc_lbIH1_13default_start18_15opc_itype_loads3opc();
}

int32 opc_lbu__()
{
    return MI7opc_lbuIH1_13default_start18_15opc_itype_loads3opc();
}

int32 opc_lh__()
{
    return MI6opc_lhIH1_13default_start18_15opc_itype_loads3opc();
}

int32 opc_lhu__()
{
    return MI7opc_lhuIH1_13default_start18_15opc_itype_loads3opc();
}

int32 opc_lui__()
{
    return MI7opc_luiIH1_13default_start16_13opc_utype_ops3opc();
}

int32 opc_lw__()
{
    return MI6opc_lwIH1_13default_start18_15opc_itype_loads3opc();
}

int32 opc_or__()
{
    return MI6opc_orIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_ori__()
{
    return MI7opc_oriIH1_13default_start16_13opc_itype_alu3opc();
}

int32 opc_sb__()
{
    return MI6opc_sbIH1_13default_start18_15opc_stype_store3opc();
}

int32 opc_sh__()
{
    return MI6opc_shIH1_13default_start18_15opc_stype_store3opc();
}

int32 opc_sll__()
{
    return MI7opc_sllIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_slli__()
{
    return MI8opc_slliIH1_13default_start18_15opc_rtype_shift3opc();
}

int32 opc_slt__()
{
    return MI7opc_sltIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_slti__()
{
    return MI8opc_sltiIH1_13default_start16_13opc_itype_alu3opc();
}

int32 opc_sltiu__()
{
    return MI9opc_sltiuIH1_13default_start16_13opc_itype_alu3opc();
}

int32 opc_sltu__()
{
    return MI8opc_sltuIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_sra__()
{
    return MI7opc_sraIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_srai__()
{
    return MI8opc_sraiIH1_13default_start18_15opc_rtype_shift3opc();
}

int32 opc_srl__()
{
    return MI7opc_srlIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_srli__()
{
    return MI8opc_srliIH1_13default_start18_15opc_rtype_shift3opc();
}

int32 opc_sub__()
{
    return MI7opc_subIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_sw__()
{
    return MI6opc_swIH1_13default_start18_15opc_stype_store3opc();
}

int32 opc_xor__()
{
    return MI7opc_xorIH1_13default_start16_13opc_rtype_alu3opc();
}

int32 opc_xori__()
{
    return MI8opc_xoriIH1_13default_start16_13opc_itype_alu3opc();
}

uint32 relative_addr12__()
{
    uint32 MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12Instance = MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12();
    return MI15relative_addr12IH1_13default_start18_15relative_addr123imm(MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12Instance);
}

int32 relative_addr20__()
{
    int32 MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20Instance = MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20();
    return MI15relative_addr20IH1_13default_start18_15relative_addr204simm(MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20Instance);
}

int12 simm12__()
{
    int12 MI5valueIH1_13default_start8_6simm124simm1_6simm12Instance = MI5valueIH1_13default_start8_6simm124simm1_6simm12();
    return MI6simm12IH1_13default_start8_6simm124simm(MI5valueIH1_13default_start8_6simm124simm1_6simm12Instance);
}

uint20 uimm20__()
{
    uint20 MI5valueIH1_13default_start8_6uimm203imm1_6uimm20Instance = MI5valueIH1_13default_start8_6uimm203imm1_6uimm20();
    return MI6uimm20IH1_13default_start8_6uimm203imm(MI5valueIH1_13default_start8_6uimm203imm1_6uimm20Instance);
}

uint5 uimm5__()
{
    uint5 MI5valueIH1_13default_start7_5uimm53imm1_5uimm5Instance = MI5valueIH1_13default_start7_5uimm53imm1_5uimm5();
    return MI5uimm5IH1_13default_start7_5uimm53imm(MI5valueIH1_13default_start7_5uimm53imm1_5uimm5Instance);
}

int32 x_0__()
{
    return MI3x_0IH1_13default_start9_7xpr_all3rs2();
}

__regopindex_type xpr_general__(const unsigned int index)
{
{
    return codasip_regopindex(1, index);
}
}

void e_movi32__()
{
    g_MI5imm32_Index = 0;
const uint32 MI5imm32 = codasip_immread_uint32(g_MI5imm32_Index); {
    g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index = 1;
    __regopindex_type MI6i_lui0__MI7xpr_allIH1_13default_start9_7xpr_all2rd = xpr_general__(g_MI11xpr_generalIH1_13default_start9_7xpr_all2rd_Index);
{
    #line 1011 "/home/project/cu_riscv32i_cycle_accurate/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI5imm32, MI6i_lui0__MI7xpr_allIH1_13default_start9_7xpr_all2rd);
}
}
}

