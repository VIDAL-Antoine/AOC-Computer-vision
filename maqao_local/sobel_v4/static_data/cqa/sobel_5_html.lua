_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant non-unit stride: 1 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>32</td></tr><tr><td>nb uops</td><td>29</td></tr><tr><td>loop length</td><td>108</td></tr><tr><td>used x86 registers</td><td>14</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>4.83 cycles</td></tr><tr><td>front end</td><td>4.83 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>6.25</td><td>6.25</td><td>6.25</td><td>6.25</td><td>4.50</td><td>4.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>6.25</td><td>6.25</td><td>6.25</td><td>6.25</td><td>4.50</td><td>4.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Cycles loading/storing data</td><td>4.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>4.83</td></tr><tr><td>Dispatch</td><td>6.25</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>6.25</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>12%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.25 cycles. At this rate:\n<ul><li>4% of peak load performance is reached (1.28 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.16 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2990\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVZX 0x6(%RDX),%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x2(%RDX),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x7(%RDX),%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x1(%RDX),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX (%RDX),%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x8(%RDX),%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x5(%RDX),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x3(%RDX),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R10D,%R11D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>SUB %ESI,%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDI,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %ECX,%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%R11,%RBP,2),%R15D</td></tr><tr><td>ADD %R14D,%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %R15D,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVS %R15D,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EBX,%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R10D,%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RSI,%R9,2),%ECX</td></tr><tr><td>ADD %R14D,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %ECX,%R14D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVNS %R14D,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %R8D,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x64,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JG 2a20 <sobel_v4+0x5b0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>INC %RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %CL,(%R13)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>INC %R13</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %RAX,%RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 2990 <sobel_v4+0x520></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>The number of fused uops of the instruction [LEA	(%R11,%RBP,2),%R15D] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RSI,%R9,2),%ECX] is unknown</li></ul>",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)</li><li>hardcode most frequent values of loop bounds by adding specialized paths.:\n<ul><li></li></ul></li></ul>",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\n",
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
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant non-unit stride: 1 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>32</td></tr><tr><td>nb uops</td><td>29</td></tr><tr><td>loop length</td><td>113</td></tr><tr><td>used x86 registers</td><td>14</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>4.83 cycles</td></tr><tr><td>front end</td><td>4.83 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>6.25</td><td>6.25</td><td>6.25</td><td>6.25</td><td>4.50</td><td>4.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>6.25</td><td>6.25</td><td>6.25</td><td>6.25</td><td>4.50</td><td>4.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Cycles loading/storing data</td><td>4.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>4.83</td></tr><tr><td>Dispatch</td><td>6.25</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>6.25</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>11%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>3%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.25 cycles. At this rate:\n<ul><li>4% of peak load performance is reached (1.28 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.16 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2990\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVZX 0x6(%RDX),%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x2(%RDX),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x7(%RDX),%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x1(%RDX),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX (%RDX),%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x8(%RDX),%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x5(%RDX),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0x3(%RDX),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R10D,%R11D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>SUB %ESI,%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDI,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %ECX,%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%R11,%RBP,2),%R15D</td></tr><tr><td>ADD %R14D,%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %R15D,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVS %R15D,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EBX,%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R10D,%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RSI,%R9,2),%ECX</td></tr><tr><td>ADD %R14D,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %ECX,%R14D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVNS %R14D,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %R8D,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x64,%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JG 2a20 <sobel_v4+0x5b0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>INC %RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOVB $-0x1,(%R13)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>INC %R13</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %RAX,%RDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 2990 <sobel_v4+0x520></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>The number of fused uops of the instruction [LEA	(%R11,%RBP,2),%R15D] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RSI,%R9,2),%ECX] is unknown</li></ul>",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)</li><li>hardcode most frequent values of loop bounds by adding specialized paths.:\n<ul><li></li></ul></li></ul>",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\n",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>32</td></tr><tr><td>nb uops</td><td>29</td></tr><tr><td>loop length</td><td>110.50</td></tr><tr><td>used x86 registers</td><td>14</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>micro-operation queue</td><td>4.83 cycles</td></tr><tr><td>front end</td><td>4.83 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>6.25</td><td>6.25</td><td>6.25</td><td>6.25</td><td>4.50</td><td>4.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>6.25</td><td>6.25</td><td>6.25</td><td>6.25</td><td>4.50</td><td>4.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>4.83</td></tr><tr><td>Dispatch</td><td>6.25</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>6.25</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>12%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>3%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.25 cycles. At this rate:\n<ul><li>4% of peak load performance is reached (1.28 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.16 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)</li><li>hardcode most frequent values of loop bounds by adding specialized paths.:\n<ul><li></li></ul></li></ul>",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 12% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:240-251.\n",
      "It is peel/tail loop of related source loop which is unrolled by 16 (including vectorization).",
      "The structure of this loop is probably &lt;if then [else] end&gt;.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
    },
    nb_paths = 2,
  },
}
