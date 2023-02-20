_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant non-unit stride: 14 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 38 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>54</td></tr><tr><td>nb uops</td><td>42</td></tr><tr><td>loop length</td><td>262</td></tr><tr><td>used x86 registers</td><td>16</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>3</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>7.00 cycles</td></tr><tr><td>front end</td><td>7.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>8.50</td><td>8.50</td><td>8.50</td><td>8.50</td><td>9.00</td><td>9.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>8.50</td><td>8.50</td><td>8.50</td><td>8.50</td><td>9.00</td><td>9.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Cycles loading/storing data</td><td>8.50</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>7.00</td></tr><tr><td>Dispatch</td><td>9.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>9.00</td></tr></table>",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.00 cycles. At this rate:\n<ul><li>13% of peak load performance is reached (4.22 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2330\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA 0x8(%R12),%RBP</td></tr><tr><td>LEA 0x2(%R12),%RBX</td></tr><tr><td>LEA 0x6(%R12),%R10</td></tr><tr><td>LEA 0x5(%R12),%R9</td></tr><tr><td>MOV 0x10(%RSP),%R15</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>LEA 0x3(%R12),%R8</td></tr><tr><td>LEA 0x7(%R12),%R11</td></tr><tr><td>LEA 0x1(%R12),%R14</td></tr><tr><td>XOR %EDX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>ADD %RAX,%R15</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV (%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVZX 0xef0(%R12),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0xc(%R13),%RDX</td></tr><tr><td>MOV $0xef0,%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOVZX 0xef2(%R12),%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef6(%R12),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef7(%R12),%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef1(%R12),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef5(%R12),%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RCX,%RAX,1),%RCX</td></tr><tr><td>MOVZX -0x6(%R13),%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x2(%R13),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x3(%R13),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x5(%R13),%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x8(%R13),%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX (%R13),%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x1(%R13),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x7(%R13),%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R15D,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>SUB %ESI,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %ECX,%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDX,%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RDI,%R9,2),%EBP</td></tr><tr><td>MOV 0x40(%RSP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD %R10D,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %EBP,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVS %EBP,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R11D,%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R15D,%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RSI,%RBX,2),%R14D</td></tr><tr><td>ADD %R10D,%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %R14D,%R10D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVNS %R10D,%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %R14D,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x64,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JG 2970 <main._omp_fn.0+0x1400></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R8B,(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>ADD $0xf00,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0xf00,%R13</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0xf00,%R12</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x2a0300,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 2330 <main._omp_fn.0+0xdc0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>This path is accessible from 2 CFG paths (including child blocks)\n</li><li>The number of fused uops of the instruction [LEA	0x8(%R12),%RBP] is unknown</li><li>The number of fused uops of the instruction [LEA	0x2(%R12),%RBX] is unknown</li><li>The number of fused uops of the instruction [LEA	0x6(%R12),%R10] is unknown</li><li>The number of fused uops of the instruction [LEA	0x5(%R12),%R9] is unknown</li><li>The number of fused uops of the instruction [LEA	0x3(%R12),%R8] is unknown</li><li>The number of fused uops of the instruction [LEA	0x7(%R12),%R11] is unknown</li><li>The number of fused uops of the instruction [LEA	0x1(%R12),%R14] is unknown</li><li>The number of fused uops of the instruction [LEA	-0xc(%R13),%RDX] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RCX,%RAX,1),%RCX] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RDI,%R9,2),%EBP] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RSI,%RBX,2),%R14D] is unknown</li></ul>",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.00 to 2.25 cycles (4.00x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.00 to 8.50 cycles (1.06x speedup).\n",
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
          details = "<ul><li>Constant non-unit stride: 14 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 38 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>55</td></tr><tr><td>nb uops</td><td>49</td></tr><tr><td>loop length</td><td>267</td></tr><tr><td>used x86 registers</td><td>16</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>3</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>8.17 cycles</td></tr><tr><td>front end</td><td>8.17 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>8.75</td><td>8.75</td><td>8.75</td><td>8.75</td><td>9.00</td><td>9.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>8.75</td><td>8.75</td><td>8.75</td><td>8.75</td><td>9.00</td><td>9.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Cycles loading/storing data</td><td>8.50</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>8.17</td></tr><tr><td>Dispatch</td><td>9.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>9.00</td></tr></table>",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.00 cycles. At this rate:\n<ul><li>13% of peak load performance is reached (4.22 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2330\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA 0x8(%R12),%RBP</td></tr><tr><td>LEA 0x2(%R12),%RBX</td></tr><tr><td>LEA 0x6(%R12),%R10</td></tr><tr><td>LEA 0x5(%R12),%R9</td></tr><tr><td>MOV 0x10(%RSP),%R15</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>LEA 0x3(%R12),%R8</td></tr><tr><td>LEA 0x7(%R12),%R11</td></tr><tr><td>LEA 0x1(%R12),%R14</td></tr><tr><td>XOR %EDX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>ADD %RAX,%R15</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV (%RSP),%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVZX 0xef0(%R12),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0xc(%R13),%RDX</td></tr><tr><td>MOV $0xef0,%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOVZX 0xef2(%R12),%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef6(%R12),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef7(%R12),%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef1(%R12),%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX 0xef5(%R12),%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RCX,%RAX,1),%RCX</td></tr><tr><td>MOVZX -0x6(%R13),%R15D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x2(%R13),%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x3(%R13),%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x5(%R13),%ECX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x8(%R13),%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX (%R13),%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x1(%R13),%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVZX -0x7(%R13),%R11D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R15D,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>SUB %ESI,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %ECX,%R9D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %EDX,%R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RDI,%R9,2),%EBP</td></tr><tr><td>MOV 0x40(%RSP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD %R10D,%EBP</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %EBP,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVS %EBP,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R11D,%EBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>SUB %R15D,%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA (%RSI,%RBX,2),%R14D</td></tr><tr><td>ADD %R10D,%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %R14D,%R10D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NEG %R10D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMOVNS %R10D,%R14D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD %R14D,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x64,%R8D</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JG 2970 <main._omp_fn.0+0x1400></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0xf00,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0xf00,%R13</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0xf00,%R12</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x2a0300,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 2330 <main._omp_fn.0+0xdc0></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVB $-0x1,(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>JMP 287e <main._omp_fn.0+0x130e></td><td>6</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>This path is accessible from 2 CFG paths (including child blocks)\n</li><li>The number of fused uops of the instruction [LEA	0x8(%R12),%RBP] is unknown</li><li>The number of fused uops of the instruction [LEA	0x2(%R12),%RBX] is unknown</li><li>The number of fused uops of the instruction [LEA	0x6(%R12),%R10] is unknown</li><li>The number of fused uops of the instruction [LEA	0x5(%R12),%R9] is unknown</li><li>The number of fused uops of the instruction [LEA	0x3(%R12),%R8] is unknown</li><li>The number of fused uops of the instruction [LEA	0x7(%R12),%R11] is unknown</li><li>The number of fused uops of the instruction [LEA	0x1(%R12),%R14] is unknown</li><li>The number of fused uops of the instruction [LEA	-0xc(%R13),%RDX] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RCX,%RAX,1),%RCX] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RDI,%R9,2),%EBP] is unknown</li><li>The number of fused uops of the instruction [LEA	(%RSI,%RBX,2),%R14D] is unknown</li></ul>",
        "0% of peak computational performance is used (0.00 out of 6.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.00 to 1.31 cycles (6.86x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 38 bytes.\nThe binary loop is storing 1 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>54.50</td></tr><tr><td>nb uops</td><td>45.50</td></tr><tr><td>loop length</td><td>264.50</td></tr><tr><td>used x86 registers</td><td>16</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>3</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>micro-operation queue</td><td>7.58 cycles</td></tr><tr><td>front end</td><td>7.58 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>ALU0</th><th>ALU1</th><th>ALU2</th><th>ALU3</th><th>AGU0</th><th>AGU1</th><th>FP0</th><th>FP1</th><th>FP2</th><th>FP3</th></tr><tr><td>uops</td><td>8.63</td><td>8.63</td><td>8.63</td><td>8.63</td><td>9.00</td><td>9.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>8.63</td><td>8.63</td><td>8.63</td><td>8.63</td><td>9.00</td><td>9.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>7.58</td></tr><tr><td>Dispatch</td><td>9.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>9.00</td></tr></table>",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.00 cycles. At this rate:\n<ul><li>13% of peak load performance is reached (4.22 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.11 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
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
          txt = "Your loop is not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.00 to 1.78 cycles (5.05x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:202-214.\n",
      "Analyzed code is defined in /home/vidal/Desktop/AOC_oseret/Projet/AOC-Computer-vision/sobel.c:202-204,209-214.\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
    },
    nb_paths = 4,
  },
}
