address;source_location;insn;indent
0x1d45;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	0x90(%RSP),%RDX;
0x1d4d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	(%R11,%RAX,1),%YMM6;
0x1d53;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQU	(%R13,%RAX,1),%YMM7;
0x1d5a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%RDX,%RAX,1),%YMM11;
0x1d5f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	(%R11,%RAX,1),%YMM8;
0x1d65;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	(%R13,%RAX,1),%YMM0;
0x1d6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM6,%XMM14;
0x1d72;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPSUBW	%YMM0,%YMM8,%YMM15;
0x1d76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM7,%XMM9;
0x1d7c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	%XMM14,%YMM3;
0x1d81;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	%XMM9,%YMM4;
0x1d86;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM11,%YMM8;
0x1d8b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM11,%XMM0;
0x1d91;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPSUBW	%YMM4,%YMM3,%YMM1;
0x1d95;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM15,%YMM13;
0x1d9a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM1,%YMM5;
0x1d9f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM15,%XMM2;
0x1da5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM0,%YMM15;
0x1daa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R12,%RAX,1),%YMM4;
0x1db0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM2,%YMM9;
0x1db5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM8,%XMM6;
0x1dbb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM8,%YMM14;
0x1dc0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM15,%XMM3;
0x1dc6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM6,%YMM2;
0x1dcb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R12,%RAX,1),%YMM7;
0x1dd1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM15,%YMM6;
0x1dd6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	%YMM5,0x40(%RSP);
0x1ddc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM7,%YMM0;
0x1de1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R10,%RAX,1),%YMM15;
0x1de7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM1,%XMM12;
0x1ded;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM3,%YMM1;
0x1df2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM4,%XMM5;
0x1df8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM12,%YMM10;
0x1dfd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R9,%RAX,1),%YMM3;
0x1e03;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R10,%RAX,1),%YMM4;
0x1e09;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM7,%XMM12;
0x1e0f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBW	%YMM3,%YMM15,%YMM7;
0x1e13;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQA	%YMM11,0xa0(%RSP);
0x1e1c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM5,%YMM11;
0x1e21;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R9,%RAX,1),%YMM15;
0x1e27;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSLLW	$0x1,%YMM7,%YMM7;
0x1e2c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	%YMM10,0x20(%RSP);
0x1e32;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM12,%YMM10;
0x1e37;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM11,%XMM8;
0x1e3d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM11,%YMM12;
0x1e42;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM15,%XMM3;
0x1e48;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM8,%YMM5;
0x1e4d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM4,%XMM11;
0x1e53;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM3,%YMM4;
0x1e58;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	(%RSI,%RAX,1),%YMM15;
0x1e5e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM11,%YMM8;
0x1e63;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBW	%YMM4,%YMM8,%YMM11;
0x1e67;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	(%R8,%RAX,1),%YMM8;
0x1e6d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSLLW	$0x1,%YMM11,%YMM3;
0x1e73;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQU	(%R8,%RAX,1),%YMM11;
0x1e79;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBW	%YMM15,%YMM8,%YMM4;
0x1e7e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM11,%XMM15;
0x1e84;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSLLW	$0x1,%YMM4,%YMM8;
0x1e89;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQU	(%RSI,%RAX,1),%YMM11;
0x1e8e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	%XMM15,%YMM4;
0x1e93;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM11,%XMM15;
0x1e99;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	%XMM15,%YMM11;
0x1e9e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM8,%YMM15;
0x1ea3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM8,%XMM8;
0x1ea9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBW	%YMM11,%YMM4,%YMM4;
0x1eae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM14,%YMM0,%YMM11;
0x1eb3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM0,%YMM14,%YMM0;
0x1eb7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM15,%YMM11,%YMM11;
0x1ebc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM7,%YMM14;
0x1ec1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM13,%YMM11,%YMM15;
0x1ec6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSLLW	$0x1,%YMM4,%YMM4;
0x1ecb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM11;
0x1ed0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM14,%YMM0,%YMM15;
0x1ed5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM2,%YMM10,%YMM14;
0x1ed9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM10,%YMM2,%YMM2;
0x1ede;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM7,%XMM10;
0x1ee4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM13,%YMM15,%YMM13;
0x1ee9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM10,%YMM7;
0x1eee;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM8,%YMM15;
0x1ef3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM13,%YMM0;
0x1ef8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM7,%YMM2,%YMM8;
0x1efc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM15,%YMM14,%YMM13;
0x1f01;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM11,%YMM11;
0x1f05;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQA	0x40(%RSP),%YMM2;
0x1f0b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM9,%YMM13,%YMM0;
0x1f10;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM0,%YMM14;
0x1f15;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM9,%YMM8,%YMM9;
0x1f1a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM9,%YMM15;
0x1f1f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM6,%YMM12,%YMM0;
0x1f23;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM15,%YMM14,%YMM13;
0x1f28;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM12,%YMM6,%YMM6;
0x1f2d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM4,%YMM14;
0x1f32;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM3,%YMM12;
0x1f37;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM14,%YMM0,%YMM10;
0x1f3c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM12,%YMM6,%YMM9;
0x1f41;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM2,%YMM10,%YMM7;
0x1f45;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM2,%YMM9,%YMM15;
0x1f49;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM4,%XMM4;
0x1f4f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM1,%YMM5,%YMM10;
0x1f53;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM5,%YMM1,%YMM1;
0x1f57;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM4,%YMM2;
0x1f5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM3,%XMM5;
0x1f62;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x23d6(%RIP),%YMM11,%YMM4;
0x1f6a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM7,%YMM8;
0x1f6f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM5,%YMM3;
0x1f74;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM0;
0x1f79;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM3,%YMM1,%YMM9;
0x1f7d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM8,%YMM14;
0x1f81;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM2,%YMM10,%YMM8;
0x1f85;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQA	0x20(%RSP),%YMM7;
0x1f8b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x23ad(%RIP),%YMM13,%YMM2;
0x1f93;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM7,%YMM8,%YMM6;
0x1f97;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM7,%YMM9,%YMM15;
0x1f9b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM6,%YMM12;
0x1fa0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x2398(%RIP),%YMM14,%YMM1;
0x1fa8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM0;
0x1fad;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM4,0x23a9(%RIP),%YMM11,%YMM11;
0x1fb7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM12,%YMM10;
0x1fbb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM2,0x239b(%RIP),%YMM13,%YMM13;
0x1fc5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x2373(%RIP),%YMM10,%YMM5;
0x1fcd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM1,0x2389(%RIP),%YMM14,%YMM14;
0x1fd7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM5,0x237f(%RIP),%YMM10,%YMM3;
0x1fe1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2197(%RIP),%YMM11,%YMM8;
0x1fe9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x218f(%RIP),%YMM13,%YMM7;
0x1ff1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2187(%RIP),%YMM14,%YMM9;
0x1ff9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x217f(%RIP),%YMM3,%YMM15;
0x2001;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSDW	%YMM7,%YMM8,%YMM6;
0x2006;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSDW	%YMM15,%YMM9,%YMM0;
0x200b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM6,%YMM12;
0x2011;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM0,%YMM10;
0x2017;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2181(%RIP),%YMM12,%YMM4;
0x201f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;MOV	0x98(%RSP),%RDX;
0x2027;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x2171(%RIP),%YMM10,%YMM11;
0x202f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSWB	%YMM11,%YMM4,%YMM2;
0x2034;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM2,%YMM13;
0x203a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VMOVDQU	%YMM13,(%RDX,%RAX,1);
0x203f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;LEA	0x20(%RAX),%RAX;
0x2043;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;CMP	%RAX,0x88(%RSP);
0x204b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;JNE	1d45 <main._omp_fn.0+0x795>;
