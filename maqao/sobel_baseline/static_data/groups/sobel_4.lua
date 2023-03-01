_group = {
  {
    group_size = 1,
    pattern = "S",
    opcodes = "MOV,",
    offsets = "0,",
    addresses = "0x170e,",
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
    group_size = 19,
    pattern = "LLLLSLLLSLLSLLLLLLS",
    opcodes = "CMP,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOVSS,MOVSS,COMISS,CVTTSS2SI,MOV,MOV,MOV,ADD,",
    offsets = "-104,-112,-104,-136,-120,-112,-104,-136,-116,-120,-116,-124,-124,-148,-124,-112,-104,-144,-104,",
    addresses = "0x1715,0x162a,0x163f,0x1646,0x1667,0x166a,0x167f,0x1686,0x16a7,0x16aa,0x16b2,0x16c7,0x16cc,0x16d1,0x16e1,0x16e8,0x16fd,0x1704,0x1710,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 120,
    accessed_memory_nooverlap = 48,
    accessed_memory_overlap = 72,
    span = 52,
    head = 0,
    unroll_factor = 1,
  },
}