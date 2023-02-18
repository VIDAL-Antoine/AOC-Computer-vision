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
          txt = "The binary function is composed of 1 FP arithmetical operations:\n - 1: addition or subtraction\nThe binary function is loading 72 bytes (9 double precision FP elements).\nThe binary function is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 66\nnb uops            : 86\nloop length        : 277\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 14.33 cycles\nfront end            : 14.33 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 9.50 | 9.50 | 9.50 | 9.50 | 6.00 | 6.00 | 0.00 | 0.00 | 2.50 | 2.50\ncycles | 9.50 | 9.50 | 9.50 | 9.50 | 6.00 | 6.00 | 0.00 | 0.00 | 2.50 | 2.50\n\nCycles executing div or sqrt instructions: 50.00\nCycles loading/storing data              : 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.33\nDispatch  : 9.50\nDIV/SQRT  : 50.00\nOverall L1: 50.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 62%\nload    : 100%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 17%\nload    : 60%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 14%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 23%\nload   : 25%\nstore  : 25%\nmul    : 25%\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 40%\nload    : 50%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 28%\nload    : 40%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 50.00 cycles. At this rate:\n - 4% of peak load performance is reached (1.44 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (0.64 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2a40\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R14                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nMOV %RDI,%R15                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nPUSH %R13                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R12                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %RBP                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %RBX                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nSUB $0x498,%RSP                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1150 <.plt.sec@start+0x50> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOVSXD %EAX,%RBP                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1130 <.plt.sec@start+0x30> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nXOR %EDX,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOVSXD %EAX,%RBX                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x168,%EAX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nDIV %RBP                        | 2     | 0    | 0    | 2    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 41      | 50\nCMP %RDX,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJB 38ea <main._omp_fn.0+0xeaa>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nIMUL %RAX,%RBX                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nADD %RDX,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nADD %RBX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCMP %RAX,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJAE 388a <main._omp_fn.0+0xe4a> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x18(%R15),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x20(%R15),%R13             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nIMUL $0x2a3000,%RAX,%RSI        | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nIMUL $0x2a3000,%RBX,%RBX        | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nMOV %RSI,0x488(%RSP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RCX,0x480(%RSP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %R13,%R13                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 389c <main._omp_fn.0+0xe5c>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM4,%XMM4,%XMM4        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %R13,%XMM4,%XMM0      | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVMOVSD %XMM0,0x478(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nVMOVAPD 0x2629(%RIP),%XMM13     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R15,%RBP                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nLEA 0x2527(%RIP),%R14\nVMOVAPD 0x2627(%RIP),%XMM12     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nVMOVAPD 0x262f(%RIP),%XMM10     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x10(%R15),%RDI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nADD %RBX,%RDI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0x2a3000(%RDI),%R12\nMOV %R12,%R15                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nADD $0x498,%RSP                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nPOP %RBX                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %RBP                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R12                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R13                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R14                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R15                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nRET                             | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %R13,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R13,%R8                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM1,%XMM1,%XMM1        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%RDI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %R8,%RDI                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %RDI,%XMM1,%XMM2      | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM2,%XMM2,%XMM3        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nVMOVSD %XMM3,0x478(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nJMP 2acf <main._omp_fn.0+0x8f>  | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nINC %RAX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXOR %EDX,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nJMP 2a7b <main._omp_fn.0+0x3b>  | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXCHG %AX,%AX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [LEA	0x2527(%RIP),%R14] is unknown\n - The number of fused uops of the instruction [LEA	0x2a3000(%RDI),%R12] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.02 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 50.00 to 3.17 cycles (15.79x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 28% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 50.00 to 25.00 cycles (2.00x speedup).",
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
          txt = "The binary function is composed of 1 FP arithmetical operations:\n - 1: addition or subtraction\nThe binary function is loading 72 bytes (9 double precision FP elements).\nThe binary function is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 66\nnb uops            : 86\nloop length        : 277\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 14.33 cycles\nfront end            : 14.33 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 9.50 | 9.50 | 9.50 | 9.50 | 6.00 | 6.00 | 0.00 | 0.00 | 2.50 | 2.50\ncycles | 9.50 | 9.50 | 9.50 | 9.50 | 6.00 | 6.00 | 0.00 | 0.00 | 2.50 | 2.50\n\nCycles executing div or sqrt instructions: 50.00\nCycles loading/storing data              : 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.33\nDispatch  : 9.50\nDIV/SQRT  : 50.00\nOverall L1: 50.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 62%\nload    : 100%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 17%\nload    : 60%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 14%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 23%\nload   : 25%\nstore  : 25%\nmul    : 25%\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 40%\nload    : 50%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 28%\nload    : 40%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 50.00 cycles. At this rate:\n - 4% of peak load performance is reached (1.44 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (0.64 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2a40\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R14                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nMOV %RDI,%R15                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nPUSH %R13                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %R12                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %RBP                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nPUSH %RBX                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 1\nSUB $0x498,%RSP                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1150 <.plt.sec@start+0x50> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOVSXD %EAX,%RBP                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCALL 1130 <.plt.sec@start+0x30> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nXOR %EDX,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOVSXD %EAX,%RBX                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x168,%EAX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nDIV %RBP                        | 2     | 0    | 0    | 2    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 41      | 50\nCMP %RDX,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJB 38ea <main._omp_fn.0+0xeaa>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nIMUL %RAX,%RBX                  | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nADD %RDX,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nADD %RBX,%RAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nCMP %RAX,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJAE 388a <main._omp_fn.0+0xe4a> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x18(%R15),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x20(%R15),%R13             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nIMUL $0x2a3000,%RAX,%RSI        | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nIMUL $0x2a3000,%RBX,%RBX        | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 3       | 1\nMOV %RSI,0x488(%RSP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RCX,0x480(%RSP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %R13,%R13                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 389c <main._omp_fn.0+0xe5c>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM4,%XMM4,%XMM4        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %R13,%XMM4,%XMM0      | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVMOVSD %XMM0,0x478(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nVMOVAPD 0x2629(%RIP),%XMM13     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R15,%RBP                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nLEA 0x2527(%RIP),%R14\nVMOVAPD 0x2627(%RIP),%XMM12     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nVMOVAPD 0x262f(%RIP),%XMM10     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x10(%R15),%RDI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nADD %RBX,%RDI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0x2a3000(%RDI),%R12\nMOV %R12,%R15                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nADD $0x498,%RSP                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nPOP %RBX                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %RBP                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R12                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R13                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R14                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nPOP %R15                        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nRET                             | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %R13,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R13,%R8                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM1,%XMM1,%XMM1        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%RDI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %R8,%RDI                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %RDI,%XMM1,%XMM2      | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM2,%XMM2,%XMM3        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nVMOVSD %XMM3,0x478(%RSP)        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1    | 0    | 1       | 1\nJMP 2acf <main._omp_fn.0+0x8f>  | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nINC %RAX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXOR %EDX,%EDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nJMP 2a7b <main._omp_fn.0+0x3b>  | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXCHG %AX,%AX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [LEA	0x2527(%RIP),%R14] is unknown\n - The number of fused uops of the instruction [LEA	0x2a3000(%RDI),%R12] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.02 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 50.00 to 3.17 cycles (15.79x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 28% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 50.00 to 25.00 cycles (2.00x speedup).",
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
      "The function is defined in:\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:105\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:21-28,302-305,321,328-338\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
