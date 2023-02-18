_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 48 bytes.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 29\nnb uops            : 25\nloop length        : 106\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 4.17 cycles\nfront end            : 4.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 1.00 | 1.00 | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 1.00 | 1.00 | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.17\nDispatch  : 3.50\nOverall L1: 4.17\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 37%\nload    : 100%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 32%\nload    : 50%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 4.17 cycles. At this rate:\n - 36% of peak load performance is reached (11.52 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 48% of peak store performance is reached (7.68 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.17 to 3.50 cycles (1.19x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2470\n\nInstruction                 | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nVMOVDQA 0x2cf4(%RIP),%XMM14 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nVMOVDQA 0x2cfc(%RIP),%XMM12 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA 0xefd(%RDI),%RAX\nVMOVDQA 0x2c9d(%RIP),%XMM13 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nPUSH %R15                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R14                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R13                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R12                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %RBP                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nXOR %R12D,%R12D             | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nPUSH %RBX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nMOV %RSI,%RBX               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nLEA 0xef3(%RBX),%RCX\nMOV %RSI,-0x20(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nADD $0xefc,%RBX             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA 0x2a11fd(%RDI),%RSI\nMOV %RSI,-0x28(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOV %RCX,-0x18(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOV %RBX,-0x10(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nPOP %RBX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %RBP                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R12                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R13                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R14                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R15                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nRET                         | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nNOP                         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nXCHG %AX,%AX                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [LEA	0xefd(%RDI),%RAX] is unknown\n - The number of fused uops of the instruction [LEA	0xef3(%RBX),%RCX] is unknown\n - The number of fused uops of the instruction [LEA	0x2a11fd(%RDI),%RSI] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 4.17 to 1.50 cycles (2.78x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "37% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is poorly vectorized.\nOnly 32% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 4.17 to 1.50 cycles (2.78x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
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
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 48 bytes.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 29\nnb uops            : 25\nloop length        : 106\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 4.17 cycles\nfront end            : 4.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 1.00 | 1.00 | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 1.00 | 1.00 | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.17\nDispatch  : 3.50\nOverall L1: 4.17\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 37%\nload    : 100%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 32%\nload    : 50%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 4.17 cycles. At this rate:\n - 36% of peak load performance is reached (11.52 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 48% of peak store performance is reached (7.68 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.17 to 3.50 cycles (1.19x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2470\n\nInstruction                 | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nVMOVDQA 0x2cf4(%RIP),%XMM14 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nVMOVDQA 0x2cfc(%RIP),%XMM12 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nLEA 0xefd(%RDI),%RAX\nVMOVDQA 0x2c9d(%RIP),%XMM13 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nPUSH %R15                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R14                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R13                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R12                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %RBP                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nXOR %R12D,%R12D             | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nPUSH %RBX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nMOV %RSI,%RBX               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nLEA 0xef3(%RBX),%RCX\nMOV %RSI,-0x20(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nADD $0xefc,%RBX             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA 0x2a11fd(%RDI),%RSI\nMOV %RSI,-0x28(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOV %RCX,-0x18(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOV %RBX,-0x10(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nPOP %RBX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %RBP                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R12                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R13                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R14                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R15                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nRET                         | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nNOP                         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nXCHG %AX,%AX                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [LEA	0xefd(%RDI),%RAX] is unknown\n - The number of fused uops of the instruction [LEA	0xef3(%RBX),%RCX] is unknown\n - The number of fused uops of the instruction [LEA	0x2a11fd(%RDI),%RSI] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 4.17 to 1.50 cycles (2.78x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "37% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is poorly vectorized.\nOnly 32% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 4.17 to 1.50 cycles (2.78x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:236-254.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
