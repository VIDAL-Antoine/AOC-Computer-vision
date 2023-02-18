CC=gcc

CFLAGS=-g3

OFLAGS=-march=native -funroll-loops -Ofast

all: inv_baseline sob_baseline sobel_v1

inv_baseline:
	$(CC) -DBASELINE=1 $(CFLAGS) invert.c common.c -o invert -lm

sob_baseline:
	$(CC) -DBASELINE=1 $(CFLAGS) sobel.c common.c -o sobel -lm

sobel_v1:
	$(CC) -DV1=1 $(CFLAGS) $(OFLAGS) sobel.c common.c -o sobel -lm

sobel_v2:
	$(CC) -DV2=1 $(CFLAGS) $(OFLAGS) sobel.c common.c -o sobel -lm

sobel_v3:
	$(CC) -DV3=1 $(CFLAGS) $(OFLAGS) sobel.c common.c -o sobel -lm -fopenmp

sobel_v4:
	$(CC) -DV4=1 $(CFLAGS) $(OFLAGS) sobel.c common.c -o sobel -lm -fopenmp

clean:
	rm -Rf *~ invert sobel
