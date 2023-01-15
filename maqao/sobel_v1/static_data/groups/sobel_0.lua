_group = {
  {
    group_size = 4,
    pattern = "LLSS",
    opcodes = "MOVZX,MOVZX,MOV,MOV,",
    offsets = "0,0,0,0,",
    addresses = "0x400937,0x400966,0x4009b5,0x4009cb,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 3,
    span = 1,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,",
    offsets = "3260,3225,3186,",
    addresses = "0x40091c,0x400947,0x400976,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 24,
    accessed_memory_overlap = 0,
    span = 82,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 18,
    pattern = "LLLLLLLSLLLLLLLLLS",
    opcodes = "CMP,MOV,MOV,MOV,MOV,MOV,MOV,VMOVSS,MOV,MOV,VCVTTSS2SI,MOV,MOV,VCVTTSS2SI,MOV,MOV,VCVTTSS2SI,ADD,",
    offsets = "-8,-24,-8,-8,-24,-8,-24,-12,-24,-8,-12,-8,-24,-12,-8,-24,-12,-8,",
    addresses = "0x4009d2,0x400901,0x400905,0x400928,0x400930,0x400957,0x40095f,0x40098a,0x40098f,0x400993,0x40099a,0x4009a1,0x4009a9,0x4009b0,0x4009b7,0x4009bf,0x4009c6,0x4009cd,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 128,
    accessed_memory_nooverlap = 20,
    accessed_memory_overlap = 108,
    span = 24,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVZX,MOV,",
    offsets = "0,0,",
    addresses = "0x40090c,0x40099f,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 2,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 1,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
}
