_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - JMP: 2 occurrences\n - RDTSC: 2 occurrences\n - VCVTSI2SD: 2 occurrences\n",
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
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 2 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: divide\nThe binary loop is loading 120 bytes (15 double precision FP elements).\nThe binary loop is storing 88 bytes (11 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nnb uops            : 144\nloop length        : 292\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 14\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 24.00 cycles\nfront end            : 24.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n------------------------------------------------------------------------------\nuops   | 6.75 | 6.75 | 6.75 | 6.75 | 12.00 | 12.00 | 0.00 | 0.00 | 1.00 | 3.00\ncycles | 6.75 | 6.75 | 6.75 | 6.75 | 12.00 | 12.00 | 0.00 | 0.00 | 1.00 | 3.00\n\nCycles executing div or sqrt instructions: 4.00-5.00\nCycles loading/storing data              : 11.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 24.00\nDispatch  : 12.00\nDIV/SQRT  : 4.00-5.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 40%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 6%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 13%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 24%\nload   : 25%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 24%\nFP\nall     : 35%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 26%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 27%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 24.00 cycles. At this rate:\n - 15% of peak load performance is reached (5.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 22% of peak store performance is reached (3.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.00 to 12.00 cycles (2.00x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1613\n\nInstruction                      | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nLEA 0x2a3000(%R12),%R15\nMOV %R12,%R11                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R12,%R14                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R15,0x128(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nRDTSC                            | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nMOV 0x10(%RSP),%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nSAL $0x20,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0xf04(%R12),%R13\nMOV %RBP,0x60(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nOR %RAX,%RDX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXOR %EAX,%EAX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RDX,0x8(%RBP)               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nLEA 0xef3(%RCX),%RDI\nLEA 0xefc(%RCX),%RSI\nMOV %RDI,(%RSP)                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RSI,0x40(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nNOPL (%RAX,%RAX,1)               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x60(%RSP),%RBP              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nRDTSC                            | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nMOV 0x30(%RBP),%R12              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nSAL $0x20,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %RDX,%R9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nOR %RAX,%R9                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R9,(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nSUB 0x8(%RBP),%R9                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nCMP $0x3e7,%R12                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJA 28d5 <main._omp_fn.0+0x1365>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x38(%RBP),%R15              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nLEA 0x1(%R12),%R13\nMOV %R13,0x30(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R9,(%R15,%R12,8)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %R9,%R9                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 2981 <main._omp_fn.0+0x1411>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM0,%XMM0,%XMM0         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %R9,%XMM0,%XMM3        | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVMOVSD 0x58(%RSP),%XMM7          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x28(%RBP),%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nLEA 0x2710(%RIP),%RDX\nMOV $0x1,%ESI                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x50(%RSP),%R8               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x4717(%RIP),%RDI            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV $0x1,%EAX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVDIVSD %XMM3,%XMM7,%XMM0         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 8-13    | 4-5\nCALL 1190 <.plt.sec@start+0x90>  | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nADDQ $0x2a3000,0x18(%RSP)        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 1\nINCQ 0x28(%RBP)                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 1\nADDQ $0x2a3000,0x10(%RSP)        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 1\nMOV 0x18(%RSP),%R9               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nCMP %R9,0x120(%RSP)              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nJBE 2949 <main._omp_fn.0+0x13d9> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x128(%RSP),%R12             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nJMP 1613 <main._omp_fn.0+0xa3>   | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nMOV %R9,%RSI                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R9,%RCX                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM11,%XMM11,%XMM11      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%RSI                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%ECX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %RCX,%RSI                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %RSI,%XMM11,%XMM13     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM13,%XMM13,%XMM3       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nJMP 28e7 <main._omp_fn.0+0x1377> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	0x2a3000(%R12),%R15] is unknown\n - The number of fused uops of the instruction [LEA	0xf04(%R12),%R13] is unknown\n - The number of fused uops of the instruction [LEA	0xef3(%RCX),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	0xefc(%RCX),%RSI] is unknown\n - The number of fused uops of the instruction [LEA	0x1(%R12),%R13] is unknown\n - The number of fused uops of the instruction [LEA	0x2710(%RIP),%RDX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.08 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 5.00 cycles (4.80x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 24.00 to 4.23 cycles (5.67x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - JMP: 2 occurrences\n - RDTSC: 2 occurrences\n - VCVTSI2SD: 2 occurrences\n",
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
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 2 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: divide\nThe binary loop is loading 120 bytes (15 double precision FP elements).\nThe binary loop is storing 88 bytes (11 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nnb uops            : 144\nloop length        : 292\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 14\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 24.00 cycles\nfront end            : 24.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n------------------------------------------------------------------------------\nuops   | 6.75 | 6.75 | 6.75 | 6.75 | 12.00 | 12.00 | 0.00 | 0.00 | 1.00 | 3.00\ncycles | 6.75 | 6.75 | 6.75 | 6.75 | 12.00 | 12.00 | 0.00 | 0.00 | 1.00 | 3.00\n\nCycles executing div or sqrt instructions: 4.00-5.00\nCycles loading/storing data              : 11.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 24.00\nDispatch  : 12.00\nDIV/SQRT  : 4.00-5.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 40%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 6%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 13%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 24%\nload   : 25%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 24%\nFP\nall     : 35%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 26%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 27%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 24.00 cycles. At this rate:\n - 15% of peak load performance is reached (5.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 22% of peak store performance is reached (3.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.00 to 12.00 cycles (2.00x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1613\n\nInstruction                      | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------------\nLEA 0x2a3000(%R12),%R15\nMOV %R12,%R11                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R12,%R14                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R15,0x128(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nRDTSC                            | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nMOV 0x10(%RSP),%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nSAL $0x20,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0xf04(%R12),%R13\nMOV %RBP,0x60(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nOR %RAX,%RDX                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nXOR %EAX,%EAX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RDX,0x8(%RBP)               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nLEA 0xef3(%RCX),%RDI\nLEA 0xefc(%RCX),%RSI\nMOV %RDI,(%RSP)                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %RSI,0x40(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nNOPL (%RAX,%RAX,1)               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x60(%RSP),%RBP              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nRDTSC                            | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nMOV 0x30(%RBP),%R12              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nSAL $0x20,%RDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %RDX,%R9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nOR %RAX,%R9                      | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R9,(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nSUB 0x8(%RBP),%R9                | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nCMP $0x3e7,%R12                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJA 28d5 <main._omp_fn.0+0x1365>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x38(%RBP),%R15              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nLEA 0x1(%R12),%R13\nMOV %R13,0x30(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R9,(%R15,%R12,8)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %R9,%R9                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 2981 <main._omp_fn.0+0x1411>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM0,%XMM0,%XMM0         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %R9,%XMM0,%XMM3        | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVMOVSD 0x58(%RSP),%XMM7          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x28(%RBP),%RCX              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nLEA 0x2710(%RIP),%RDX\nMOV $0x1,%ESI                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x50(%RSP),%R8               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x4717(%RIP),%RDI            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV $0x1,%EAX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVDIVSD %XMM3,%XMM7,%XMM0         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 8-13    | 4-5\nCALL 1190 <.plt.sec@start+0x90>  | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nADDQ $0x2a3000,0x18(%RSP)        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 1\nINCQ 0x28(%RBP)                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 1\nADDQ $0x2a3000,0x10(%RSP)        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 1\nMOV 0x18(%RSP),%R9               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nCMP %R9,0x120(%RSP)              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nJBE 2949 <main._omp_fn.0+0x13d9> | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV 0x128(%RSP),%R12             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nJMP 1613 <main._omp_fn.0+0xa3>   | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nMOV %R9,%RSI                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R9,%RCX                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM11,%XMM11,%XMM11      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%RSI                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%ECX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %RCX,%RSI                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %RSI,%XMM11,%XMM13     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM13,%XMM13,%XMM3       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nJMP 28e7 <main._omp_fn.0+0x1377> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	0x2a3000(%R12),%R15] is unknown\n - The number of fused uops of the instruction [LEA	0xf04(%R12),%R13] is unknown\n - The number of fused uops of the instruction [LEA	0xef3(%RCX),%RDI] is unknown\n - The number of fused uops of the instruction [LEA	0xefc(%RCX),%RSI] is unknown\n - The number of fused uops of the instruction [LEA	0x1(%R12),%R13] is unknown\n - The number of fused uops of the instruction [LEA	0x2710(%RIP),%RDX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.08 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 5.00 cycles (4.80x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 24.00 to 4.23 cycles (5.67x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in:\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:105\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:21-28,202-214,263,287-297\n\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=16\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 16 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 16,
  },
}
