address;source_location;insn;indent
0x1728;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;MOVB	$-0x1,(%R15,%RAX,1);  (2) 
0x172d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x1(%RAX),%RAX;  (2) 
0x1731;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	%R8,%RAX;  (2) 
0x1734;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JNE	1b28 <main+0x9c8>;  (2) 
0x173a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;LEA	0xf00(%R14),%R14;
0x1741;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;LEA	0xf00(%R13),%R13;
0x1748;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;CMP	$0x2a0300,%R14;
0x174f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;LEA	0xf00(%R12),%R12;
0x1757;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;JE	1bc0 <main+0xa60>;
0x175d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	(%RBX),%R11;
0x1760;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x6(%R12),%R10;
0x1765;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;ADD	%R14,%R11;
0x1768;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x2(%R12),%R9;
0x176d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x3(%R12),%R8;
0x1772;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x5(%R12),%RDI;
0x1777;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x1(%R12),%RSI;
0x177c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x7(%R12),%RCX;
0x1781;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	(%R15,%R14,1),%RDX;
0x1785;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;XOR	%EAX,%EAX;
0x1787;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	(%R12,%RAX,1),%YMM8;  (1) 
0x178d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	(%R11,%RAX,1),%YMM0;  (1) 
0x1793;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQU	(%R12,%RAX,1),%YMM6;  (1) 
0x1799;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPSUBW	%YMM0,%YMM8,%YMM15;  (1) 
0x179d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQA	(%R11,%RAX,1),%YMM7;  (1) 
0x17a3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM15,%YMM13;  (1) 
0x17a8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%R10,%RAX,1),%YMM8;  (1) 
0x17ae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM6,%XMM14;  (1) 
0x17b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM7,%XMM9;  (1) 
0x17ba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	%XMM14,%YMM3;  (1) 
0x17bf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM8,%XMM0;  (1) 
0x17c5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	%XMM9,%YMM4;  (1) 
0x17ca;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%R10,%RAX,1),%YMM11;  (1) 
0x17d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPSUBW	%YMM4,%YMM3,%YMM1;  (1) 
0x17d4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM15,%XMM2;  (1) 
0x17da;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM0,%YMM15;  (1) 
0x17df;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%R9,%RAX,1),%YMM4;  (1) 
0x17e5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM1,%YMM5;  (1) 
0x17ea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM11,%XMM6;  (1) 
0x17f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM2,%YMM9;  (1) 
0x17f5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM15,%XMM3;  (1) 
0x17fb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM6,%YMM2;  (1) 
0x1800;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%R9,%RAX,1),%YMM7;  (1) 
0x1806;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM15,%YMM6;  (1) 
0x180b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQA	%YMM5,0x80(%RSP);  (1) 
0x1814;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM11,%YMM14;  (1) 
0x1819;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%R8,%RAX,1),%YMM15;  (1) 
0x181f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM7,%YMM0;  (1) 
0x1824;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM1,%XMM12;  (1) 
0x182a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM3,%YMM1;  (1) 
0x182f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM4,%XMM5;  (1) 
0x1835;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM12,%YMM10;  (1) 
0x183a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%RDI,%RAX,1),%YMM3;  (1) 
0x1840;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM5,%YMM11;  (1) 
0x1845;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%R8,%RAX,1),%YMM4;  (1) 
0x184b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM7,%XMM12;  (1) 
0x1851;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBW	%YMM3,%YMM15,%YMM7;  (1) 
0x1855;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%RDI,%RAX,1),%YMM15;  (1) 
0x185a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSLLW	$0x1,%YMM7,%YMM7;  (1) 
0x185f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQA	%YMM10,0x60(%RSP);  (1) 
0x1865;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM12,%YMM10;  (1) 
0x186a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM11,%XMM8;  (1) 
0x1870;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM11,%YMM12;  (1) 
0x1875;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM15,%XMM3;  (1) 
0x187b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM8,%YMM5;  (1) 
0x1880;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM4,%XMM11;  (1) 
0x1886;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM3,%YMM4;  (1) 
0x188b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	(%RCX,%RAX,1),%YMM15;  (1) 
0x1891;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM11,%YMM8;  (1) 
0x1896;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBW	%YMM4,%YMM8,%YMM11;  (1) 
0x189a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	(%RSI,%RAX,1),%YMM8;  (1) 
0x18a0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSLLW	$0x1,%YMM11,%YMM3;  (1) 
0x18a6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQU	(%RSI,%RAX,1),%YMM11;  (1) 
0x18ab;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBW	%YMM15,%YMM8,%YMM4;  (1) 
0x18b0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM11,%XMM15;  (1) 
0x18b6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSLLW	$0x1,%YMM4,%YMM8;  (1) 
0x18bb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQU	(%RCX,%RAX,1),%YMM11;  (1) 
0x18c0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	%XMM15,%YMM4;  (1) 
0x18c5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM11,%XMM15;  (1) 
0x18cb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	%XMM15,%YMM11;  (1) 
0x18d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM8,%YMM15;  (1) 
0x18d5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM8,%XMM8;  (1) 
0x18db;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBW	%YMM11,%YMM4,%YMM4;  (1) 
0x18e0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM14,%YMM0,%YMM11;  (1) 
0x18e5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM0,%YMM14,%YMM0;  (1) 
0x18e9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM15,%YMM11,%YMM11;  (1) 
0x18ee;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM7,%YMM14;  (1) 
0x18f3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM13,%YMM11,%YMM15;  (1) 
0x18f8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSLLW	$0x1,%YMM4,%YMM4;  (1) 
0x18fd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM15,%YMM11;  (1) 
0x1902;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM14,%YMM0,%YMM15;  (1) 
0x1907;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM2,%YMM10,%YMM14;  (1) 
0x190b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM10,%YMM2,%YMM2;  (1) 
0x1910;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM7,%XMM10;  (1) 
0x1916;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM13,%YMM15,%YMM13;  (1) 
0x191b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM10,%YMM7;  (1) 
0x1920;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM8,%YMM15;  (1) 
0x1925;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM13,%YMM0;  (1) 
0x192a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM7,%YMM2,%YMM8;  (1) 
0x192e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM15,%YMM14,%YMM13;  (1) 
0x1933;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM0,%YMM11,%YMM11;  (1) 
0x1937;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQA	0x80(%RSP),%YMM2;  (1) 
0x1940;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM9,%YMM13,%YMM0;  (1) 
0x1945;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM0,%YMM14;  (1) 
0x194a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM9,%YMM8,%YMM9;  (1) 
0x194f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM9,%YMM15;  (1) 
0x1954;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM6,%YMM12,%YMM0;  (1) 
0x1958;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM15,%YMM14,%YMM13;  (1) 
0x195d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM12,%YMM6,%YMM6;  (1) 
0x1962;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM4,%YMM14;  (1) 
0x1967;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM3,%YMM12;  (1) 
0x196c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM14,%YMM0,%YMM10;  (1) 
0x1971;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM12,%YMM6,%YMM9;  (1) 
0x1976;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM2,%YMM10,%YMM7;  (1) 
0x197a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM2,%YMM9,%YMM15;  (1) 
0x197e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM4,%XMM4;  (1) 
0x1984;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM1,%YMM5,%YMM10;  (1) 
0x1988;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM5,%YMM1,%YMM1;  (1) 
0x198c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM4,%YMM2;  (1) 
0x1991;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM3,%XMM5;  (1) 
0x1997;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x1a01(%RIP),%YMM11,%YMM4;  (1) 
0x199f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM7,%YMM8;  (1) 
0x19a4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM5,%YMM3;  (1) 
0x19a9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM15,%YMM0;  (1) 
0x19ae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM3,%YMM1,%YMM9;  (1) 
0x19b2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM0,%YMM8,%YMM14;  (1) 
0x19b6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM2,%YMM10,%YMM8;  (1) 
0x19ba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQA	0x60(%RSP),%YMM7;  (1) 
0x19c0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x19d8(%RIP),%YMM13,%YMM2;  (1) 
0x19c8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM7,%YMM8,%YMM6;  (1) 
0x19cc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM7,%YMM9,%YMM15;  (1) 
0x19d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM6,%YMM12;  (1) 
0x19d5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x19c3(%RIP),%YMM14,%YMM1;  (1) 
0x19dd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM15,%YMM0;  (1) 
0x19e2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM2,0x19d4(%RIP),%YMM13,%YMM13;  (1) 
0x19ec;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM0,%YMM12,%YMM10;  (1) 
0x19f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM4,0x19c6(%RIP),%YMM11,%YMM11;  (1) 
0x19fa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x199e(%RIP),%YMM10,%YMM5;  (1) 
0x1a02;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM1,0x19b4(%RIP),%YMM14,%YMM14;  (1) 
0x1a0c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM5,0x19aa(%RIP),%YMM10,%YMM3;  (1) 
0x1a16;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x1762(%RIP),%YMM11,%YMM8;  (1) 
0x1a1e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x175a(%RIP),%YMM13,%YMM7;  (1) 
0x1a26;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x1752(%RIP),%YMM14,%YMM9;  (1) 
0x1a2e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x174a(%RIP),%YMM3,%YMM15;  (1) 
0x1a36;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPACKUSDW	%YMM7,%YMM8,%YMM6;  (1) 
0x1a3b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPACKUSDW	%YMM15,%YMM9,%YMM0;  (1) 
0x1a40;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPERMQ	$-0x28,%YMM6,%YMM12;  (1) 
0x1a46;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPERMQ	$-0x28,%YMM0,%YMM10;  (1) 
0x1a4c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x174c(%RIP),%YMM12,%YMM4;  (1) 
0x1a54;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x1744(%RIP),%YMM10,%YMM11;  (1) 
0x1a5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPACKUSWB	%YMM11,%YMM4,%YMM2;  (1) 
0x1a61;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPERMQ	$-0x28,%YMM2,%YMM13;  (1) 
0x1a67;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VMOVDQA	%YMM13,(%RDX,%RAX,1);  (1) 
0x1a6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x20(%RAX),%RAX;  (1) 
0x1a70;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	$0xee0,%RAX;  (1) 
0x1a76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JNE	1787 <main+0x627>;  (1) 
0x1a7c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;LEA	(%RBX),%R11;
0x1a7f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;LEA	(%R14),%R10;
0x1a82;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;SUB	%R13,%R11;
0x1a85;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;ADD	$0xee8,%R10;
0x1a8c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%R9;
0x1a8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%RDI;
0x1a92;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;ADD	%R11,%R10;
0x1a95;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%R9;
0x1a98;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee2,%RDI;
0x1a9f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%RBX),%RDX;
0x1aa2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%R14),%R11;
0x1aa5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%R9,%RDI;
0x1aa8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOV	%R10,0x80(%RSP);
0x1ab0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%RSI;
0x1ab3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%RCX;
0x1ab6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%R13,%RDX;
0x1ab9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	$0xee7,%R11;
0x1ac0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%RBX),%R10;
0x1ac3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%R14),%R9;
0x1ac6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%RSI;
0x1ac9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%RDX,%R11;
0x1acc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%R13,%R10;
0x1acf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee6,%RCX;
0x1ad6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	$0xee1,%R9;
0x1add;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%RSI,%RCX;
0x1ae0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%R10,%R9;
0x1ae3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	%RDI,0x60(%RSP);
0x1ae8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%RSI;
0x1aeb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	%R11,0x50(%RSP);
0x1af0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%RDI;
0x1af3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%R11;
0x1af6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%R10;
0x1af9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%RDI;
0x1afc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee5,%R11;
0x1b03;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%RSI;
0x1b06;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee3,%R10;
0x1b0d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;LEA	(%R13),%RAX;
0x1b11;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;LEA	0xefd(%R14),%R8;
0x1b18;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	%RCX,0x58(%RSP);
0x1b1d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%RDI,%R11;
0x1b20;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	%R9,0x48(%RSP);
0x1b25;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%RSI,%R10;
0x1b28;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOV	0x80(%RSP),%RCX;  (2) 
0x1b30;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOVZX	(%RBX,%RAX,1),%EDX;  (2) 
0x1b34;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	0x60(%RSP),%RDI;  (2) 
0x1b39;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOVZX	(%RCX,%RAX,1),%R9D;  (2) 
0x1b3e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	0x58(%RSP),%RSI;  (2) 
0x1b43;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%RDI,%RAX,1),%ECX;  (2) 
0x1b47;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;SUB	%EDX,%R9D;  (2) 
0x1b4a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%RSI,%RAX,1),%EDI;  (2) 
0x1b4e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	0x50(%RSP),%RDX;  (2) 
0x1b53;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	0x48(%RSP),%RSI;  (2) 
0x1b58;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOVZX	(%RDX,%RAX,1),%EDX;  (2) 
0x1b5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOVZX	(%RSI,%RAX,1),%ESI;  (2) 
0x1b60;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%ESI,%EDX;  (2) 
0x1b62;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%RDI),%ESI;  (2) 
0x1b64;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%ECX,%ESI;  (2) 
0x1b66;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%EDX,%EDX;  (2) 
0x1b68;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%ESI,%EDX;  (2) 
0x1b6a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%EDI,%ECX;  (2) 
0x1b6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%R9D,%EDX;  (2) 
0x1b6f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%EDX,%ESI;  (2) 
0x1b71;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SAR	$0x1f,%ESI;  (2) 
0x1b74;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;XOR	%ESI,%EDX;  (2) 
0x1b76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SUB	%ESI,%EDX;  (2) 
0x1b78;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%EDX,0x44(%RSP);  (2) 
0x1b7c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%R11,%RAX,1),%ESI;  (2) 
0x1b81;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%R10,%RAX,1),%EDX;  (2) 
0x1b86;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%EDX,%ESI;  (2) 
0x1b88;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%ESI,%ECX;  (2) 
0x1b8a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%ESI,%ECX;  (2) 
0x1b8c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%R9D,%ECX;  (2) 
0x1b8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%ECX,%R9D;  (2) 
0x1b92;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SAR	$0x1f,%R9D;  (2) 
0x1b96;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;XOR	%R9D,%ECX;  (2) 
0x1b99;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SUB	%R9D,%ECX;  (2) 
0x1b9c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;ADD	0x44(%RSP),%ECX;  (2) 
0x1ba0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;CMP	$0x64,%ECX;  (2) 
0x1ba3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;JG	1728 <main+0x5c8>;  (2) 
0x1ba9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;MOV	%CL,(%R15,%RAX,1);  (2) 
0x1bad;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x1(%RAX),%RAX;  (2) 
0x1bb1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	%R8,%RAX;  (2) 
0x1bb4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JE	173a <main+0x5da>;  (2) 
0x1bba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JMP	1b28 <main+0x9c8>;  (2) 
