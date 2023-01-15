address;source_location;insn;indent
0x400d2b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:102;PUSH	%RBP;
0x400d2c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:102;MOV	%RSP,%RBP;
0x400d2f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:102;SUB	$0x90,%RSP;
0x400d36;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:102;MOV	%RDI,-0x78(%RBP);
0x400d3a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:102;MOV	%RSI,-0x80(%RBP);
0x400d3e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:102;VMOVSS	%XMM0,-0x84(%RBP);
0x400d46;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:104;VXORPS	%XMM0,%XMM0,%XMM0;
0x400d4a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:104;VMOVSS	%XMM0,-0x14(%RBP);
0x400d4f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$-0x1,-0x40(%RBP);
0x400d56;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$0,-0x3c(%RBP);
0x400d5d;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$0x1,-0x38(%RBP);
0x400d64;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$-0x2,-0x34(%RBP);
0x400d6b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$0,-0x30(%RBP);
0x400d72;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$0x2,-0x2c(%RBP);
0x400d79;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$-0x1,-0x28(%RBP);
0x400d80;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$0,-0x24(%RBP);
0x400d87;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:106;MOVL	$0x1,-0x20(%RBP);
0x400d8e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$-0x1,-0x70(%RBP);
0x400d95;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$-0x2,-0x6c(%RBP);
0x400d9c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$-0x1,-0x68(%RBP);
0x400da3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$0,-0x64(%RBP);
0x400daa;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$0,-0x60(%RBP);
0x400db1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$0,-0x5c(%RBP);
0x400db8;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$0x1,-0x58(%RBP);
0x400dbf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$0x2,-0x54(%RBP);
0x400dc6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:110;MOVL	$0x1,-0x50(%RBP);
0x400dcd;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:115;MOVQ	$0,-0x8(%RBP);
0x400dd5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:115;JMP	400ec7 <sobel_v1+0x19c>;
0x400dda;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:116;MOVQ	$0,-0x10(%RBP);(9) 
0x400de2;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:116;JMP	400eb5 <sobel_v1+0x18a>;(9) 
0x400de7;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;MOV	-0x8(%RBP),%RAX;  (8) 
0x400deb;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;IMUL	$0xf00,%RAX,%RAX;  (8) 
0x400df2;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;MOV	-0x10(%RBP),%RDX;  (8) 
0x400df6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;ADD	%RAX,%RDX;  (8) 
0x400df9;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;MOV	-0x78(%RBP),%RAX;  (8) 
0x400dfd;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;LEA	(%RDX,%RAX,1),%RDI;  (8) 
0x400e01;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;LEA	-0x40(%RBP),%RAX;  (8) 
0x400e05;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;MOV	$0x3,%ECX;  (8) 
0x400e0a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;MOV	$0x3,%EDX;  (8) 
0x400e0f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;MOV	%RAX,%RSI;  (8) 
0x400e12;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;CALL	400c97 <convolve_v1>;  (8) 
0x400e17;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:118;MOV	%EAX,-0x18(%RBP);  (8) 
0x400e1a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;MOV	-0x8(%RBP),%RAX;  (8) 
0x400e1e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;IMUL	$0xf00,%RAX,%RAX;  (8) 
0x400e25;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;MOV	-0x10(%RBP),%RDX;  (8) 
0x400e29;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;ADD	%RAX,%RDX;  (8) 
0x400e2c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;MOV	-0x78(%RBP),%RAX;  (8) 
0x400e30;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;LEA	(%RDX,%RAX,1),%RDI;  (8) 
0x400e34;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;LEA	-0x70(%RBP),%RAX;  (8) 
0x400e38;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;MOV	$0x3,%ECX;  (8) 
0x400e3d;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;MOV	$0x3,%EDX;  (8) 
0x400e42;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;MOV	%RAX,%RSI;  (8) 
0x400e45;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;CALL	400c97 <convolve_v1>;  (8) 
0x400e4a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:119;MOV	%EAX,-0x1c(%RBP);  (8) 
0x400e4d;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;MOV	-0x18(%RBP),%EAX;  (8) 
0x400e50;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;IMUL	%EAX,%EAX;  (8) 
0x400e53;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;MOV	%EAX,%EDX;  (8) 
0x400e55;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;MOV	-0x1c(%RBP),%EAX;  (8) 
0x400e58;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;IMUL	%EAX,%EAX;  (8) 
0x400e5b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;ADD	%EDX,%EAX;  (8) 
0x400e5d;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;VCVTSI2SD	%EAX,%XMM1,%XMM1;  (8) 
0x400e61;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;VMOVQ	%XMM1,%RAX;  (8) 
0x400e66;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;VMOVQ	%RAX,%XMM0;  (8) 
0x400e6b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;CALL	400770 <sqrt@plt>;  (8) 
0x400e70;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;VCVTSD2SS	%XMM0,%XMM0,%XMM0;  (8) 
0x400e74;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:121;VMOVSS	%XMM0,-0x14(%RBP);  (8) 
0x400e79;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;VMOVSS	-0x14(%RBP),%XMM0;  (8) 
0x400e7e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;VCOMISS	-0x84(%RBP),%XMM0;  (8) 
0x400e86;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;JBE	400e8f <sobel_v1+0x164>;  (8) 
0x400e88;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;MOV	$-0x1,%EDX;  (8) 
0x400e8d;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;JMP	400e96 <sobel_v1+0x16b>;  (8) 
0x400e8f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;VCVTTSS2SI	-0x14(%RBP),%EAX;  (8) 
0x400e94;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;MOV	%EAX,%EDX;  (8) 
0x400e96;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;MOV	-0x8(%RBP),%RAX;  (8) 
0x400e9a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;IMUL	$0xf00,%RAX,%RAX;  (8) 
0x400ea1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;MOV	-0x10(%RBP),%RCX;  (8) 
0x400ea5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;ADD	%RAX,%RCX;  (8) 
0x400ea8;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;MOV	-0x80(%RBP),%RAX;  (8) 
0x400eac;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;ADD	%RCX,%RAX;  (8) 
0x400eaf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:123;MOV	%DL,(%RAX);  (8) 
0x400eb1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:116;INCQ	-0x10(%RBP);  (8) 
0x400eb5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:116;CMPQ	$0xefc,-0x10(%RBP);  (8) 
0x400ebd;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:116;JBE	400de7 <sobel_v1+0xbc>;  (8) 
0x400ec3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:115;INCQ	-0x8(%RBP);(9) 
0x400ec7;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:115;CMPQ	$0x2cc,-0x8(%RBP);(9) 
0x400ecf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:115;JBE	400dda <sobel_v1+0xaf>;(9) 
0x400ed5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:125;NOP;
0x400ed6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:125;NOP;
0x400ed7;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:125;LEAVE;
0x400ed8;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:125;RET;
