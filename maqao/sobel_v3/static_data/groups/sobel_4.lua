_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVZX,",
    offsets = "0,",
    addresses = "0x20e2,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 0,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVZX,",
    offsets = "0,",
    addresses = "0x2118,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 0,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 8,
    pattern = "LLLSLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,ADD,CMP,CMP,",
    offsets = "152,144,136,64,32,64,160,160,",
    addresses = "0x20b2,0x20c2,0x20ce,0x210a,0x210e,0x2130,0x225c,0x213d,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 56,
    accessed_memory_nooverlap = 44,
    accessed_memory_overlap = 12,
    span = 136,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVZX,",
    offsets = "0,",
    addresses = "0x20be,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 0,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "MOV,MOV,",
    offsets = "0,0,",
    addresses = "0x2258,0x2149,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 2,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 1,
    span = 1,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVZX,",
    offsets = "0,",
    addresses = "0x20d6,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 0,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "MOVZX,MOVZX,MOVZX,",
    offsets = "0,0,0,",
    addresses = "0x20db,0x20e6,0x2113,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 3,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 2,
    span = 1,
    head = 0,
    unroll_factor = 3,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVZX,",
    offsets = "0,",
    addresses = "0x20ca,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 0,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
}
