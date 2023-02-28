_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 3 occurrences\n",
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
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: divide\nThe binary loop is loading 56 bytes (7 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 56\nloop length        : 240\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 15.00 cycles\ninstruction queue    : 28.00 cycles\ndecoding             : 28.00 cycles\nmicro-operation queue: 30.00 cycles\nfront end            : 30.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 3.00 | 0.00 | 6.00 | 6.00 | 19.00 | 19.00 | 5.00\ncycles | 3.00 | 0.00 | 6.00 | 6.00 | 19.00 | 19.00 | 5.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 30.00\nDispatch  : 19.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 30.00-32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 4%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 6%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 11%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.75 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (1.25 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1250\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x10(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R14),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10e0 <.plt.sec@start+0x10> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,0x30(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nTEST %RAX,%RAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1c59 <main+0xaf9>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x2a3000(%R14),%RDX         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R14),%RAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOP                             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x8(%R14),%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0xee0,%ECX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EAX,%EAX\nLEA (%R14),%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x28(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,%R13                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%R9),%R12                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R14                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJMP 175d <main+0x5fd>           | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\nLEA (%RBX),%R14                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV 0x20(%RSP),%RBX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nOR %RAX,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB 0x28(%RSP),%R9              | 1     | 0  | 0  | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x3e7,%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 1bf3 <main+0xa93>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,0xb0(%RSP,%RBX,8)       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x1(%RBX),%R8               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,0x20(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x30(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1439(%RIP),%RDX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %R9,%XMM7,%XMM7      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x38(%RSP),%R13             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %R8,%XMM8,%XMM8      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOV 0x33ff(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R13,%RCX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVDIVSD %XMM7,%XMM8,%XMM0        | 3     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVZEROUPPER                      | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nCALL 1140 <.plt.sec@start+0x70> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%R11                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x1,%R11                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0x38(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCALL 1130 <.plt.sec@start+0x60> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 1250 <main+0xf0>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
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
          txt = "Your loop is probably not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 4.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 32.00 to 30.00 cycles (1.07x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 32.00 to 30.00 cycles (1.07x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 3 occurrences\n",
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
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: divide\nThe binary loop is loading 56 bytes (7 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 56\nloop length        : 240\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 15.00 cycles\ninstruction queue    : 28.00 cycles\ndecoding             : 28.00 cycles\nmicro-operation queue: 30.00 cycles\nfront end            : 30.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5    | P6\n---------------------------------------------------------\nuops   | 3.00 | 0.00 | 6.00 | 6.00 | 19.00 | 19.00 | 5.00\ncycles | 3.00 | 0.00 | 6.00 | 6.00 | 19.00 | 19.00 | 5.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 30.00\nDispatch  : 19.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 30.00-32.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 4%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 6%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 11%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.75 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (1.25 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1250\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x10(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R14),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 10e0 <.plt.sec@start+0x10> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV %RAX,0x30(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nTEST %RAX,%RAX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1c59 <main+0xaf9>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x2a3000(%R14),%RDX         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R14),%RAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOP                             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x8(%R14),%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0xee0,%ECX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EAX,%EAX\nLEA (%R14),%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x28(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,%R13                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%R9),%R12                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%R14                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJMP 175d <main+0x5fd>           | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\nLEA (%RBX),%R14                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV 0x20(%RSP),%RBX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nOR %RAX,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB 0x28(%RSP),%R9              | 1     | 0  | 0  | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x3e7,%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 1bf3 <main+0xa93>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,0xb0(%RSP,%RBX,8)       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x1(%RBX),%R8               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,0x20(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x30(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1439(%RIP),%RDX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %R9,%XMM7,%XMM7      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x38(%RSP),%R13             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %R8,%XMM8,%XMM8      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nMOV 0x33ff(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R13,%RCX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVDIVSD %XMM7,%XMM8,%XMM0        | 3     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVZEROUPPER                      | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nCALL 1140 <.plt.sec@start+0x70> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%R11                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x1,%R11                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x2a3000,%EDX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15),%RDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0x38(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCALL 1130 <.plt.sec@start+0x60> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 1250 <main+0xf0>            | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
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
          txt = "Your loop is probably not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.00 to 4.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 32.00 to 30.00 cycles (1.07x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 32.00 to 30.00 cycles (1.07x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in:\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21-30,164-176,249,320-332\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:100,297\n\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=5\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 5 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 5,
  },
}
