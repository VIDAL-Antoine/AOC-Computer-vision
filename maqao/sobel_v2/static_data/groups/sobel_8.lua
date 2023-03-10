_group = {
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOV,MOV,",
    offsets = "0,0,",
    addresses = "0x2692,0x269e,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOV,MOV,",
    offsets = "0,0,",
    addresses = "0x267b,0x2687,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 12,
    pattern = "LSLSLSLSLSLS",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "0,0,0,0,0,0,0,0,0,0,0,0,",
    addresses = "0x26a9,0x26b5,0x26c0,0x26cc,0x26d7,0x26e3,0x26ee,0x26fa,0x2705,0x2711,0x271c,0x2728,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 96,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 88,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 16,
    pattern = "LSLSLSLSLSLSLSLS",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,",
    addresses = "0x2678,0x2684,0x268b,0x269b,0x26a2,0x26b2,0x26b9,0x26c9,0x26d0,0x26e0,0x26e7,0x26f7,0x26fe,0x270e,0x2715,0x2725,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 128,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 120,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
