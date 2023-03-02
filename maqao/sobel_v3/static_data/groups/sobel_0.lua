_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVDQU,",
    offsets = "0,",
    addresses = "0x1660,",
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
  {
    group_size = 48,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VMULPD,VMULPD,VFMADD231PD,VFMADD132PD,VMULPD,VMULPD,VFMADD132PD,VFMADD132PD,VMULPD,VMULPD,VFMADD132PD,VFMADD132PD,VFMADD132PD,VMULPD,VFMADD132PD,VFMADD132PD,VFMADD132PD,VMULPD,VFMADD132PD,VFMADD231PD,VFMADD132PD,VFMADD132PD,VFMADD132PD,VFMADD132PD,VPAND,VPAND,VPAND,VPAND,VPAND,VPAND,VMOVDQA,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,VPSHUFB,",
    offsets = "10843,10834,10819,10836,10821,10808,10530,10504,10517,10493,10448,10430,10448,10429,10384,10361,10384,10361,10358,10281,10336,10280,10299,10219,10274,10218,10236,10202,10178,10151,10165,10157,10143,10151,10111,10124,10336,10150,10327,10088,10175,10230,10311,10330,10097,10360,10127,10306,",
    addresses = "0x167c,0x1685,0x1694,0x16a3,0x16b2,0x16bf,0x17f6,0x1810,0x1822,0x183a,0x1848,0x185a,0x1867,0x187a,0x1888,0x189f,0x18a7,0x18be,0x18e1,0x18ef,0x18f7,0x190f,0x191c,0x192d,0x1935,0x194d,0x195b,0x197d,0x1995,0x19b0,0x19c3,0x19cb,0x19d9,0x19f1,0x19f9,0x1a0c,0x1a18,0x1a31,0x1a40,0x1a4f,0x1a58,0x1a61,0x1a70,0x1a7d,0x1a86,0x1a9f,0x1aa8,0x1ab5,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1536,
    accessed_memory_nooverlap = 509,
    accessed_memory_overlap = 1027,
    span = 787,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVDQU,VMOVDQU,",
    offsets = "-64,-32,",
    addresses = "0x1669,0x1673,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 64,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVDQU,VMOVDQU,VMOVDQU,",
    offsets = "-96,-64,-32,",
    addresses = "0x1ac4,0x1acf,0x1ad5,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 96,
    accessed_memory_nooverlap = 96,
    accessed_memory_overlap = 0,
    span = 96,
    head = 96,
    unroll_factor = 3,
  },
}
