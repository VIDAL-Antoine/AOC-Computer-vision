_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCOMISS: 1 occurrences\n - VCVTSI2SD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: square root\nThe binary loop is loading 8 bytes (2 single precision FP elements).\nThe binary loop is storing 1 bytes (0 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.11 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 35\nnb uops            : 33\nloop length        : 120\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 5.50 cycles\nfront end            : 5.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.50 | 6.50 | 6.50 | 6.50 | 4.50 | 4.50 | 0.50 | 0.50 | 1.00 | 3.00\ncycles | 6.50 | 6.50 | 6.50 | 6.50 | 4.50 | 4.50 | 0.50 | 0.50 | 1.00 | 3.00\n\nCycles executing div or sqrt instructions: 4.00-8.00\nCycles loading/storing data              : 4.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.50\nDispatch  : 6.50\nDIV/SQRT  : 4.00-8.00\nData deps.: 1.00\nOverall L1: 6.50-8.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 12%\nstore  : 3%\nmul    : 12%\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 20%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 18%\nINT+FP\nall     : 13%\nload    : 12%\nstore   : 3%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 16%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 8.00 cycles. At this rate:\n - 3% of peak load performance is reached (1.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.13 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 3ac0\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2 | FP3 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------------\nMOVZX 0x2(%R13),%EBP            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX (%R13),%R12D              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x3(%R13),%EAX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x6(%R13),%EBX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x5(%R13),%ECX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOV %EBP,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0       | 0.25\nSUB %R12D,%EDX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nNEG %EAX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nLEA (%RDX,%RAX,2),%R11D\nMOVZX 0x1(%R13),%EAX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x8(%R13),%EDX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nLEA (%R11,%RCX,2),%R8D\nSUB %EBX,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nNEG %EAX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nADD %EDX,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nADD %EAX,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nIMUL %R8D,%R8D                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 3       | 1\nSUB %R12D,%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nMOVZX 0x7(%R13),%R12D           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nSUB %EBP,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nADD %EBX,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nLEA (%RAX,%R12,2),%EBP\nADD %EDX,%EBP                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nIMUL %EBP,%EBP                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 3       | 1\nADD %R8D,%EBP                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nVCVTSI2SD %EBP,%XMM10,%XMM5     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0   | 1   | 7       | 1\nVSQRTSD %XMM5,%XMM5,%XMM5       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 1   | 8-20    | 4-8\nVCVTSD2SS %XMM5,%XMM5,%XMM1     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 1   | 4       | 1\nVCOMISS %XMM1,%XMM13            | 2     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 1   | 0   | 2       | 1\nJAE 3b5d <sobel_baseline+0x5fd> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.50\nINC %R13                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nMOVB $-0x1,(%RSI)               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 4       | 1\nINC %RSI                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nCMP %R13,%RDI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nJNE 3ac0 <sobel_baseline+0x560> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	(%RDX,%RAX,2),%R11D] is unknown\n - The number of fused uops of the instruction [LEA	(%R11,%RCX,2),%R8D] is unknown\n - The number of fused uops of the instruction [LEA	(%RAX,%R12,2),%EBP] is unknown\n",
        "0% of peak computational performance is used (0.13 out of 48.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  * \n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 8.00 to 6.50 cycles (1.23x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 8.00 to 6.50 cycles (1.23x speedup).",
        },
      },
    },
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCOMISS: 1 occurrences\n - VCVTSI2SD: 1 occurrences\n - VCVTTSS2SI: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n - VCVTTSS2SI (FP32 to INT32/64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: square root\nThe binary loop is loading 8 bytes (2 single precision FP elements).\nThe binary loop is storing 1 bytes (0 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.11 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 36\nnb uops            : 35\nloop length        : 129\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 5.83 cycles\nfront end            : 5.83 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.75 | 6.75 | 6.75 | 6.75 | 4.50 | 4.50 | 0.50 | 0.50 | 1.00 | 4.00\ncycles | 6.75 | 6.75 | 6.75 | 6.75 | 4.50 | 4.50 | 0.50 | 0.50 | 1.00 | 4.00\n\nCycles executing div or sqrt instructions: 4.00-8.00\nCycles loading/storing data              : 4.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.83\nDispatch  : 6.75\nDIV/SQRT  : 4.00-8.00\nData deps.: 1.00\nOverall L1: 6.75-8.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 12%\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 18%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 16%\nINT+FP\nall     : 14%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 8.00 cycles. At this rate:\n - 3% of peak load performance is reached (1.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.13 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 3ac0\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2 | FP3 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------------\nMOVZX 0x2(%R13),%EBP            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX (%R13),%R12D              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x3(%R13),%EAX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x6(%R13),%EBX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x5(%R13),%ECX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOV %EBP,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0       | 0.25\nSUB %R12D,%EDX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nNEG %EAX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nLEA (%RDX,%RAX,2),%R11D\nMOVZX 0x1(%R13),%EAX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nMOVZX 0x8(%R13),%EDX            | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nLEA (%R11,%RCX,2),%R8D\nSUB %EBX,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nNEG %EAX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nADD %EDX,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nADD %EAX,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nIMUL %R8D,%R8D                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 3       | 1\nSUB %R12D,%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nMOVZX 0x7(%R13),%R12D           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 1       | 0.50\nSUB %EBP,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nADD %EBX,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nLEA (%RAX,%R12,2),%EBP\nADD %EDX,%EBP                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nIMUL %EBP,%EBP                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 3       | 1\nADD %R8D,%EBP                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nVCVTSI2SD %EBP,%XMM10,%XMM5     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0   | 1   | 7       | 1\nVSQRTSD %XMM5,%XMM5,%XMM5       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 1   | 8-20    | 4-8\nVCVTSD2SS %XMM5,%XMM5,%XMM1     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 1   | 4       | 1\nVCOMISS %XMM1,%XMM13            | 2     | 0    | 0    | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 1   | 0   | 2       | 1\nJAE 3b5d <sobel_baseline+0x5fd> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.50\nINC %R13                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nVCVTTSS2SI %XMM1,%R11D          | 2     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 1   | 8       | 1\nINC %RSI                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nMOV %R11B,-0x1(%RSI)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0   | 4       | 1\nCMP %RDI,%R13                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.25\nJNE 3ac0 <sobel_baseline+0x560> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	(%RDX,%RAX,2),%R11D] is unknown\n - The number of fused uops of the instruction [LEA	(%R11,%RCX,2),%R8D] is unknown\n - The number of fused uops of the instruction [LEA	(%RAX,%R12,2),%EBP] is unknown\n",
        "0% of peak computational performance is used (0.13 out of 48.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  * \n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 8.00 to 6.75 cycles (1.19x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 8.00 to 6.75 cycles (1.19x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCOMISS: 1 occurrences\n - VCVTSI2SD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: square root\nThe binary loop is loading 8 bytes (2 single precision FP elements).\nThe binary loop is storing 1 bytes (0 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.11 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 35.50\nnb uops            : 34\nloop length        : 124.50\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 5.67 cycles\nfront end            : 5.67 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.63 | 6.63 | 6.63 | 6.63 | 4.50 | 4.50 | 0.50 | 0.50 | 1.00 | 3.50\ncycles | 6.63 | 6.63 | 6.63 | 6.63 | 4.50 | 4.50 | 0.50 | 0.50 | 1.00 | 3.50\n\nCycles executing div or sqrt instructions: 4.00-8.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.67\nDispatch  : 6.63\nDIV/SQRT  : 4.00-8.00\nData deps.: 1.00\nOverall L1: 6.63-8.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 3%\nmul    : 12%\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 19%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 17%\nINT+FP\nall     : 14%\nload    : 12%\nstore   : 3%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 16%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 8.00 cycles. At this rate:\n - 3% of peak load performance is reached (1.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.13 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.13 out of 48.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  * \n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 8.00 to 6.63 cycles (1.21x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:56,77-84.\n",
      "It is peel/tail loop of related source loop which is unrolled by 16 (including vectorization).",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 2,
  },
}
