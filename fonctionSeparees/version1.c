#define u32 unsigned int
#define u8 unsigned int
/*
######################################
# Version 1 : ajout de flags de compilation
# Pas de changements au niveau du code source
######################################
*/
i32 convolve_v1(u8 *m, i32 *f, u64 fh, u64 fw)
{
  i32 r = 0;

  for (u64 i = 0; i < fh; i++)
    for (u64 j = 0; j < fw; j++)
      r += m[INDEX(i, j, fw)] * f[INDEX(i, j, fw)];
  
  return r;
}

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
