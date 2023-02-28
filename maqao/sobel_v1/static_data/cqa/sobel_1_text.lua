_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - sobel_v1: 1 occurrences\n - unknown: 3 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: divide\nThe binary loop is loading 100 bytes (12 double precision FP elements).\nThe binary loop is storing 24 bytes (3 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 49\nloop length        : 229\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 2\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 15.00 cycles\ninstruction queue    : 24.50 cycles\ndecoding             : 24.50 cycles\nmicro-operation queue: 27.00 cycles\nfront end            : 27.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 3.00 | 0.00 | 5.00 | 5.00 | 17.00 | 17.00 | 3.00\ncycles | 3.00 | 0.00 | 5.00 | 5.00 | 17.00 | 17.00 | 3.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 27.00\nDispatch  : 17.00\nDIV/SQRT  : 12.00-32.00\nData deps.: 1.00\nOverall L1: 27.00-32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 7%\nFP\nall     : 50%\nload    : 66%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 12%\nload    : 28%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 7%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 29%\nload    : 35%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 14%\nload    : 22%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 11%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.13 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.75 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1230\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nLEA (%R14),%RCX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10e0 <.plt.sec@start+0x10> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nTEST %RAX,%RAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R8                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVAPD 0x2ecd(%RIP),%YMM13     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPD 0x2ee5(%RIP),%YMM12     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nJE 175f <main+0x5ff>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (%R15),%RAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2a3000(%R15),%RDX         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPL (%RAX,%RAX,1)              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8,0x10(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%R13),%RSI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS 0x2d09(%RIP),%XMM0       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RDX,0x18(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVZEROUPPER                      | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nCALL 2590 <sobel_v1>            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nMOV 0x10(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x20,%R9                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nOR %RAX,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB 0x18(%RSP),%R9              | 1     | 0  | 0  | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x3e7,%R12                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 170d <main+0x5ad>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,0x30(%RSP,%R12,8)       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x1(%R12),%R12              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %R8,%XMM13,%XMM13    | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA (%RBX),%RCX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %R9,%XMM12,%XMM12    | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA 0x2915(%RIP),%RDX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x48f6(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBX),%RBX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVDIVSD %XMM12,%XMM13,%XMM0      | 3     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nCALL 1140 <.plt.sec@start+0x70> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x8(%RSP),%RCX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R13),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1130 <.plt.sec@start+0x60> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 1230 <main+0xd0>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.03 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 4.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 32.00 to 27.00 cycles (1.19x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 32.00 to 27.00 cycles (1.19x speedup).",
        },
      },
    },
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - sobel_v1: 1 occurrences\n - unknown: 3 occurrences\n",
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: divide\nThe binary loop is loading 100 bytes (12 double precision FP elements).\nThe binary loop is storing 16 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 47\nloop length        : 219\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 2\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 23.50 cycles\ndecoding             : 23.50 cycles\nmicro-operation queue: 26.00 cycles\nfront end            : 26.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 3.00 | 0.00 | 4.50 | 4.50 | 16.50 | 16.50 | 2.00\ncycles | 3.00 | 0.00 | 4.50 | 4.50 | 16.50 | 16.50 | 2.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.00\nDispatch  : 16.50\nDIV/SQRT  : 12.00-32.00\nData deps.: 1.00\nOverall L1: 26.00-32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 5%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 7%\nFP\nall     : 50%\nload    : 66%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 12%\nload    : 28%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 7%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 29%\nload    : 35%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 14%\nload    : 22%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 11%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.13 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.50 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1230\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nLEA (%R14),%RCX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10e0 <.plt.sec@start+0x10> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nTEST %RAX,%RAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R8                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVAPD 0x2ecd(%RIP),%YMM13     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPD 0x2ee5(%RIP),%YMM12     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nJE 175f <main+0x5ff>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (%R15),%RAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2a3000(%R15),%RDX         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPL (%RAX,%RAX,1)              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8,0x10(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%R13),%RSI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS 0x2d09(%RIP),%XMM0       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RDX,0x18(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVZEROUPPER                      | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nCALL 2590 <sobel_v1>            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nMOV 0x10(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x20,%R9                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nOR %RAX,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB 0x18(%RSP),%R9              | 1     | 0  | 0  | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x3e7,%R12                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 170d <main+0x5ad>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVCVTUSI2SD %R8,%XMM13,%XMM13    | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA (%RBX),%RCX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %R9,%XMM12,%XMM12    | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA 0x2915(%RIP),%RDX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x48f6(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBX),%RBX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVDIVSD %XMM12,%XMM13,%XMM0      | 3     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nCALL 1140 <.plt.sec@start+0x70> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x8(%RSP),%RCX              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R13),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1130 <.plt.sec@start+0x60> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 1230 <main+0xd0>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.03 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 4.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 32.00 to 26.00 cycles (1.23x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 32.00 to 26.00 cycles (1.23x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - sobel_v1: 1 occurrences\n - unknown: 3 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: divide\nThe binary loop is loading 100 bytes (12 double precision FP elements).\nThe binary loop is storing 20 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 48\nloop length        : 224\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 2\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.50 cycles\ninstruction queue    : 24.00 cycles\ndecoding             : 24.00 cycles\nmicro-operation queue: 26.50 cycles\nfront end            : 26.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 3.00 | 0.00 | 4.75 | 4.75 | 16.75 | 16.75 | 2.50\ncycles | 3.00 | 0.00 | 4.75 | 4.75 | 16.75 | 16.75 | 2.50\n\nCycles executing div or sqrt instructions: 12.00-32.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.50\nDispatch  : 16.75\nDIV/SQRT  : 12.00-32.00\nData deps.: 1.00\nOverall L1: 26.50-32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 7%\nFP\nall     : 50%\nload    : 66%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 12%\nload    : 28%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 7%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 29%\nload    : 35%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 14%\nload    : 22%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 11%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.13 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.63 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.03 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 4.00 cycles (8.00x speedup).",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 32.00 to 26.50 cycles (1.21x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in:\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21-30,249,309,320-332\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:100,297\n\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
