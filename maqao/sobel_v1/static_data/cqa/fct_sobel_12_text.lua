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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 80 bytes.\nThe binary function is storing 64 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 40\nloop length        : 169\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 4\nused zmm registers : 2\nnb stack references: 7\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 11.00 cycles\ninstruction queue    : 20.00 cycles\ndecoding             : 20.00 cycles\nmicro-operation queue: 23.00 cycles\nfront end            : 23.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 2.00 | 1.00 | 7.00 | 7.00 | 13.00 | 13.00 | 11.00\ncycles | 2.00 | 1.00 | 7.00 | 7.00 | 13.00 | 13.00 | 11.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.00\nDispatch  : 13.00\nOverall L1: 23.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 60%\nload   : 100%\nstore  : 20%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 50%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 58%\nload    : 100%\nstore   : 20%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 75%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 26%\nload   : 41%\nstore  : 18%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 53%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 53%\nINT+FP\nall     : 31%\nload    : 41%\nstore   : 18%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 39%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 23.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.48 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.78 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 23.00 to 20.00 cycles (1.15x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2590\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVAPS %ZMM0,%ZMM16       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV %RSP,%RBP              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNEG %RAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %R15                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nAND $0x1f,%EAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVBROADCASTSS %XMM0,%YMM10  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nPUSH %R14                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RAX,%RSI,1),%RDX     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x20(%RSI),%R14        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %R13                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%R15            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0xefd(%RDI),%R13       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %R12                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%R12            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nADD %RAX,%R12              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $-0x20,%RSP            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x1c8(%RSP),%RSP      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA 0x1dbf(%RIP),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RDI,0x1b0(%RSP)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPMOVZXBW %XMM6,%YMM0      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3       | 1\nMOV %RSI,0x1a8(%RSP)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVQ $0,0x1c0(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOV %RDX,-0x58(%RSP)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA 0x1b71(%RIP),%YMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQA 0x1b89(%RIP),%YMM9 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQA %YMM0,0x188(%RSP)  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVZEROUPPER                 | 19    | 0    | 0    | 0    | 0    | 0    | 0    | 0  | 0       | 36\nLEA -0x28(%RBP),%RSP       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 23.00 to 7.00 cycles (3.29x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "58% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 20% of SSE/AVX stores are used in vector version.\n - 75% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is partially vectorized.\nOnly 31% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 23.00 to 2.52 cycles (9.14x speedup).",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 80 bytes.\nThe binary function is storing 64 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 40\nloop length        : 169\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 4\nused zmm registers : 2\nnb stack references: 7\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 11.00 cycles\ninstruction queue    : 20.00 cycles\ndecoding             : 20.00 cycles\nmicro-operation queue: 23.00 cycles\nfront end            : 23.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 2.00 | 1.00 | 7.00 | 7.00 | 13.00 | 13.00 | 11.00\ncycles | 2.00 | 1.00 | 7.00 | 7.00 | 13.00 | 13.00 | 11.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.00\nDispatch  : 13.00\nOverall L1: 23.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 60%\nload   : 100%\nstore  : 20%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 50%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 58%\nload    : 100%\nstore   : 20%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 75%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 26%\nload   : 41%\nstore  : 18%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 53%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 53%\nINT+FP\nall     : 31%\nload    : 41%\nstore   : 18%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 39%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 23.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.48 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.78 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 23.00 to 20.00 cycles (1.15x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2590\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVAPS %ZMM0,%ZMM16       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV %RSP,%RBP              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNEG %RAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %R15                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nAND $0x1f,%EAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVBROADCASTSS %XMM0,%YMM10  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nPUSH %R14                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RAX,%RSI,1),%RDX     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x20(%RSI),%R14        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %R13                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%R15            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0xefd(%RDI),%R13       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %R12                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%R12            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                  | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nADD %RAX,%R12              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $-0x20,%RSP            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x1c8(%RSP),%RSP      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA 0x1dbf(%RIP),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RDI,0x1b0(%RSP)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPMOVZXBW %XMM6,%YMM0      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3       | 1\nMOV %RSI,0x1a8(%RSP)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVQ $0,0x1c0(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOV %RDX,-0x58(%RSP)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA 0x1b71(%RIP),%YMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQA 0x1b89(%RIP),%YMM9 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQA %YMM0,0x188(%RSP)  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVZEROUPPER                 | 19    | 0    | 0    | 0    | 0    | 0    | 0    | 0  | 0       | 36\nLEA -0x28(%RBP),%RSP       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                   | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 23.00 to 7.00 cycles (3.29x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "58% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 20% of SSE/AVX stores are used in vector version.\n - 75% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is partially vectorized.\nOnly 31% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 23.00 to 2.52 cycles (9.14x speedup).",
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
      "The function is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:113,120,133-143.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
