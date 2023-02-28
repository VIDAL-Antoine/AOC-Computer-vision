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
          txt = "nb instructions    : 39\nloop length        : 223\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 24\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 19.50 cycles\ndecoding             : 19.50 cycles\nmicro-operation queue: 21.00 cycles\nfront end            : 21.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4   | P5   | P6\n----------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.50 | 13.50 | 4.50 | 4.50 | 24.00\ncycles | 0.00 | 0.00 | 13.50 | 13.50 | 4.50 | 4.50 | 24.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 21.00\nDispatch  : 24.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 3%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 33%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 3%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 33%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 12%\nstore  : 7%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 14%\nFP\nall     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 8%\nload    : 12%\nstore   : 7%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 14%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 24.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (4.67 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1555\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB $0xa0,%RSP                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,-0x88(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,-0x90(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVSS %XMM0,-0x94(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV %FS:0x28,%RAX               | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,-0x8(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nPXOR %XMM0,%XMM0\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOVL $-0x1,-0x60(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x5c(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x58(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x2,-0x54(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x50(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x2,-0x4c(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x1,-0x48(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x44(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x40(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x1,-0x30(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x2,-0x2c(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x1,-0x28(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x24(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x20(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x1c(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x18(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x2,-0x14(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x10(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVQ $0,-0x70(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 1728 <sobel_baseline+0x1d3> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\nNOP                             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x8(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %FS:0x28,%RAX               | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 174b <sobel_baseline+0x1f6>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCALL 1120 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nLEAVE\nRET\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 3.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 24.00 to 1.69 cycles (14.22x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.00 to 21.00 cycles (1.14x speedup).\n",
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
          txt = "nb instructions    : 39\nloop length        : 223\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 24\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 19.50 cycles\ndecoding             : 19.50 cycles\nmicro-operation queue: 21.00 cycles\nfront end            : 21.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4   | P5   | P6\n----------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.50 | 13.50 | 4.50 | 4.50 | 24.00\ncycles | 0.00 | 0.00 | 13.50 | 13.50 | 4.50 | 4.50 | 24.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 21.00\nDispatch  : 24.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 3%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 33%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 3%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 33%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 12%\nstore  : 7%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 14%\nFP\nall     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 8%\nload    : 12%\nstore   : 7%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 14%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 24.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (4.67 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1555\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB $0xa0,%RSP                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,-0x88(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,-0x90(%RBP)            | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOVSS %XMM0,-0x94(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV %FS:0x28,%RAX               | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,-0x8(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nPXOR %XMM0,%XMM0\nMOVSS %XMM0,-0x7c(%RBP)         | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOVL $-0x1,-0x60(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x5c(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x58(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x2,-0x54(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x50(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x2,-0x4c(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x1,-0x48(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x44(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x40(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x1,-0x30(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x2,-0x2c(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $-0x1,-0x28(%RBP)          | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x24(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x20(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0,-0x1c(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x18(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x2,-0x14(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVL $0x1,-0x10(%RBP)           | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOVQ $0,-0x70(%RBP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nJMP 1728 <sobel_baseline+0x1d3> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 2\nNOP                             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV -0x8(%RBP),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %FS:0x28,%RAX               | 1     | 0  | 0  | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 174b <sobel_baseline+0x1f6>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCALL 1120 <.plt.sec@start+0x30> | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nLEAVE\nRET\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 3.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 24.00 to 1.69 cycles (14.22x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.00 to 21.00 cycles (1.14x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:72-95.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
