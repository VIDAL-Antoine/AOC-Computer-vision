address;source_location;insn;indent
0x1d75;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	0x90(%RSP),%RDX;
0x1d7d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	(%R11,%RAX,1),%YMM6;
0x1d83;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQU	(%R13,%RAX,1),%YMM7;
0x1d8a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%RDX,%RAX,1),%YMM11;
0x1d8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	(%R11,%RAX,1),%YMM8;
0x1d95;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	(%R13,%RAX,1),%YMM0;
0x1d9c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM6,%XMM14;
0x1da2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPSUBW	%YMM0,%YMM8,%YMM15;
0x1da6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM7,%XMM9;
0x1dac;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	%XMM14,%YMM3;
0x1db1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	%XMM9,%YMM4;
0x1db6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM11,%YMM8;
0x1dbb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM11,%XMM0;
0x1dc1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPSUBW	%YMM4,%YMM3,%YMM1;
0x1dc5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM15,%YMM13;
0x1dca;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM1,%YMM5;
0x1dcf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM15,%XMM2;
0x1dd5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM0,%YMM15;
0x1dda;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R12,%RAX,1),%YMM4;
0x1de0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM2,%YMM9;
0x1de5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM8,%XMM6;
0x1deb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM8,%YMM14;
0x1df0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM15,%XMM3;
0x1df6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM6,%YMM2;
0x1dfb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R12,%RAX,1),%YMM7;
0x1e01;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM15,%YMM6;
0x1e06;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	%YMM5,0x40(%RSP);
0x1e0c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM7,%YMM0;
0x1e11;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R10,%RAX,1),%YMM15;
0x1e17;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM1,%XMM12;
0x1e1d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM3,%YMM1;
0x1e22;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM4,%XMM5;
0x1e28;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM12,%YMM10;
0x1e2d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R9,%RAX,1),%YMM3;
0x1e33;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R10,%RAX,1),%YMM4;
0x1e39;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM7,%XMM12;
0x1e3f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBW	%YMM3,%YMM15,%YMM7;
0x1e43;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQA	%YMM11,0xa0(%RSP);
0x1e4c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM5,%YMM11;
0x1e51;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R9,%RAX,1),%YMM15;
0x1e57;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSLLW	$0x1,%YMM7,%YMM7;
0x1e5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	%YMM10,0x20(%RSP);
0x1e62;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM12,%YMM10;
0x1e67;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM11,%XMM8;
0x1e6d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM11,%YMM12;
0x1e72;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM15,%XMM3;
0x1e78;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM8,%YMM5;
0x1e7d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM4,%XMM11;
0x1e83;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM3,%YMM4;
0x1e88;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	(%RSI,%RAX,1),%YMM15;
0x1e8e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM11,%YMM8;
0x1e93;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBW	%YMM4,%YMM8,%YMM11;
0x1e97;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	(%R8,%RAX,1),%YMM8;
0x1e9d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSLLW	$0x1,%YMM11,%YMM3;
0x1ea3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQU	(%R8,%RAX,1),%YMM11;
0x1ea9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBW	%YMM15,%YMM8,%YMM4;
0x1eae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM11,%XMM15;
0x1eb4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSLLW	$0x1,%YMM4,%YMM8;
0x1eb9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQU	(%RSI,%RAX,1),%YMM11;
0x1ebe;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	%XMM15,%YMM4;
0x1ec3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM11,%XMM15;
0x1ec9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	%XMM15,%YMM11;
0x1ece;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM8,%YMM15;
0x1ed3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM8,%XMM8;
0x1ed9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBW	%YMM11,%YMM4,%YMM4;
0x1ede;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM14,%YMM0,%YMM11;
0x1ee3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM0,%YMM14,%YMM0;
0x1ee7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM15,%YMM11,%YMM11;
0x1eec;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM7,%YMM14;
0x1ef1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM13,%YMM11,%YMM15;
0x1ef6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSLLW	$0x1,%YMM4,%YMM4;
0x1efb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM11;
0x1f00;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM14,%YMM0,%YMM15;
0x1f05;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM2,%YMM10,%YMM14;
0x1f09;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM10,%YMM2,%YMM2;
0x1f0e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM7,%XMM10;
0x1f14;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM13,%YMM15,%YMM13;
0x1f19;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM10,%YMM7;
0x1f1e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM8,%YMM15;
0x1f23;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM13,%YMM0;
0x1f28;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM7,%YMM2,%YMM8;
0x1f2c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM15,%YMM14,%YMM13;
0x1f31;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM11,%YMM11;
0x1f35;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQA	0x40(%RSP),%YMM2;
0x1f3b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM9,%YMM13,%YMM0;
0x1f40;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM0,%YMM14;
0x1f45;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM9,%YMM8,%YMM9;
0x1f4a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM9,%YMM15;
0x1f4f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM6,%YMM12,%YMM0;
0x1f53;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM15,%YMM14,%YMM13;
0x1f58;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM12,%YMM6,%YMM6;
0x1f5d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM4,%YMM14;
0x1f62;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM3,%YMM12;
0x1f67;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM14,%YMM0,%YMM10;
0x1f6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM12,%YMM6,%YMM9;
0x1f71;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM2,%YMM10,%YMM7;
0x1f75;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM2,%YMM9,%YMM15;
0x1f79;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM4,%XMM4;
0x1f7f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM1,%YMM5,%YMM10;
0x1f83;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM5,%YMM1,%YMM1;
0x1f87;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM4,%YMM2;
0x1f8c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM3,%XMM5;
0x1f92;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x23a6(%RIP),%YMM11,%YMM4;
0x1f9a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM7,%YMM8;
0x1f9f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM5,%YMM3;
0x1fa4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM0;
0x1fa9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM3,%YMM1,%YMM9;
0x1fad;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM8,%YMM14;
0x1fb1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM2,%YMM10,%YMM8;
0x1fb5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQA	0x20(%RSP),%YMM7;
0x1fbb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x237d(%RIP),%YMM13,%YMM2;
0x1fc3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM7,%YMM8,%YMM6;
0x1fc7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM7,%YMM9,%YMM15;
0x1fcb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM6,%YMM12;
0x1fd0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x2368(%RIP),%YMM14,%YMM1;
0x1fd8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM0;
0x1fdd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM4,0x2379(%RIP),%YMM11,%YMM11;
0x1fe7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM12,%YMM10;
0x1feb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM2,0x236b(%RIP),%YMM13,%YMM13;
0x1ff5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x2343(%RIP),%YMM10,%YMM5;
0x1ffd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM1,0x2359(%RIP),%YMM14,%YMM14;
0x2007;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM5,0x234f(%RIP),%YMM10,%YMM3;
0x2011;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2167(%RIP),%YMM11,%YMM8;
0x2019;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x215f(%RIP),%YMM13,%YMM7;
0x2021;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2157(%RIP),%YMM14,%YMM9;
0x2029;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x214f(%RIP),%YMM3,%YMM15;
0x2031;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSDW	%YMM7,%YMM8,%YMM6;
0x2036;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSDW	%YMM15,%YMM9,%YMM0;
0x203b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM6,%YMM12;
0x2041;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM0,%YMM10;
0x2047;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2151(%RIP),%YMM12,%YMM4;
0x204f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;MOV	0x98(%RSP),%RDX;
0x2057;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2141(%RIP),%YMM10,%YMM11;
0x205f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSWB	%YMM11,%YMM4,%YMM2;
0x2064;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM2,%YMM13;
0x206a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VMOVDQU	%YMM13,(%RDX,%RAX,1);
0x206f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;LEA	0x20(%RAX),%RAX;
0x2073;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;CMP	%RAX,0x88(%RSP);
0x207b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;JNE	1d75 <main._omp_fn.0+0x785>;
