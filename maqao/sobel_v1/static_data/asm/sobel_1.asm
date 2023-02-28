address;source_location;insn;indent
0x1230;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;LEA	(%R14),%RCX;
0x1233;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;MOV	$0x2a3000,%EDX;
0x1238;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;MOV	$0x1,%ESI;
0x123d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;LEA	(%R15),%RDI;
0x1240;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;CALL	10e0 <.plt.sec@start+0x10>;
0x1245;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;TEST	%RAX,%RAX;
0x1248;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;LEA	(%RAX),%R8;
0x124b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;VMOVAPD	0x2ecd(%RIP),%YMM13;
0x1253;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;VMOVAPD	0x2ee5(%RIP),%YMM12;
0x125b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;JE	175f <main+0x5ff>;
0x1261;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;LEA	(%R15),%RAX;
0x1264;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;LEA	0x2a3000(%R15),%RDX;
0x126b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;NOPL	(%RAX,%RAX,1);
0x1270;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQA	(%RAX),%YMM1;  (0) 
0x1274;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;LEA	0x60(%RAX),%RAX;  (0) 
0x1278;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQA	-0x40(%RAX),%YMM0;  (0) 
0x127d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQA	-0x20(%RAX),%YMM7;  (0) 
0x1282;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2e55(%RIP),%YMM1,%YMM8;  (0) 
0x128b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2e4c(%RIP),%YMM0,%YMM14;  (0) 
0x1294;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM8,%YMM9;  (0) 
0x129a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2e3d(%RIP),%YMM7,%YMM5;  (0) 
0x12a3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM14,%YMM15;  (0) 
0x12a9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2e4e(%RIP),%YMM1,%YMM10;  (0) 
0x12b2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM5,%YMM2;  (0) 
0x12b8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2e3f(%RIP),%YMM0,%YMM3;  (0) 
0x12c1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM9,%YMM10,%YMM11;  (0) 
0x12c6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x2e31(%RIP),%YMM7,%YMM4;  (0) 
0x12cf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM15,%YMM3,%YMM6;  (0) 
0x12d4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM2,%YMM4,%YMM7;  (0) 
0x12d8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM6,%YMM11,%YMM1;  (0) 
0x12de;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM11,%YMM7,%YMM10;  (0) 
0x12e4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM7,%YMM6,%YMM8;  (0) 
0x12ea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM1,%YMM6,%YMM0;  (0) 
0x12f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM10,%YMM11,%YMM11;  (0) 
0x12f6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM11,%YMM0,%YMM3;  (0) 
0x12fc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM3,%YMM11,%YMM6;  (0) 
0x1302;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM8,%YMM7,%YMM9;  (0) 
0x1308;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM6,%YMM7;  (0) 
0x130e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM0,%YMM9,%YMM14;  (0) 
0x1314;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM7,%YMM6,%YMM1;  (0) 
0x131a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM14,%YMM0,%YMM15;  (0) 
0x1320;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM9,%YMM11,%YMM5;  (0) 
0x1326;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM15,%YMM2;  (0) 
0x132c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM5,%YMM9,%YMM4;  (0) 
0x1332;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM1,%XMM0;  (0) 
0x1338;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM1,%YMM8;  (0) 
0x133d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM0,%YMM10;  (0) 
0x1342;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM4,%YMM7;  (0) 
0x1347;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0xb,%YMM15,%YMM2,%YMM11;  (0) 
0x134d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM10,%XMM5;  (0) 
0x1353;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM10,%YMM3;  (0) 
0x1358;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM4,%XMM4;  (0) 
0x135e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM5,%YMM2;  (0) 
0x1363;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM4,%YMM1;  (0) 
0x1368;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM8,%YMM9;  (0) 
0x136d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM8,%XMM14;  (0) 
0x1373;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM7,%YMM10;  (0) 
0x1378;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM3,%YMM8;  (0) 
0x137c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM14,%YMM15;  (0) 
0x1381;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM2,%YMM0;  (0) 
0x1385;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM1,%YMM3;  (0) 
0x138a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM7,%XMM14;  (0) 
0x1390;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM1,%XMM2;  (0) 
0x1396;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM11,%YMM1;  (0) 
0x139b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM15,%YMM6;  (0) 
0x13a0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM14,%YMM15;  (0) 
0x13a5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM1,%YMM14;  (0) 
0x13aa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM2,%YMM4;  (0) 
0x13af;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM14,%YMM14;  (0) 
0x13b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM11,%XMM11;  (0) 
0x13ba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM15,%YMM5;  (0) 
0x13bf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM11,%YMM15;  (0) 
0x13c4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM3,%YMM7;  (0) 
0x13c8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM15,%YMM11;  (0) 
0x13cd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM1,%XMM3;  (0) 
0x13d3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM15,%XMM15;  (0) 
0x13d9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM4,%YMM2;  (0) 
0x13dd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM3,%YMM4;  (0) 
0x13e2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM4,%YMM1;  (0) 
0x13e6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM15,%YMM3;  (0) 
0x13eb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM3,%YMM4;  (0) 
0x13ef;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM14,%YMM3;  (0) 
0x13f4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM9,%YMM9;  (0) 
0x13f9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM14,%XMM14;  (0) 
0x13ff;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM11,%YMM11;  (0) 
0x1404;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM3,%YMM3;  (0) 
0x1409;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM9,%YMM15;  (0) 
0x140e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM9,%XMM9;  (0) 
0x1414;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM10,%YMM10;  (0) 
0x1419;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	%YMM12,%YMM15,%YMM3;  (0) 
0x141e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM9,%YMM15;  (0) 
0x1423;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM14,%YMM9;  (0) 
0x1428;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM9,%YMM14;  (0) 
0x142d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	%YMM12,%YMM14,%YMM15;  (0) 
0x1432;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM1,%YMM14;  (0) 
0x1436;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM1,%XMM1;  (0) 
0x143c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVAPD	%YMM15,%YMM9;  (0) 
0x1441;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM6,%YMM15;  (0) 
0x1445;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM6,%XMM6;  (0) 
0x144b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM14,%YMM14;  (0) 
0x1450;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	%YMM12,%YMM15,%YMM14;  (0) 
0x1455;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM6,%YMM15;  (0) 
0x1459;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM1,%YMM6;  (0) 
0x145d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM6,%YMM1;  (0) 
0x1462;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVAPD	%YMM15,%YMM6;  (0) 
0x1466;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM11,%YMM15;  (0) 
0x146b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM11,%XMM11;  (0) 
0x1471;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	%YMM12,%YMM1,%YMM6;  (0) 
0x1476;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM8,%YMM1;  (0) 
0x147b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM15,%YMM15;  (0) 
0x1480;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM8,%XMM8;  (0) 
0x1486;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	%YMM12,%YMM1,%YMM15;  (0) 
0x148b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM8,%YMM1;  (0) 
0x1490;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM11,%YMM8;  (0) 
0x1495;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM8,%YMM11;  (0) 
0x149a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	%YMM12,%YMM11,%YMM1;  (0) 
0x149f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM4,%YMM11;  (0) 
0x14a3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM4,%XMM4;  (0) 
0x14a9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVAPD	%YMM1,%YMM8;  (0) 
0x14ad;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM0,%YMM1;  (0) 
0x14b1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM0,%XMM0;  (0) 
0x14b7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM11,%YMM11;  (0) 
0x14bc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	%YMM12,%YMM1,%YMM11;  (0) 
0x14c1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM0,%YMM1;  (0) 
0x14c5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM4,%YMM0;  (0) 
0x14c9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	%YMM13,%YMM0,%YMM4;  (0) 
0x14ce;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVAPD	%YMM1,%YMM0;  (0) 
0x14d2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM10,%YMM1;  (0) 
0x14d7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM10,%XMM10;  (0) 
0x14dd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	%YMM12,%YMM4,%YMM0;  (0) 
0x14e2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM10,%YMM4;  (0) 
0x14e7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x2c70(%RIP),%YMM1,%YMM3;  (0) 
0x14f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM5,%YMM1;  (0) 
0x14f4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM5,%XMM5;  (0) 
0x14fa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM5,%YMM10;  (0) 
0x14fe;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x2c59(%RIP),%YMM4,%YMM9;  (0) 
0x1507;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM2,%YMM4;  (0) 
0x150b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x2c4c(%RIP),%YMM1,%YMM14;  (0) 
0x1514;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM7,%YMM1;  (0) 
0x1518;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM2,%XMM2;  (0) 
0x151e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM7,%XMM7;  (0) 
0x1524;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x2c33(%RIP),%YMM10,%YMM6;  (0) 
0x152d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM2,%YMM5;  (0) 
0x1531;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x2c26(%RIP),%YMM4,%YMM11;  (0) 
0x153a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2c1d(%RIP),%YMM15,%YMM1;  (0) 
0x1543;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM3,%XMM3;  (0) 
0x1547;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM7,%YMM15;  (0) 
0x154b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM9,%XMM9;  (0) 
0x1550;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x2c07(%RIP),%YMM0,%YMM5;  (0) 
0x1559;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM14,%XMM14;  (0) 
0x155e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM6,%XMM6;  (0) 
0x1562;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x2bf5(%RIP),%YMM15,%YMM8;  (0) 
0x156b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM1,%XMM1;  (0) 
0x156f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM8,%XMM8;  (0) 
0x1574;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM9,%YMM3,%YMM0;  (0) 
0x157a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM11,%XMM11;  (0) 
0x157f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM5,%XMM5;  (0) 
0x1583;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM6,%YMM14,%YMM7;  (0) 
0x1589;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM0,%YMM10;  (0) 
0x158d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM7,%YMM15;  (0) 
0x1591;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM8,%YMM1,%YMM0;  (0) 
0x1597;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM5,%YMM11,%YMM14;  (0) 
0x159d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM14,%YMM6;  (0) 
0x15a2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x2bd6(%RIP),%YMM10,%YMM4;  (0) 
0x15aa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM0,%YMM10;  (0) 
0x15ae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x2bca(%RIP),%YMM15,%YMM2;  (0) 
0x15b6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSDW	%YMM2,%YMM4,%YMM3;  (0) 
0x15bb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM3,%YMM9;  (0) 
0x15c1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x2bb7(%RIP),%YMM6,%YMM15;  (0) 
0x15c9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x2bcf(%RIP),%YMM9,%YMM3;  (0) 
0x15d1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x2ba7(%RIP),%YMM10,%YMM7;  (0) 
0x15d9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSDW	%YMM15,%YMM7,%YMM4;  (0) 
0x15de;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM4,%YMM2;  (0) 
0x15e4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x2bb4(%RIP),%YMM2,%YMM9;  (0) 
0x15ec;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSWB	%YMM9,%YMM3,%YMM1;  (0) 
0x15f1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM1,%YMM8;  (0) 
0x15f7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2be0(%RIP),%YMM8,%YMM5;  (0) 
0x1600;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERM2I128	$0,%YMM8,%YMM8,%YMM0;  (0) 
0x1606;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c11(%RIP),%YMM8,%YMM7;  (0) 
0x160f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM5,%YMM14;  (0) 
0x1615;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2ba2(%RIP),%YMM0,%YMM11;  (0) 
0x161e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$-0x7c,%YMM8,%YMM2;  (0) 
0x1624;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2bd3(%RIP),%YMM11,%YMM6;  (0) 
0x162d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM14,%YMM7,%YMM15;  (0) 
0x1632;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c05(%RIP),%YMM2,%YMM3;  (0) 
0x163b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VMOVDQA	%YMM8,%YMM10;  (0) 
0x1640;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c17(%RIP),%YMM8,%YMM9;  (0) 
0x1649;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM15,%YMM6,%YMM4;  (0) 
0x164e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	0x2c2a(%RIP),%YMM1;  (0) 
0x1656;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	%YMM4,-0x60(%RAX);  (0) 
0x165b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPBLENDVB	%YMM1,%YMM9,%YMM3,%YMM8;  (0) 
0x1661;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	%YMM8,-0x40(%RAX);  (0) 
0x1666;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c31(%RIP),%YMM10,%YMM0;  (0) 
0x166f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c48(%RIP),%YMM10,%YMM5;  (0) 
0x1678;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM0,%YMM11;  (0) 
0x167e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c59(%RIP),%YMM10,%YMM6;  (0) 
0x1687;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM11,%YMM5,%YMM14;  (0) 
0x168c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c8b(%RIP),%YMM10,%YMM10;  (0) 
0x1695;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM6,%YMM7;  (0) 
0x169b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x2c5c(%RIP),%YMM14,%YMM15;  (0) 
0x16a4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM7,%YMM10,%YMM4;  (0) 
0x16a8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM4,%YMM15,%YMM2;  (0) 
0x16ac;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	%YMM2,-0x20(%RAX);  (0) 
0x16b1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21;CMP	%RDX,%RAX;  (0) 
0x16b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21;JNE	1270 <main+0x110>;  (0) 
0x16ba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21;MOV	%R8,0x10(%RSP);
0x16bf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9;RDTSC;
0x16c1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;SAL	$0x20,%RDX;
0x16c5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:309;LEA	(%R13),%RSI;
0x16c9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;OR	%RAX,%RDX;
0x16cc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:309;LEA	(%R15),%RDI;
0x16cf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:309;VMOVSS	0x2d09(%RIP),%XMM0;
0x16d7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;MOV	%RDX,0x18(%RSP);
0x16dc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:309;VZEROUPPER;
0x16df;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:309;CALL	2590 <sobel_v1>;
0x16e4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9;RDTSC;
0x16e6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:323;MOV	0x10(%RSP),%R8;
0x16eb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;MOV	%RDX,%R9;
0x16ee;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;SAL	$0x20,%R9;
0x16f2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;OR	%RAX,%R9;
0x16f5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:320;SUB	0x18(%RSP),%R9;
0x16fa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:323;CMP	$0x3e7,%R12;
0x1701;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:323;JA	170d <main+0x5ad>;
0x1703;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:324;MOV	%R9,0x30(%RSP,%R12,8);
0x1708;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:324;LEA	0x1(%R12),%R12;
0x170d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:327;VCVTUSI2SD	%R8,%XMM13,%XMM13;
0x1713;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;LEA	(%RBX),%RCX;
0x1716;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:327;VCVTUSI2SD	%R9,%XMM12,%XMM12;
0x171c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;LEA	0x2915(%RIP),%RDX;
0x1723;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	0x48f6(%RIP),%RDI;
0x172a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x1,%ESI;
0x172f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x1,%EAX;
0x1734;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:330;LEA	0x1(%RBX),%RBX;
0x1738;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:327;VDIVSD	%XMM12,%XMM13,%XMM0;
0x173d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;CALL	1140 <.plt.sec@start+0x70>;
0x1742;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;MOV	0x8(%RSP),%RCX;
0x1747;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;MOV	$0x2a3000,%EDX;
0x174c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;MOV	$0x1,%ESI;
0x1751;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;LEA	(%R13),%RDI;
0x1755;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;CALL	1130 <.plt.sec@start+0x60>;
0x175a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;JMP	1230 <main+0xd0>;
