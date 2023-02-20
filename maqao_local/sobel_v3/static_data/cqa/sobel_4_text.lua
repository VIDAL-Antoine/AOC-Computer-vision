_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\n - Constant non-unit stride: 11 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 46 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 53\nnb uops            : 41\nloop length        : 262\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 6.83 cycles\nfront end            : 6.83 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 8.25 | 8.25 | 8.25 | 8.25 | 9.50 | 9.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 8.25 | 8.25 | 8.25 | 8.25 | 9.50 | 9.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 9.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 6.83\nDispatch  : 9.50\nData deps.: 1.00\nOverall L1: 9.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 13%\nload    : 14%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 15%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.50 cycles. At this rate:\n - 15% of peak load performance is reached (4.84 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2310\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------\nMOV (%RSP),%RSI                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA 0x8(%RCX),%R12\nLEA 0x2(%RCX),%R13\nLEA 0x6(%RCX),%R11\nLEA 0x5(%RCX),%R10\nLEA 0x3(%RCX),%R14\nLEA 0x7(%RCX),%R15\nLEA 0x1(%RCX),%RDI\nXOR %EDX,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nADD %RAX,%RSI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV 0x20(%RSP),%RBX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOVZX 0xef2(%RCX),%R11D         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nLEA 0xef8(%RCX),%RDX\nMOV $0xef0,%R12D                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX 0xef6(%RCX),%R9D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xef7(%RCX),%R8D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xef1(%RCX),%R10D         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xef5(%RCX),%EDI          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nLEA (%RBX,%RAX,1),%RSI\nMOVZX 0xef0(%RCX),%EBX          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xefe(%RCX),%EDI          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf02(%RCX),%EBX          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf01(%RCX),%R9D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xeff(%RCX),%ESI          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf04(%RCX),%R12D         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xefc(%RCX),%EDX          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf03(%RCX),%R11D         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xefd(%RCX),%R15D         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOV %EDI,%R10D                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB %EBX,%R10D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %ESI,%R9D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %EDX,%R12D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%R10,%R9,2),%R8D\nADD %R12D,%R8D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %R8D,%R13D                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %R13D                       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVS %R8D,%R13D                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %R15D,%R11D                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %EDI,%EBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%RBX,%R11,2),%EBP\nADD %R12D,%EBP                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %EBP,%R14D                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %R14D                       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVNS %R14D,%EBP               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD %EBP,%R13D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP $0x64,%R13D                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJG 2930 <main._omp_fn.0+0x13f0> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nMOV 0x50(%RSP),%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOV %R13B,(%RDX,%RAX,1)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nADD $0xf00,%RCX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0xf00,%RAX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP 0x10(%RSP),%RCX             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nJNE 2310 <main._omp_fn.0+0xdd0> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - This path is accessible from 2 CFG paths (including child blocks)\n - The number of fused uops of the instruction [LEA	0x8(%RCX),%R12] is unknown\n - The number of fused uops of the instruction [LEA	0x2(%RCX),%R13] is unknown\n - The number of fused uops of the instruction [LEA	0x6(%RCX),%R11] is unknown\n - The number of fused uops of the instruction [LEA	0x5(%RCX),%R10] is unknown\n - The number of fused uops of the instruction [LEA	0x3(%RCX),%R14] is unknown\n - The number of fused uops of the instruction [LEA	0x7(%RCX),%R15] is unknown\n - The number of fused uops of the instruction [LEA	0x1(%RCX),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	0xef8(%RCX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	(%RBX,%RAX,1),%RSI] is unknown\n - The number of fused uops of the instruction [LEA	(%R10,%R9,2),%R8D] is unknown\n - The number of fused uops of the instruction [LEA	(%RBX,%R11,2),%EBP] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.50 to 2.37 cycles (4.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.50 to 8.25 cycles (1.15x speedup).\n",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - JMP: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\n - Constant non-unit stride: 11 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 46 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 54\nnb uops            : 48\nloop length        : 268\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 8.00 cycles\nfront end            : 8.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 8.50 | 8.50 | 8.50 | 8.50 | 9.50 | 9.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 8.50 | 8.50 | 8.50 | 8.50 | 9.50 | 9.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 9.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.00\nDispatch  : 9.50\nData deps.: 1.00\nOverall L1: 9.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 13%\nload    : 14%\nstore   : 3%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 15%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.50 cycles. At this rate:\n - 15% of peak load performance is reached (4.84 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2310\n\nInstruction                      | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------------\nMOV (%RSP),%RSI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA 0x8(%RCX),%R12\nLEA 0x2(%RCX),%R13\nLEA 0x6(%RCX),%R11\nLEA 0x5(%RCX),%R10\nLEA 0x3(%RCX),%R14\nLEA 0x7(%RCX),%R15\nLEA 0x1(%RCX),%RDI\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nADD %RAX,%RSI                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV 0x20(%RSP),%RBX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOVZX 0xef2(%RCX),%R11D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nLEA 0xef8(%RCX),%RDX\nMOV $0xef0,%R12D                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX 0xef6(%RCX),%R9D           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xef7(%RCX),%R8D           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xef1(%RCX),%R10D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xef5(%RCX),%EDI           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nLEA (%RBX,%RAX,1),%RSI\nMOVZX 0xef0(%RCX),%EBX           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xefe(%RCX),%EDI           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf02(%RCX),%EBX           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf01(%RCX),%R9D           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xeff(%RCX),%ESI           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf04(%RCX),%R12D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xefc(%RCX),%EDX           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xf03(%RCX),%R11D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0xefd(%RCX),%R15D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOV %EDI,%R10D                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB %EBX,%R10D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %ESI,%R9D                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %EDX,%R12D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%R10,%R9,2),%R8D\nADD %R12D,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %R8D,%R13D                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %R13D                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVS %R8D,%R13D                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %R15D,%R11D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %EDI,%EBX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%RBX,%R11,2),%EBP\nADD %R12D,%EBP                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %EBP,%R14D                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %R14D                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVNS %R14D,%EBP                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD %EBP,%R13D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP $0x64,%R13D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJG 2930 <main._omp_fn.0+0x13f0>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nADD $0xf00,%RCX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0xf00,%RAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP 0x10(%RSP),%RCX              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nJNE 2310 <main._omp_fn.0+0xdd0>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nMOV 0x50(%RSP),%R12              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOVB $-0x1,(%R12,%RAX,1)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nJMP 2850 <main._omp_fn.0+0x1310> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\n - This path is accessible from 2 CFG paths (including child blocks)\n - The number of fused uops of the instruction [LEA	0x8(%RCX),%R12] is unknown\n - The number of fused uops of the instruction [LEA	0x2(%RCX),%R13] is unknown\n - The number of fused uops of the instruction [LEA	0x6(%RCX),%R11] is unknown\n - The number of fused uops of the instruction [LEA	0x5(%RCX),%R10] is unknown\n - The number of fused uops of the instruction [LEA	0x3(%RCX),%R14] is unknown\n - The number of fused uops of the instruction [LEA	0x7(%RCX),%R15] is unknown\n - The number of fused uops of the instruction [LEA	0x1(%RCX),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	0xef8(%RCX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	(%RBX,%RAX,1),%RSI] is unknown\n - The number of fused uops of the instruction [LEA	(%R10,%R9,2),%R8D] is unknown\n - The number of fused uops of the instruction [LEA	(%RBX,%R11,2),%EBP] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.50 to 1.34 cycles (7.07x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.50 to 8.50 cycles (1.12x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 46 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 53.50\nnb uops            : 44.50\nloop length        : 265\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 7.42 cycles\nfront end            : 7.42 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 8.38 | 8.38 | 8.38 | 8.38 | 9.50 | 9.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 8.38 | 8.38 | 8.38 | 8.38 | 9.50 | 9.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.42\nDispatch  : 9.50\nData deps.: 1.00\nOverall L1: 9.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 13%\nload    : 14%\nstore   : 3%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 15%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.50 cycles. At this rate:\n - 15% of peak load performance is reached (4.84 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.50 to 1.86 cycles (5.11x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:203-217.\n",
      "Analyzed code is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:203-207,212-217.\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 4,
  },
}
