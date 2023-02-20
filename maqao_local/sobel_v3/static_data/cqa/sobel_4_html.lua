_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 2 occurrence(s)</li><li>Constant non-unit stride: 11 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 46 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>53</td></tr><tr><td>nb uops</td><td>41</td></tr><tr><td>loop length</td><td>262</td></tr><tr><td>used x86 registers</td><td>16</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>4</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>6.83 cycles</td></tr><tr><td>front end</td><td>6.83 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>8.25</td><td>8.25</td><td>8.25</td><td>8.25</td><td>9.50</td><td>9.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>8.25</td><td>8.25</td><td>8.25</td><td>8.25</td><td>9.50</td><td>9.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Cycles loading/storing data</td><td>9.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>6.83</td></tr><tr><td>Dispatch</td><td>9.50</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>9.50</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>13%</td></tr><tr><td>load</td><td>14%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>15%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.50 cycles. At this rate:\n<ul><li>15% of peak load performance is reached (4.84 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2310\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV (%RSP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>LEA 0x8(%RCX),%R12</td></tr><tr><td>LEA 0x2(%RCX),%R13</td></tr><tr><td>LEA 0x6(%RCX),%R11</td></tr><tr><td>LEA 0x5(%RCX),%R10</td></tr><tr><td>LEA 0x3(%RCX),%R14</td></tr><tr><td>LEA 0x7(%RCX),%R15</td></tr><tr><td>LEA 0x1(%RCX),%RDI</td></tr><tr><td>XOR %EDX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>ADD %RAX,%RSI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV 0x20(%RSP),%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVZX 0xef2(%RCX),%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0xef8(%RCX),%RDX</td></tr><tr><td>MOV $0xef0,%R12D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOVZX 0xef6(%RCX),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef7(%RCX),%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef1(%RCX),%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef5(%RCX),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RBX,%RAX,1),%RSI</td></tr><tr><td>MOVZX 0xef0(%RCX),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xefe(%RCX),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf02(%RCX),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf01(%RCX),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xeff(%RCX),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf04(%RCX),%R12D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xefc(%RCX),%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf03(%RCX),%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xefd(%RCX),%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %EDI,%R10D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>SUB %EBX,%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %ESI,%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDX,%R12D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%R10,%R9,2),%R8D</td></tr><tr><td>ADD %R12D,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %R8D,%R13D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVS %R8D,%R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R15D,%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDI,%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RBX,%R11,2),%EBP</td></tr><tr><td>ADD %R12D,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %EBP,%R14D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVNS %R14D,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %EBP,%R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x64,%R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JG 2930 <main._omp_fn.0+0x13f0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV 0x50(%RSP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOV %R13B,(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADD $0xf00,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0xf00,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP 0x10(%RSP),%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 2310 <main._omp_fn.0+0xdd0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>This path is accessible from 2 CFG paths (including child blocks)\n</li><li>The number of fused uops of the instruction [LEA	0x8(%RCX),%R12] is unknown</li><li>The number of fused uops of the instruction [LEA	0x2(%RCX),%R13] is unknown</li><li>The number of fused uops of the instruction [LEA	0x6(%RCX),%R11] is unknown</li><li>The number of fused uops of the instruction [LEA	0x5(%RCX),%R10] is unknown</li><li>The number of fused uops of the instruction [LEA	0x3(%RCX),%R14] is unknown</li><li>The number of fused uops of the instruction [LEA	0x7(%RCX),%R15] is unknown</li><li>The number of fused uops of the instruction [LEA	0x1(%RCX),%RDI] is unknown</li><li>The number of fused uops of the instruction [LEA	0xef8(%RCX),%RDX] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RBX,%RAX,1),%RSI] is unknown</li><li>The number of fused uops of the instruction [LEA	(%R10,%R9,2),%R8D] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RBX,%R11,2),%EBP] is unknown</li></ul>",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.50 to 2.37 cycles (4.00x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.50 to 8.25 cycles (1.15x speedup).\n",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>JMP: 1 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 2 occurrence(s)</li><li>Constant non-unit stride: 11 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 46 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>54</td></tr><tr><td>nb uops</td><td>48</td></tr><tr><td>loop length</td><td>268</td></tr><tr><td>used x86 registers</td><td>16</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>4</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>8.00 cycles</td></tr><tr><td>front end</td><td>8.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>8.50</td><td>8.50</td><td>8.50</td><td>8.50</td><td>9.50</td><td>9.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>8.50</td><td>8.50</td><td>8.50</td><td>8.50</td><td>9.50</td><td>9.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Cycles loading/storing data</td><td>9.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>8.00</td></tr><tr><td>Dispatch</td><td>9.50</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>9.50</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>13%</td></tr><tr><td>load</td><td>14%</td></tr><tr><td>store</td><td>3%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>15%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.50 cycles. At this rate:\n<ul><li>15% of peak load performance is reached (4.84 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2310\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV (%RSP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>LEA 0x8(%RCX),%R12</td></tr><tr><td>LEA 0x2(%RCX),%R13</td></tr><tr><td>LEA 0x6(%RCX),%R11</td></tr><tr><td>LEA 0x5(%RCX),%R10</td></tr><tr><td>LEA 0x3(%RCX),%R14</td></tr><tr><td>LEA 0x7(%RCX),%R15</td></tr><tr><td>LEA 0x1(%RCX),%RDI</td></tr><tr><td>XOR %EDX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>ADD %RAX,%RSI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV 0x20(%RSP),%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVZX 0xef2(%RCX),%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0xef8(%RCX),%RDX</td></tr><tr><td>MOV $0xef0,%R12D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOVZX 0xef6(%RCX),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef7(%RCX),%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef1(%RCX),%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef5(%RCX),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RBX,%RAX,1),%RSI</td></tr><tr><td>MOVZX 0xef0(%RCX),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xefe(%RCX),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf02(%RCX),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf01(%RCX),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xeff(%RCX),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf04(%RCX),%R12D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xefc(%RCX),%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xf03(%RCX),%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xefd(%RCX),%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %EDI,%R10D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>SUB %EBX,%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %ESI,%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDX,%R12D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%R10,%R9,2),%R8D</td></tr><tr><td>ADD %R12D,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %R8D,%R13D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVS %R8D,%R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R15D,%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDI,%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RBX,%R11,2),%EBP</td></tr><tr><td>ADD %R12D,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %EBP,%R14D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVNS %R14D,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %EBP,%R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x64,%R13D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JG 2930 <main._omp_fn.0+0x13f0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0xf00,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0xf00,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP 0x10(%RSP),%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 2310 <main._omp_fn.0+0xdd0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV 0x50(%RSP),%R12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVB $-0x1,(%R12,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>JMP 2850 <main._omp_fn.0+0x1310></td><td>6</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>This path is accessible from 2 CFG paths (including child blocks)\n</li><li>The number of fused uops of the instruction [LEA	0x8(%RCX),%R12] is unknown</li><li>The number of fused uops of the instruction [LEA	0x2(%RCX),%R13] is unknown</li><li>The number of fused uops of the instruction [LEA	0x6(%RCX),%R11] is unknown</li><li>The number of fused uops of the instruction [LEA	0x5(%RCX),%R10] is unknown</li><li>The number of fused uops of the instruction [LEA	0x3(%RCX),%R14] is unknown</li><li>The number of fused uops of the instruction [LEA	0x7(%RCX),%R15] is unknown</li><li>The number of fused uops of the instruction [LEA	0x1(%RCX),%RDI] is unknown</li><li>The number of fused uops of the instruction [LEA	0xef8(%RCX),%RDX] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RBX,%RAX,1),%RSI] is unknown</li><li>The number of fused uops of the instruction [LEA	(%R10,%R9,2),%R8D] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RBX,%R11,2),%EBP] is unknown</li></ul>",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.50 to 1.34 cycles (7.07x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.50 to 8.50 cycles (1.12x speedup).\n",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 46 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>53.50</td></tr><tr><td>nb uops</td><td>44.50</td></tr><tr><td>loop length</td><td>265</td></tr><tr><td>used x86 registers</td><td>16</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>4</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>micro-operation queue</td><td>7.42 cycles</td></tr><tr><td>front end</td><td>7.42 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>8.38</td><td>8.38</td><td>8.38</td><td>8.38</td><td>9.50</td><td>9.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>8.38</td><td>8.38</td><td>8.38</td><td>8.38</td><td>9.50</td><td>9.50</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>7.42</td></tr><tr><td>Dispatch</td><td>9.50</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>9.50</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>13%</td></tr><tr><td>load</td><td>14%</td></tr><tr><td>store</td><td>3%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>15%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.50 cycles. At this rate:\n<ul><li>15% of peak load performance is reached (4.84 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.50 to 1.86 cycles (5.11x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:203-217.\n",
      "Analyzed code is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:203-207,212-217.\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
    },
    nb_paths = 4,
  },
}
