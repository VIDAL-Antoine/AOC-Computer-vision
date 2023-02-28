_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - convolve_baseline: 2 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision. Usual math.h functions are double precision and their name needs to be suffixed with 'f' to use their single precision version which is faster and avoids type conversion. For instance, on single precision elements, call expf instead of exp.",
          details = " - CVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - CVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 104 bytes (26 single precision FP elements).\nThe binary loop is storing 21 bytes (5 single precision FP elements).",
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
          txt = "nb instructions    : 61\nloop length        : 242\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 16.00 cycles\ninstruction queue    : 30.50 cycles\ndecoding             : 30.50 cycles\nmicro-operation queue: 32.00 cycles\nfront end            : 32.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 2.00 | 2.00 | 13.00 | 7.00 | 21.00 | 21.00 | 5.00\ncycles | 2.00 | 2.00 | 13.00 | 7.00 | 21.00 | 21.00 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 32.00\nDispatch  : 21.00\nData deps.: 0.00\nOverall L1: 32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 12%\nstore  : 8%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 7%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\nINT+FP\nall     : 8%\nload    : 8%\nstore   : 7%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.25 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.66 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1715\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV -0x70(%RBP),%RDX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x4,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x8,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x68(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x88(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RDX,%RAX,1),%RDI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x60(%RBP),%RAX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%ECX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 14b5 <convolve_baseline>   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %EAX,-0x78(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x70(%RBP),%RDX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x4,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x8,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x68(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x88(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RDX,%RAX,1),%RDI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x30(%RBP),%RAX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%ECX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 14b5 <convolve_baseline>   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %EAX,-0x74(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x78(%RBP),%EAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EAX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nMOV %EAX,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x74(%RBP),%EAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EAX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %EDX,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %EAX,%XMM0             | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCALL 1190 <.plt.sec@start+0xa0> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCVTSD2SS %XMM0,%XMM0            | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOVSS -0x7c(%RBP),%XMM0         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCOMISS -0x94(%RBP),%XMM0        | 3     | 1  | 1  | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 8\nJBE 16e1 <sobel_baseline+0x18c> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV $-0x1,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJMP 16e8 <sobel_baseline+0x193> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV -0x70(%RBP),%RDX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x4,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x8,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x68(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x90(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %CL,(%RAX)                  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADDQ $0x1,-0x68(%RBP)           | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nCMPQ $0xefc,-0x68(%RBP)         | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 162a <sobel_baseline+0xd5>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 32.00 to 4.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 2.07 cycles (15.49x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - convolve_baseline: 2 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision. Usual math.h functions are double precision and their name needs to be suffixed with 'f' to use their single precision version which is faster and avoids type conversion. For instance, on single precision elements, call expf instead of exp.",
          details = " - CVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - CVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n - CVTTSS2SI (FP32 to INT32/64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 108 bytes (27 single precision FP elements).\nThe binary loop is storing 21 bytes (5 single precision FP elements).",
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
          txt = "nb instructions    : 61\nloop length        : 242\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 16.00 cycles\ninstruction queue    : 30.50 cycles\ndecoding             : 30.50 cycles\nmicro-operation queue: 32.00 cycles\nfront end            : 32.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 4.00 | 2.00 | 13.00 | 8.00 | 20.50 | 20.50 | 5.00\ncycles | 4.00 | 2.00 | 13.00 | 8.00 | 20.50 | 20.50 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 32.00\nDispatch  : 20.50\nData deps.: 0.00\nOverall L1: 32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 12%\nstore  : 8%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 7%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\nINT+FP\nall     : 8%\nload    : 7%\nstore   : 7%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.38 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.66 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1715\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV -0x70(%RBP),%RDX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x4,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x8,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x68(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x88(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RDX,%RAX,1),%RDI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x60(%RBP),%RAX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%ECX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 14b5 <convolve_baseline>   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %EAX,-0x78(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x70(%RBP),%RDX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x4,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x8,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x68(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x88(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RDX,%RAX,1),%RDI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x30(%RBP),%RAX            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%ECX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x3,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCALL 14b5 <convolve_baseline>   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %EAX,-0x74(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV -0x78(%RBP),%EAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EAX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nMOV %EAX,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x74(%RBP),%EAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL %EAX,%EAX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %EDX,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCVTSI2SD %EAX,%XMM0             | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nCALL 1190 <.plt.sec@start+0xa0> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nCVTSD2SS %XMM0,%XMM0            | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 1\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOVSS -0x7c(%RBP),%XMM0         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCOMISS -0x94(%RBP),%XMM0        | 3     | 1  | 1  | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 8\nJBE 16e1 <sobel_baseline+0x18c> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCVTTSS2SI -0x7c(%RBP),%EAX      | 3     | 2  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 7       | 7\nMOV %EAX,%ECX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x70(%RBP),%RDX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x4,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nSUB %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x8,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x68(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RAX,%RDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV -0x90(%RBP),%RAX            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RDX,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %CL,(%RAX)                  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADDQ $0x1,-0x68(%RBP)           | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nCMPQ $0xefc,-0x68(%RBP)         | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 162a <sobel_baseline+0xd5>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 32.00 to 5.00 cycles (6.40x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 2.07 cycles (15.49x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - convolve_baseline: 2 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision. Usual math.h functions are double precision and their name needs to be suffixed with 'f' to use their single precision version which is faster and avoids type conversion. For instance, on single precision elements, call expf instead of exp.",
          details = " - CVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - CVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 106 bytes (26 single precision FP elements).\nThe binary loop is storing 21 bytes (5 single precision FP elements).",
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
          txt = "nb instructions    : 61\nloop length        : 242\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 16.00 cycles\ninstruction queue    : 30.50 cycles\ndecoding             : 30.50 cycles\nmicro-operation queue: 32.00 cycles\nfront end            : 32.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 3.00 | 2.00 | 13.00 | 7.50 | 20.75 | 20.75 | 5.00\ncycles | 3.00 | 2.00 | 13.00 | 7.50 | 20.75 | 20.75 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 32.00\nDispatch  : 20.75\nData deps.: 0.00\nOverall L1: 32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 12%\nstore  : 8%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 7%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\nINT+FP\nall     : 8%\nload    : 8%\nstore   : 7%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.31 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.66 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 2.07 cycles (15.49x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:86-93.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
