_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 8\nloop length        : 27\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 2.00 cycles\ninstruction queue    : 4.00 cycles\ndecoding             : 4.00 cycles\nmicro-operation queue: 5.00 cycles\nfront end            : 5.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 1.00 | 0.00 | 2.50 | 2.50 | 0.00\ncycles | 0.00 | 0.00 | 1.00 | 0.00 | 2.50 | 2.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.00\nDispatch  : 2.50\nOverall L1: 5.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 5.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.60 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 4.00 cycles (1.25x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1000\n\nInstruction           | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------\nENDBR64\nSUB $0x8,%RSP         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x2fd9(%RIP),%RAX | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nTEST %RAX,%RAX        | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1016 <_init+0x16>  | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nCALL %RAX             | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 2\nADD $0x8,%RSP         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nRET\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 5.00 to 0.62 cycles (8.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 7\nloop length        : 25\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 2.00 cycles\ninstruction queue    : 3.50 cycles\ndecoding             : 3.50 cycles\nmicro-operation queue: 4.00 cycles\nfront end            : 4.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 1.00 | 0.00 | 2.00 | 2.00 | 0.00\ncycles | 0.00 | 0.00 | 1.00 | 0.00 | 2.00 | 2.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.00\nDispatch  : 2.00\nOverall L1: 4.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 4.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.00 to 3.50 cycles (1.14x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1000\n\nInstruction           | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------\nENDBR64\nSUB $0x8,%RSP         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x2fd9(%RIP),%RAX | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nTEST %RAX,%RAX        | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1016 <_init+0x16>  | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nADD $0x8,%RSP         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nRET\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 4.00 to 0.50 cycles (8.00x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 7.50\nloop length        : 26\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 2.00 cycles\ninstruction queue    : 3.75 cycles\ndecoding             : 3.75 cycles\nmicro-operation queue: 4.50 cycles\nfront end            : 4.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 1.00 | 0.00 | 2.25 | 2.25 | 0.00\ncycles | 0.00 | 0.00 | 1.00 | 0.00 | 2.25 | 2.25 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.50\nDispatch  : 2.25\nOverall L1: 4.50\n",
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
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 4.50 cycles. At this rate:\n - 1% of peak load performance is reached (1.80 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 4.50 to 0.56 cycles (8.00x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
      "The structure of this function is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside function: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the function)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 2,
  },
}
