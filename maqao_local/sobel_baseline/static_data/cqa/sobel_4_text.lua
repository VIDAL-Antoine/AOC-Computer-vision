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
          workaround = "Recompile with march=znver1.\nCQA target is AMD_fam17h_mod18h (1st generation Athlon and Ryzen 3 low-power APUs based on the Zen microarchitecture) but specialization flags are -march=x86-64",
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - CVTSI2SD: 1 occurrences\n - JMP: 1 occurrences\n",
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
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 64\nnb uops            : 81\nloop length        : 256\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 13.50 cycles\nfront end            : 13.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0  | ALU1  | ALU2  | ALU3  | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------------\nuops   | 10.25 | 10.25 | 10.25 | 10.25 | 11.00 | 11.00 | 1.17 | 0.83 | 2.00 | 2.00\ncycles | 10.25 | 10.25 | 10.25 | 10.25 | 11.00 | 11.00 | 1.17 | 0.83 | 2.00 | 2.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 7.50\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.50\nDispatch  : 11.00\nData deps.: 0.00\nOverall L1: 13.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 8%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 6%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 20%\nload   : 25%\nstore  : 16%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 15%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 18%\nINT+FP\nall     : 19%\nload    : 16%\nstore   : 15%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.50 cycles. At this rate:\n - 24% of peak load performance is reached (7.70 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (1.56 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.50 to 11.00 cycles (1.23x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 173b\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2 | FP3  | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nMOV -0x70(%RBP),%RDX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nMOV %RDX,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nSAL $0x4,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSUB %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSAL $0x8,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x68(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RAX,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV -0x88(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nLEA (%RDX,%RAX,1),%RDI\nLEA -0x60(%RBP),%RAX\nMOV $0x3,%ECX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV $0x3,%EDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nCALL 14cd <convolve_baseline>   | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 0       | 1\nMOV %EAX,-0x78(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 4       | 1\nMOV -0x70(%RBP),%RDX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nMOV %RDX,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nSAL $0x4,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSUB %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSAL $0x8,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x68(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RAX,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV -0x88(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nLEA (%RDX,%RAX,1),%RDI\nLEA -0x30(%RBP),%RAX\nMOV $0x3,%ECX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV $0x3,%EDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nCALL 14cd <convolve_baseline>   | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 0       | 1\nMOV %EAX,-0x74(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 4       | 1\nMOV -0x78(%RBP),%EAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nIMUL %EAX,%EAX                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 3       | 1\nMOV %EAX,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x74(%RBP),%EAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nIMUL %EAX,%EAX                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 3       | 1\nADD %EDX,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nPXOR %XMM1,%XMM1                | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nCVTSI2SD %EAX,%XMM1             | 2     | 0    | 0    | 0    | 0    | 0    | 0    | 0.33 | 0.33 | 0   | 1.33 | 7       | 1\nMOVQ %XMM1,%RAX                 | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1   | 0    | 1       | 1\nMOVQ %RAX,%XMM0                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 2       | 1\nCALL 1190 <.plt.sec@start+0xa0> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 0       | 1\nCVTSD2SS %XMM0,%XMM0            | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 1    | 4       | 1\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1   | 0    | 1       | 1\nMOVSS -0x7c(%RBP),%XMM0         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 1       | 0.50\nCOMISS -0x94(%RBP),%XMM0        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0.50 | 0.50 | 0   | 0    | 1       | 0.50\nJBE 1707 <sobel_baseline+0x19a> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.50\nMOV $-0x1,%ECX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nJMP 170e <sobel_baseline+0x1a1> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 2\nMOV -0x70(%RBP),%RDX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nMOV %RDX,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nSAL $0x4,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSUB %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSAL $0x8,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x68(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RAX,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV -0x90(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %CL,(%RAX)                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 4       | 1\nADDQ $0x1,-0x68(%RBP)           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 1       | 1\nCMPQ $0xefc,-0x68(%RBP)         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 1       | 0.50\nJBE 1642 <sobel_baseline+0xd5>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	(%RDX,%RAX,1),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	-0x60(%RBP),%RAX] is unknown\n - The number of fused uops of the instruction [LEA	-0x30(%RBP),%RAX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 48.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 13.50 to 2.00 cycles (6.75x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 13.50 to 1.75 cycles (7.71x speedup).",
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
          workaround = "Recompile with march=znver1.\nCQA target is AMD_fam17h_mod18h (1st generation Athlon and Ryzen 3 low-power APUs based on the Zen microarchitecture) but specialization flags are -march=x86-64",
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - CVTSI2SD: 1 occurrences\n - CVTTSS2SI: 1 occurrences\n",
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
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 64\nnb uops            : 77\nloop length        : 256\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 12.83 cycles\nfront end            : 12.83 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0  | ALU1  | ALU2  | ALU3  | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------------\nuops   | 10.00 | 10.00 | 10.00 | 10.00 | 11.50 | 11.50 | 1.17 | 0.83 | 3.00 | 3.00\ncycles | 10.00 | 10.00 | 10.00 | 10.00 | 11.50 | 11.50 | 1.17 | 0.83 | 3.00 | 3.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 8.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.83\nDispatch  : 11.50\nData deps.: 0.00\nOverall L1: 12.83\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 8%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 5%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 20%\nload   : 25%\nstore  : 16%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 15%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 16%\nINT+FP\nall     : 19%\nload    : 15%\nstore   : 15%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 20%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.83 cycles. At this rate:\n - 26% of peak load performance is reached (8.42 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 10% of peak store performance is reached (1.64 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.83 to 11.50 cycles (1.12x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 173b\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2 | FP3  | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nMOV -0x70(%RBP),%RDX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nMOV %RDX,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nSAL $0x4,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSUB %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSAL $0x8,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x68(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RAX,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV -0x88(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nLEA (%RDX,%RAX,1),%RDI\nLEA -0x60(%RBP),%RAX\nMOV $0x3,%ECX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV $0x3,%EDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nCALL 14cd <convolve_baseline>   | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 0       | 1\nMOV %EAX,-0x78(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 4       | 1\nMOV -0x70(%RBP),%RDX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nMOV %RDX,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nSAL $0x4,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSUB %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSAL $0x8,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x68(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RAX,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV -0x88(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nLEA (%RDX,%RAX,1),%RDI\nLEA -0x30(%RBP),%RAX\nMOV $0x3,%ECX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV $0x3,%EDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RSI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nCALL 14cd <convolve_baseline>   | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 0       | 1\nMOV %EAX,-0x74(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 4       | 1\nMOV -0x78(%RBP),%EAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nIMUL %EAX,%EAX                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 3       | 1\nMOV %EAX,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x74(%RBP),%EAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nIMUL %EAX,%EAX                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 3       | 1\nADD %EDX,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nPXOR %XMM1,%XMM1                | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nCVTSI2SD %EAX,%XMM1             | 2     | 0    | 0    | 0    | 0    | 0    | 0    | 0.33 | 0.33 | 0   | 1.33 | 7       | 1\nMOVQ %XMM1,%RAX                 | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1   | 0    | 1       | 1\nMOVQ %RAX,%XMM0                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 2       | 1\nCALL 1190 <.plt.sec@start+0xa0> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 0       | 1\nCVTSD2SS %XMM0,%XMM0            | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 1    | 4       | 1\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1   | 0    | 1       | 1\nMOVSS -0x7c(%RBP),%XMM0         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 1       | 0.50\nCOMISS -0x94(%RBP),%XMM0        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0.50 | 0.50 | 0   | 0    | 1       | 0.50\nJBE 1707 <sobel_baseline+0x19a> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.50\nCVTTSS2SI -0x7c(%RBP),%EAX      | 2     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1   | 1    | 4       | 1\nMOV %EAX,%ECX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x70(%RBP),%RDX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nMOV %RDX,%RAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nSAL $0x4,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSUB %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nSAL $0x8,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %RAX,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0    | 0       | 0.25\nMOV -0x68(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RAX,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV -0x90(%RBP),%RAX            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 3       | 0.50\nADD %RDX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.25\nMOV %CL,(%RAX)                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 4       | 1\nADDQ $0x1,-0x68(%RBP)           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 1       | 1\nCMPQ $0xefc,-0x68(%RBP)         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0    | 0   | 0    | 1       | 0.50\nJBE 1642 <sobel_baseline+0xd5>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0    | 0    | 0   | 0    | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	(%RDX,%RAX,1),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	-0x60(%RBP),%RAX] is unknown\n - The number of fused uops of the instruction [LEA	-0x30(%RBP),%RAX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 48.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 12.83 to 3.00 cycles (4.28x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 12.83 to 1.87 cycles (6.84x speedup).",
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
          workaround = "Recompile with march=znver1.\nCQA target is AMD_fam17h_mod18h (1st generation Athlon and Ryzen 3 low-power APUs based on the Zen microarchitecture) but specialization flags are -march=x86-64",
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - CVTSI2SD: 1 occurrences\n - JMP: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
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
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 64\nnb uops            : 79\nloop length        : 256\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 13.17 cycles\nfront end            : 13.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0  | ALU1  | ALU2  | ALU3  | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------------\nuops   | 10.13 | 10.13 | 10.13 | 10.13 | 11.25 | 11.25 | 1.17 | 0.83 | 2.50 | 2.50\ncycles | 10.13 | 10.13 | 10.13 | 10.13 | 11.25 | 11.25 | 1.17 | 0.83 | 2.50 | 2.50\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.17\nDispatch  : 11.25\nData deps.: 0.00\nOverall L1: 13.17\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 8%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 6%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 20%\nload   : 25%\nstore  : 16%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 15%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 17%\nINT+FP\nall     : 19%\nload    : 16%\nstore   : 15%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.17 cycles. At this rate:\n - 25% of peak load performance is reached (8.06 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (1.60 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 48.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 13.17 to 1.81 cycles (7.26x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:86-93.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 2,
  },
}
