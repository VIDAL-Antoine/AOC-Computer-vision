address;source_location;insn;indent
0x1728;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;MOVB	$-0x1,(%R15,%RAX,1);
0x172d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x1(%RAX),%RAX;
0x1731;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	%R8,%RAX;
0x1734;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JNE	1b28 <main+0x9c8>;
0x1b28;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOV	0x80(%RSP),%RCX;
0x1b30;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOVZX	(%RBX,%RAX,1),%EDX;
0x1b34;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	0x60(%RSP),%RDI;
0x1b39;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOVZX	(%RCX,%RAX,1),%R9D;
0x1b3e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	0x58(%RSP),%RSI;
0x1b43;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%RDI,%RAX,1),%ECX;
0x1b47;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;SUB	%EDX,%R9D;
0x1b4a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%RSI,%RAX,1),%EDI;
0x1b4e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	0x50(%RSP),%RDX;
0x1b53;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	0x48(%RSP),%RSI;
0x1b58;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOVZX	(%RDX,%RAX,1),%EDX;
0x1b5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOVZX	(%RSI,%RAX,1),%ESI;
0x1b60;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%ESI,%EDX;
0x1b62;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%RDI),%ESI;
0x1b64;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%ECX,%ESI;
0x1b66;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%EDX,%EDX;
0x1b68;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%ESI,%EDX;
0x1b6a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%EDI,%ECX;
0x1b6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%R9D,%EDX;
0x1b6f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%EDX,%ESI;
0x1b71;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SAR	$0x1f,%ESI;
0x1b74;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;XOR	%ESI,%EDX;
0x1b76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SUB	%ESI,%EDX;
0x1b78;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%EDX,0x44(%RSP);
0x1b7c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%R11,%RAX,1),%ESI;
0x1b81;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%R10,%RAX,1),%EDX;
0x1b86;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%EDX,%ESI;
0x1b88;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%ESI,%ECX;
0x1b8a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%ESI,%ECX;
0x1b8c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%R9D,%ECX;
0x1b8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%ECX,%R9D;
0x1b92;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SAR	$0x1f,%R9D;
0x1b96;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;XOR	%R9D,%ECX;
0x1b99;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SUB	%R9D,%ECX;
0x1b9c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;ADD	0x44(%RSP),%ECX;
0x1ba0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;CMP	$0x64,%ECX;
0x1ba3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;JG	1728 <main+0x5c8>;
0x1ba9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;MOV	%CL,(%R15,%RAX,1);
0x1bad;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x1(%RAX),%RAX;
0x1bb1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	%R8,%RAX;
0x1bb4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JE	173a <main+0x5da>;
0x1bba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JMP	1b28 <main+0x9c8>;