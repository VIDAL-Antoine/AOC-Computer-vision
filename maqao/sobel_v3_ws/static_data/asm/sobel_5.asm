address;source_location;insn;indent
0x1c57;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;MOV	0x68(%RSP),%R9;
0x1c5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	0x20(%RSP),%RDX;
0x1c61;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;MOVZX	-0x1(%R14,%RAX,1),%EDI;
0x1c67;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;MOVZX	-0x1(%R9,%RAX,1),%R8D;
0x1c6d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	0x40(%RSP),%R9;
0x1c72;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	0x90(%RSP),%R11;
0x1c7a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;SUB	%R8D,%EDI;
0x1c7d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOVZX	-0x1(%RDX,%RAX,1),%R8D;
0x1c83;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOVZX	-0x1(%R9,%RAX,1),%EDX;
0x1c89;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	0x88(%RSP),%R9;
0x1c91;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOVZX	-0x1(%R11,%RAX,1),%R11D;
0x1c97;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOVZX	-0x1(%R9,%RAX,1),%R9D;
0x1c9d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;SUB	%R9D,%EDX;
0x1ca0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	%R11D,%R9D;
0x1ca3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;SUB	%R8D,%R9D;
0x1ca6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;ADD	%EDX,%EDX;
0x1ca8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;ADD	%R9D,%EDX;
0x1cab;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;SUB	%R11D,%R8D;
0x1cae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;ADD	%EDI,%EDX;
0x1cb0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;MOV	%EDX,%R9D;
0x1cb3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;SAR	$0x1f,%R9D;
0x1cb7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;XOR	%R9D,%EDX;
0x1cba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;SUB	%R9D,%EDX;
0x1cbd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;MOV	%EDX,0xa0(%RSP);
0x1cc4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;MOV	0x98(%RSP),%RDX;
0x1ccc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;MOVZX	-0x1(%R12,%RAX,1),%R9D;
0x1cd2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;MOVZX	-0x1(%RDX,%RAX,1),%EDX;
0x1cd7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;SUB	%EDX,%R9D;
0x1cda;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;ADD	%R9D,%R8D;
0x1cdd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;ADD	%R9D,%R8D;
0x1ce0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;ADD	%R8D,%EDI;
0x1ce3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;MOV	%EDI,%R11D;
0x1ce6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;SAR	$0x1f,%R11D;
0x1cea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;XOR	%R11D,%EDI;
0x1ced;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;SUB	%R11D,%EDI;
0x1cf0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;ADD	0xa0(%RSP),%EDI;
0x1cf7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;CMP	$0x64,%EDI;
0x1cfa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;JLE	2328 <main._omp_fn.0+0xd38>;
0x1d00;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;MOV	$0xefd,%EDI;
0x1d05;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;LEA	(%RAX),%EDX;
0x1d07;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;MOVB	$-0x1,-0x1(%R10,%RAX,1);
0x1d0d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;SUB	%EAX,%EDI;
0x1d0f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;LEA	0x1(%RAX),%RAX;
0x1d13;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;CMP	%RAX,%RSI;
0x1d16;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;JNE	1c57 <main._omp_fn.0+0x667>;
0x2328;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;MOV	%DIL,-0x1(%R10,%RAX,1);
0x232d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;MOV	$0xefd,%EDI;
0x2332;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;SUB	%EAX,%EDI;
0x2334;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;LEA	(%RAX),%EDX;
0x2336;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;LEA	0x1(%RAX),%RAX;
0x233a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;CMP	%RSI,%RAX;
0x233d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;JE	1d1c <main._omp_fn.0+0x72c>;
0x2343;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;JMP	1c57 <main._omp_fn.0+0x667>;
