address;source_location;insn;indent
0x14de;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:64;MOVQ	$0,-0x8(%RBP);
0x14e6;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:64;JMP	1537 <convolve_baseline+0x82>;
0x14e8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	-0x10(%RBP),%RAX;  (2) 
0x14ec;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;IMUL	-0x40(%RBP),%RAX;  (2) 
0x14f1;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	%RAX,%RDX;  (2) 
0x14f4;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	-0x8(%RBP),%RAX;  (2) 
0x14f8;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;ADD	%RAX,%RDX;  (2) 
0x14fb;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	-0x28(%RBP),%RAX;  (2) 
0x14ff;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;ADD	%RDX,%RAX;  (2) 
0x1502;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOVZX	(%RAX),%EAX;  (2) 
0x1505;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOVZX	%AL,%EDX;  (2) 
0x1508;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	-0x10(%RBP),%RAX;  (2) 
0x150c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;IMUL	-0x40(%RBP),%RAX;  (2) 
0x1511;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	%RAX,%RCX;  (2) 
0x1514;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	-0x8(%RBP),%RAX;  (2) 
0x1518;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;ADD	%RCX,%RAX;  (2) 
0x151b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;LEA	(,%RAX,4),%RCX;  (2) 
0x1523;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	-0x30(%RBP),%RAX;  (2) 
0x1527;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;ADD	%RCX,%RAX;  (2) 
0x152a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;MOV	(%RAX),%EAX;  (2) 
0x152c;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;IMUL	%EDX,%EAX;  (2) 
0x152f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:65;ADD	%EAX,-0x14(%RBP);  (2) 
0x1532;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:64;ADDQ	$0x1,-0x8(%RBP);  (2) 
0x1537;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:64;MOV	-0x8(%RBP),%RAX;  (2) 
0x153b;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:64;CMP	-0x40(%RBP),%RAX;  (2) 
0x153f;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:64;JB	14e8 <convolve_baseline+0x33>;  (2) 
0x1541;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:63;ADDQ	$0x1,-0x10(%RBP);
0x1546;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:63;MOV	-0x10(%RBP),%RAX;
0x154a;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:63;CMP	-0x38(%RBP),%RAX;
0x154e;/scratch/chps/users/user22024/Projet/AOC-Computer-vision/sobel.c:63;JB	14de <convolve_baseline+0x29>;
