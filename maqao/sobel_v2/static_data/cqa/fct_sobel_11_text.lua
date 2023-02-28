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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 8\nloop length        : 42\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 4.00 cycles\ndecoding             : 4.00 cycles\nmicro-operation queue: 4.00 cycles\nfront end            : 4.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.00 | 0.00 | 3.00 | 3.00 | 0.00\ncycles | 0.00 | 0.00 | 0.00 | 0.00 | 3.00 | 3.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.00\nDispatch  : 3.00\nOverall L1: 4.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 4.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.00 to 3.00 cycles (1.33x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2550\n\nInstruction           | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------\nENDBR64\nCMP $0x1,%RSI         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 274a <sort+0x1fa> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA (%RDI),%RDX       | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%R8D         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPW (%RAX,%RAX,1)    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nRET\nNOPW (%RAX,%RAX,1)    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 4.00 to 0.25 cycles (16.00x speedup).",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 8\nloop length        : 42\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 4.00 cycles\ndecoding             : 4.00 cycles\nmicro-operation queue: 4.00 cycles\nfront end            : 4.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.00 | 0.00 | 3.00 | 3.00 | 0.00\ncycles | 0.00 | 0.00 | 0.00 | 0.00 | 3.00 | 3.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.00\nDispatch  : 3.00\nOverall L1: 4.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 4.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.00 to 3.00 cycles (1.33x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2550\n\nInstruction           | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------\nENDBR64\nCMP $0x1,%RSI         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 274a <sort+0x1fa> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA (%RDI),%RDX       | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%R8D         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPW (%RAX,%RAX,1)    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nRET\nNOPW (%RAX,%RAX,1)    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 4.00 to 0.25 cycles (16.00x speedup).",
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
      "The function is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/common.c:7-17.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
