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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
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
          txt = "nb instructions    : 53\nloop length        : 217\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\nADD-SUB / MUL ratio: 0.67\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 26.50 cycles\ndecoding             : 26.50 cycles\nmicro-operation queue: 27.00 cycles\nfront end            : 27.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4   | P5   | P6\n----------------------------------------------------------\nuops   | 13.00 | 5.00 | 17.00 | 11.00 | 8.00 | 8.00 | 5.00\ncycles | 13.00 | 5.00 | 17.00 | 11.00 | 8.00 | 8.00 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 27.00\nDispatch  : 17.00\nData deps.: 0.00\nOverall L1: 27.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 9%\nload    : 9%\nstore   : 6%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 7%\nINT+FP\nall     : 9%\nload    : 10%\nstore   : 9%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 27.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.59 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.56 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 142e\n\nInstruction                        | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EAX                     | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nCVTSI2SS %EAX,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCVTSS2SD %XMM0,%XMM1               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSD 0xd4c(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMULSD %XMM0,%XMM1                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EAX                     | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nCVTSI2SS %EAX,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCVTSS2SD %XMM0,%XMM2               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSD 0xd2b(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDSD %XMM0,%XMM1                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EAX                     | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nCVTSI2SS %EAX,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCVTSS2SD %XMM0,%XMM2               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSD 0xd06(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDSD %XMM1,%XMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCVTSD2SS %XMM0,%XMM0               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSS %XMM0,-0xc(%RBP)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTTSS2SI -0xc(%RBP),%EDX          | 3     | 2    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 7\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTTSS2SI -0xc(%RBP),%EDX          | 3     | 2    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 7\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTTSS2SI -0xc(%RBP),%EDX          | 3     | 2    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 7\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADDQ $0x3,-0x8(%RBP)               | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nCMPQ $0x2a2fff,-0x8(%RBP)          | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 1363 <grayscale_weighted+0x19> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.19 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 27.00 to 13.00 cycles (2.08x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 27.00 to 2.07 cycles (13.05x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=knm.\nCQA target is Xeon_Phi_KNM (Intel Xeon Phi Processor 72x5 Series) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
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
          txt = "nb instructions    : 53\nloop length        : 217\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\nADD-SUB / MUL ratio: 0.67\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 26.50 cycles\ndecoding             : 26.50 cycles\nmicro-operation queue: 27.00 cycles\nfront end            : 27.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4   | P5   | P6\n----------------------------------------------------------\nuops   | 13.00 | 5.00 | 17.00 | 11.00 | 8.00 | 8.00 | 5.00\ncycles | 13.00 | 5.00 | 17.00 | 11.00 | 8.00 | 8.00 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 27.00\nDispatch  : 17.00\nData deps.: 0.00\nOverall L1: 27.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 9%\nload    : 9%\nstore   : 6%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 7%\nINT+FP\nall     : 9%\nload    : 10%\nstore   : 9%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 27.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.59 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.56 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 142e\n\nInstruction                        | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EAX                     | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nCVTSI2SS %EAX,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCVTSS2SD %XMM0,%XMM1               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSD 0xd4c(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMULSD %XMM0,%XMM1                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EAX                     | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nCVTSI2SS %EAX,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCVTSS2SD %XMM0,%XMM2               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSD 0xd2b(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDSD %XMM0,%XMM1                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX (%RAX),%EAX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX %AL,%EAX                     | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nCVTSI2SS %EAX,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCVTSS2SD %XMM0,%XMM2               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSD 0xd06(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMULSD %XMM2,%XMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nADDSD %XMM1,%XMM0                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCVTSD2SS %XMM0,%XMM0               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSS %XMM0,-0xc(%RBP)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV -0x18(%RBP),%RDX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTTSS2SI -0xc(%RBP),%EDX          | 3     | 2    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 7\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTTSS2SI -0xc(%RBP),%EDX          | 3     | 2    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 7\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x8(%RBP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2(%RAX),%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x18(%RBP),%RAX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTTSS2SI -0xc(%RBP),%EDX          | 3     | 2    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 7\nMOV %DL,(%RAX)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADDQ $0x3,-0x8(%RBP)               | 1     | 0    | 0    | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nCMPQ $0x2a2fff,-0x8(%RBP)          | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 1363 <grayscale_weighted+0x19> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.19 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 27.00 to 13.00 cycles (2.08x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 27.00 to 2.07 cycles (13.05x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=knm.\nCQA target is Xeon_Phi_KNM (Intel Xeon Phi Processor 72x5 Series) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21-30.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
