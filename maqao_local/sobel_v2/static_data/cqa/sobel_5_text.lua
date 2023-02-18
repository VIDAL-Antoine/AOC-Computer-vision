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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - JMP: 3 occurrences\n - RDTSC: 2 occurrences\n - VCVTSI2SD: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 3 FP arithmetical operations:\n - 2: addition or subtraction\n - 1: divide\nThe binary loop is loading 152 bytes (19 double precision FP elements).\nThe binary loop is storing 64 bytes (8 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 85\nnb uops            : 187\nloop length        : 419\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 31.17 cycles\nfront end            : 31.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0  | ALU1  | ALU2  | ALU3  | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------------\nuops   | 12.25 | 12.25 | 12.25 | 12.25 | 13.00 | 13.00 | 0.00 | 0.00 | 2.00 | 5.00\ncycles | 12.25 | 12.25 | 12.25 | 12.25 | 13.00 | 13.00 | 0.00 | 0.00 | 2.00 | 5.00\n\nCycles executing div or sqrt instructions: 4.00-5.00\nCycles loading/storing data              : 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 31.17\nDispatch  : 13.00\nDIV/SQRT  : 4.00-5.00\nOverall L1: 31.17\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : 25%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 66%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 15%\nload    : 40%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 13%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 24%\nload   : 31%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 41%\nload    : 50%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 27%\nload    : 35%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 31.17 cycles. At this rate:\n - 15% of peak load performance is reached (4.88 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 12% of peak store performance is reached (2.05 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 31.17 to 13.00 cycles (2.40x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 125b\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------------\nMOV 0x88(%RSP),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV $0x2a3000,%EDX              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x1,%ESI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x60(%RSP),%RDI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nCALL 10e0 <.plt.sec@start+0x10> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOV %RAX,0x70(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %RAX,%RAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJE 2582 <main+0x1422>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVMOVAPD 0x3e83(%RIP),%XMM13     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nVMOVAPD 0x3e8b(%RIP),%XMM12     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x60(%RSP),%R8              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R8,%RCX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nLEA 0x2a3000(%R8),%R9\nRDTSC                           | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nVMOVDQA 0x3272(%RIP),%XMM13     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nVMOVDQA 0x327a(%RIP),%XMM9      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nSAL $0x20,%RDX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0xef3(%R12),%R11\nMOV 0x60(%RSP),%R10             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nOR %RAX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0xefc(%R12),%R14\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RDX,0xa0(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R11,0x10(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R14,0x90(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nADD $0x2a0300,%R10              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R10,(%RSP)                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nNOP                             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nRDTSC                           | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nSAL $0x20,%RDX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x78(%RSP),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nOR %RAX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nSUB 0xa0(%RSP),%RDX             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %RDX,%R9                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nCMP $0x3e7,%RCX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJA 24eb <main+0x138b>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %RDX,0x420(%RSP,%RCX,8)     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nINC %RCX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %RCX,0x78(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV 0x70(%RSP),%RDI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nTEST %RDI,%RDI                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 268c <main+0x152c>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM13,%XMM13,%XMM13     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %RDI,%XMM13,%XMM2     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nTEST %R9,%R9                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 2669 <main+0x1509>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM11,%XMM11,%XMM11     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %R9,%XMM11,%XMM4      | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVDIVSD %XMM4,%XMM2,%XMM0        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 8-13    | 4-5\nMOV 0x80(%RSP),%R14             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x70(%RSP),%R8              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nLEA 0x2b0a(%RIP),%RDX\nMOV 0x4aeb(%RIP),%RDI           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV $0x1,%ESI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x1,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R14,%RCX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nCALL 1140 <.plt.sec@start+0x70> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOV 0x68(%RSP),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R14,%R9                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV $0x2a3000,%EDX              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nINC %R9                         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x1,%ESI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R12,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R9,0x80(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nCALL 1130 <.plt.sec@start+0x60> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nJMP 125b <main+0xfb>            | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nMOV %R9,%R10                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R9,%R8                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM1,%XMM1,%XMM1        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%R10                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %R8,%R10                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %R10,%XMM1,%XMM15     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM15,%XMM15,%XMM4      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nJMP 2516 <main+0x13b6>          | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nMOV %RDI,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RDI,%RBX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM9,%XMM9,%XMM9        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%EDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %RDX,%RBX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %RBX,%XMM9,%XMM14     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM14,%XMM14,%XMM2      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nJMP 2503 <main+0x13a3>          | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	0x2a3000(%R8),%R9] is unknown\n - The number of fused uops of the instruction [LEA	0xef3(%R12),%R11] is unknown\n - The number of fused uops of the instruction [LEA	0xefc(%R12),%R14] is unknown\n - The number of fused uops of the instruction [LEA	0x2b0a(%RIP),%RDX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.10 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 31.17 to 5.00 cycles (6.23x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 27% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 31.17 to 6.00 cycles (5.19x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 3 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - JMP: 3 occurrences\n - RDTSC: 2 occurrences\n - VCVTSI2SD: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 3 FP arithmetical operations:\n - 2: addition or subtraction\n - 1: divide\nThe binary loop is loading 152 bytes (19 double precision FP elements).\nThe binary loop is storing 64 bytes (8 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 85\nnb uops            : 187\nloop length        : 419\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 31.17 cycles\nfront end            : 31.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0  | ALU1  | ALU2  | ALU3  | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n----------------------------------------------------------------------------------\nuops   | 12.25 | 12.25 | 12.25 | 12.25 | 13.00 | 13.00 | 0.00 | 0.00 | 2.00 | 5.00\ncycles | 12.25 | 12.25 | 12.25 | 12.25 | 13.00 | 13.00 | 0.00 | 0.00 | 2.00 | 5.00\n\nCycles executing div or sqrt instructions: 4.00-5.00\nCycles loading/storing data              : 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 31.17\nDispatch  : 13.00\nDIV/SQRT  : 4.00-5.00\nOverall L1: 31.17\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : 25%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 66%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 15%\nload    : 40%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 13%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 24%\nload   : 31%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 41%\nload    : 50%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 27%\nload    : 35%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 31.17 cycles. At this rate:\n - 15% of peak load performance is reached (4.88 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 12% of peak store performance is reached (2.05 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 31.17 to 13.00 cycles (2.40x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 125b\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2  | FP3  | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------------\nMOV 0x88(%RSP),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV $0x2a3000,%EDX              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x1,%ESI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x60(%RSP),%RDI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nCALL 10e0 <.plt.sec@start+0x10> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOV %RAX,0x70(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nTEST %RAX,%RAX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJE 2582 <main+0x1422>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVMOVAPD 0x3e83(%RIP),%XMM13     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nVMOVAPD 0x3e8b(%RIP),%XMM12     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x60(%RSP),%R8              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R8,%RCX                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nLEA 0x2a3000(%R8),%R9\nRDTSC                           | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nVMOVDQA 0x3272(%RIP),%XMM13     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nVMOVDQA 0x327a(%RIP),%XMM9      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nSAL $0x20,%RDX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0xef3(%R12),%R11\nMOV 0x60(%RSP),%R10             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nOR %RAX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nLEA 0xefc(%R12),%R14\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RDX,0xa0(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R11,0x10(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV %R14,0x90(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nADD $0x2a0300,%R10              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R10,(%RSP)                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nNOP                             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nRDTSC                           | 37    | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 36\nSAL $0x20,%RDX                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV 0x78(%RSP),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nOR %RAX,%RDX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nSUB 0xa0(%RSP),%RDX             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %RDX,%R9                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nCMP $0x3e7,%RCX                 | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJA 24eb <main+0x138b>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nMOV %RDX,0x420(%RSP,%RCX,8)     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nINC %RCX                        | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %RCX,0x78(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nMOV 0x70(%RSP),%RDI             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nTEST %RDI,%RDI                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 268c <main+0x152c>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM13,%XMM13,%XMM13     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %RDI,%XMM13,%XMM2     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nTEST %R9,%R9                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nJS 2669 <main+0x1509>           | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.50\nVXORPD %XMM11,%XMM11,%XMM11     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVCVTSI2SD %R9,%XMM11,%XMM4      | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVDIVSD %XMM4,%XMM2,%XMM0        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 8-13    | 4-5\nMOV 0x80(%RSP),%R14             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV 0x70(%RSP),%R8              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nLEA 0x2b0a(%RIP),%RDX\nMOV 0x4aeb(%RIP),%RDI           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV $0x1,%ESI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x1,%EAX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R14,%RCX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nCALL 1140 <.plt.sec@start+0x70> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nMOV 0x68(%RSP),%RCX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 3       | 0.50\nMOV %R14,%R9                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV $0x2a3000,%EDX              | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nINC %R9                         | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV $0x1,%ESI                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nMOV %R12,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R9,0x80(%RSP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 4       | 1\nCALL 1130 <.plt.sec@start+0x60> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0    | 0    | 0       | 1\nJMP 125b <main+0xfb>            | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nMOV %R9,%R10                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %R9,%R8                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM1,%XMM1,%XMM1        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%R10                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%R8D                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %R8,%R10                     | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %R10,%XMM1,%XMM15     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM15,%XMM15,%XMM4      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nJMP 2516 <main+0x13b6>          | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\nMOV %RDI,%RDX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nMOV %RDI,%RBX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nVXORPD %XMM9,%XMM9,%XMM9        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 0.25\nSHR $0x1,%RBX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nAND $0x1,%EDX                   | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nOR %RDX,%RBX                    | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0    | 0    | 1       | 0.25\nVCVTSI2SD %RBX,%XMM9,%XMM14     | 2     | 0    | 0    | 1    | 0    | 0    | 0    | 0   | 0   | 0    | 1    | 7       | 1\nVADDSD %XMM14,%XMM14,%XMM2      | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0.50 | 0.50 | 3       | 0.50\nJMP 2503 <main+0x13a3>          | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0    | 0    | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [LEA	0x2a3000(%R8),%R9] is unknown\n - The number of fused uops of the instruction [LEA	0xef3(%R12),%R11] is unknown\n - The number of fused uops of the instruction [LEA	0xefc(%R12),%R14] is unknown\n - The number of fused uops of the instruction [LEA	0x2b0a(%RIP),%RDX] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.10 out of 24.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 31.17 to 5.00 cycles (6.23x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 27% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 31.17 to 6.00 cycles (5.19x speedup).",
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
      "The loop is defined in:\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:105,293\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/rdtsc.h:9-11\n - /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:21-28,164-176,283,325-337\n\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=32\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 32 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
    },
    nb_paths = 32,
  },
}
