_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "Recompile with march=znver1.\nCQA target is AMD_fam17h_mod18h (1st generation Athlon and Ryzen 3 low-power APUs based on the Zen microarchitecture) but specialization flags are -march=x86-64",
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - CVTSI2SS: 3 occurrences\n - CVTTSS2SI: 3 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
          details = " - CVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - CVTSI2SS (INT32/64 to FP32, scalar): 3 occurrences\n - CVTSS2SD (FP32 to FP64, scalar): 3 occurrences\n - CVTTSS2SI (FP32 to INT32/64, scalar): 3 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "5 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 5 FP arithmetical operations:\n - 2: addition or subtraction\n - 3: multiply\nThe binary loop is loading 151 bytes (18 double precision FP elements).\nThe binary loop is storing 15 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 59\nnb uops            : 61\nloop length        : 241\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\nADD-SUB / MUL ratio: 0.67\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 10.17 cycles\nfront end            : 10.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n-------------------------------------------------------------------------------\nuops   | 4.50 | 4.50 | 4.50 | 4.50 | 13.50 | 13.50 | 1.50 | 1.50 | 6.00 | 10.00\ncycles | 4.50 | 4.50 | 4.50 | 4.50 | 13.50 | 13.50 | 1.50 | 1.50 | 6.00 | 10.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 11.50\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.17\nDispatch  : 13.50\nData deps.: 0.00\nOverall L1: 13.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 50%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 66%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 21%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 37%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 34%\nload   : 25%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 37%\nFP\nall     : 19%\nload    : 18%\nstore   : 12%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 14%\nINT+FP\nall     : 25%\nload    : 20%\nstore   : 18%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 27%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.50 cycles. At this rate:\n - 34% of peak load performance is reached (11.19 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (1.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1446\n\nInstruction                        | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3  | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------------------\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nMOVZX (%RAX),%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMOVZX %AL,%EAX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nPXOR %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSI2SS %EAX,%XMM0                | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 7       | 1\nPXOR %XMM1,%XMM1                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSS2SD %XMM0,%XMM1               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSD 0xd44(%RIP),%XMM0            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMULSD %XMM0,%XMM1                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 4       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x1(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nMOVZX (%RAX),%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMOVZX %AL,%EAX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nPXOR %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSI2SS %EAX,%XMM0                | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 7       | 1\nPXOR %XMM2,%XMM2                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSS2SD %XMM0,%XMM2               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSD 0xd1b(%RIP),%XMM0            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 4       | 0.50\nADDSD %XMM0,%XMM1                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 3       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x2(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nMOVZX (%RAX),%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMOVZX %AL,%EAX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nPXOR %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSI2SS %EAX,%XMM0                | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 7       | 1\nPXOR %XMM2,%XMM2                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSS2SD %XMM0,%XMM2               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSD 0xcee(%RIP),%XMM0            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 3       | 0.50\nCVTSD2SS %XMM0,%XMM0               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSS %XMM0,-0xc(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 0    | 1       | 1\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nCVTTSS2SI -0xc(%RBP),%EDX          | 2     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 1    | 4       | 1\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x1(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nCVTTSS2SI -0xc(%RBP),%EDX          | 2     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 1    | 4       | 1\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x2(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nCVTTSS2SI -0xc(%RBP),%EDX          | 2     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 1    | 4       | 1\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 4       | 1\nADDQ $0x3,-0x8(%RBP)               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 1\nCMPQ $0x2a2fff,-0x8(%RBP)          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nJBE 1363 <grayscale_weighted+0x19> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	0x1(%RAX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	0x2(%RAX),%RDX] is unknown\n",
        "1% of peak computational performance is used (0.37 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 13.50 to 10.00 cycles (1.35x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 13.50 to 3.37 cycles (4.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.50 to 10.17 cycles (1.33x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=znver1.\nCQA target is AMD_fam17h_mod18h (1st generation Athlon and Ryzen 3 low-power APUs based on the Zen microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "Recompile with march=znver1.\nCQA target is AMD_fam17h_mod18h (1st generation Athlon and Ryzen 3 low-power APUs based on the Zen microarchitecture) but specialization flags are -march=x86-64",
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - CVTSI2SS: 3 occurrences\n - CVTTSS2SI: 3 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
          details = " - CVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - CVTSI2SS (INT32/64 to FP32, scalar): 3 occurrences\n - CVTSS2SD (FP32 to FP64, scalar): 3 occurrences\n - CVTTSS2SI (FP32 to INT32/64, scalar): 3 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "5 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 5 FP arithmetical operations:\n - 2: addition or subtraction\n - 3: multiply\nThe binary loop is loading 151 bytes (18 double precision FP elements).\nThe binary loop is storing 15 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 59\nnb uops            : 61\nloop length        : 241\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\nADD-SUB / MUL ratio: 0.67\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 10.17 cycles\nfront end            : 10.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n-------------------------------------------------------------------------------\nuops   | 4.50 | 4.50 | 4.50 | 4.50 | 13.50 | 13.50 | 1.50 | 1.50 | 6.00 | 10.00\ncycles | 4.50 | 4.50 | 4.50 | 4.50 | 13.50 | 13.50 | 1.50 | 1.50 | 6.00 | 10.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 11.50\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.17\nDispatch  : 13.50\nData deps.: 0.00\nOverall L1: 13.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 50%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 66%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 21%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 37%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 34%\nload   : 25%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 37%\nFP\nall     : 19%\nload    : 18%\nstore   : 12%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 14%\nINT+FP\nall     : 25%\nload    : 20%\nstore   : 18%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 27%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.50 cycles. At this rate:\n - 34% of peak load performance is reached (11.19 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (1.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1446\n\nInstruction                        | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3  | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------------------\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nMOVZX (%RAX),%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMOVZX %AL,%EAX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nPXOR %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSI2SS %EAX,%XMM0                | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 7       | 1\nPXOR %XMM1,%XMM1                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSS2SD %XMM0,%XMM1               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSD 0xd44(%RIP),%XMM0            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMULSD %XMM0,%XMM1                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 4       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x1(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nMOVZX (%RAX),%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMOVZX %AL,%EAX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nPXOR %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSI2SS %EAX,%XMM0                | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 7       | 1\nPXOR %XMM2,%XMM2                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSS2SD %XMM0,%XMM2               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSD 0xd1b(%RIP),%XMM0            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 4       | 0.50\nADDSD %XMM0,%XMM1                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 3       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x2(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nMOVZX (%RAX),%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMOVZX %AL,%EAX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nPXOR %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSI2SS %EAX,%XMM0                | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 7       | 1\nPXOR %XMM2,%XMM2                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCVTSS2SD %XMM0,%XMM2               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSD 0xcee(%RIP),%XMM0            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 3       | 0.50\nCVTSD2SS %XMM0,%XMM0               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 4       | 1\nMOVSS %XMM0,-0xc(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 0    | 1       | 1\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nCVTTSS2SI -0xc(%RBP),%EDX          | 2     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 1    | 4       | 1\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x1(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nCVTTSS2SI -0xc(%RBP),%EDX          | 2     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 1    | 4       | 1\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nLEA 0x2(%RAX),%RDX\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 3       | 0.50\nADD %RDX,%RAX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.25\nCVTTSS2SI -0xc(%RBP),%EDX          | 2     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1    | 1    | 4       | 1\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 4       | 1\nADDQ $0x3,-0x8(%RBP)               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 1\nCMPQ $0x2a2fff,-0x8(%RBP)          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 1       | 0.50\nJBE 1363 <grayscale_weighted+0x19> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	0x1(%RAX),%RDX] is unknown\n - The number of fused uops of the instruction [LEA	0x2(%RAX),%RDX] is unknown\n",
        "1% of peak computational performance is used (0.37 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 13.50 to 10.00 cycles (1.35x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 13.50 to 3.37 cycles (4.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.50 to 10.17 cycles (1.33x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=znver1.\nCQA target is AMD_fam17h_mod18h (1st generation Athlon and Ryzen 3 low-power APUs based on the Zen microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:21-30.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
