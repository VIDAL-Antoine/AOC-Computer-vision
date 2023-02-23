/*
  This code performs edge detection using a Sobel filter on a video stream meant as input to a neural network
*/
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <emmintrin.h>
#include <malloc.h>

//
#include "rdtsc.h"

//
#include "common.h"

//Convert an image to its grayscale equivalent - better color precision
void grayscale_weighted(u8 *frame)
{
  f32 gray;
  
  for (u64 i = 0; i < H * W * 3; i += 3)
    {
      //Convert RGB color values into grayscale for each pixel using color weights
      //Other possible weights: 0.59, 0.30, 0.11
      //Principle: mix different quantities of R, G, B to create a variant of gray
      gray = ((float)frame[i] * 0.299) + ((float)frame[i + 1] * 0.587) + ((float)frame[i + 2] * 0.114);
      
      frame[i]     = gray;
      frame[i + 1] = gray;
      frame[i + 2] = gray;
    }
}

//Convert an image to its grayscale equivalent - bad color precision
void grayscale_sampled(u8 *frame)
{
  for (u64 i = 0; i < H * W * 3; i += 3)
    {
      //R: light gray
      //G: medium gray
      //B: dark gray
      u8 gray = frame[i];
      
      frame[i]     = gray;
      frame[i + 1] = gray;
      frame[i + 2] = gray;
    }
}

/*
######################################
# Version 0 : Baseline
######################################
*/

#if BASELINE

//
i32 convolve_baseline(u8 *m, i32 *f, u64 fh, u64 fw)
{
  i32 r = 0;

  for (u64 i = 0; i < fh; i++)
    for (u64 j = 0; j < fw; j++)
      r += m[INDEX(i, j, fw)] * f[INDEX(i, j, fw)];
  
  return r;
}

//
void sobel_baseline(u8 *cframe, u8 *oframe, f32 threshold)
{
  i32 gx, gy;
  f32 mag = 0.0;

  i32 f1[9] = { -1, 0, 1,
		       -2, 0, 2,
		       -1, 0, 1 }; //3x3 matrix
  
  i32 f2[9] = { -1, -2, -1,
		       0, 0, 0,
		       1, 2, 1 }; //3x3 matrix
  
  //
  for (u64 i = 0; i < (H - 3); i++)
    for (u64 j = 0; j < ((W * 3) - 3); j++)
      {
	gx = convolve_baseline(&cframe[INDEX(i, j, W * 3)], f1, 3, 3);
	gy = convolve_baseline(&cframe[INDEX(i, j, W * 3)], f2, 3, 3);
      
	mag = sqrt((gx * gx) + (gy * gy));
	
	oframe[INDEX(i, j, W * 3)] = (mag > threshold) ? 255 : mag;
      }
}

/*
######################################
# Version 1 : ajout de flags de compilation
# Pas de changements au niveau du code source
######################################
*/

#elif V1

//
i32 convolve_v1(u8 *m, i32 *f, u64 fh, u64 fw)
{
  i32 r = 0;

  for (u64 i = 0; i < fh; i++)
    for (u64 j = 0; j < fw; j++)
      r += m[INDEX(i, j, fw)] * f[INDEX(i, j, fw)];
  
  return r;
}

//
void sobel_v1(u8 *cframe, u8 *oframe, f32 threshold)
{
  i32 gx, gy;
  f32 mag = 0.0;

  i32 f1[9] = { -1, 0, 1,
		       -2, 0, 2,
		       -1, 0, 1 }; //3x3 matrix
  
  i32 f2[9] = { -1, -2, -1,
		       0, 0, 0,
		       1, 2, 1 }; //3x3 matrix
  
  //
  for (u64 i = 0; i < (H - 3); i++)
    for (u64 j = 0; j < ((W * 3) - 3); j++)
      {
	gx = convolve_v1(&cframe[INDEX(i, j, W * 3)], f1, 3, 3);
	gy = convolve_v1(&cframe[INDEX(i, j, W * 3)], f2, 3, 3);
      
	mag = sqrt((gx * gx) + (gy * gy));
	
	oframe[INDEX(i, j, W * 3)] = (mag > threshold) ? 255 : mag;
      }
}

/*
######################################
# Version 2 : Optimisations au niveau du code source
# Regroupement en une fonction
# Suppression des matrices f1 et f2 et de la double boucle interne
# La racine carrée étant un goulot d'étranglement, il ne semble pas possible d'y échapper sans devoir faire des approximations
######################################
*/

#elif V2

