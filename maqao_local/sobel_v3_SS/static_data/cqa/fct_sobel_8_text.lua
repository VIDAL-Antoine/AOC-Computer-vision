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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - JMP: 2 occurrences\n - VCVTSI2SD: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 1 FP arithmetical operations:\n - 1: addition or subtraction\nThe binary function is loading 24 bytes (3 double precision FP elements).\nThe binary function is storing 48 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 64\nnb uops            : 86\nloop length        : 246\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 14.33 cycles\nfront end            : 14.33 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 9.75 | 9.75 | 9.75 | 9.75 | 5.50 | 5.50 | 0.00 | 0.00 | 2.50 | 2.50\ncycles | 9.75 | 9.75 | 9.75 | 9.75 | 5.50 | 5.50 | 0.00 | 0.00 | 2.50 | 2.50\n\nCycles executing div or sqrt instructions: 50.00\nCycles loading/storing data              : 6.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.33\nDispatch  : 9.75\nDIV/SQRT  : 50.00\nOverall L1: 50.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 40%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 5%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 10%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 23%\nload   : 25%\nstore  : 25%\nmul    : 25%\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 35%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 50.00 cycles. At this rate:\n - 1% of peak load performance is reached (0.48 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (0.96 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1570\n\nInstruction                      | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R14                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R13                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R12                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nMOV %RDI,%R13                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nPUSH %RBP                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %RBX                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nSUB $0x3e8,%RSP                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1150 <.plt.sec@start+0x50>  | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOVSXD %EAX,%RBX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1130 <.plt.sec@start+0x30>  | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOVSXD %EAX,%RCX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x168,%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nDIV %RBX                         | 2     | 0    | 0    | 2    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 41      | 50\nCMP %RDX,%RCX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJB 295b <main._omp_fn.0+0x13eb>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nIMUL %RAX,%RCX                   | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nADD %RCX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nADD %RDX,%RAX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCMP %RAX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJAE 2949 <main._omp_fn.0+0x13d9> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x20(%R13),%RDI              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nIMUL $0x2a3000,%RDX,%RSI         | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nIMUL $0x2a3000,%RAX,%RBP         | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nMOV %RSI,0x18(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RDI,0x50(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RBP,0x120(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %RDI,%RDI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 29a4 <main._omp_fn.0+0x1434>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM5,%XMM5,%XMM5         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RSI,%R9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %RDI,%XMM5,%XMM0       | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVMOVSD %XMM0,0x58(%RSP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nMOV 0x18(%R13),%R10              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R13,%RBP                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nADD %R9,%R10                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nADD 0x10(%R13),%R9               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %R10,0x10(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R9,%R12                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nADD $0x3e8,%RSP                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nPOP %RBX                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %RBP                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R12                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R13                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R14                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R15                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nRET                              | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nINC %RAX                         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nJMP 15ab <main._omp_fn.0+0x3b>   | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %RDI,%R8                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nAND $0x1,%EDI                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVXORPD %XMM1,%XMM1,%XMM1         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RSI,%R9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%R8                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %RDI,%R8                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %R8,%XMM1,%XMM2        | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM2,%XMM2,%XMM3         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nVMOVSD %XMM3,0x58(%RSP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nJMP 15fd <main._omp_fn.0+0x8d>   | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nNOPL (%RAX,%RAX,1)               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.02 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 50.00 to 2.67 cycles (18.75x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 50.00 to 25.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 50.00 to 14.33 cycles (3.49x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 50.00 to 14.17 cycles (3.53x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - JMP: 2 occurrences\n - VCVTSI2SD: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 1 FP arithmetical operations:\n - 1: addition or subtraction\nThe binary function is loading 24 bytes (3 double precision FP elements).\nThe binary function is storing 48 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 64\nnb uops            : 86\nloop length        : 246\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 14.33 cycles\nfront end            : 14.33 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 9.75 | 9.75 | 9.75 | 9.75 | 5.50 | 5.50 | 0.00 | 0.00 | 2.50 | 2.50\ncycles | 9.75 | 9.75 | 9.75 | 9.75 | 5.50 | 5.50 | 0.00 | 0.00 | 2.50 | 2.50\n\nCycles executing div or sqrt instructions: 50.00\nCycles loading/storing data              : 6.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.33\nDispatch  : 9.75\nDIV/SQRT  : 50.00\nOverall L1: 50.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 40%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 5%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 10%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 23%\nload   : 25%\nstore  : 25%\nmul    : 25%\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 35%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 50.00 cycles. At this rate:\n - 1% of peak load performance is reached (0.48 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (0.96 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1570\n\nInstruction                      | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R14                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R13                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R12                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nMOV %RDI,%R13                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nPUSH %RBP                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %RBX                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nSUB $0x3e8,%RSP                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1150 <.plt.sec@start+0x50>  | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOVSXD %EAX,%RBX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1130 <.plt.sec@start+0x30>  | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOVSXD %EAX,%RCX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x168,%EAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nDIV %RBX                         | 2     | 0    | 0    | 2    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 41      | 50\nCMP %RDX,%RCX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJB 295b <main._omp_fn.0+0x13eb>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nIMUL %RAX,%RCX                   | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nADD %RCX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nADD %RDX,%RAX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCMP %RAX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJAE 2949 <main._omp_fn.0+0x13d9> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x20(%R13),%RDI              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nIMUL $0x2a3000,%RDX,%RSI         | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nIMUL $0x2a3000,%RAX,%RBP         | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nMOV %RSI,0x18(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RDI,0x50(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RBP,0x120(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %RDI,%RDI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 29a4 <main._omp_fn.0+0x1434>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM5,%XMM5,%XMM5         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RSI,%R9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %RDI,%XMM5,%XMM0       | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVMOVSD %XMM0,0x58(%RSP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nMOV 0x18(%R13),%R10              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R13,%RBP                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nADD %R9,%R10                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nADD 0x10(%R13),%R9               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %R10,0x10(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R9,%R12                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nADD $0x3e8,%RSP                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nPOP %RBX                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %RBP                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R12                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R13                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R14                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R15                         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nRET                              | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nINC %RAX                         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nJMP 15ab <main._omp_fn.0+0x3b>   | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %RDI,%R8                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nAND $0x1,%EDI                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVXORPD %XMM1,%XMM1,%XMM1         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RSI,%R9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%R8                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %RDI,%R8                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %R8,%XMM1,%XMM2        | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM2,%XMM2,%XMM3         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nVMOVSD %XMM3,0x58(%RSP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nJMP 15fd <main._omp_fn.0+0x8d>   | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nNOPL (%RAX,%RAX,1)               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.02 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 50.00 to 2.67 cycles (18.75x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 50.00 to 25.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 50.00 to 14.33 cycles (3.49x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 50.00 to 14.17 cycles (3.53x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in:\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:105\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:21-28,202-214,263,287-297\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
