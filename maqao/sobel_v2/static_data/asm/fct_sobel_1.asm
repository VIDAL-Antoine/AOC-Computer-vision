address;source_location;insn;indent
0x1160;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;ENDBR64;
0x1164;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;PUSH	%RBP;
0x1165;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;MOV	%RSP,%RBP;
0x1168;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;PUSH	%R15;
0x116a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;PUSH	%R14;
0x116c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;PUSH	%R13;
0x116e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;PUSH	%R12;
0x1170;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;PUSH	%RBX;
0x1171;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;AND	$-0x20,%RSP;
0x1175;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;LEA	-0x1000(%RSP),%RSP;
0x117d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;ORQ	$0,(%RSP);
0x1182;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;LEA	-0x1000(%RSP),%RSP;
0x118a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;ORQ	$0,(%RSP);
0x118f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;MOV	%FS:0x28,%RAX;
0x1198;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;MOV	%RAX,0x1ff8(%RSP);
0x11a0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;XOR	%EAX,%EAX;
0x11a2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:225;CMP	$0x2,%EDI;
0x11a5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:223;LEA	(%RSI),%RBX;
0x11a8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:225;JLE	1d4b <main+0xbeb>;
0x11ae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:232;MOV	0x8(%RSI),%RDI;
0x11b2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:232;LEA	0x1eea(%RIP),%RSI;
0x11b9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:232;CALL	1120 <.plt.sec@start+0x50>;
0x11be;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:233;MOV	0x10(%RBX),%RDI;
0x11c2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:232;LEA	(%RAX),%R15;
0x11c5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:232;MOV	%RAX,0x10(%RSP);
0x11ca;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:233;LEA	0x1ed5(%RIP),%RSI;
0x11d1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:233;CALL	1120 <.plt.sec@start+0x50>;
0x11d6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:233;MOV	%RAX,0x18(%RSP);
0x11db;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:236;TEST	%R15,%R15;
0x11de;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:236;JE	1d84 <main+0xc24>;
0x11e4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:240;CMPQ	$0,0x18(%RSP);
0x11ea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:240;JE	1d66 <main+0xc06>;
0x11f0;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;LEA	0xa8(%RSP),%RDI;
0x11f8;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;MOV	$0x2a3000,%EDX;
0x11fd;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;MOV	$0x40,%ESI;
0x1202;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:48;XOR	%R14D,%R14D;
0x1205;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;CALL	1150 <.plt.sec@start+0x80>;
0x120a;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;TEST	%EAX,%EAX;
0x120c;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;JNE	1216 <main+0xb6>;
0x120e;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;MOV	0xa8(%RSP),%R14;
0x1216;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;LEA	0xa0(%RSP),%RDI;
0x121e;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;MOV	$0x2a3000,%EDX;
0x1223;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;MOV	$0x40,%ESI;
0x1228;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:48;XOR	%R15D,%R15D;
0x122b;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;CALL	1150 <.plt.sec@start+0x80>;
0x1230;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;TEST	%EAX,%EAX;
0x1232;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:45;JE	1d3e <main+0xbde>;
0x1238;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:229;MOVQ	$0,0x20(%RSP);
0x1241;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:229;MOVQ	$0,0x38(%RSP);
0x124a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:229;NOPW	(%RAX,%RAX,1);
0x1250;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;MOV	0x10(%RSP),%RCX;(3) 
0x1255;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;MOV	$0x2a3000,%EDX;(3) 
0x125a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;MOV	$0x1,%ESI;(3) 
0x125f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;LEA	(%R14),%RDI;(3) 
0x1262;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;CALL	10e0 <.plt.sec@start+0x10>;(3) 
0x1267;/usr/include/x86_64-linux-gnu/bits/stdio2.h:297;MOV	%RAX,0x30(%RSP);(3) 
0x126c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;TEST	%RAX,%RAX;(3) 
0x126f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;JE	1c59 <main+0xaf9>;(3) 
0x1275;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;LEA	0x2a3000(%R14),%RDX;(3) 
0x127c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;LEA	(%R14),%RAX;(3) 
0x127f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:249;NOP;(3) 
0x1280;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQA	(%RAX),%YMM7;  (0) 
0x1284;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;LEA	0x60(%RAX),%RAX;  (0) 
0x1288;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQA	-0x40(%RAX),%YMM0;  (0) 
0x128d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVDQA	-0x20(%RAX),%YMM8;  (0) 
0x1292;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x1e45(%RIP),%YMM7,%YMM1;  (0) 
0x129b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x1e3c(%RIP),%YMM0,%YMM12;  (0) 
0x12a4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM1,%YMM9;  (0) 
0x12aa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x1e2d(%RIP),%YMM8,%YMM3;  (0) 
0x12b3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM12,%YMM13;  (0) 
0x12b9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x1e3e(%RIP),%YMM7,%YMM10;  (0) 
0x12c2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM3,%YMM6;  (0) 
0x12c8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x1e2f(%RIP),%YMM0,%YMM14;  (0) 
0x12d1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM9,%YMM10,%YMM11;  (0) 
0x12d6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPSHUFB	0x1e21(%RIP),%YMM8,%YMM5;  (0) 
0x12df;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM13,%YMM14,%YMM15;  (0) 
0x12e4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPOR	%YMM6,%YMM5,%YMM2;  (0) 
0x12e8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM15,%YMM11,%YMM4;  (0) 
0x12ee;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM11,%YMM2,%YMM1;  (0) 
0x12f4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM2,%YMM15,%YMM0;  (0) 
0x12fa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM4,%YMM15,%YMM7;  (0) 
0x1300;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM1,%YMM11,%YMM9;  (0) 
0x1306;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM9,%YMM7,%YMM12;  (0) 
0x130c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM12,%YMM9,%YMM13;  (0) 
0x1312;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x6,%YMM0,%YMM2,%YMM8;  (0) 
0x1318;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM13,%YMM6;  (0) 
0x131e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM7,%YMM8,%YMM10;  (0) 
0x1324;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM6,%YMM13,%YMM5;  (0) 
0x132a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM10,%YMM7,%YMM11;  (0) 
0x1330;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERM2I128	$0x21,%YMM8,%YMM9,%YMM14;  (0) 
0x1336;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPERMQ	$0x4e,%YMM11,%YMM3;  (0) 
0x133c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM5,%XMM4;  (0) 
0x1342;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM5,%YMM2;  (0) 
0x1347;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM4,%YMM7;  (0) 
0x134c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM2,%YMM0;  (0) 
0x1351;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0x5,%YMM14,%YMM8,%YMM15;  (0) 
0x1357;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPALIGNR	$0xb,%YMM11,%YMM3,%YMM1;  (0) 
0x135d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM7,%XMM11;  (0) 
0x1363;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM15,%YMM14;  (0) 
0x1368;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM2,%XMM8;  (0) 
0x136e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM11,%YMM12;  (0) 
0x1373;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM15,%XMM15;  (0) 
0x1379;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM8,%YMM9;  (0) 
0x137e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM15,%YMM6;  (0) 
0x1383;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM7,%YMM10;  (0) 
0x1388;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM0,%YMM13;  (0) 
0x138c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM14,%YMM3;  (0) 
0x1391;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM12,%YMM0;  (0) 
0x1396;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM1,%YMM12;  (0) 
0x139b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM14,%XMM2;  (0) 
0x13a1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM12,%YMM15;  (0) 
0x13a6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM9,%YMM4;  (0) 
0x13ab;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM2,%YMM7;  (0) 
0x13b0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM3,%YMM8;  (0) 
0x13b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM6,%YMM9;  (0) 
0x13b9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM7,%YMM3;  (0) 
0x13bd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM9,%YMM7;  (0) 
0x13c2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM15,%YMM9;  (0) 
0x13c7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM1,%XMM1;  (0) 
0x13cd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM10,%YMM5;  (0) 
0x13d2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVZXBW	%XMM1,%YMM14;  (0) 
0x13d7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM6,%XMM10;  (0) 
0x13dd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM9,%YMM15;  (0) 
0x13e2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM10,%YMM11;  (0) 
0x13e7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM12,%XMM6;  (0) 
0x13ed;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTI128	$0x1,%YMM14,%XMM1;  (0) 
0x13f3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM6,%YMM10;  (0) 
0x13f8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM9,%XMM9;  (0) 
0x13fe;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1d1a(%RIP),%YMM15,%YMM15;  (0) 
0x1406;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM11,%YMM2;  (0) 
0x140b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM14,%YMM11;  (0) 
0x1410;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM10,%YMM12;  (0) 
0x1415;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VPMOVSXWD	%XMM1,%YMM14;  (0) 
0x141a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM13,%YMM6;  (0) 
0x141f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM9,%YMM1;  (0) 
0x1424;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM13,%XMM13;  (0) 
0x142a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM11,%YMM10;  (0) 
0x142f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x1d08(%RIP),%YMM6,%YMM15;  (0) 
0x1438;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTDQ2PS	%YMM14,%YMM11;  (0) 
0x143d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM13,%YMM6;  (0) 
0x1442;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1cd6(%RIP),%YMM1,%YMM14;  (0) 
0x144a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM12,%YMM13;  (0) 
0x144f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM12,%XMM12;  (0) 
0x1455;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM12,%YMM1;  (0) 
0x145a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1cdd(%RIP),%YMM14,%YMM6;  (0) 
0x1463;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM4,%YMM14;  (0) 
0x1467;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1cb1(%RIP),%YMM13,%YMM9;  (0) 
0x146f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM4,%XMM4;  (0) 
0x1475;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1ca3(%RIP),%YMM1,%YMM13;  (0) 
0x147d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM4,%YMM4;  (0) 
0x1481;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1cb6(%RIP),%YMM9,%YMM14;  (0) 
0x148a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM5,%YMM9;  (0) 
0x148e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM10,%YMM12;  (0) 
0x1493;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM10,%XMM10;  (0) 
0x1499;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1c9e(%RIP),%YMM13,%YMM4;  (0) 
0x14a2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM5,%XMM5;  (0) 
0x14a8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM5,%YMM5;  (0) 
0x14ac;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMOVAPD	%YMM9,%YMM13;  (0) 
0x14b1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM10,%YMM9;  (0) 
0x14b6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1c62(%RIP),%YMM12,%YMM1;  (0) 
0x14be;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1c5a(%RIP),%YMM9,%YMM12;  (0) 
0x14c6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1c71(%RIP),%YMM1,%YMM13;  (0) 
0x14cf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM11,%YMM1;  (0) 
0x14d4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM11,%XMM11;  (0) 
0x14da;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1c5d(%RIP),%YMM12,%YMM5;  (0) 
0x14e3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM0,%YMM12;  (0) 
0x14e7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM0,%XMM0;  (0) 
0x14ed;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM0,%YMM9;  (0) 
0x14f1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM8,%YMM0;  (0) 
0x14f6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM8,%XMM8;  (0) 
0x14fc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1c1c(%RIP),%YMM1,%YMM10;  (0) 
0x1504;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1c53(%RIP),%YMM15,%YMM0;  (0) 
0x150d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM8,%YMM15;  (0) 
0x1512;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM11,%YMM1;  (0) 
0x1517;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1c20(%RIP),%YMM10,%YMM12;  (0) 
0x1520;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM0,%XMM10;  (0) 
0x1524;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1c33(%RIP),%YMM6,%YMM15;  (0) 
0x152d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM3,%YMM6;  (0) 
0x1531;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM3,%XMM3;  (0) 
0x1537;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VMULPD	0x1be1(%RIP),%YMM1,%YMM11;  (0) 
0x153f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1c18(%RIP),%YMM14,%YMM6;  (0) 
0x1548;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM3,%YMM14;  (0) 
0x154c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM6,%XMM0;  (0) 
0x1550;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD231PD	0x1be7(%RIP),%YMM9,%YMM11;  (0) 
0x1559;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM15,%XMM9;  (0) 
0x155e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1bf9(%RIP),%YMM4,%YMM14;  (0) 
0x1567;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM7,%YMM4;  (0) 
0x156b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM7,%XMM7;  (0) 
0x1571;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM14,%XMM8;  (0) 
0x1576;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM9,%YMM10,%YMM1;  (0) 
0x157c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1bdb(%RIP),%YMM13,%YMM4;  (0) 
0x1585;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM7,%YMM13;  (0) 
0x1589;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM4,%XMM4;  (0) 
0x158d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM8,%YMM0,%YMM15;  (0) 
0x1593;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM15,%YMM6;  (0) 
0x1598;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1bbf(%RIP),%YMM5,%YMM13;  (0) 
0x15a1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM2,%YMM5;  (0) 
0x15a5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VEXTRACTF128	$0x1,%YMM2,%XMM2;  (0) 
0x15ab;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM13,%XMM13;  (0) 
0x15b0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1ba7(%RIP),%YMM12,%YMM5;  (0) 
0x15b9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPS2PD	%XMM2,%YMM12;  (0) 
0x15bd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM5,%XMM5;  (0) 
0x15c1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM13,%YMM4,%YMM2;  (0) 
0x15c7;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VFMADD132PD	0x1b90(%RIP),%YMM11,%YMM12;  (0) 
0x15d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VCVTPD2PS	%YMM12,%XMM12;  (0) 
0x15d5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM1,%YMM11;  (0) 
0x15d9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x1b9f(%RIP),%YMM6,%YMM3;  (0) 
0x15e1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM2,%YMM1;  (0) 
0x15e5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:26;VINSERTF128	$0x1,%XMM12,%YMM5,%YMM10;  (0) 
0x15eb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x1b8d(%RIP),%YMM11,%YMM14;  (0) 
0x15f3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VCVTTPS2DQ	%YMM10,%YMM11;  (0) 
0x15f8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x1b80(%RIP),%YMM1,%YMM0;  (0) 
0x1600;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSDW	%YMM3,%YMM14,%YMM7;  (0) 
0x1605;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM7,%YMM9;  (0) 
0x160b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x1b8d(%RIP),%YMM9,%YMM14;  (0) 
0x1613;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x1b65(%RIP),%YMM11,%YMM8;  (0) 
0x161b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSDW	%YMM8,%YMM0,%YMM15;  (0) 
0x1620;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM15,%YMM6;  (0) 
0x1626;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPAND	0x1b72(%RIP),%YMM6,%YMM3;  (0) 
0x162e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPACKUSWB	%YMM3,%YMM14,%YMM7;  (0) 
0x1632;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	0x1c46(%RIP),%YMM14;  (0) 
0x163a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VPERMQ	$-0x28,%YMM7,%YMM9;  (0) 
0x1640;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:28;VMOVDQA	%YMM9,%YMM13;  (0) 
0x1645;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERM2I128	$0,%YMM9,%YMM9,%YMM4;  (0) 
0x164b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1b8c(%RIP),%YMM9,%YMM1;  (0) 
0x1654;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$-0x7c,%YMM9,%YMM8;  (0) 
0x165a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1c3d(%RIP),%YMM9,%YMM7;  (0) 
0x1663;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM1,%YMM5;  (0) 
0x1669;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1b4e(%RIP),%YMM4,%YMM2;  (0) 
0x1672;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1ba5(%RIP),%YMM9,%YMM10;  (0) 
0x167b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1bdc(%RIP),%YMM9,%YMM6;  (0) 
0x1684;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM7,%YMM9;  (0) 
0x168a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1c2d(%RIP),%YMM13,%YMM4;  (0) 
0x1693;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM5,%YMM10,%YMM11;  (0) 
0x1697;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1c40(%RIP),%YMM13,%YMM1;  (0) 
0x16a0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1b57(%RIP),%YMM2,%YMM12;  (0) 
0x16a9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPERMQ	$0x4e,%YMM1,%YMM5;  (0) 
0x16af;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM9,%YMM4,%YMM2;  (0) 
0x16b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM11,%YMM12,%YMM0;  (0) 
0x16b9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1c5e(%RIP),%YMM13,%YMM13;  (0) 
0x16c2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1b75(%RIP),%YMM8,%YMM15;  (0) 
0x16cb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM5,%YMM13,%YMM10;  (0) 
0x16cf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPSHUFB	0x1c28(%RIP),%YMM2,%YMM12;  (0) 
0x16d8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPBLENDVB	%YMM14,%YMM6,%YMM15,%YMM3;  (0) 
0x16de;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	%YMM0,-0x60(%RAX);  (0) 
0x16e3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VPOR	%YMM10,%YMM12,%YMM11;  (0) 
0x16e8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	%YMM3,-0x40(%RAX);  (0) 
0x16ed;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:30;VMOVDQA	%YMM11,-0x20(%RAX);  (0) 
0x16f2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21;CMP	%RAX,%RDX;  (0) 
0x16f5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:21;JNE	1280 <main+0x120>;  (0) 
0x16fb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9;RDTSC;(3) 
0x16fd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;SAL	$0x20,%RDX;(3) 
0x1701;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;LEA	0x8(%R14),%R9;(3) 
0x1705;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;OR	%RAX,%RDX;(3) 
0x1708;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;MOV	$0xee0,%ECX;(3) 
0x170d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;XOR	%EAX,%EAX;(3) 
0x170f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;LEA	(%R14),%RBX;(3) 
0x1712;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;MOV	%RDX,0x28(%RSP);(3) 
0x1717;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;MOV	%RCX,%R13;(3) 
0x171a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;LEA	(%R9),%R12;(3) 
0x171d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;LEA	(%RAX),%R14;(3) 
0x1720;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;JMP	175d <main+0x5fd>;(3) 
0x1722;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;NOPW	(%RAX,%RAX,1);
0x1728;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;MOVB	$-0x1,(%R15,%RAX,1);    (2) 
0x172d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x1(%RAX),%RAX;    (2) 
0x1731;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	%R8,%RAX;    (2) 
0x1734;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JNE	1b28 <main+0x9c8>;    (2) 
0x173a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;LEA	0xf00(%R14),%R14;  (4) 
0x1741;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;LEA	0xf00(%R13),%R13;  (4) 
0x1748;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;CMP	$0x2a0300,%R14;  (4) 
0x174f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;LEA	0xf00(%R12),%R12;  (4) 
0x1757;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:164;JE	1bc0 <main+0xa60>;  (4) 
0x175d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	(%RBX),%R11;  (4) 
0x1760;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x6(%R12),%R10;  (4) 
0x1765;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;ADD	%R14,%R11;  (4) 
0x1768;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x2(%R12),%R9;  (4) 
0x176d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x3(%R12),%R8;  (4) 
0x1772;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x5(%R12),%RDI;  (4) 
0x1777;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x1(%R12),%RSI;  (4) 
0x177c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	-0x7(%R12),%RCX;  (4) 
0x1781;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	(%R15,%R14,1),%RDX;  (4) 
0x1785;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;XOR	%EAX,%EAX;  (4) 
0x1787;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	(%R12,%RAX,1),%YMM8;    (1) 
0x178d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	(%R11,%RAX,1),%YMM0;    (1) 
0x1793;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQU	(%R12,%RAX,1),%YMM6;    (1) 
0x1799;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPSUBW	%YMM0,%YMM8,%YMM15;    (1) 
0x179d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQA	(%R11,%RAX,1),%YMM7;    (1) 
0x17a3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM15,%YMM13;    (1) 
0x17a8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%R10,%RAX,1),%YMM8;    (1) 
0x17ae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM6,%XMM14;    (1) 
0x17b4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM7,%XMM9;    (1) 
0x17ba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	%XMM14,%YMM3;    (1) 
0x17bf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM8,%XMM0;    (1) 
0x17c5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVZXBW	%XMM9,%YMM4;    (1) 
0x17ca;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%R10,%RAX,1),%YMM11;    (1) 
0x17d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPSUBW	%YMM4,%YMM3,%YMM1;    (1) 
0x17d4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM15,%XMM2;    (1) 
0x17da;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM0,%YMM15;    (1) 
0x17df;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%R9,%RAX,1),%YMM4;    (1) 
0x17e5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM1,%YMM5;    (1) 
0x17ea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM11,%XMM6;    (1) 
0x17f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM2,%YMM9;    (1) 
0x17f5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM15,%XMM3;    (1) 
0x17fb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM6,%YMM2;    (1) 
0x1800;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%R9,%RAX,1),%YMM7;    (1) 
0x1806;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM15,%YMM6;    (1) 
0x180b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQA	%YMM5,0x80(%RSP);    (1) 
0x1814;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM11,%YMM14;    (1) 
0x1819;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%R8,%RAX,1),%YMM15;    (1) 
0x181f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM7,%YMM0;    (1) 
0x1824;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VEXTRACTI128	$0x1,%YMM1,%XMM12;    (1) 
0x182a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM3,%YMM1;    (1) 
0x182f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM4,%XMM5;    (1) 
0x1835;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VPMOVSXWD	%XMM12,%YMM10;    (1) 
0x183a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	(%RDI,%RAX,1),%YMM3;    (1) 
0x1840;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM5,%YMM11;    (1) 
0x1845;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%R8,%RAX,1),%YMM4;    (1) 
0x184b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM7,%XMM12;    (1) 
0x1851;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBW	%YMM3,%YMM15,%YMM7;    (1) 
0x1855;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VMOVDQU	(%RDI,%RAX,1),%YMM15;    (1) 
0x185a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSLLW	$0x1,%YMM7,%YMM7;    (1) 
0x185f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;VMOVDQA	%YMM10,0x60(%RSP);    (1) 
0x1865;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM12,%YMM10;    (1) 
0x186a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM11,%XMM8;    (1) 
0x1870;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM11,%YMM12;    (1) 
0x1875;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM15,%XMM3;    (1) 
0x187b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXWD	%XMM8,%YMM5;    (1) 
0x1880;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM4,%XMM11;    (1) 
0x1886;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM3,%YMM4;    (1) 
0x188b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	(%RCX,%RAX,1),%YMM15;    (1) 
0x1891;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVZXBW	%XMM11,%YMM8;    (1) 
0x1896;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBW	%YMM4,%YMM8,%YMM11;    (1) 
0x189a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	(%RSI,%RAX,1),%YMM8;    (1) 
0x18a0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSLLW	$0x1,%YMM11,%YMM3;    (1) 
0x18a6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQU	(%RSI,%RAX,1),%YMM11;    (1) 
0x18ab;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBW	%YMM15,%YMM8,%YMM4;    (1) 
0x18b0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM11,%XMM15;    (1) 
0x18b6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSLLW	$0x1,%YMM4,%YMM8;    (1) 
0x18bb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQU	(%RCX,%RAX,1),%YMM11;    (1) 
0x18c0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	%XMM15,%YMM4;    (1) 
0x18c5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM11,%XMM15;    (1) 
0x18cb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVZXBW	%XMM15,%YMM11;    (1) 
0x18d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM8,%YMM15;    (1) 
0x18d5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM8,%XMM8;    (1) 
0x18db;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBW	%YMM11,%YMM4,%YMM4;    (1) 
0x18e0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM14,%YMM0,%YMM11;    (1) 
0x18e5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM0,%YMM14,%YMM0;    (1) 
0x18e9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM15,%YMM11,%YMM11;    (1) 
0x18ee;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM7,%YMM14;    (1) 
0x18f3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM13,%YMM11,%YMM15;    (1) 
0x18f8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSLLW	$0x1,%YMM4,%YMM4;    (1) 
0x18fd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM15,%YMM11;    (1) 
0x1902;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM14,%YMM0,%YMM15;    (1) 
0x1907;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM2,%YMM10,%YMM14;    (1) 
0x190b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM10,%YMM2,%YMM2;    (1) 
0x1910;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM7,%XMM10;    (1) 
0x1916;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM13,%YMM15,%YMM13;    (1) 
0x191b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM10,%YMM7;    (1) 
0x1920;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM8,%YMM15;    (1) 
0x1925;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM13,%YMM0;    (1) 
0x192a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM7,%YMM2,%YMM8;    (1) 
0x192e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM15,%YMM14,%YMM13;    (1) 
0x1933;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM0,%YMM11,%YMM11;    (1) 
0x1937;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQA	0x80(%RSP),%YMM2;    (1) 
0x1940;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM9,%YMM13,%YMM0;    (1) 
0x1945;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM0,%YMM14;    (1) 
0x194a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM9,%YMM8,%YMM9;    (1) 
0x194f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM9,%YMM15;    (1) 
0x1954;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM6,%YMM12,%YMM0;    (1) 
0x1958;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM15,%YMM14,%YMM13;    (1) 
0x195d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM12,%YMM6,%YMM6;    (1) 
0x1962;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM4,%YMM14;    (1) 
0x1967;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM3,%YMM12;    (1) 
0x196c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM14,%YMM0,%YMM10;    (1) 
0x1971;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM12,%YMM6,%YMM9;    (1) 
0x1976;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM2,%YMM10,%YMM7;    (1) 
0x197a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM2,%YMM9,%YMM15;    (1) 
0x197e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VEXTRACTI128	$0x1,%YMM4,%XMM4;    (1) 
0x1984;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPSUBD	%YMM1,%YMM5,%YMM10;    (1) 
0x1988;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPSUBD	%YMM5,%YMM1,%YMM1;    (1) 
0x198c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPMOVSXWD	%XMM4,%YMM2;    (1) 
0x1991;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VEXTRACTI128	$0x1,%YMM3,%XMM5;    (1) 
0x1997;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x1a01(%RIP),%YMM11,%YMM4;    (1) 
0x199f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM7,%YMM8;    (1) 
0x19a4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPMOVSXWD	%XMM5,%YMM3;    (1) 
0x19a9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM15,%YMM0;    (1) 
0x19ae;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM3,%YMM1,%YMM9;    (1) 
0x19b2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM0,%YMM8,%YMM14;    (1) 
0x19b6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM2,%YMM10,%YMM8;    (1) 
0x19ba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VMOVDQA	0x60(%RSP),%YMM7;    (1) 
0x19c0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x19d8(%RIP),%YMM13,%YMM2;    (1) 
0x19c8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;VPADDD	%YMM7,%YMM8,%YMM6;    (1) 
0x19cc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;VPADDD	%YMM7,%YMM9,%YMM15;    (1) 
0x19d0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM6,%YMM12;    (1) 
0x19d5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x19c3(%RIP),%YMM14,%YMM1;    (1) 
0x19dd;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPABSD	%YMM15,%YMM0;    (1) 
0x19e2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM2,0x19d4(%RIP),%YMM13,%YMM13;    (1) 
0x19ec;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;VPADDD	%YMM0,%YMM12,%YMM10;    (1) 
0x19f0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM4,0x19c6(%RIP),%YMM11,%YMM11;    (1) 
0x19fa;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPCMPGTD	0x199e(%RIP),%YMM10,%YMM5;    (1) 
0x1a02;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM1,0x19b4(%RIP),%YMM14,%YMM14;    (1) 
0x1a0c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPBLENDVB	%YMM5,0x19aa(%RIP),%YMM10,%YMM3;    (1) 
0x1a16;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x1762(%RIP),%YMM11,%YMM8;    (1) 
0x1a1e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x175a(%RIP),%YMM13,%YMM7;    (1) 
0x1a26;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x1752(%RIP),%YMM14,%YMM9;    (1) 
0x1a2e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x174a(%RIP),%YMM3,%YMM15;    (1) 
0x1a36;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPACKUSDW	%YMM7,%YMM8,%YMM6;    (1) 
0x1a3b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPACKUSDW	%YMM15,%YMM9,%YMM0;    (1) 
0x1a40;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPERMQ	$-0x28,%YMM6,%YMM12;    (1) 
0x1a46;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPERMQ	$-0x28,%YMM0,%YMM10;    (1) 
0x1a4c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x174c(%RIP),%YMM12,%YMM4;    (1) 
0x1a54;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPAND	0x1744(%RIP),%YMM10,%YMM11;    (1) 
0x1a5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPACKUSWB	%YMM11,%YMM4,%YMM2;    (1) 
0x1a61;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VPERMQ	$-0x28,%YMM2,%YMM13;    (1) 
0x1a67;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;VMOVDQA	%YMM13,(%RDX,%RAX,1);    (1) 
0x1a6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x20(%RAX),%RAX;    (1) 
0x1a70;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	$0xee0,%RAX;    (1) 
0x1a76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JNE	1787 <main+0x627>;    (1) 
0x1a7c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;LEA	(%RBX),%R11;  (4) 
0x1a7f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;LEA	(%R14),%R10;  (4) 
0x1a82;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;SUB	%R13,%R11;  (4) 
0x1a85;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;ADD	$0xee8,%R10;  (4) 
0x1a8c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%R9;  (4) 
0x1a8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%RDI;  (4) 
0x1a92;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;ADD	%R11,%R10;  (4) 
0x1a95;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%R9;  (4) 
0x1a98;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee2,%RDI;  (4) 
0x1a9f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%RBX),%RDX;  (4) 
0x1aa2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%R14),%R11;  (4) 
0x1aa5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%R9,%RDI;  (4) 
0x1aa8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOV	%R10,0x80(%RSP);  (4) 
0x1ab0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%RSI;  (4) 
0x1ab3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%RCX;  (4) 
0x1ab6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%R13,%RDX;  (4) 
0x1ab9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	$0xee7,%R11;  (4) 
0x1ac0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%RBX),%R10;  (4) 
0x1ac3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%R14),%R9;  (4) 
0x1ac6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%RSI;  (4) 
0x1ac9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%RDX,%R11;  (4) 
0x1acc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%R13,%R10;  (4) 
0x1acf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee6,%RCX;  (4) 
0x1ad6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	$0xee1,%R9;  (4) 
0x1add;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%RSI,%RCX;  (4) 
0x1ae0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%R10,%R9;  (4) 
0x1ae3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	%RDI,0x60(%RSP);  (4) 
0x1ae8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%RSI;  (4) 
0x1aeb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	%R11,0x50(%RSP);  (4) 
0x1af0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%RBX),%RDI;  (4) 
0x1af3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%R11;  (4) 
0x1af6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;LEA	(%R14),%R10;  (4) 
0x1af9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%RDI;  (4) 
0x1afc;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee5,%R11;  (4) 
0x1b03;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%R13,%RSI;  (4) 
0x1b06;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	$0xee3,%R10;  (4) 
0x1b0d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;LEA	(%R13),%RAX;  (4) 
0x1b11;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;LEA	0xefd(%R14),%R8;  (4) 
0x1b18;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	%RCX,0x58(%RSP);  (4) 
0x1b1d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%RDI,%R11;  (4) 
0x1b20;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	%R9,0x48(%RSP);  (4) 
0x1b25;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%RSI,%R10;  (4) 
0x1b28;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOV	0x80(%RSP),%RCX;    (2) 
0x1b30;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOVZX	(%RBX,%RAX,1),%EDX;    (2) 
0x1b34;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	0x60(%RSP),%RDI;    (2) 
0x1b39;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;MOVZX	(%RCX,%RAX,1),%R9D;    (2) 
0x1b3e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOV	0x58(%RSP),%RSI;    (2) 
0x1b43;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%RDI,%RAX,1),%ECX;    (2) 
0x1b47;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:171;SUB	%EDX,%R9D;    (2) 
0x1b4a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%RSI,%RAX,1),%EDI;    (2) 
0x1b4e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	0x50(%RSP),%RDX;    (2) 
0x1b53;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOV	0x48(%RSP),%RSI;    (2) 
0x1b58;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOVZX	(%RDX,%RAX,1),%EDX;    (2) 
0x1b5c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;MOVZX	(%RSI,%RAX,1),%ESI;    (2) 
0x1b60;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%ESI,%EDX;    (2) 
0x1b62;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;LEA	(%RDI),%ESI;    (2) 
0x1b64;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;SUB	%ECX,%ESI;    (2) 
0x1b66;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%EDX,%EDX;    (2) 
0x1b68;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%ESI,%EDX;    (2) 
0x1b6a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%EDI,%ECX;    (2) 
0x1b6c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:174;ADD	%R9D,%EDX;    (2) 
0x1b6f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%EDX,%ESI;    (2) 
0x1b71;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SAR	$0x1f,%ESI;    (2) 
0x1b74;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;XOR	%ESI,%EDX;    (2) 
0x1b76;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SUB	%ESI,%EDX;    (2) 
0x1b78;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%EDX,0x44(%RSP);    (2) 
0x1b7c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%R11,%RAX,1),%ESI;    (2) 
0x1b81;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;MOVZX	(%R10,%RAX,1),%EDX;    (2) 
0x1b86;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;SUB	%EDX,%ESI;    (2) 
0x1b88;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%ESI,%ECX;    (2) 
0x1b8a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%ESI,%ECX;    (2) 
0x1b8c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:173;ADD	%R9D,%ECX;    (2) 
0x1b8f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;MOV	%ECX,%R9D;    (2) 
0x1b92;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SAR	$0x1f,%R9D;    (2) 
0x1b96;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;XOR	%R9D,%ECX;    (2) 
0x1b99;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;SUB	%R9D,%ECX;    (2) 
0x1b9c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:175;ADD	0x44(%RSP),%ECX;    (2) 
0x1ba0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;CMP	$0x64,%ECX;    (2) 
0x1ba3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;JG	1728 <main+0x5c8>;    (2) 
0x1ba9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:176;MOV	%CL,(%R15,%RAX,1);    (2) 
0x1bad;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	0x1(%RAX),%RAX;    (2) 
0x1bb1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;CMP	%R8,%RAX;    (2) 
0x1bb4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JE	173a <main+0x5da>;    (2) 
0x1bba;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;JMP	1b28 <main+0x9c8>;    (2) 
0x1bbf;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;NOP;
0x1bc0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:166;LEA	(%RBX),%R14;(3) 
0x1bc3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:9;RDTSC;(3) 
0x1bc5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;SAL	$0x20,%RDX;(3) 
0x1bc9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:323;MOV	0x20(%RSP),%RBX;(3) 
0x1bce;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;MOV	%RDX,%R9;(3) 
0x1bd1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/rdtsc.h:11;OR	%RAX,%R9;(3) 
0x1bd4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:320;SUB	0x28(%RSP),%R9;(3) 
0x1bd9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:323;CMP	$0x3e7,%RBX;(3) 
0x1be0;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:323;JA	1bf3 <main+0xa93>;(3) 
0x1be2;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:324;MOV	%R9,0xb0(%RSP,%RBX,8);(3) 
0x1bea;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:324;LEA	0x1(%RBX),%R8;(3) 
0x1bee;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:324;MOV	%R8,0x20(%RSP);(3) 
0x1bf3;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:327;MOV	0x30(%RSP),%R8;(3) 
0x1bf8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;LEA	0x1439(%RIP),%RDX;(3) 
0x1bff;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:327;VCVTUSI2SD	%R9,%XMM7,%XMM7;(3) 
0x1c05;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x1,%ESI;(3) 
0x1c0a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	0x38(%RSP),%R13;(3) 
0x1c0f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x1,%EAX;(3) 
0x1c14;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:327;VCVTUSI2SD	%R8,%XMM8,%XMM8;(3) 
0x1c1a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	0x33ff(%RIP),%RDI;(3) 
0x1c21;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	%R13,%RCX;(3) 
0x1c24;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:327;VDIVSD	%XMM7,%XMM8,%XMM0;(3) 
0x1c28;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;VZEROUPPER;(3) 
0x1c2b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;CALL	1140 <.plt.sec@start+0x70>;(3) 
0x1c30;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;MOV	0x18(%RSP),%RCX;(3) 
0x1c35;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:330;LEA	(%R13),%R11;(3) 
0x1c39;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:330;ADD	$0x1,%R11;(3) 
0x1c3d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;MOV	$0x2a3000,%EDX;(3) 
0x1c42;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;MOV	$0x1,%ESI;(3) 
0x1c47;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;LEA	(%R15),%RDI;(3) 
0x1c4a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:330;MOV	%R11,0x38(%RSP);(3) 
0x1c4f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;CALL	1130 <.plt.sec@start+0x60>;(3) 
0x1c54;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:332;JMP	1250 <main+0xf0>;(3) 
0x1c59;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:343;MOV	0x20(%RSP),%RBX;
0x1c5e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:343;LEA	0xb0(%RSP),%R12;
0x1c66;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:343;LEA	(%R12),%RDI;
0x1c6a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:343;MOV	%RBX,%RSI;
0x1c6d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:343;CALL	2550 <sort>;
0x1c72;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:349;LEA	(%RBX),%RSI;
0x1c75;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:349;LEA	(%R12),%RDI;
0x1c79;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:349;CALL	2760 <mean>;
0x1c7e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:352;LEA	(%RBX),%RSI;
0x1c81;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:352;LEA	(%R12),%RDI;
0x1c85;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:349;VMOVSD	%XMM0,0x80(%RSP);
0x1c8e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:352;CALL	28a0 <stddev>;
0x1c93;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:371;VMULSD	0x1745(%RIP),%XMM0,%XMM5;
0x1c9b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x2a3000,%ECX;
0x1ca0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;VMOVSD	0x80(%RSP),%XMM3;
0x1ca9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;LEA	0x13b0(%RIP),%RDX;
0x1cb0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;VMOVSD	0x1730(%RIP),%XMM4;
0x1cb8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x1,%ESI;
0x1cbd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;VDIVSD	%XMM3,%XMM4,%XMM4;
0x1cc1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x6,%EAX;
0x1cc6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	0x3373(%RIP),%RDI;
0x1ccd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;VDIVSD	%XMM3,%XMM5,%XMM5;
0x1cd1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:355;VCVTUSI2SDQ	0xb0(%RSP),%XMM6,%XMM6;
0x1cd9;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:356;VCVTUSI2SDQ	0xa8(%RSP,%RBX,8),%XMM1,%XMM1;
0x1ce1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;VMOVSD	%XMM6,%XMM6,%XMM0;
0x1ce5;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:357;VADDSD	%XMM1,%XMM6,%XMM2;
0x1ce9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;VMULSD	0x16ff(%RIP),%XMM2,%XMM2;
0x1cf1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;CALL	1140 <.plt.sec@start+0x70>;
0x1cf6;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:54;LEA	(%R14),%RDI;
0x1cf9;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:54;CALL	10d0 <.plt.sec@start>;
0x1cfe;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:54;LEA	(%R15),%RDI;
0x1d01;/usr/lib/gcc/x86_64-linux-gnu/9/include/mm_malloc.h:54;CALL	10d0 <.plt.sec@start>;
0x1d06;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:395;MOV	0x10(%RSP),%RDI;
0x1d0b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:395;CALL	10f0 <.plt.sec@start+0x20>;
0x1d10;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:396;MOV	0x18(%RSP),%RDI;
0x1d15;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:396;CALL	10f0 <.plt.sec@start+0x20>;
0x1d1a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:398;XOR	%EAX,%EAX;
0x1d1c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;MOV	0x1ff8(%RSP),%RBX;
0x1d24;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;XOR	%FS:0x28,%RBX;
0x1d2d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;JNE	1d8a <main+0xc2a>;
0x1d2f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;LEA	-0x28(%RBP),%RSP;
0x1d33;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;POP	%RBX;
0x1d34;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;POP	%R12;
0x1d36;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;POP	%R13;
0x1d38;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;POP	%R14;
0x1d3a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;POP	%R15;
0x1d3c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;POP	%RBP;
0x1d3d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;RET;
0x1d3e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;MOV	0xa0(%RSP),%R15;
0x1d46;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;JMP	1238 <main+0xd8>;
0x1d4b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	(%RSI),%RDX;
0x1d4e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x1d53;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x12ae(%RIP),%RSI;
0x1d5a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1110 <.plt.sec@start+0x40>;
0x1d5f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:226;MOV	$0x1,%EAX;
0x1d64;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:226;JMP	1d1c <main+0xbbc>;
0x1d66;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x10(%RBX),%RDX;
0x1d6a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1338(%RIP),%RSI;
0x1d71;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x1d76;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;
0x1d78;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1110 <.plt.sec@start+0x40>;
0x1d7d;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:241;MOV	$0x2,%EAX;
0x1d82;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:241;JMP	1d1c <main+0xbbc>;
0x1d84;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x8(%RBX),%RDX;
0x1d88;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;JMP	1d6a <main+0xc0a>;
0x1d8a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:399;CALL	1100 <.plt.sec@start+0x30>;
0x1d8f;:0;NOP;