_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 9 bytes.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 62\nloop length        : 246\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 16.00 cycles\ninstruction queue    : 31.00 cycles\ndecoding             : 31.00 cycles\nmicro-operation queue: 35.00 cycles\nfront end            : 35.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 21.00 | 0.00 | 6.00 | 6.00 | 27.50 | 27.50 | 10.00\ncycles | 21.00 | 0.00 | 6.00 | 6.00 | 27.50 | 27.50 | 10.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 35.00\nDispatch  : 27.50\nDIV/SQRT  : 22.00-95.00\nOverall L1: 35.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 9%\nstore  : 12%\nmul    : 12%\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 11%\nload    : 9%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 11%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.09 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.34 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 15f0\n\nInstruction                     | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nAND $-0x20,%RSP                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0xe0(%RSP),%RSP            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOVZX 0x40(%RDI),%EBX           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL $0x3b538000,%RBX,%R13      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nTEST %R13,%R13                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 2313 <main._omp_fn.0+0xd23>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R14                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 11a0 <.plt.sec@start+0x70> | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R12                | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nCALL 1160 <.plt.sec@start+0x30> | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%RCX                | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV $-0x3dd1baf98d76b549,%RDX   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2a2fff(%R13),%RAX         | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMUL %RDX                        | 3     | 0     | 0  | 0    | 0    | 3     | 0    | 0  | 8       | 7\nMOV %RDX,%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXOR %EDX,%EDX\nSHR $0x15,%RAX                  | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nDIV %R12                        | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%RCX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 2378 <main._omp_fn.0+0xd88>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%RCX                  | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RCX,%RDX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %RDX,%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RDX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 2313 <main._omp_fn.0+0xd23> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x10(%R14),%RSI             | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL $0x2a3000,%RAX,%RDI        | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nLEA (%R14),%R13                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL $0x2a3000,%RDX,%RAX        | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nVCVTUSI2SD %RSI,%XMM5,%XMM5     | 1     | 1     | 0  | 0    | 0    | 0     | 0    | 0  | 5       | 1\nMOV %RSI,0x18(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RDI,0x10(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RAX,%R8                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nVMOVSD %XMM5,0x8(%RSP)          | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nADD $0x8,%R8                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R8,0xd0(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nNOPW (%RAX,%RAX,1)              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA -0x28(%RBP),%RSP            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nNOPW (%RAX,%RAX,1)              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x1,%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 165d <main._omp_fn.0+0x6d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 7.00 cycles (13.57x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 11.87 cycles (8.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 9 bytes.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 62\nloop length        : 246\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 16.00 cycles\ninstruction queue    : 31.00 cycles\ndecoding             : 31.00 cycles\nmicro-operation queue: 35.00 cycles\nfront end            : 35.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 21.00 | 0.00 | 6.00 | 6.00 | 27.50 | 27.50 | 10.00\ncycles | 21.00 | 0.00 | 6.00 | 6.00 | 27.50 | 27.50 | 10.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 35.00\nDispatch  : 27.50\nDIV/SQRT  : 22.00-95.00\nOverall L1: 35.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 11%\nload   : 9%\nstore  : 12%\nmul    : 12%\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 11%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 11%\nload    : 9%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 11%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.09 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.34 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 15f0\n\nInstruction                     | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                       | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nAND $-0x20,%RSP                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0xe0(%RSP),%RSP            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOVZX 0x40(%RDI),%EBX           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL $0x3b538000,%RBX,%R13      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nTEST %R13,%R13                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 2313 <main._omp_fn.0+0xd23>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R14                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 11a0 <.plt.sec@start+0x70> | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R12                | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nCALL 1160 <.plt.sec@start+0x30> | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%RCX                | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV $-0x3dd1baf98d76b549,%RDX   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2a2fff(%R13),%RAX         | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMUL %RDX                        | 3     | 0     | 0  | 0    | 0    | 3     | 0    | 0  | 8       | 7\nMOV %RDX,%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXOR %EDX,%EDX\nSHR $0x15,%RAX                  | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nDIV %R12                        | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%RCX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 2378 <main._omp_fn.0+0xd88>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%RCX                  | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RCX,%RDX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %RDX,%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RDX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 2313 <main._omp_fn.0+0xd23> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x10(%R14),%RSI             | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL $0x2a3000,%RAX,%RDI        | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nLEA (%R14),%R13                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL $0x2a3000,%RDX,%RAX        | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nVCVTUSI2SD %RSI,%XMM5,%XMM5     | 1     | 1     | 0  | 0    | 0    | 0     | 0    | 0  | 5       | 1\nMOV %RSI,0x18(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RDI,0x10(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RAX,%R8                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nVMOVSD %XMM5,0x8(%RSP)          | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nADD $0x8,%R8                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R8,0xd0(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nNOPW (%RAX,%RAX,1)              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA -0x28(%RBP),%RSP            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                        | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nNOPW (%RAX,%RAX,1)              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x1,%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 165d <main._omp_fn.0+0x6d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 7.00 cycles (13.57x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 11.87 cycles (8.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in:\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21-30,202-214,296-299,313,320-334\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:100\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
