address;source_location;insn;indent
0x400a67;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:51;PUSH	%RBP;
0x400a68;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:51;MOV	%RSP,%RBP;
0x400a6b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:51;MOV	%RDI,-0x28(%RBP);
0x400a6f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:51;MOV	%RSI,-0x30(%RBP);
0x400a73;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:51;MOV	%RDX,-0x38(%RBP);
0x400a77;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:51;MOV	%RCX,-0x40(%RBP);
0x400a7b;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:52;MOVL	$0,-0x4(%RBP);
0x400a82;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:54;MOVQ	$0,-0x10(%RBP);
0x400a8a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:54;JMP	400af4 <convolve_baseline+0x8d>;
0x400a8c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:55;MOVQ	$0,-0x18(%RBP);(3) 
0x400a94;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:55;JMP	400ae5 <convolve_baseline+0x7e>;(3) 
0x400a96;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	-0x10(%RBP),%RAX;  (2) 
0x400a9a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;IMUL	-0x40(%RBP),%RAX;  (2) 
0x400a9f;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	%RAX,%RDX;  (2) 
0x400aa2;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	-0x18(%RBP),%RAX;  (2) 
0x400aa6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;ADD	%RAX,%RDX;  (2) 
0x400aa9;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	-0x28(%RBP),%RAX;  (2) 
0x400aad;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;ADD	%RDX,%RAX;  (2) 
0x400ab0;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOVZX	(%RAX),%EAX;  (2) 
0x400ab3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOVZX	%AL,%EDX;  (2) 
0x400ab6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	-0x10(%RBP),%RAX;  (2) 
0x400aba;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;IMUL	-0x40(%RBP),%RAX;  (2) 
0x400abf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	%RAX,%RCX;  (2) 
0x400ac2;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	-0x18(%RBP),%RAX;  (2) 
0x400ac6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;ADD	%RCX,%RAX;  (2) 
0x400ac9;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;LEA	(,%RAX,4),%RCX;  (2) 
0x400ad1;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	-0x30(%RBP),%RAX;  (2) 
0x400ad5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;ADD	%RCX,%RAX;  (2) 
0x400ad8;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;MOV	(%RAX),%EAX;  (2) 
0x400ada;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;IMUL	%EDX,%EAX;  (2) 
0x400add;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:56;ADD	%EAX,-0x4(%RBP);  (2) 
0x400ae0;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:55;ADDQ	$0x1,-0x18(%RBP);  (2) 
0x400ae5;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:55;MOV	-0x18(%RBP),%RAX;  (2) 
0x400ae9;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:55;CMP	-0x40(%RBP),%RAX;  (2) 
0x400aed;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:55;JB	400a96 <convolve_baseline+0x2f>;  (2) 
0x400aef;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:54;ADDQ	$0x1,-0x10(%RBP);(3) 
0x400af4;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:54;MOV	-0x10(%RBP),%RAX;(3) 
0x400af8;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:54;CMP	-0x38(%RBP),%RAX;(3) 
0x400afc;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:54;JB	400a8c <convolve_baseline+0x25>;(3) 
0x400afe;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:58;MOV	-0x4(%RBP),%EAX;
0x400b01;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:59;POP	%RBP;
0x400b02;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:59;RET;
