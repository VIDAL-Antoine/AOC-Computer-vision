address;source_location;insn;indent
0x400cbc;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:94;MOVQ	$0,-0x18(%RBP);
0x400cc4;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:94;JMP	400d0e <convolve_v1+0x77>;
0x400cc6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOV	-0x10(%RBP),%RAX;  (6) 
0x400cca;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;IMUL	-0x40(%RBP),%RAX;  (6) 
0x400ccf;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOV	-0x18(%RBP),%RDX;  (6) 
0x400cd3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;ADD	%RAX,%RDX;  (6) 
0x400cd6;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOV	-0x28(%RBP),%RAX;  (6) 
0x400cda;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;ADD	%RDX,%RAX;  (6) 
0x400cdd;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOVZX	(%RAX),%EAX;  (6) 
0x400ce0;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOVZX	%AL,%EAX;  (6) 
0x400ce3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOV	-0x10(%RBP),%RDX;  (6) 
0x400ce7;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;IMUL	-0x40(%RBP),%RDX;  (6) 
0x400cec;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOV	-0x18(%RBP),%RCX;  (6) 
0x400cf0;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;ADD	%RCX,%RDX;  (6) 
0x400cf3;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;LEA	(,%RDX,4),%RCX;  (6) 
0x400cfb;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOV	-0x30(%RBP),%RDX;  (6) 
0x400cff;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;ADD	%RCX,%RDX;  (6) 
0x400d02;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;MOV	(%RDX),%EDX;  (6) 
0x400d04;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;IMUL	%EDX,%EAX;  (6) 
0x400d07;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:95;ADD	%EAX,-0x4(%RBP);  (6) 
0x400d0a;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:94;INCQ	-0x18(%RBP);  (6) 
0x400d0e;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:94;MOV	-0x18(%RBP),%RAX;  (6) 
0x400d12;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:94;CMP	-0x40(%RBP),%RAX;  (6) 
0x400d16;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:94;JB	400cc6 <convolve_v1+0x2f>;  (6) 
0x400d18;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:93;INCQ	-0x10(%RBP);
0x400d1c;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:93;MOV	-0x10(%RBP),%RAX;
0x400d20;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:93;CMP	-0x38(%RBP),%RAX;
0x400d24;/home/antvidal/AOC/AOC-Computer-vision/sobel.c:93;JB	400cbc <convolve_v1+0x25>;