#define H3 H-3
#define W3 W*3
#define W3_3 W*3-3
#define THRESHOLD 100

static void sobel_v2(u8* const restrict cframe, u8* restrict oframe)
{
  //
  for (u32 i = 0; i < H3; i++)
  {
    for (u32 j = 0; j < W3_3; j++)
    {
      u32 gx, i_W3_j, mag_approx; //gy is stored in mag_approx
      i_W3_j = i * W3 + j;

      gx = ( cframe[i_W3_j + 8] - cframe[i_W3_j] );
      mag_approx = gx;
      gx         +=   cframe[i_W3_j + 2] - cframe[i_W3_j + 6] + 2 * ( cframe[i_W3_j + 5] - cframe[i_W3_j + 3] );
      mag_approx += - cframe[i_W3_j + 2] + cframe[i_W3_j + 6] + 2 * ( cframe[i_W3_j + 7] - cframe[i_W3_j + 1] );
      mag_approx = abs(mag_approx) + abs(gx);
      oframe[i_W3_j] = (mag_approx > THRESHOLD) ? 255 : (mag_approx);
    }
  }
}

/*
######################################
# Version 3 : Ajout de librairies externes et modification de la fonction main
# La librairie ajoutée est OpenMP. D'autres librairies ont été considérées (BLAS...) mais n'ont pas été retenues
# Réduction des entrées / sorties en lisant la vidéo d'abord entièrement et non frame par frame
# Parallélisation au niveau des frames
######################################
*/

#elif V3_SS || V3_WS

#include <omp.h>

#define H3 H-3
#define W3 W*3
#define W3_3 W*3-3
#define THRESHOLD 100

static void sobel_v3(u8* const restrict cframe, u8* restrict oframe)
{
  //
  for (u32 i = 0; i < H3; i++)
  {
    for (u32 j = 0; j < W3_3; j++)
    {
      u32 gx, i_W3_j, mag_approx; //gy is stored in mag_approx
      i_W3_j = i * W3 + j;

      gx = ( cframe[i_W3_j + 8] - cframe[i_W3_j] );
      mag_approx = gx;
      gx         +=   cframe[i_W3_j + 2] - cframe[i_W3_j + 6] + 2 * ( cframe[i_W3_j + 5] - cframe[i_W3_j + 3] );
      mag_approx += - cframe[i_W3_j + 2] + cframe[i_W3_j + 6] + 2 * ( cframe[i_W3_j + 7] - cframe[i_W3_j + 1] );
      mag_approx = abs(mag_approx) + abs(gx);
      oframe[i_W3_j] = (mag_approx > THRESHOLD) ? 255 : (mag_approx);
    }
  }
}

#endif

