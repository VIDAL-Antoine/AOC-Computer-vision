_group = {
  {
    group_size = 5,
    pattern = "LLSSS",
    opcodes = "VMOVDQA,VMOVDQA,VMOVDQA,VMOVDQA,VMOVDQA,",
    offsets = "-64,-32,-96,-64,-32,",
    addresses = "0x1278,0x127d,0x1656,0x1661,0x16ac,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 160,
    accessed_memory_nooverlap = 96,
    accessed_memory_overlap = 64,
    span = 96,
    head = 96,
    unroll_factor = 1,
  },
  {
    group_size = 32,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VFMADD231PD,VFMADD231PD,VFMADD231PD,VFMADD231PD,VFMADD231PD,VFMADD132PD,VFMADD132PD,VFMADD231PD,VPAND,VPAND,VPAND,VPAND,VPAND,VPAND,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VMOVDQA,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,",
    offsets = "11861,11852,11837,11854,11839,11825,11376,11353,11340,11315,11302,11293,11271,11253,11222,11210,11191,11215,11175,11188,11232,11281,11170,11219,11269,11287,11306,11313,11336,11353,11403,11356,",
    addresses = "0x1282,0x128b,0x129a,0x12a9,0x12b8,0x12c6,0x14e7,0x14fe,0x150b,0x1524,0x1531,0x153a,0x1550,0x1562,0x15a2,0x15ae,0x15c1,0x15c9,0x15d1,0x15e4,0x15f7,0x1606,0x1615,0x1624,0x1632,0x1640,0x164e,0x1666,0x166f,0x167e,0x168c,0x169b,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1024,
    accessed_memory_nooverlap = 333,
    accessed_memory_overlap = 691,
    span = 723,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVDQA,",
    offsets = "0,",
    addresses = "0x1270,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
}
