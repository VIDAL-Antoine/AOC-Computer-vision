_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 72 bytes.\nThe binary loop is storing 124 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 88\nloop length        : 428\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 13\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 27.00 cycles\ninstruction queue    : 44.00 cycles\ndecoding             : 44.00 cycles\nmicro-operation queue: 44.00 cycles\nfront end            : 44.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.00 | 13.00 | 31.50 | 31.50 | 16.00\ncycles | 0.00 | 0.00 | 13.00 | 13.00 | 31.50 | 31.50 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 44.00\nDispatch  : 31.50\nOverall L1: 44.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 9%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 44.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.64 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.82 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 44.00 to 31.50 cycles (1.40x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1bb0\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x84(%RSP),%ECX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0xd8(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R13D,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0x1f,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8D,%EBX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJE 2298 <main._omp_fn.0+0xce8>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (%R15,%R8,1),%R10           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R10,0x68(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x6(%R14),%R12             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x70(%RSP),%R10             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x2(%R14),%R9              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x3(%R14),%R11             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x5(%R14),%RDX             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x7(%R14),%RDI             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R12,0x90(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD $0x2,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x1(%R14),%R12             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,0x20(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD %R8,%R10                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0x40(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,0x88(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDI,0x98(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x78(%RSP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xefd,%ESI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %ECX,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2(%R13),%R12              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ESI,%ECX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x8(%R13),%R11              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0xd8(%RSP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nLEA 0x5(%R13),%R10              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R12,0x90(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x3(%R13),%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x6(%R13),%R12              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x7(%R13),%R8               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,0x98(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RCX),%EAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSHR $0x5,%EAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x1(%R13),%RSI              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x5,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,0x88(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nMOV %EDX,0x68(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x68(%RSP),%R8D             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RCX),%R11D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $-0x20,%R11D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11D,%R12D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %R11D,%R8D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R11D,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOT %R12D                       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2194 <main._omp_fn.0+0xbe4>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x2(%RBX,%R8,1),%R9D        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x8(%RBX,%R8,1),%ECX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%R15,%R9,1),%RSI           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R12D,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RSI,0x90(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RBX,%R8,1),%R12D          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xc8(%RSP),%RSI             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R15,%RCX,1),%R10          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBX,%R8,1),%ECX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x6(%RBX,%R8,1),%EDX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x5(%RBX,%R8,1),%R9D        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%R15,%RDX,1),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,0xa0(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x7(%RBX,%R8,1),%EDI        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %R10,0x98(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x3(%RBX,%R8,1),%EBX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RCX,%R15,1),%R10          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R12),%RCX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15,%RBX,1),%R8           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RSI,%RCX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0x88(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nLEA (%RDI,%R15,1),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R9,%R15,1),%R9            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,0x20(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD 0xc0(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nADDQ $0xf00,0xd8(%RSP)          | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nLEA 0xf00(%R13),%R13            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xd8(%RSP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xf00(%R14),%R14            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x2a0300,%RAX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1bb0 <main._omp_fn.0+0x600> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nXOR %EDX,%EDX\nMOV $0xefd,%EDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJMP 1cec <main._omp_fn.0+0x73c> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 44.00 to 3.34 cycles (13.16x speedup).",
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
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 72 bytes.\nThe binary loop is storing 124 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 88\nloop length        : 428\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 13\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 27.00 cycles\ninstruction queue    : 44.00 cycles\ndecoding             : 44.00 cycles\nmicro-operation queue: 44.00 cycles\nfront end            : 44.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.00 | 13.00 | 31.50 | 31.50 | 16.00\ncycles | 0.00 | 0.00 | 13.00 | 13.00 | 31.50 | 31.50 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 44.00\nDispatch  : 31.50\nOverall L1: 44.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 9%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 44.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.64 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.82 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 44.00 to 31.50 cycles (1.40x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1bb0\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x84(%RSP),%ECX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0xd8(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R13D,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0x1f,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8D,%EBX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJE 2298 <main._omp_fn.0+0xce8>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (%R15,%R8,1),%R10           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ECX,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R10,0x68(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x6(%R14),%R12             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x70(%RSP),%R10             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x2(%R14),%R9              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x3(%R14),%R11             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x5(%R14),%RDX             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x7(%R14),%RDI             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R12,0x90(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD $0x2,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x1,%EAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x1(%R14),%R12             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,0x20(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD %R8,%R10                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0x40(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,0x88(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDI,0x98(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x78(%RSP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0xefd,%ESI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %ECX,%ESI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2(%R13),%R12              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %ESI,%ECX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x8(%R13),%R11              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0xd8(%RSP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nLEA 0x5(%R13),%R10              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R12,0x90(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x3(%R13),%R9               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x6(%R13),%R12              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x7(%R13),%R8               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,0x98(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RCX),%EAX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSHR $0x5,%EAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x1(%R13),%RSI              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x5,%RAX                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RAX,0x88(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nMOV %EDX,0x68(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x68(%RSP),%R8D             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RCX),%R11D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $-0x20,%R11D                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11D,%R12D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %R11D,%R8D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R11D,%ECX                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOT %R12D                       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2194 <main._omp_fn.0+0xbe4>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x2(%RBX,%R8,1),%R9D        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x8(%RBX,%R8,1),%ECX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%R15,%R9,1),%RSI           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R12D,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RSI,0x90(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RBX,%R8,1),%R12D          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xc8(%RSP),%RSI             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R15,%RCX,1),%R10          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBX,%R8,1),%ECX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x6(%RBX,%R8,1),%EDX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA 0x5(%RBX,%R8,1),%R9D        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%R15,%RDX,1),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,0xa0(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x7(%RBX,%R8,1),%EDI        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %R10,0x98(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x3(%RBX,%R8,1),%EBX        | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nLEA (%RCX,%R15,1),%R10          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R12),%RCX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15,%RBX,1),%R8           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RSI,%RCX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,0x88(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nLEA (%RDI,%R15,1),%R11          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R9,%R15,1),%R9            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,0x20(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD 0xc0(%RSP),%RCX             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nADDQ $0xf00,0xd8(%RSP)          | 1     | 0  | 0  | 1.50 | 0.50 | 0.50 | 0.50 | 1  | 7       | 1\nLEA 0xf00(%R13),%R13            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xd8(%RSP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xf00(%R14),%R14            | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x2a0300,%RAX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1bb0 <main._omp_fn.0+0x600> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nXOR %EDX,%EDX\nMOV $0xefd,%EDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJMP 1cec <main._omp_fn.0+0x73c> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 44.00 to 3.34 cycles (13.16x speedup).",
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
      "The loop is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:202-214,313.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=16\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 16 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 16,
  },
}
