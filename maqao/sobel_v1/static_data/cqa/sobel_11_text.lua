_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
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
          txt = "nb instructions    : 40\nloop length        : 133\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 9.00 cycles\ninstruction queue    : 20.00 cycles\ndecoding             : 20.00 cycles\nmicro-operation queue: 20.00 cycles\nfront end            : 20.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 5.00 | 2.00 | 8.00 | 1.00 | 13.50 | 13.50 | 1.00\ncycles | 5.00 | 2.00 | 8.00 | 1.00 | 13.50 | 13.50 | 1.00\n\nCycles executing div or sqrt instructions: 32.00-33.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 20.00\nDispatch  : 13.50\nDIV/SQRT  : 32.00-33.00\nData deps.: 1.00\nOverall L1: 32.00-33.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : 6%\nstore  : 1%\nmul    : 6%\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 10%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 9%\nINT+FP\nall     : 6%\nload    : 6%\nstore   : 1%\nmul     : 6%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 7%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 33.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.24 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.03 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2dc0\n\nInstruction                    | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nMOVZX 0x2(%RSI),%R10D          | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX 0x3(%RSI),%ECX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX (%RSI),%R11D             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX 0x6(%RSI),%R9D           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R10D,%R8D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNEG %ECX                       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R11D,%R8D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8D,%EDX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %EAX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x5(%RSI),%ECX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %EDX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x1(%RSI),%EDX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %EDX                       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EDX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R9D,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x8(%RSI),%ECX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R11D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x7(%RSI),%R11D          | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R10D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%EDX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R11D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %EAX,%EAX                 | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %R11D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDX,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %ECX,%ECX                 | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EAX,%XMM11,%XMM11   | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVSQRTSD %XMM11,%XMM11,%XMM11   | 3     | 3  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 32-33\nVCVTSD2SS %XMM11,%XMM11,%XMM15 | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVCOMISS %XMM15,%XMM16          | 2     | 1  | 1  | 0    | 0    | 0    | 0    | 0  | 7       | 7\nJAE 2e95 <sobel_v1+0x905>      | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x1(%RSI),%RSI             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RDI),%RDI             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVB $-0x1,-0x1(%RDI)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nCMP %RSI,%RBX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 2dc0 <sobel_v1+0x830>      | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.03 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 6% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 33.00 to 20.00 cycles (1.65x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 33.00 to 20.00 cycles (1.65x speedup).",
        },
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
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
          txt = "nb instructions    : 41\nloop length        : 138\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 9.00 cycles\ninstruction queue    : 20.50 cycles\ndecoding             : 20.50 cycles\nmicro-operation queue: 21.00 cycles\nfront end            : 21.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 7.00 | 2.00 | 8.00 | 1.00 | 13.50 | 13.50 | 1.00\ncycles | 7.00 | 2.00 | 8.00 | 1.00 | 13.50 | 13.50 | 1.00\n\nCycles executing div or sqrt instructions: 32.00-33.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 21.00\nDispatch  : 13.50\nDIV/SQRT  : 32.00-33.00\nData deps.: 1.00\nOverall L1: 32.00-33.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : 6%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 6%\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 9%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 8%\nINT+FP\nall     : 6%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 6%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 33.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.24 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.03 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2dc0\n\nInstruction                    | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------\nMOVZX 0x2(%RSI),%R10D          | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX 0x3(%RSI),%ECX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX (%RSI),%R11D             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX 0x6(%RSI),%R9D           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R10D,%R8D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNEG %ECX                       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R11D,%R8D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8D,%EDX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %EAX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x5(%RSI),%ECX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %EDX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x1(%RSI),%EDX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %EDX                       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EDX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R9D,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x8(%RSI),%ECX           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R11D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVZX 0x7(%RSI),%R11D          | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R10D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%EDX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R11D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %EAX,%EAX                 | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %R11D,%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDX,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %ECX,%ECX                 | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %ECX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EAX,%XMM11,%XMM11   | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVSQRTSD %XMM11,%XMM11,%XMM11   | 3     | 3  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 32-33\nVCVTSD2SS %XMM11,%XMM11,%XMM15 | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVCOMISS %XMM15,%XMM16          | 2     | 1  | 1  | 0    | 0    | 0    | 0    | 0  | 7       | 7\nJAE 2e95 <sobel_v1+0x905>      | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVCVTTSS2SI %XMM15,%R10D        | 2     | 2  | 0  | 0    | 0    | 0    | 0    | 0  | 7       | 7\nLEA 0x1(%RSI),%RSI             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RBX,%RSI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RDI),%RDI             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10B,-0x1(%RDI)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nJNE 2dc0 <sobel_v1+0x830>      | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.03 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 6% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 33.00 to 21.00 cycles (1.57x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 33.00 to 21.00 cycles (1.57x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
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
          txt = "nb instructions    : 40.50\nloop length        : 135.50\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 9.00 cycles\ninstruction queue    : 20.25 cycles\ndecoding             : 20.25 cycles\nmicro-operation queue: 20.50 cycles\nfront end            : 20.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 6.00 | 2.00 | 8.00 | 1.00 | 13.50 | 13.50 | 1.00\ncycles | 6.00 | 2.00 | 8.00 | 1.00 | 13.50 | 13.50 | 1.00\n\nCycles executing div or sqrt instructions: 32.00-33.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 20.50\nDispatch  : 13.50\nDIV/SQRT  : 32.00-33.00\nData deps.: 1.00\nOverall L1: 32.00-33.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : 6%\nstore  : 1%\nmul    : 6%\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 9%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 8%\nINT+FP\nall     : 6%\nload    : 6%\nstore   : 1%\nmul     : 6%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 33.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.24 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.03 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.03 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 6% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 33.00 to 20.50 cycles (1.61x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:113,134-141.\n",
      "It is peel/tail loop of related source loop which is unrolled by 32 (including vectorization).",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
