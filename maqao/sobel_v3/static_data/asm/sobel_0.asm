address;source_location;insn;indent
0x1660;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQU	(%R10),%YMM3;
0x1665;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;LEA	0x60(%R10),%R10;
0x1669;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQU	-0x40(%R10),%YMM0;
0x166f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;LEA	0x60(%R11),%R11;
0x1673;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQU	-0x20(%R10),%YMM4;
0x1679;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;CMP	%R10,%R9;
0x167c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2a5b(%RIP),%YMM3,%YMM2;
0x1685;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2a52(%RIP),%YMM0,%YMM8;
0x168e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM2,%YMM1;
0x1694;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2a43(%RIP),%YMM4,%YMM12;
0x169d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM8,%YMM9;
0x16a3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2a54(%RIP),%YMM3,%YMM6;
0x16ac;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM12,%YMM13;
0x16b2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2a45(%RIP),%YMM0,%YMM10;
0x16bb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM1,%YMM6,%YMM7;
0x16bf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2a38(%RIP),%YMM4,%YMM14;
0x16c8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM9,%YMM10,%YMM11;
0x16cd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM13,%YMM14,%YMM15;
0x16d2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM11,%YMM7,%YMM5;
0x16d8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM7,%YMM15,%YMM2;
0x16de;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM15,%YMM11,%YMM3;
0x16e4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM5,%YMM11,%YMM0;
0x16ea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM2,%YMM7,%YMM1;
0x16f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM3,%YMM15,%YMM4;
0x16f6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM1,%YMM0,%YMM8;
0x16fc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM0,%YMM4,%YMM6;
0x1702;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM8,%YMM1,%YMM9;
0x1708;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM6,%YMM0,%YMM7;
0x170e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM9,%YMM14;
0x1714;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM4,%YMM1,%YMM10;
0x171a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM14,%YMM9,%YMM15;
0x1720;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM10,%YMM4,%YMM11;
0x1726;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM7,%YMM12;
0x172c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM15,%YMM5;
0x1731;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0xb,%YMM7,%YMM12,%YMM13;
0x1737;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM11,%YMM10;
0x173c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM5,%YMM4;
0x1741;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM15,%XMM0;
0x1747;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM10,%YMM14;
0x174c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM5,%XMM2;
0x1752;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM0,%YMM3;
0x1757;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM11,%XMM11;
0x175d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM2,%YMM1;
0x1762;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM11,%YMM12;
0x1767;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM3,%YMM7;
0x176c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM10,%XMM15;
0x1772;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM13,%YMM10;
0x1777;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM4,%YMM6;
0x177b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM12,%YMM2;
0x1780;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM1,%YMM4;
0x1784;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM3,%XMM8;
0x178a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM15,%YMM3;
0x178f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM12,%XMM1;
0x1795;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM10,%YMM12;
0x179a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM13,%XMM13;
0x17a0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM8,%YMM9;
0x17a5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM14,%YMM8;
0x17aa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM13,%YMM11;
0x17af;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM12,%YMM14;
0x17b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM9,%YMM0;
0x17b9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM1,%YMM9;
0x17be;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM10,%XMM15;
0x17c4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM7,%YMM5;
0x17c8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM15,%YMM1;
0x17cd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM2,%YMM7;
0x17d1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM14,%YMM15;
0x17d6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM9,%YMM2;
0x17db;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM11,%YMM9;
0x17e0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM14,%XMM14;
0x17e6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM9,%YMM10;
0x17eb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM14,%YMM9;
0x17f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM11,%XMM11;
0x17f6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x2922(%RIP),%YMM15,%YMM15;
0x17fe;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM11,%YMM12;
0x1803;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM1,%YMM13;
0x1807;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM12,%YMM11;
0x180c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM6,%YMM1;
0x1810;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x2908(%RIP),%YMM9,%YMM12;
0x1818;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM6,%XMM6;
0x181e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM6,%YMM6;
0x1822;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x2915(%RIP),%YMM1,%YMM15;
0x182b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM13,%YMM1;
0x1830;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM13,%XMM13;
0x1836;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM4,%YMM14;
0x183a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x28fd(%RIP),%YMM12,%YMM6;
0x1843;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM13,%YMM12;
0x1848;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x28d0(%RIP),%YMM1,%YMM9;
0x1850;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM4,%XMM4;
0x1856;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM4,%YMM4;
0x185a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x28be(%RIP),%YMM12,%YMM1;
0x1862;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM10,%YMM13;
0x1867;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x28d0(%RIP),%YMM9,%YMM14;
0x1870;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM10,%XMM10;
0x1876;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM5,%YMM9;
0x187a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x28bd(%RIP),%YMM1,%YMM4;
0x1883;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM10,%YMM1;
0x1888;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x2890(%RIP),%YMM13,%YMM12;
0x1890;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM5,%XMM5;
0x1896;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM5,%YMM5;
0x189a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVAPD	%YMM9,%YMM13;
0x189f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x2879(%RIP),%YMM1,%YMM9;
0x18a7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2890(%RIP),%YMM12,%YMM13;
0x18b0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM0,%YMM12;
0x18b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM0,%XMM0;
0x18ba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM3,%YMM3;
0x18be;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2879(%RIP),%YMM9,%YMM5;
0x18c7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM0,%YMM9;
0x18cb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM8,%YMM0;
0x18d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM8,%XMM8;
0x18d6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM11,%YMM10;
0x18db;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM11,%XMM11;
0x18e1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2876(%RIP),%YMM15,%YMM0;
0x18ea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM8,%YMM15;
0x18ef;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x2829(%RIP),%YMM10,%YMM1;
0x18f7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2860(%RIP),%YMM6,%YMM15;
0x1900;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM3,%YMM6;
0x1904;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM3,%XMM3;
0x190a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM11,%YMM10;
0x190f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2828(%RIP),%YMM1,%YMM12;
0x1918;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM0,%XMM1;
0x191c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x283b(%RIP),%YMM14,%YMM6;
0x1925;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM3,%YMM14;
0x1929;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM6,%XMM0;
0x192d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x27eb(%RIP),%YMM10,%YMM11;
0x1935;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2822(%RIP),%YMM4,%YMM14;
0x193e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM7,%YMM4;
0x1942;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM7,%XMM7;
0x1948;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM14,%XMM8;
0x194d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x27ea(%RIP),%YMM9,%YMM11;
0x1956;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM15,%XMM9;
0x195b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x27fc(%RIP),%YMM13,%YMM4;
0x1964;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM7,%YMM13;
0x1968;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM4,%XMM4;
0x196c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM8,%YMM0,%YMM15;
0x1972;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM15,%YMM6;
0x1977;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM9,%YMM1,%YMM10;
0x197d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x27da(%RIP),%YMM5,%YMM13;
0x1986;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM2,%YMM5;
0x198a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM2,%XMM2;
0x1990;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM13,%XMM13;
0x1995;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x27c2(%RIP),%YMM12,%YMM5;
0x199e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM2,%YMM12;
0x19a2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM5,%XMM5;
0x19a6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM13,%YMM4,%YMM2;
0x19ac;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM2,%YMM1;
0x19b0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x27a7(%RIP),%YMM11,%YMM12;
0x19b9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM12,%XMM12;
0x19be;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM10,%YMM11;
0x19c3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x27b5(%RIP),%YMM6,%YMM3;
0x19cb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x27ad(%RIP),%YMM1,%YMM0;
0x19d3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM12,%YMM5,%YMM10;
0x19d9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x279f(%RIP),%YMM11,%YMM14;
0x19e1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM10,%YMM11;
0x19e6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSDW	%YMM3,%YMM14,%YMM7;
0x19eb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM7,%YMM9;
0x19f1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x27a7(%RIP),%YMM9,%YMM14;
0x19f9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x277f(%RIP),%YMM11,%YMM8;
0x1a01;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSDW	%YMM8,%YMM0,%YMM15;
0x1a06;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM15,%YMM6;
0x1a0c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x278c(%RIP),%YMM6,%YMM3;
0x1a14;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSWB	%YMM3,%YMM14,%YMM7;
0x1a18;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	0x2860(%RIP),%YMM14;
0x1a20;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM7,%YMM9;
0x1a26;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VMOVDQA	%YMM9,%YMM13;
0x1a2b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERM2I128	$0,%YMM9,%YMM9,%YMM4;
0x1a31;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x27a6(%RIP),%YMM9,%YMM1;
0x1a3a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$-0x7c,%YMM9,%YMM8;
0x1a40;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2857(%RIP),%YMM9,%YMM7;
0x1a49;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM1,%YMM5;
0x1a4f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2768(%RIP),%YMM4,%YMM2;
0x1a58;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x27bf(%RIP),%YMM9,%YMM10;
0x1a61;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x27f6(%RIP),%YMM9,%YMM6;
0x1a6a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM7,%YMM9;
0x1a70;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2847(%RIP),%YMM13,%YMM4;
0x1a79;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM5,%YMM10,%YMM11;
0x1a7d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x285a(%RIP),%YMM13,%YMM1;
0x1a86;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2771(%RIP),%YMM2,%YMM12;
0x1a8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM1,%YMM5;
0x1a95;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM9,%YMM4,%YMM2;
0x1a9a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM11,%YMM12,%YMM0;
0x1a9f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2878(%RIP),%YMM13,%YMM13;
0x1aa8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x278f(%RIP),%YMM8,%YMM15;
0x1ab1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM5,%YMM13,%YMM10;
0x1ab5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2842(%RIP),%YMM2,%YMM12;
0x1abe;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPBLENDVB	%YMM14,%YMM6,%YMM15,%YMM3;
0x1ac4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQU	%YMM0,-0x60(%R11);
0x1aca;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM10,%YMM12,%YMM11;
0x1acf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQU	%YMM3,-0x40(%R11);
0x1ad5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQU	%YMM11,-0x20(%R11);
0x1adb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21;JNE	1660 <main._omp_fn.0+0xc0>;
