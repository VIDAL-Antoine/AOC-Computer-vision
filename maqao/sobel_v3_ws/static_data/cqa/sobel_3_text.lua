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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: divide\nThe binary loop is loading 144 bytes (18 double precision FP elements).\nThe binary loop is storing 100 bytes (12 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.00 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 75\nloop length        : 340\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 11\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 37.50 cycles\ndecoding             : 37.50 cycles\nmicro-operation queue: 38.00 cycles\nfront end            : 38.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 2.00 | 0.00 | 16.00 | 15.00 | 22.00 | 22.00 | 13.00\ncycles | 2.00 | 0.00 | 16.00 | 15.00 | 22.00 | 22.00 | 13.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.00\nDispatch  : 22.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 38.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 3%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 3%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 10%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 11%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 13%\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 12%\nload    : 12%\nstore   : 11%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 38.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.79 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.63 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1680\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x38(%R13),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA -0x8(%R9),%R11              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0xc8(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD (%R8),%R11                  | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nMOV %R11,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R11,%R14                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x2a3000,%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nMOV (%R8),%R12                  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0xd0(%RSP),%RBX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x30(%R13),%R15             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R12,%R14                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R12,%RDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0xc8(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RBX,%R14                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%R15),%R10                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R14,%R8                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNEG %R8                         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R12),%R15                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nAND $0x1f,%R8D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0x1f,%R9D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R10,%RCX,1),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,%RSI                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB $0x8,%R8D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nADD %RCX,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RSI,%RDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R9,%R11,1),%RAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RCX,%R15                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x8(%R13)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R13,0x60(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RDI),%R13                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10,0xc0(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVQ $0,0xd8(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOV %R11,0x70(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R8D,0x84(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0x78(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x60(%RSP),%R13             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV 0x20(%R13),%R15             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nOR %RAX,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,(%R13)                  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSUB 0x8(%R13),%R9               | 1     | 0  | 0  | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x3e7,%R15                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 21fb <main._omp_fn.0+0xc4b>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x28(%R13),%R11             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R15),%R12                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x1,%R12                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R12,0x20(%R13)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%R11,%R15,8)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVCVTUSI2SD %R9,%XMM8,%XMM8      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA 0x1e00(%RIP),%RDX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSD 0x8(%RSP),%XMM7          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%R13),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVDIVSD %XMM8,%XMM7,%XMM0        | 3     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nMOV 0x3df3(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVZEROUPPER                      | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nCALL 11b0 <.plt.sec@start+0xa0> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0xd0(%RSP),%R10             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDQ $0x1,0x18(%R13)            | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV %R10,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x2a2ff8(%R10),%RCX         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x2a3000,%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RCX,0x10(%RSP)             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 2268 <main._omp_fn.0+0xcb8> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,0xd0(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nJMP 1680 <main._omp_fn.0+0xd0>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 32.00 cycles (1.19x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 12% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 38.00 to 4.00 cycles (9.50x speedup).",
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1 FP arithmetical operations:\n - 1: divide\nThe binary loop is loading 144 bytes (18 double precision FP elements).\nThe binary loop is storing 100 bytes (12 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.00 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 75\nloop length        : 340\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 11\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 37.50 cycles\ndecoding             : 37.50 cycles\nmicro-operation queue: 38.00 cycles\nfront end            : 38.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 2.00 | 0.00 | 16.00 | 15.00 | 22.00 | 22.00 | 13.00\ncycles | 2.00 | 0.00 | 16.00 | 15.00 | 22.00 | 22.00 | 13.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.00\nDispatch  : 22.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 38.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 3%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 3%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 10%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 11%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 13%\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 12%\nload    : 12%\nstore   : 11%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 13%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 38.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.79 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.63 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1680\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x38(%R13),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA -0x8(%R9),%R11              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0xc8(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD (%R8),%R11                  | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nMOV %R11,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R11,%R14                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x2a3000,%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nMOV (%R8),%R12                  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0xd0(%RSP),%RBX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x30(%R13),%R15             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R12,%R14                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R12,%RDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0xc8(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RBX,%R14                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%R15),%R10                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R14,%R8                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNEG %R8                         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R12),%R15                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nAND $0x1f,%R8D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0x1f,%R9D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R10,%RCX,1),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,%RSI                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB $0x8,%R8D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nADD %RCX,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nOR %RAX,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RSI,%RDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R9,%R11,1),%RAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RCX,%R15                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x8(%R13)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R13,0x60(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RDI),%R13                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10,0xc0(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVQ $0,0xd8(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOV %R11,0x70(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R8D,0x84(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0x78(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x60(%RSP),%R13             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nRDTSC                           | 15    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 30\nSAL $0x20,%RDX                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV 0x20(%R13),%R15             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nOR %RAX,%R9                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,(%R13)                  | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSUB 0x8(%R13),%R9               | 1     | 0  | 0  | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x3e7,%R15                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 21fb <main._omp_fn.0+0xc4b>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x28(%R13),%R11             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R15),%R12                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x1,%R12                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R12,0x20(%R13)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R9,(%R11,%R15,8)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVCVTUSI2SD %R9,%XMM8,%XMM8      | 1     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA 0x1e00(%RIP),%RDX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSD 0x8(%RSP),%XMM7          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%R13),%RCX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVDIVSD %XMM8,%XMM7,%XMM0        | 3     | 1  | 0  | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nMOV 0x3df3(%RIP),%RDI           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVZEROUPPER                      | 19    | 0  | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 36\nCALL 11b0 <.plt.sec@start+0xa0> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0xd0(%RSP),%R10             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADDQ $0x1,0x18(%R13)            | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nMOV %R10,%R9                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x2a2ff8(%R10),%RCX         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x2a3000,%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RCX,0x10(%RSP)             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJBE 2268 <main._omp_fn.0+0xcb8> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %R9,0xd0(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nJMP 1680 <main._omp_fn.0+0xd0>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 32.00 cycles (1.19x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 12% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 38.00 to 4.00 cycles (9.50x speedup).",
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
      "The loop is defined in:\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21-30,202-214,297-299,313,320-330\n - /scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:100\n\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=25\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 25 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 25,
  },
}
