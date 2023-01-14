address;source_location;insn;indent
0x400b03;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:63;PUSH	%RBP;
0x400b04;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:63;MOV	%RSP,%RBP;
0x400b07;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:63;SUB	$0x90,%RSP;
0x400b0e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:63;MOV	%RDI,-0x78(%RBP);
0x400b12;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:63;MOV	%RSI,-0x80(%RBP);
0x400b16;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:63;MOVSS	%XMM0,-0x84(%RBP);
0x400b1e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:65;PXOR	%XMM0,%XMM0;
0x400b22;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:65;MOVSS	%XMM0,-0x14(%RBP);
0x400b27;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$-0x1,-0x40(%RBP);
0x400b2e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$0,-0x3c(%RBP);
0x400b35;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$0x1,-0x38(%RBP);
0x400b3c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$-0x2,-0x34(%RBP);
0x400b43;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$0,-0x30(%RBP);
0x400b4a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$0x2,-0x2c(%RBP);
0x400b51;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$-0x1,-0x28(%RBP);
0x400b58;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$0,-0x24(%RBP);
0x400b5f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:67;MOVL	$0x1,-0x20(%RBP);
0x400b66;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$-0x1,-0x70(%RBP);
0x400b6d;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$-0x2,-0x6c(%RBP);
0x400b74;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$-0x1,-0x68(%RBP);
0x400b7b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$0,-0x64(%RBP);
0x400b82;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$0,-0x60(%RBP);
0x400b89;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$0,-0x5c(%RBP);
0x400b90;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$0x1,-0x58(%RBP);
0x400b97;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$0x2,-0x54(%RBP);
0x400b9e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:71;MOVL	$0x1,-0x50(%RBP);
0x400ba5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:76;MOVQ	$0,-0x8(%RBP);
0x400bad;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:76;JMP	400cc2 <sobel_baseline+0x1bf>;
0x400bb2;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:77;MOVQ	$0,-0x10(%RBP);(5) 
0x400bba;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:77;JMP	400caf <sobel_baseline+0x1ac>;(5) 
0x400bbf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	-0x8(%RBP),%RDX;  (4) 
0x400bc3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	%RDX,%RAX;  (4) 
0x400bc6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;SAL	$0x4,%RAX;  (4) 
0x400bca;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;SUB	%RDX,%RAX;  (4) 
0x400bcd;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;SAL	$0x8,%RAX;  (4) 
0x400bd1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	%RAX,%RDX;  (4) 
0x400bd4;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	-0x10(%RBP),%RAX;  (4) 
0x400bd8;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;ADD	%RAX,%RDX;  (4) 
0x400bdb;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	-0x78(%RBP),%RAX;  (4) 
0x400bdf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;LEA	(%RDX,%RAX,1),%RDI;  (4) 
0x400be3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;LEA	-0x40(%RBP),%RAX;  (4) 
0x400be7;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	$0x3,%ECX;  (4) 
0x400bec;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	$0x3,%EDX;  (4) 
0x400bf1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	%RAX,%RSI;  (4) 
0x400bf4;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;CALL	400a67 <convolve_baseline>;  (4) 
0x400bf9;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:79;MOV	%EAX,-0x18(%RBP);  (4) 
0x400bfc;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	-0x8(%RBP),%RDX;  (4) 
0x400c00;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	%RDX,%RAX;  (4) 
0x400c03;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;SAL	$0x4,%RAX;  (4) 
0x400c07;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;SUB	%RDX,%RAX;  (4) 
0x400c0a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;SAL	$0x8,%RAX;  (4) 
0x400c0e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	%RAX,%RDX;  (4) 
0x400c11;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	-0x10(%RBP),%RAX;  (4) 
0x400c15;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;ADD	%RAX,%RDX;  (4) 
0x400c18;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	-0x78(%RBP),%RAX;  (4) 
0x400c1c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;LEA	(%RDX,%RAX,1),%RDI;  (4) 
0x400c20;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;LEA	-0x70(%RBP),%RAX;  (4) 
0x400c24;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	$0x3,%ECX;  (4) 
0x400c29;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	$0x3,%EDX;  (4) 
0x400c2e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	%RAX,%RSI;  (4) 
0x400c31;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;CALL	400a67 <convolve_baseline>;  (4) 
0x400c36;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:80;MOV	%EAX,-0x1c(%RBP);  (4) 
0x400c39;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;MOV	-0x18(%RBP),%EAX;  (4) 
0x400c3c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;IMUL	%EAX,%EAX;  (4) 
0x400c3f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;MOV	%EAX,%EDX;  (4) 
0x400c41;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;MOV	-0x1c(%RBP),%EAX;  (4) 
0x400c44;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;IMUL	%EAX,%EAX;  (4) 
0x400c47;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;ADD	%EDX,%EAX;  (4) 
0x400c49;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;PXOR	%XMM1,%XMM1;  (4) 
0x400c4d;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;CVTSI2SD	%EAX,%XMM1;  (4) 
0x400c51;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;MOVQ	%XMM1,%RAX;  (4) 
0x400c56;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;MOVQ	%RAX,%XMM0;  (4) 
0x400c5b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;CALL	400770 <sqrt@plt>;  (4) 
0x400c60;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;CVTSD2SS	%XMM0,%XMM0;  (4) 
0x400c64;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:82;MOVSS	%XMM0,-0x14(%RBP);  (4) 
0x400c69;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOVSS	-0x14(%RBP),%XMM0;  (4) 
0x400c6e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;COMISS	-0x84(%RBP),%XMM0;  (4) 
0x400c75;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;JBE	400c7e <sobel_baseline+0x17b>;  (4) 
0x400c77;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	$-0x1,%ECX;  (4) 
0x400c7c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;JMP	400c85 <sobel_baseline+0x182>;  (4) 
0x400c7e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;CVTTSS2SI	-0x14(%RBP),%EAX;  (4) 
0x400c83;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	%EAX,%ECX;  (4) 
0x400c85;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	-0x8(%RBP),%RDX;  (4) 
0x400c89;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	%RDX,%RAX;  (4) 
0x400c8c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;SAL	$0x4,%RAX;  (4) 
0x400c90;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;SUB	%RDX,%RAX;  (4) 
0x400c93;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;SAL	$0x8,%RAX;  (4) 
0x400c97;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	%RAX,%RDX;  (4) 
0x400c9a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	-0x10(%RBP),%RAX;  (4) 
0x400c9e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;ADD	%RAX,%RDX;  (4) 
0x400ca1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	-0x80(%RBP),%RAX;  (4) 
0x400ca5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;ADD	%RDX,%RAX;  (4) 
0x400ca8;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:84;MOV	%CL,(%RAX);  (4) 
0x400caa;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:77;ADDQ	$0x1,-0x10(%RBP);  (4) 
0x400caf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:77;CMPQ	$0xefc,-0x10(%RBP);  (4) 
0x400cb7;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:77;JBE	400bbf <sobel_baseline+0xbc>;  (4) 
0x400cbd;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:76;ADDQ	$0x1,-0x8(%RBP);(5) 
0x400cc2;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:76;CMPQ	$0x2cc,-0x8(%RBP);(5) 
0x400cca;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:76;JBE	400bb2 <sobel_baseline+0xaf>;(5) 
0x400cd0;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:86;NOP;
0x400cd1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:86;NOP;
0x400cd2;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:86;LEAVE;
0x400cd3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:86;RET;
