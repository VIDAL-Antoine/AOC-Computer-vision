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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - JMP: 1 occurrences\n - LEAVE: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 24 bytes.\nThe binary function is storing 112 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 39\nnb uops            : 49\nloop length        : 223\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 24\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 8.17 cycles\nfront end            : 8.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n------------------------------------------------------------------------------\nuops   | 2.75 | 2.75 | 2.75 | 2.75 | 14.00 | 14.00 | 0.00 | 0.00 | 2.00 | 0.00\ncycles | 2.75 | 2.75 | 2.75 | 2.75 | 14.00 | 14.00 | 0.00 | 0.00 | 2.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 24.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.17\nDispatch  : 14.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 3%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 16%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 14%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 50%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 15%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 14%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 24.00 cycles. At this rate:\n - 3% of peak load performance is reached (1.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 29% of peak store performance is reached (4.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 156d\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nMOV %RSP,%RBP                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB $0xa0,%RSP                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %RDI,-0x88(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOV %RSI,-0x90(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVSS %XMM0,-0x94(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1   | 0   | 1       | 1\nMOV %FS:0x28,%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOV %RAX,-0x8(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nPXOR %XMM0,%XMM0                | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1   | 0   | 1       | 1\nMOVL $-0x1,-0x60(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x5c(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x58(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x2,-0x54(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x50(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x2,-0x4c(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x1,-0x48(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x44(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x40(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x1,-0x30(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x2,-0x2c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x1,-0x28(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x24(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x20(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x1c(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x18(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x2,-0x14(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x10(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVQ $0,-0x70(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nJMP 174e <sobel_baseline+0x1e1> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\nNOP                             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV -0x8(%RBP),%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nSUB %FS:0x28,%RAX               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nJE 1771 <sobel_baseline+0x204>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nCALL 1120 <.plt.sec@start+0x30> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 0       | 1\nLEAVE                           | 2     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nRET                             | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 2.50 cycles (9.60x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 15% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 24.00 to 1.94 cycles (12.39x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - JMP: 1 occurrences\n - LEAVE: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 24 bytes.\nThe binary function is storing 112 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 39\nnb uops            : 49\nloop length        : 223\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 24\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 8.17 cycles\nfront end            : 8.17 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | ALU0 | ALU1 | ALU2 | ALU3 | AGU0  | AGU1  | FP0  | FP1  | FP2  | FP3\n------------------------------------------------------------------------------\nuops   | 2.75 | 2.75 | 2.75 | 2.75 | 14.00 | 14.00 | 0.00 | 0.00 | 2.00 | 0.00\ncycles | 2.75 | 2.75 | 2.75 | 2.75 | 14.00 | 14.00 | 0.00 | 0.00 | 2.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nCycles loading/storing data              : 24.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.17\nDispatch  : 14.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 4%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 3%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 16%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 14%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 50%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 15%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 14%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 24.00 cycles. At this rate:\n - 3% of peak load performance is reached (1.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 29% of peak store performance is reached (4.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 156d\n\nInstruction                     | Nb FU | ALU0 | ALU1 | ALU2 | ALU3 | AGU0 | AGU1 | FP0 | FP1 | FP2 | FP3 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 1\nMOV %RSP,%RBP                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nSUB $0xa0,%RSP                  | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV %RDI,-0x88(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOV %RSI,-0x90(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVSS %XMM0,-0x94(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1   | 0   | 1       | 1\nMOV %FS:0x28,%RAX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nMOV %RAX,-0x8(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nPXOR %XMM0,%XMM0                | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 0.25\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 1   | 0   | 1       | 1\nMOVL $-0x1,-0x60(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x5c(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x58(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x2,-0x54(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x50(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x2,-0x4c(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x1,-0x48(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x44(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x40(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x1,-0x30(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x2,-0x2c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $-0x1,-0x28(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x24(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x20(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0,-0x1c(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x18(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x2,-0x14(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVL $0x1,-0x10(%RBP)           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nMOVQ $0,-0x70(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 4       | 1\nJMP 174e <sobel_baseline+0x1e1> | 6     | 0    | 0    | 0    | 0    | 0    | 0    | 0   | 0   | 0   | 0   | 0       | 2\nNOP                             | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.25\nMOV -0x8(%RBP),%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 3       | 0.50\nSUB %FS:0x28,%RAX               | 1     | 0.25 | 0.25 | 0.25 | 0.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 1       | 0.50\nJE 1771 <sobel_baseline+0x204>  | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nCALL 1120 <.plt.sec@start+0x30> | 6     | 1.25 | 1.25 | 1.25 | 1.25 | 0.50 | 0.50 | 0   | 0   | 0   | 0   | 0       | 1\nLEAVE                           | 2     | 0.25 | 0.25 | 0.25 | 0.25 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\nRET                             | 1     | 0.50 | 0    | 0    | 0.50 | 0    | 0    | 0   | 0   | 0   | 0   | 1       | 0.50\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 2.50 cycles (9.60x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 15% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 24.00 to 1.94 cycles (12.39x speedup).",
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
      "The function is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:72-95.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
