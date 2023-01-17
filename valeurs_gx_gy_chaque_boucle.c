//k=0 l=0 -1 -1
gx += -cframe[i_W3_j];
gy += -cframe[i_W3_j];

//k=0 l=1 0 -2
gy +=  cframe[i_W3_j + 1] * -2;

//k=0 l=2 1 -1
gx +=  cframe[i_W3_j + 2];
gy += -cframe[i_W3_j + 2];

//k=1 l=0 -2 0
gx +=  cframe[i_W3_j + 3] * -2;

//k=1 l=1 0 0

//k=1 l=2 2 0
gx +=  cframe[i_W3_j + 5] * 2;

//k=2 l=0 -1 1
gx += -cframe[i_W3_j + 6];
gy +=  cframe[i_W3_j + 6];

//k=2 l=1 0 2
gy +=  cframe[i_W3_j + 7] * 2;

//k=2 l=2 1 1
gx +=  cframe[i_W3_j + 8];
gy +=  cframe[i_W3_j + 8];