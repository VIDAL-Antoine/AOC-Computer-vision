_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>convolve_v1: 2 occurrences</li><li>sqrt@plt: 1 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>INC: 1 occurrences</li><li>VCOMISS: 1 occurrences</li><li>VCVTSD2SS: 1 occurrences</li><li>VCVTSI2SD: 1 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 1 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences</li><li>VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 104 bytes (26 single precision FP elements).\nThe binary loop is storing 21 bytes (5 single precision FP elements).",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>51</td></tr><tr><td>nb uops</td><td>59</td></tr><tr><td>loop length</td><td>213</td></tr><tr><td>used x86 registers</td><td>6</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>2</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>10</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>14.75 cycles</td></tr><tr><td>front end</td><td>14.75 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>8.50</td><td>8.50</td><td>7.83</td><td>7.50</td><td>8.00</td><td>8.50</td><td>8.50</td><td>7.67</td></tr><tr><td>cycles</td><td>8.50</td><td>8.50</td><td>7.83</td><td>7.50</td><td>8.00</td><td>8.50</td><td>8.50</td><td>7.67</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>6.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>14.75</td></tr><tr><td>Dispatch</td><td>8.50</td></tr><tr><td>Data deps.</td><td>6.00</td></tr><tr><td>Overall L1</td><td>14.75</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>8%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>FP\n<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>9%</td></tr><tr><td>store</td><td>7%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.75 cycles. At this rate:\n<ul><li>5% of peak load performance is reached (7.05 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.42 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 14.75 to 8.50 cycles (1.74x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 400eb5\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV -0x8(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL $0xf00,%RAX,%RAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV -0x10(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RAX,%RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x78(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA (%RDX,%RAX,1),%RDI</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0x40(%RBP),%RAX</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV $0x3,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x3,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 400c97 <convolve_v1></td><td>2</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>1</td><td>0.33</td><td>0</td><td>2</td></tr><tr><td>MOV %EAX,-0x18(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>MOV -0x8(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL $0xf00,%RAX,%RAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV -0x10(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RAX,%RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x78(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA (%RDX,%RAX,1),%RDI</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0x70(%RBP),%RAX</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV $0x3,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x3,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 400c97 <convolve_v1></td><td>2</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>1</td><td>0.33</td><td>0</td><td>2</td></tr><tr><td>MOV %EAX,-0x1c(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>MOV -0x18(%RBP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL %EAX,%EAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV %EAX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV -0x1c(%RBP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL %EAX,%EAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>ADD %EDX,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VCVTSI2SD %EAX,%XMM1,%XMM1</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>6</td><td>1</td></tr><tr><td>VMOVQ %XMM1,%RAX</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVQ %RAX,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>CALL 400770 <sqrt@plt></td><td>2</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>1</td><td>0.33</td><td>0</td><td>2</td></tr><tr><td>VCVTSD2SS %XMM0,%XMM0,%XMM0</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSS %XMM0,-0x14(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>VMOVSS -0x14(%RBP),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VCOMISS -0x84(%RBP),%XMM0</td><td>2</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JBE 400e8f <sobel_v1+0x164></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV $-0x1,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JMP 400e96 <sobel_v1+0x16b></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV -0x8(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL $0xf00,%RAX,%RAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV -0x10(%RBP),%RCX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RAX,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x80(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RCX,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %DL,(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>INCQ -0x10(%RBP)</td><td>3</td><td>0.25</td><td>0.25</td><td>0.83</td><td>0.83</td><td>1</td><td>0.25</td><td>0.25</td><td>0.33</td><td>5</td><td>1</td></tr><tr><td>CMPQ $0xefc,-0x10(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JBE 400de7 <sobel_v1+0xbc></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 14.75 to 6.00 cycles (2.46x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 14.75 to 0.99 cycles (14.84x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>convolve_v1: 2 occurrences</li><li>sqrt@plt: 1 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>INC: 1 occurrences</li><li>VCOMISS: 1 occurrences</li><li>VCVTSD2SS: 1 occurrences</li><li>VCVTSI2SD: 1 occurrences</li><li>VCVTTSS2SI: 1 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 1 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences</li><li>VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences</li><li>VCVTTSS2SI (FP32 to INT32/64, scalar): 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 108 bytes (27 single precision FP elements).\nThe binary loop is storing 21 bytes (5 single precision FP elements).",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>51</td></tr><tr><td>nb uops</td><td>60</td></tr><tr><td>loop length</td><td>213</td></tr><tr><td>used x86 registers</td><td>6</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>2</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>10</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>15.00 cycles</td></tr><tr><td>front end</td><td>15.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>8.50</td><td>8.50</td><td>8.00</td><td>8.00</td><td>8.00</td><td>8.50</td><td>8.50</td><td>8.00</td></tr><tr><td>cycles</td><td>8.50</td><td>8.50</td><td>8.00</td><td>8.00</td><td>8.00</td><td>8.50</td><td>8.50</td><td>8.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>6.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>15.00</td></tr><tr><td>Dispatch</td><td>8.50</td></tr><tr><td>Data deps.</td><td>6.00</td></tr><tr><td>Overall L1</td><td>15.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>8%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>FP\n<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>8%</td></tr><tr><td>store</td><td>7%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.00 cycles. At this rate:\n<ul><li>5% of peak load performance is reached (7.20 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.40 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.00 to 8.50 cycles (1.76x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 400eb5\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV -0x8(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL $0xf00,%RAX,%RAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV -0x10(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RAX,%RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x78(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA (%RDX,%RAX,1),%RDI</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0x40(%RBP),%RAX</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV $0x3,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x3,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 400c97 <convolve_v1></td><td>2</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>1</td><td>0.33</td><td>0</td><td>2</td></tr><tr><td>MOV %EAX,-0x18(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>MOV -0x8(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL $0xf00,%RAX,%RAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV -0x10(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RAX,%RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x78(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA (%RDX,%RAX,1),%RDI</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0x70(%RBP),%RAX</td><td>1</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV $0x3,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x3,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %RAX,%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 400c97 <convolve_v1></td><td>2</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>1</td><td>0.33</td><td>0</td><td>2</td></tr><tr><td>MOV %EAX,-0x1c(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>MOV -0x18(%RBP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL %EAX,%EAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV %EAX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV -0x1c(%RBP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL %EAX,%EAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>ADD %EDX,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VCVTSI2SD %EAX,%XMM1,%XMM1</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>6</td><td>1</td></tr><tr><td>VMOVQ %XMM1,%RAX</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVQ %RAX,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>CALL 400770 <sqrt@plt></td><td>2</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>1</td><td>0.33</td><td>0</td><td>2</td></tr><tr><td>VCVTSD2SS %XMM0,%XMM0,%XMM0</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSS %XMM0,-0x14(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>VMOVSS -0x14(%RBP),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>VCOMISS -0x84(%RBP),%XMM0</td><td>2</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JBE 400e8f <sobel_v1+0x164></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>VCVTTSS2SI -0x14(%RBP),%EAX</td><td>2</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>MOV %EAX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV -0x8(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>IMUL $0xf00,%RAX,%RAX</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>MOV -0x10(%RBP),%RCX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RAX,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x80(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>ADD %RCX,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %DL,(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>3</td><td>1</td></tr><tr><td>INCQ -0x10(%RBP)</td><td>3</td><td>0.25</td><td>0.25</td><td>0.83</td><td>0.83</td><td>1</td><td>0.25</td><td>0.25</td><td>0.33</td><td>5</td><td>1</td></tr><tr><td>CMPQ $0xefc,-0x10(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JBE 400de7 <sobel_v1+0xbc></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 15.00 to 6.00 cycles (2.50x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 15.00 to 1.01 cycles (14.84x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>convolve_v1: 2 occurrences</li><li>sqrt@plt: 1 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>INC: 1 occurrences</li><li>VCOMISS: 1 occurrences</li><li>VCVTSD2SS: 1 occurrences</li><li>VCVTSI2SD: 1 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences</li><li>VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 106 bytes (26 single precision FP elements).\nThe binary loop is storing 21 bytes (5 single precision FP elements).",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>51</td></tr><tr><td>nb uops</td><td>59.50</td></tr><tr><td>loop length</td><td>213</td></tr><tr><td>used x86 registers</td><td>6</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>2</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>10</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>micro-operation queue</td><td>14.88 cycles</td></tr><tr><td>front end</td><td>14.88 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>8.50</td><td>8.50</td><td>7.92</td><td>7.75</td><td>8.00</td><td>8.50</td><td>8.50</td><td>7.83</td></tr><tr><td>cycles</td><td>8.50</td><td>8.50</td><td>7.92</td><td>7.75</td><td>8.00</td><td>8.50</td><td>8.50</td><td>7.83</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>6.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>14.88</td></tr><tr><td>Dispatch</td><td>8.50</td></tr><tr><td>Data deps.</td><td>6.00</td></tr><tr><td>Overall L1</td><td>14.88</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>8%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>FP\n<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>9%</td></tr><tr><td>store</td><td>7%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.88 cycles. At this rate:\n<ul><li>5% of peak load performance is reached (7.13 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.41 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with ftree-vectorize (included in O3) to enable loop vectorization and with fassociative-math (included in Ofast or ffast-math) to extend vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 14.88 to 1.00 cycles (14.84x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/antvidal/AOC/AOC-Computer-vision/sobel.c:116-123.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "The structure of this loop is probably &lt;if then [else] end&gt;.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
      "Ex: if (x&lt;0) x=0 =&gt; x = (x&lt;0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