//
int main(int argc, char **argv)
{
  //
  if (argc < 3)
    return printf("Usage: %s [raw input file] [raw output file]\n", argv[0]), 1;
  
  u64 cycles[MAX_SAMPLES], cycles_a, cycles_b;
  u64 nb_bytes = 1, frame_count = 0, samples_count = 0;

  //
  FILE *fpi = fopen(argv[1], "rb"); 
  FILE *fpo = fopen(argv[2], "wb");

  //
  if (!fpi)
    return printf("Error: cannot open file '%s'\n", argv[1]), 2;
  
  //
  if (!fpo)
    return printf("Error: cannot open file '%s'\n", argv[2]), 2;
  
  //Read & process video frames
#if BASELINE || V1 || V2
  u64 size = sizeof(u8) * H * W * 3; //1*1280*720*3 = 2764800
  u8 *cframe = _mm_malloc(size, 32);
  u8 *oframe = _mm_malloc(size, 32);

  while ((nb_bytes = fread(cframe, sizeof(u8), H * W * 3, fpi)))
  {
      grayscale_weighted(cframe);
#elif V3_SS
  #define NB_FRAMES_VIDEO 360 //14 seconds -> 360/14 = 25 fps //obtenu avec ffmpeg
  #define SIZE_FRAME sizeof(u8)*H*W*3  //1*1280*720*3 = 2764800
  #define SIZE_VIDEO NB_FRAMES_VIDEO*SIZE_FRAME //360*2764800 = 995328000

  u8 *cframe = _mm_malloc(SIZE_FRAME * NB_FRAMES_VIDEO, 32);
  u8 *oframe = _mm_malloc(SIZE_FRAME * NB_FRAMES_VIDEO, 32);
  u8 *p_cframe = __builtin_assume_aligned(cframe, 32);
  u8 *p_oframe = __builtin_assume_aligned(oframe, 32);
  nb_bytes = fread(p_cframe, SIZE_FRAME, NB_FRAMES_VIDEO, fpi);

  for(size_t i = 0; i < SIZE_VIDEO; i+=SIZE_FRAME)
  {
      grayscale_weighted(&p_cframe[i]);
#elif V3_WS
  #define NB_FRAMES_VIDEO 360 //14 seconds -> 360/14 = 25 fps //obtenu avec ffmpeg
  #define SIZE_FRAME sizeof(u8)*H*W*3  //1*1280*720*3 = 2764800
  #define SIZE_VIDEO NB_FRAMES_VIDEO*SIZE_FRAME //360*2764800 = 995328000
  #define NB_THREADS 4

  u8 *cframe = _mm_malloc(NB_THREADS * SIZE_FRAME * NB_FRAMES_VIDEO, 32);
  u8 *oframe = _mm_malloc(NB_THREADS * SIZE_FRAME * NB_FRAMES_VIDEO, 32);
  u8 *p_cframe = __builtin_assume_aligned(cframe, 32);
  u8 *p_oframe = __builtin_assume_aligned(oframe, 32);
  nb_bytes = fread(p_cframe, SIZE_FRAME, NB_THREADS * NB_FRAMES_VIDEO, fpi);

  printf("nbb %llu\n", nb_bytes);
  #pragma omp parallel for shared(cframe, oframe, cycles, samples_count, frame_count, nb_bytes)
  for(size_t loop = 0; loop < NB_THREADS; loop++)
  {

  for(size_t i = 0; i < SIZE_VIDEO; i+=SIZE_FRAME)
  {
      grayscale_weighted(&p_cframe[loop*SIZE_FRAME+i]);
#endif
      
      //Start 
      cycles_b = rdtsc();

      //Put other versions here
#if BASELINE
      sobel_baseline(cframe, oframe, 100.0);
#elif V1
      sobel_v1(cframe, oframe, 100.0);
#elif V2
      sobel_v2(cframe, oframe);
#elif V3_SS
      sobel_v3(&p_cframe[i], &p_oframe[i]);
#elif V3_WS
      sobel_v3(&p_cframe[loop*SIZE_FRAME+i], &p_oframe[loop*SIZE_FRAME+i]);
#endif
      
      //Stop
      cycles_a = rdtsc();

      //
      u64 elapsed = (cycles_a - cycles_b);

      //
      if (samples_count < MAX_SAMPLES)
	      cycles[samples_count++] = elapsed;
      
      //frame number; size in Bytes; elapsed cycles; bytes per cycle
      fprintf(stdout, "%20llu; %20llu; %20llu; %15.3lf\n", frame_count, nb_bytes, elapsed, (f64)(nb_bytes) / (f64)elapsed);

      //
      frame_count++;
#if BASELINE || V1 || V2
      fwrite(oframe, sizeof(u8), H * W * 3, fpo);
  }
#elif V3_SS
  }
  fwrite(p_oframe, SIZE_FRAME, NB_FRAMES_VIDEO, fpo);
#elif V3_WS
  }
  }
  fwrite(p_oframe, SIZE_FRAME, NB_THREADS*NB_FRAMES_VIDEO, fpo);
#endif

  //
  sort(cycles, samples_count);

  //
  f64 min, max, avg, mea, dev, bpc;

  //
  mea = mean(cycles, samples_count);
  
  //
  dev = stddev(cycles, samples_count);

  //
  min = cycles[0];
  max = cycles[samples_count - 1];
  avg = (min + max) / 2.0;

  //Color frame, gray frame, output frame
#if BASELINE || V1 || V2
  bpc = (size << 1) / mea;

  //
  fprintf(stderr, "\n%20llu; %15.3lf; %15.3lf; %15.3lf; %15.3lf; %15.3lf; %15.3lf %%;\n",
	  size,
	  min,
	  max,
	  avg,
	  mea,
	  bpc,
	  (dev * 100.0 / mea));
  
#elif V3
  bpc = (SIZE_FRAME << 1) / mea;

  //
  fprintf(stderr, "\n%20lu; %15.3lf; %15.3lf; %15.3lf; %15.3lf; %15.3lf; %15.3lf %%;\n",
	  SIZE_FRAME,
	  min,
	  max,
	  avg,
	  mea,
	  bpc,
	  (dev * 100.0 / mea));
#endif

  //
  _mm_free(cframe);
  _mm_free(oframe);

  //
  fclose(fpi);
  fclose(fpo);

  return  0;
}
