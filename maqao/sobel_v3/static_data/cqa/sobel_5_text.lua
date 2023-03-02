_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 7 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 60 bytes.\nThe binary loop is storing 5 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 45\nloop length        : 197\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 7\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 13.00 cycles\ninstruction queue    : 22.50 cycles\ndecoding             : 22.50 cycles\nmicro-operation queue: 23.00 cycles\nfront end            : 23.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 0.00 | 0.00 | 15.00 | 2.00 | 14.50 | 14.50 | 2.00\ncycles | 0.00 | 0.00 | 15.00 | 2.00 | 14.50 | 14.50 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.00\nDispatch  : 15.00\nData deps.: 0.00\nOverall L1: 23.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 5%\nload    : 6%\nstore   : 3%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 23.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.61 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.22 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1be6\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x68(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R14,%RAX,1),%EDI    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RSP),%RDX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R8,%RAX,1),%R9D     | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x90(%RSP),%R11             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%RDX,%RAX,1),%R8D    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R9D,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x40(%RSP),%R9              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R11,%RAX,1),%R11D   | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R9,%RAX,1),%EDX     | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x88(%RSP),%R9              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R9,%RAX,1),%R9D     | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R11),%R9D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R8D,%R9D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R11D,%R8D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDI,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDX,%R9D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%R9D                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nXOR %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDX,0xa0(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x98(%RSP),%RDX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R12,%RAX,1),%R9D    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%RDX,%RAX,1),%EDX    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %EDX,%R9D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%R8D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%R8D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R8D,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDI,%R11D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%R11D                 | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nXOR %R11D,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R11D,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0xa0(%RSP),%EDI             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x64,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJLE 2228 <main._omp_fn.0+0xc88> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV $0xefd,%EDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVB $-0x1,-0x1(%R10,%RAX,1)    | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nSUB %EAX,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RAX),%RAX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RSI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 1be6 <main._omp_fn.0+0x646> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 5% of vector register length is used (average across all SSE/AVX instructions).\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 7 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 60 bytes.\nThe binary loop is storing 5 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 46\nloop length        : 201\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 7\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 13.00 cycles\ninstruction queue    : 23.00 cycles\ndecoding             : 23.00 cycles\nmicro-operation queue: 23.00 cycles\nfront end            : 23.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 0.00 | 0.00 | 15.00 | 2.00 | 15.00 | 15.00 | 2.00\ncycles | 0.00 | 0.00 | 15.00 | 2.00 | 15.00 | 15.00 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.00\nDispatch  : 15.00\nData deps.: 0.00\nOverall L1: 23.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 23.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.61 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.22 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 23.00 to 15.00 cycles (1.53x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1be6\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nMOV 0x68(%RSP),%R8              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R14,%RAX,1),%EDI    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RSP),%RDX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R8,%RAX,1),%R9D     | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x90(%RSP),%R11             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%RDX,%RAX,1),%R8D    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R9D,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x40(%RSP),%R9              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R11,%RAX,1),%R11D   | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R9,%RAX,1),%EDX     | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x88(%RSP),%R9              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R9,%RAX,1),%R9D     | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R11),%R9D                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R8D,%R9D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R11D,%R8D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %EDI,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDX,%R9D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%R9D                  | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nXOR %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R9D,%EDX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDX,0xa0(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x98(%RSP),%RDX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%R12,%RAX,1),%R9D    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOVZX -0x1(%RDX,%RAX,1),%EDX    | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %EDX,%R9D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%R8D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R9D,%R8D                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R8D,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %EDI,%R11D                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%R11D                 | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nXOR %R11D,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R11D,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0xa0(%RSP),%EDI             | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nCMP $0x64,%EDI                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJLE 2228 <main._omp_fn.0+0xc88> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV %DIL,-0x1(%R10,%RAX,1)      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV $0xefd,%EDI                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %EAX,%EDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RAX),%EDX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RAX),%RAX              | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RSI,%RAX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 1cab <main._omp_fn.0+0x70b>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nJMP 1be6 <main._omp_fn.0+0x646> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\n",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 60 bytes.\nThe binary loop is storing 5 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 45.50\nloop length        : 199\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 7\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 13.00 cycles\ninstruction queue    : 22.75 cycles\ndecoding             : 22.75 cycles\nmicro-operation queue: 23.00 cycles\nfront end            : 23.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 0.00 | 0.00 | 15.00 | 2.00 | 14.75 | 14.75 | 2.00\ncycles | 0.00 | 0.00 | 15.00 | 2.00 | 14.75 | 14.75 | 2.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.00\nDispatch  : 15.00\nData deps.: 0.00\nOverall L1: 23.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : 6%\nstore   : 5%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 23.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.61 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.22 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 6% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204-214.\n",
      "It is peel/tail loop of related source loop which is unrolled by 32 (including vectorization).",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
