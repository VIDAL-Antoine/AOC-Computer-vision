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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - JMP: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 16 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 36\nnb uops            : 54\nloop length        : 113\nused x86 registers : 12\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.25 | 6.25 | 6.25 | 6.25 | 2.00 | 2.00 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 6.25 | 6.25 | 6.25 | 6.25 | 2.00 | 2.00 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 25.00\nCycles loading/storing data              : 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 6.25\nDIV/SQRT  : 25.00\nOverall L1: 25.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 16%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 20%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 25.00 cycles. At this rate:\n - 2% of peak load performance is reached (0.64 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2350\n\nInstruction                        | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R13                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R12                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %RBP                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %RBX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nMOV %RDI,%RBP                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB $0x8,%RSP                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCALL 1150 <.plt.sec@start+0x50>    | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 0       | 1\nMOV %EAX,%EBX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nCALL 1130 <.plt.sec@start+0x30>    | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 0       | 1\nXOR %EDX,%EDX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOV %EAX,%ECX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOV $0x2cd,%EAX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nDIV %EBX                           | 2     | 0    | 0    | 2    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 25      | 25\nCMP %EDX,%ECX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJB 2476 <sobel_v3._omp_fn.0+0x126> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nIMUL %EAX,%ECX                     | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 3       | 1\nLEA (%RCX,%RDX,1),%R11D\nLEA (%RAX,%R11,1),%EBX\nCMP %EBX,%R11D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJAE 2445 <sobel_v3._omp_fn.0+0xf5> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nIMUL $0xf00,%R11D,%R9D             | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 3       | 1\nMOV 0x8(%RBP),%R10                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOV (%RBP),%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nADD $0xefd,%R9D                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0x8,%RSP                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nPOP %RBX                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %RBP                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R12                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R13                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nRET                                | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nJMP 2445 <sobel_v3._omp_fn.0+0xf5> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\nINC %EAX                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nXOR %EDX,%EDX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nJMP 2380 <sobel_v3._omp_fn.0+0x30> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\nNOP                                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [LEA	(%RCX,%RDX,1),%R11D] is unknown\n - The number of fused uops of the instruction [LEA	(%RAX,%R11,1),%EBX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 25.00 to 6.25 cycles (4.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 9.00 cycles (2.78x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 25.00 to 8.83 cycles (2.83x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - JMP: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 16 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 36\nnb uops            : 54\nloop length        : 113\nused x86 registers : 12\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------\nuops   | 6.25 | 6.25 | 6.25 | 6.25 | 2.00 | 2.00 | 0.00 | 0.00 | 0.00 | 0.00\ncycles | 6.25 | 6.25 | 6.25 | 6.25 | 2.00 | 2.00 | 0.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 25.00\nCycles loading/storing data              : 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 6.25\nDIV/SQRT  : 25.00\nOverall L1: 25.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 16%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 20%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 25.00 cycles. At this rate:\n - 2% of peak load performance is reached (0.64 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2350\n\nInstruction                        | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R13                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %R12                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %RBP                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nPUSH %RBX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nMOV %RDI,%RBP                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB $0x8,%RSP                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nCALL 1150 <.plt.sec@start+0x50>    | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 0       | 1\nMOV %EAX,%EBX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nCALL 1130 <.plt.sec@start+0x30>    | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 0       | 1\nXOR %EDX,%EDX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOV %EAX,%ECX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOV $0x2cd,%EAX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nDIV %EBX                           | 2     | 0    | 0    | 2    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 25      | 25\nCMP %EDX,%ECX                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJB 2476 <sobel_v3._omp_fn.0+0x126> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nIMUL %EAX,%ECX                     | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 3       | 1\nLEA (%RCX,%RDX,1),%R11D\nLEA (%RAX,%R11,1),%EBX\nCMP %EBX,%R11D                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nJAE 2445 <sobel_v3._omp_fn.0+0xf5> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nIMUL $0xf00,%R11D,%R9D             | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 3       | 1\nMOV 0x8(%RBP),%R10                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOV (%RBP),%RDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nADD $0xefd,%R9D                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nADD $0x8,%RSP                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nPOP %RBX                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %RBP                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R12                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nPOP %R13                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nRET                                | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nJMP 2445 <sobel_v3._omp_fn.0+0xf5> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\nINC %EAX                           | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nXOR %EDX,%EDX                      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nJMP 2380 <sobel_v3._omp_fn.0+0x30> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\nNOP                                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [LEA	(%RCX,%RDX,1),%R11D] is unknown\n - The number of fused uops of the instruction [LEA	(%RAX,%R11,1),%EBX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 25.00 to 6.25 cycles (4.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 9.00 cycles (2.78x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 25.00 to 8.83 cycles (2.83x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:201-215.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
