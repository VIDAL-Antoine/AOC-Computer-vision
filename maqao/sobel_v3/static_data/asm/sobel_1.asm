address;source_location;insn;indent
0x1d04;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;MOV	0x90(%RSP),%RDX;
0x1d0c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	(%R11,%RAX,1),%YMM6;
0x1d12;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQU	(%R13,%RAX,1),%YMM7;
0x1d19;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%RDX,%RAX,1),%YMM11;
0x1d1e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	(%R11,%RAX,1),%YMM8;
0x1d24;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	(%R13,%RAX,1),%YMM0;
0x1d2b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM6,%XMM14;
0x1d31;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPSUBW	%YMM0,%YMM8,%YMM15;
0x1d35;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM7,%XMM9;
0x1d3b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	%XMM14,%YMM3;
0x1d40;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVZXBW	%XMM9,%YMM4;
0x1d45;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM11,%YMM8;
0x1d4a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM11,%XMM0;
0x1d50;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPSUBW	%YMM4,%YMM3,%YMM1;
0x1d54;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM15,%YMM13;
0x1d59;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM1,%YMM5;
0x1d5e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM15,%XMM2;
0x1d64;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM0,%YMM15;
0x1d69;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R12,%RAX,1),%YMM4;
0x1d6f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM2,%YMM9;
0x1d74;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM8,%XMM6;
0x1d7a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM8,%YMM14;
0x1d7f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM15,%XMM3;
0x1d85;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM6,%YMM2;
0x1d8a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R12,%RAX,1),%YMM7;
0x1d90;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM15,%YMM6;
0x1d95;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	%YMM5,0x40(%RSP);
0x1d9b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM7,%YMM0;
0x1da0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R10,%RAX,1),%YMM15;
0x1da6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VEXTRACTI128	$0x1,%YMM1,%XMM12;
0x1dac;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM3,%YMM1;
0x1db1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM4,%XMM5;
0x1db7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VPMOVSXWD	%XMM12,%YMM10;
0x1dbc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	(%R9,%RAX,1),%YMM3;
0x1dc2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R10,%RAX,1),%YMM4;
0x1dc8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM7,%XMM12;
0x1dce;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBW	%YMM3,%YMM15,%YMM7;
0x1dd2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQA	%YMM11,0xa0(%RSP);
0x1ddb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM5,%YMM11;
0x1de0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VMOVDQU	(%R9,%RAX,1),%YMM15;
0x1de6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSLLW	$0x1,%YMM7,%YMM7;
0x1deb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:209;VMOVDQA	%YMM10,0x20(%RSP);
0x1df1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM12,%YMM10;
0x1df6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM11,%XMM8;
0x1dfc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM11,%YMM12;
0x1e01;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM15,%XMM3;
0x1e07;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXWD	%XMM8,%YMM5;
0x1e0c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM4,%XMM11;
0x1e12;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM3,%YMM4;
0x1e17;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	(%RSI,%RAX,1),%YMM15;
0x1e1d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVZXBW	%XMM11,%YMM8;
0x1e22;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBW	%YMM4,%YMM8,%YMM11;
0x1e26;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	(%R8,%RAX,1),%YMM8;
0x1e2c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSLLW	$0x1,%YMM11,%YMM3;
0x1e32;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQU	(%R8,%RAX,1),%YMM11;
0x1e38;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBW	%YMM15,%YMM8,%YMM4;
0x1e3d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM11,%XMM15;
0x1e43;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSLLW	$0x1,%YMM4,%YMM8;
0x1e48;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQU	(%RSI,%RAX,1),%YMM11;
0x1e4d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	%XMM15,%YMM4;
0x1e52;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM11,%XMM15;
0x1e58;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVZXBW	%XMM15,%YMM11;
0x1e5d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM8,%YMM15;
0x1e62;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM8,%XMM8;
0x1e68;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBW	%YMM11,%YMM4,%YMM4;
0x1e6d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM14,%YMM0,%YMM11;
0x1e72;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM0,%YMM14,%YMM0;
0x1e76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM15,%YMM11,%YMM11;
0x1e7b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM7,%YMM14;
0x1e80;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM13,%YMM11,%YMM15;
0x1e85;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSLLW	$0x1,%YMM4,%YMM4;
0x1e8a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM11;
0x1e8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM14,%YMM0,%YMM15;
0x1e94;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM2,%YMM10,%YMM14;
0x1e98;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM10,%YMM2,%YMM2;
0x1e9d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM7,%XMM10;
0x1ea3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM13,%YMM15,%YMM13;
0x1ea8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM10,%YMM7;
0x1ead;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM8,%YMM15;
0x1eb2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM13,%YMM0;
0x1eb7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM7,%YMM2,%YMM8;
0x1ebb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM15,%YMM14,%YMM13;
0x1ec0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM11,%YMM11;
0x1ec4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQA	0x40(%RSP),%YMM2;
0x1eca;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM9,%YMM13,%YMM0;
0x1ecf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM0,%YMM14;
0x1ed4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM9,%YMM8,%YMM9;
0x1ed9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM9,%YMM15;
0x1ede;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM6,%YMM12,%YMM0;
0x1ee2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM15,%YMM14,%YMM13;
0x1ee7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM12,%YMM6,%YMM6;
0x1eec;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM4,%YMM14;
0x1ef1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM3,%YMM12;
0x1ef6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM14,%YMM0,%YMM10;
0x1efb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM12,%YMM6,%YMM9;
0x1f00;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM2,%YMM10,%YMM7;
0x1f04;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM2,%YMM9,%YMM15;
0x1f08;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VEXTRACTI128	$0x1,%YMM4,%XMM4;
0x1f0e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPSUBD	%YMM1,%YMM5,%YMM10;
0x1f12;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPSUBD	%YMM5,%YMM1,%YMM1;
0x1f16;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPMOVSXWD	%XMM4,%YMM2;
0x1f1b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VEXTRACTI128	$0x1,%YMM3,%XMM5;
0x1f21;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x2417(%RIP),%YMM11,%YMM4;
0x1f29;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM7,%YMM8;
0x1f2e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPMOVSXWD	%XMM5,%YMM3;
0x1f33;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM0;
0x1f38;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM3,%YMM1,%YMM9;
0x1f3c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM8,%YMM14;
0x1f40;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM2,%YMM10,%YMM8;
0x1f44;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VMOVDQA	0x20(%RSP),%YMM7;
0x1f4a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x23ee(%RIP),%YMM13,%YMM2;
0x1f52;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:212;VPADDD	%YMM7,%YMM8,%YMM6;
0x1f56;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:211;VPADDD	%YMM7,%YMM9,%YMM15;
0x1f5a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM6,%YMM12;
0x1f5f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x23d9(%RIP),%YMM14,%YMM1;
0x1f67;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPABSD	%YMM15,%YMM0;
0x1f6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM4,0x23ea(%RIP),%YMM11,%YMM11;
0x1f76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:213;VPADDD	%YMM0,%YMM12,%YMM10;
0x1f7a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM2,0x23dc(%RIP),%YMM13,%YMM13;
0x1f84;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPCMPGTD	0x23b4(%RIP),%YMM10,%YMM5;
0x1f8c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM1,0x23ca(%RIP),%YMM14,%YMM14;
0x1f96;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPBLENDVB	%YMM5,0x23c0(%RIP),%YMM10,%YMM3;
0x1fa0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x21d8(%RIP),%YMM11,%YMM8;
0x1fa8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x21d0(%RIP),%YMM13,%YMM7;
0x1fb0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x21c8(%RIP),%YMM14,%YMM9;
0x1fb8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x21c0(%RIP),%YMM3,%YMM15;
0x1fc0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSDW	%YMM7,%YMM8,%YMM6;
0x1fc5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSDW	%YMM15,%YMM9,%YMM0;
0x1fca;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM6,%YMM12;
0x1fd0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM0,%YMM10;
0x1fd6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x21c2(%RIP),%YMM12,%YMM4;
0x1fde;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;MOV	0x98(%RSP),%RDX;
0x1fe6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPAND	0x21b2(%RIP),%YMM10,%YMM11;
0x1fee;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPACKUSWB	%YMM11,%YMM4,%YMM2;
0x1ff3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VPERMQ	$-0x28,%YMM2,%YMM13;
0x1ff9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:214;VMOVDQU	%YMM13,(%RDX,%RAX,1);
0x1ffe;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;LEA	0x20(%RAX),%RAX;
0x2002;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;CMP	%RAX,0x88(%RSP);
0x200a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:204;JNE	1d04 <main._omp_fn.0+0x764>;
