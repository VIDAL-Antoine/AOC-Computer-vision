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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 1 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nnb uops            : 29\nloop length        : 114\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 4.83 cycles\nfront end            : 4.83 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.00 | 6.00 | 6.00 | 6.00 | 4.50 | 4.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 6.00 | 6.00 | 6.00 | 6.00 | 4.50 | 4.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 4.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.83\nDispatch  : 6.00\nData deps.: 0.00\nOverall L1: 6.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.00 cycles. At this rate:\n - 4% of peak load performance is reached (1.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.17 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 23c0\n\nInstruction                        | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nMOV %R8D,%EAX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOVZX (%RDX,%RAX,1),%EDI           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x8(%RDX,%RAX,1),%ESI        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x2(%RDX,%RAX,1),%R12D       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x3(%RDX,%RAX,1),%EBP        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x5(%RDX,%RAX,1),%R13D       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nSUB %EDI,%ESI                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX 0x6(%RDX,%RAX,1),%EDI        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOV %R12D,%ECX                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB %EBP,%R13D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %EDI,%ECX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%RCX,%R13,2),%R13D\nMOVZX 0x7(%RDX,%RAX,1),%ECX        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nADD %ESI,%R13D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %R13D,%EBP                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %EBP                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVS %R13D,%EBP                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX 0x1(%RDX,%RAX,1),%R13D       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nSUB %R12D,%EDI                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %R13D,%ECX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%RDI,%RCX,2),%R12D\nADD %ESI,%R12D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %R12D,%ESI                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %ESI                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVNS %ESI,%R12D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD %EBP,%R12D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP $0x64,%R12D                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJG 2450 <sobel_v3._omp_fn.0+0x100> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nINC %R8D                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %R12B,(%R10,%RAX,1)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nCMP %R9D,%R8D                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJNE 23c0 <sobel_v3._omp_fn.0+0x70> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	(%RCX,%R13,2),%R13D] is unknown\n - The number of fused uops of the instruction [LEA	(%RDI,%RCX,2),%R12D] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 6.00 to 1.00 cycles (6.00x speedup).",
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
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 1 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nnb uops            : 29\nloop length        : 119\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 4.83 cycles\nfront end            : 4.83 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.00 | 6.00 | 6.00 | 6.00 | 4.50 | 4.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 6.00 | 6.00 | 6.00 | 6.00 | 4.50 | 4.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 4.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.83\nDispatch  : 6.00\nData deps.: 0.00\nOverall L1: 6.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 11%\nload    : 12%\nstore   : 3%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.00 cycles. At this rate:\n - 4% of peak load performance is reached (1.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.17 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 23c0\n\nInstruction                        | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nMOV %R8D,%EAX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOVZX (%RDX,%RAX,1),%EDI           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x8(%RDX,%RAX,1),%ESI        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x2(%RDX,%RAX,1),%R12D       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x3(%RDX,%RAX,1),%EBP        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOVZX 0x5(%RDX,%RAX,1),%R13D       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nSUB %EDI,%ESI                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX 0x6(%RDX,%RAX,1),%EDI        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nMOV %R12D,%ECX                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB %EBP,%R13D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %EDI,%ECX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%RCX,%R13,2),%R13D\nMOVZX 0x7(%RDX,%RAX,1),%ECX        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nADD %ESI,%R13D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %R13D,%EBP                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %EBP                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVS %R13D,%EBP                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVZX 0x1(%RDX,%RAX,1),%R13D       | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nSUB %R12D,%EDI                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nSUB %R13D,%ECX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nLEA (%RDI,%RCX,2),%R12D\nADD %ESI,%R12D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %R12D,%ESI                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nNEG %ESI                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMOVNS %ESI,%R12D                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD %EBP,%R12D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCMP $0x64,%R12D                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJG 2450 <sobel_v3._omp_fn.0+0x100> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nINC %R8D                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOVB $-0x1,(%R10,%RAX,1)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nCMP %R9D,%R8D                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJNE 23c0 <sobel_v3._omp_fn.0+0x70> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	(%RCX,%R13,2),%R13D] is unknown\n - The number of fused uops of the instruction [LEA	(%RDI,%RCX,2),%R12D] is unknown\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 6.00 to 0.53 cycles (11.29x speedup).",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 1 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nnb uops            : 29\nloop length        : 116.50\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 4.83 cycles\nfront end            : 4.83 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.00 | 6.00 | 6.00 | 6.00 | 4.50 | 4.50 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 6.00 | 6.00 | 6.00 | 6.00 | 4.50 | 4.50 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.83\nDispatch  : 6.00\nData deps.: 0.00\nOverall L1: 6.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : 3%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.00 cycles. At this rate:\n - 4% of peak load performance is reached (1.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.17 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
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
          txt = "Your loop is not vectorized.\nOnly 12% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 6.00 to 0.77 cycles (7.84x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:204-215.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 2,
  },
}
