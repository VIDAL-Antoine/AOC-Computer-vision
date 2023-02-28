_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 128 bytes.\nThe binary loop is storing 128 bytes.",
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
          txt = "nb instructions    : 58\nloop length        : 193\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 13.00 cycles\ninstruction queue    : 29.00 cycles\ndecoding             : 29.00 cycles\nmicro-operation queue: 29.00 cycles\nfront end            : 29.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 0.00 | 0.00 | 16.00 | 16.00 | 13.00 | 13.00 | 16.00\ncycles | 0.00 | 0.00 | 16.00 | 16.00 | 13.00 | 13.00 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 29.00\nDispatch  : 16.00\nOverall L1: 29.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 29.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.41 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.41 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 29.00 to 16.00 cycles (1.81x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2678\n\nInstruction            | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------\nMOV (%RDX),%RCX        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%RDI,%RAX,8),%R9  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R9,%RCX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 268b <sort+0x13b>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,(%RDX)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,(%RDI,%RAX,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R10        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RAX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%RAX,8),%R11 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R11,%R10          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26a2 <sort+0x152>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R11,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R10,(%RDI,%RAX,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R9         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RCX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%RCX,8),%R10 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R10,%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26b9 <sort+0x169>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R10,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%RDI,%RCX,8)  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%RCX        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%R9  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R9,%RCX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26d0 <sort+0x180>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,(%RDX)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,(%RDI,%R11,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%RCX        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x3(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%R10 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R10,%RCX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26e7 <sort+0x197>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R10,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,(%RDI,%R11,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R9         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x4(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%RCX | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %RCX,%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26fe <sort+0x1ae>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %RCX,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%RDI,%R11,8)  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R9         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x5(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%R10 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R10,%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2715 <sort+0x1c5>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R10,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%RDI,%R11,8)  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R11        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x6(%RAX),%RCX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%RCX,8),%R9  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R9,%R11           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 272c <sort+0x1dc>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,(%RDX)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,(%RDI,%RCX,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x7(%RAX),%RAX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RSI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 2678 <sort+0x128>   | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 29.00 to 3.62 cycles (8.00x speedup).",
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
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 128 bytes.\nThe binary loop is storing 128 bytes.",
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
          txt = "nb instructions    : 58\nloop length        : 193\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 13.00 cycles\ninstruction queue    : 29.00 cycles\ndecoding             : 29.00 cycles\nmicro-operation queue: 29.00 cycles\nfront end            : 29.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 0.00 | 0.00 | 16.00 | 16.00 | 13.00 | 13.00 | 16.00\ncycles | 0.00 | 0.00 | 16.00 | 16.00 | 13.00 | 13.00 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 29.00\nDispatch  : 16.00\nOverall L1: 29.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 29.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.41 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.41 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 29.00 to 16.00 cycles (1.81x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2678\n\nInstruction            | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------\nMOV (%RDX),%RCX        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%RDI,%RAX,8),%R9  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R9,%RCX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 268b <sort+0x13b>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,(%RDX)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,(%RDI,%RAX,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R10        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RAX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%RAX,8),%R11 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R11,%R10          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26a2 <sort+0x152>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R11,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R10,(%RDI,%RAX,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R9         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RCX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%RCX,8),%R10 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R10,%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26b9 <sort+0x169>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R10,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%RDI,%RCX,8)  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%RCX        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%R9  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R9,%RCX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26d0 <sort+0x180>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,(%RDX)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,(%RDI,%R11,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%RCX        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x3(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%R10 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R10,%RCX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26e7 <sort+0x197>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R10,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,(%RDI,%R11,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R9         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x4(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%RCX | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %RCX,%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 26fe <sort+0x1ae>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %RCX,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%RDI,%R11,8)  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R9         | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x5(%RAX),%R11     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%R11,8),%R10 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R10,%R9           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2715 <sort+0x1c5>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R10,(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%RDI,%R11,8)  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV (%RDX),%R11        | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x6(%RAX),%RCX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDI,%RCX,8),%R9  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCMP %R9,%R11           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 272c <sort+0x1dc>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,(%RDX)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,(%RDI,%RCX,8) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x7(%RAX),%RAX     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RSI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 2678 <sort+0x128>   | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 29.00 to 3.62 cycles (8.00x speedup).",
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
      "The loop is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/common.c:9-15.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "Warnings:\n - Ignoring paths for analysis\n - Too many paths. If you really need to analyze all of the 256 paths individually, rerun with max-paths=256\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 256 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 256,
  },
}
