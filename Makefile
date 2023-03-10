CC=gcc

CFLAGS=-g3

OFLAGS=-march=native -funroll-loops -Ofast

all: inv_baseline sobel_v3

inv_baseline:
	$(CC) -DBASELINE=1 $(CFLAGS) invert.c common.c -o invert -lm

sob_baseline:
	$(CC) -DBASELINE=1 $(CFLAGS) -${O} sobel.c common.c -o sobel -lm

sobel_v1:
	$(CC) -DV1=1 $(CFLAGS) $(OFLAGS) -${O} sobel.c common.c -o sobel -lm

sobel_v2:
	$(CC) -DV2=1 $(CFLAGS) $(OFLAGS) -${O} sobel.c common.c -o sobel -lm

sobel_v3:
	$(CC) -DV3_SS=1 $(CFLAGS) ${OFLAGS} -${O} sobel.c common.c -o sobel -lm -fopenmp

sobel_v3_ws:
	$(CC) -DV3_WS=1 $(CFLAGS) $(OFLAGS) sobel.c common.c -o sobel -lm -fopenmp

clean:
	rm -Rf *~ invert sobel
