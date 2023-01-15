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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 4 bytes.\nThe binary function is storing 44 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 12\nnb uops            : 12\nloop length        : 42\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 3.00 cycles\nfront end            : 3.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.00 | 0.00 | 3.33 | 3.33 | 7.00 | 0.00 | 2.00 | 3.33\ncycles | 0.00 | 0.00 | 3.33 | 3.33 | 7.00 | 0.00 | 2.00 | 3.33\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.00\nDispatch  : 7.00\nOverall L1: 7.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 6%\nstore   : 10%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 7.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.57 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (6.29 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 400a67\n\nInstruction                         | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | P6 | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                           | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSP,%RBP                       | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 0  | 0    | 0       | 0.25\nMOV %RDI,-0x28(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSI,-0x30(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RDX,-0x38(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RCX,-0x40(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVL $0,-0x4(%RBP)                  | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 2       | 1\nMOVQ $0,-0x10(%RBP)                 | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 2       | 1\nJMP 400af4 <convolve_baseline+0x8d> | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 1  | 0    | 0       | 1-2\nMOV -0x4(%RBP),%EAX                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 2       | 0.50\nPOP %RBP                            | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 2       | 0.50\nRET                                 | 1     | 0  | 0  | 0.33 | 0.33 | 0  | 0  | 1  | 0.33 | 0       | 1\n",
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
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 7.00 to 0.69 cycles (10.18x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 7.00 to 3.33 cycles (2.10x speedup).\n",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 4 bytes.\nThe binary function is storing 44 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 12\nnb uops            : 12\nloop length        : 42\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 3.00 cycles\nfront end            : 3.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.00 | 0.00 | 3.33 | 3.33 | 7.00 | 0.00 | 2.00 | 3.33\ncycles | 0.00 | 0.00 | 3.33 | 3.33 | 7.00 | 0.00 | 2.00 | 3.33\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.00\nDispatch  : 7.00\nOverall L1: 7.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 6%\nstore   : 10%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 7.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.57 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (6.29 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 400a67\n\nInstruction                         | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | P6 | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                           | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSP,%RBP                       | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 0  | 0    | 0       | 0.25\nMOV %RDI,-0x28(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSI,-0x30(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RDX,-0x38(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RCX,-0x40(%RBP)                | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVL $0,-0x4(%RBP)                  | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 2       | 1\nMOVQ $0,-0x10(%RBP)                 | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 2       | 1\nJMP 400af4 <convolve_baseline+0x8d> | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 1  | 0    | 0       | 1-2\nMOV -0x4(%RBP),%EAX                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 2       | 0.50\nPOP %RBP                            | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 2       | 0.50\nRET                                 | 1     | 0  | 0  | 0.33 | 0.33 | 0  | 0  | 1  | 0.33 | 0       | 1\n",
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
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 7.00 to 0.69 cycles (10.18x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 7.00 to 3.33 cycles (2.10x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /home/antvidal/AOC/AOC-Computer-vision/sobel.c:51-59.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
