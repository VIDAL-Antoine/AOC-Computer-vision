_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 97 bytes.\nThe binary loop is storing 12 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 24\nloop length        : 89\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 6.00 cycles\ninstruction queue    : 12.00 cycles\ndecoding             : 12.00 cycles\nmicro-operation queue: 12.00 cycles\nfront end            : 12.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 0.00 | 0.00 | 14.00 | 2.00 | 7.50 | 7.50 | 2.00\ncycles | 0.00 | 0.00 | 14.00 | 2.00 | 7.50 | 7.50 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.00\nDispatch  : 14.00\nData deps.: 0.00\nOverall L1: 14.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 11%\nload    : 9%\nstore   : 9%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.00 cycles. At this rate:\n - 5% of peak load performance is reached (6.93 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.86 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1537\n\nInstruction                      | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------\nMOV -0x10(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL -0x40(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x8(%RBP),%RAX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x28(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EDX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV -0x10(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL -0x40(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RAX,%RCX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x8(%RBP),%RAX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (,%RAX,4),%RCX               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x30(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RAX),%EAX                  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EDX,%EAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %EAX,-0x14(%RBP)             | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nADDQ $0x1,-0x8(%RBP)             | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV -0x8(%RBP),%RAX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP -0x40(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJB 14e8 <convolve_baseline+0x33> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 14.00 to 0.94 cycles (14.93x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 14.00 to 12.00 cycles (1.17x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 97 bytes.\nThe binary loop is storing 12 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 24\nloop length        : 89\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 6.00 cycles\ninstruction queue    : 12.00 cycles\ndecoding             : 12.00 cycles\nmicro-operation queue: 12.00 cycles\nfront end            : 12.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 0.00 | 0.00 | 14.00 | 2.00 | 7.50 | 7.50 | 2.00\ncycles | 0.00 | 0.00 | 14.00 | 2.00 | 7.50 | 7.50 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.00\nDispatch  : 14.00\nData deps.: 0.00\nOverall L1: 14.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 11%\nload    : 9%\nstore   : 9%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.00 cycles. At this rate:\n - 5% of peak load performance is reached (6.93 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.86 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1537\n\nInstruction                      | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------\nMOV -0x10(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL -0x40(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x8(%RBP),%RAX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x28(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EDX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV -0x10(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL -0x40(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RAX,%RCX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x8(%RBP),%RAX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (,%RAX,4),%RCX               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x30(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RAX),%EAX                  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EDX,%EAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %EAX,-0x14(%RBP)             | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nADDQ $0x1,-0x8(%RBP)             | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV -0x8(%RBP),%RAX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP -0x40(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJB 14e8 <convolve_baseline+0x33> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 14.00 to 0.94 cycles (14.93x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 14.00 to 12.00 cycles (1.17x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:64-65.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
