CC=gcc

CFLAGS=-g3

OFLAGS=-march=native

all: inv_baseline sob_baseline

inv_baseline:
	$(CC) -DBASELINE=1 $(CFLAGS) -$(O) invert.c common.c -o invert -lm

sob_baseline:
	$(CC) -DBASELINE=1 $(CFLAGS) -$(O) sobel.c common.c -o sobel -lm

clean:
	rm -Rf *~ invert sobel
