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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 38 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 31\nnb uops            : 18\nloop length        : 162\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 3.00 cycles\nfront end            : 3.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 3.50 | 3.50 | 3.50 | 3.50 | 5.00 | 5.00 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 3.50 | 3.50 | 3.50 | 3.50 | 5.00 | 5.00 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 5.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.00\nDispatch  : 5.00\nData deps.: 1.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n - 23% of peak load performance is reached (7.60 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 24cc\n\nInstruction              | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------\nMOV -0x20(%RSP),%R15     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA -0xef5(%RAX),%RBP\nLEA -0xefd(%RAX),%R13\nLEA -0xefb(%RAX),%R11\nLEA -0xef7(%RAX),%R10\nLEA -0xef8(%RAX),%R9\nLEA -0xefa(%RAX),%R8\nLEA -0xef6(%RAX),%RDI\nLEA -0xefc(%RAX),%R14\nXOR %EDX,%EDX            | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nLEA (%R12,%R15,1),%RBX\nNOP                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV -0x18(%RSP),%RBX     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOVZX -0xd(%RAX),%R14D   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nLEA -0xa(%RAX),%RDX\nMOV $0xef0,%R13D         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX -0xb(%RAX),%R11D   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0x7(%RAX),%EDI    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0x6(%RAX),%ESI    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0xc(%RAX),%R10D   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0x8(%RAX),%ECX    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nADD %R12,%RBX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV -0x10(%RSP),%RBX     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA -0x1(%RAX),%RDX\nLEA (%RBX,%R12,1),%R13\nNOPW %CS:(%RAX,%RAX,1)   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nNOP                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0xf00,%RAX          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0xf00,%R12          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP -0x28(%RSP),%RAX     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nJNE 24cc <sobel_v4+0x5c> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - This path is accessible from 2 CFG paths (including child blocks)\n - The number of fused uops of the instruction [LEA	-0xef5(%RAX),%RBP] is unknown\n - The number of fused uops of the instruction [LEA	-0xefd(%RAX),%R13] is unknown\n - The number of fused uops of the instruction [LEA	-0xefb(%RAX),%R11] is unknown\n - The number of fused uops of the instruction [LEA	-0xef7(%RAX),%R10] is unknown\n - The number of fused uops of the instruction [LEA	-0xef8(%RAX),%R9] is unknown\n - The number of fused uops of the instruction [LEA	-0xefa(%RAX),%R8] is unknown\n - The number of fused uops of the instruction [LEA	-0xef6(%RAX),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	-0xefc(%RAX),%R14] is unknown\n - The number of fused uops of the instruction [LEA	(%R12,%R15,1),%RBX] is unknown\n - The number of fused uops of the instruction [LEA	-0xa(%RAX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	-0x1(%RAX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	(%RBX,%R12,1),%R13] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 5.00 to 1.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 3.50 cycles (1.43x speedup).\n",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 38 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nnb uops            : 25\nloop length        : 164\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 4.17 cycles\nfront end            : 4.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 3.75 | 3.75 | 3.75 | 3.75 | 5.00 | 5.00 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 3.75 | 3.75 | 3.75 | 3.75 | 5.00 | 5.00 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 5.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.17\nDispatch  : 5.00\nData deps.: 1.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n - 23% of peak load performance is reached (7.60 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 24cc\n\nInstruction               | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nMOV -0x20(%RSP),%R15      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA -0xef5(%RAX),%RBP\nLEA -0xefd(%RAX),%R13\nLEA -0xefb(%RAX),%R11\nLEA -0xef7(%RAX),%R10\nLEA -0xef8(%RAX),%R9\nLEA -0xefa(%RAX),%R8\nLEA -0xef6(%RAX),%RDI\nLEA -0xefc(%RAX),%R14\nXOR %EDX,%EDX             | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nLEA (%R12,%R15,1),%RBX\nNOP                       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV -0x18(%RSP),%RBX      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOVZX -0xd(%RAX),%R14D    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nLEA -0xa(%RAX),%RDX\nMOV $0xef0,%R13D          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX -0xb(%RAX),%R11D    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0x7(%RAX),%EDI     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0x6(%RAX),%ESI     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0xc(%RAX),%R10D    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX -0x8(%RAX),%ECX     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nADD %R12,%RBX             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV -0x10(%RSP),%RBX      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA -0x1(%RAX),%RDX\nLEA (%RBX,%R12,1),%R13\nNOPW %CS:(%RAX,%RAX,1)    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nNOP                       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0xf00,%RAX           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0xf00,%R12           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP -0x28(%RSP),%RAX      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nJNE 24cc <sobel_v4+0x5c>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nJMP 29fc <sobel_v4+0x58c> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\n - This path is accessible from 2 CFG paths (including child blocks)\n - The number of fused uops of the instruction [LEA	-0xef5(%RAX),%RBP] is unknown\n - The number of fused uops of the instruction [LEA	-0xefd(%RAX),%R13] is unknown\n - The number of fused uops of the instruction [LEA	-0xefb(%RAX),%R11] is unknown\n - The number of fused uops of the instruction [LEA	-0xef7(%RAX),%R10] is unknown\n - The number of fused uops of the instruction [LEA	-0xef8(%RAX),%R9] is unknown\n - The number of fused uops of the instruction [LEA	-0xefa(%RAX),%R8] is unknown\n - The number of fused uops of the instruction [LEA	-0xef6(%RAX),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	-0xefc(%RAX),%R14] is unknown\n - The number of fused uops of the instruction [LEA	(%R12,%R15,1),%RBX] is unknown\n - The number of fused uops of the instruction [LEA	-0xa(%RAX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	-0x1(%RAX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	(%RBX,%R12,1),%R13] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 5.00 to 1.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 4.17 cycles (1.20x speedup).\n",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 38 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 31.50\nnb uops            : 21.50\nloop length        : 163\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 3.58 cycles\nfront end            : 3.58 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 3.63 | 3.63 | 3.63 | 3.63 | 5.00 | 5.00 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 3.63 | 3.63 | 3.63 | 3.63 | 5.00 | 5.00 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.58\nDispatch  : 5.00\nData deps.: 1.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n - 23% of peak load performance is reached (7.60 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
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
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 5.00 to 1.25 cycles (4.00x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:236-251.\n",
      "Analyzed code is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:236-240.\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 4,
  },
}
