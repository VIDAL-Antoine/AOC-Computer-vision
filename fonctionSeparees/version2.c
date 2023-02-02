#define u32 unsigned int
#define u8 unsigned int
/*
######################################
# Version 2 : Optimisations au niveau du code source
# Regroupement en une fonction
# Suppression des matrices f1 et f2 et de la double boucle interne
# La racine carrée étant un goulot d'étranglement, il ne semble pas possible d'y échapper sans devoir faire des approximations
######################################
*/
#define H3 H-3
#define W3 W*3
#define W3_3 W*3-3
#define THRESHOLD 100





void sobel_v2(u8* const cframe, u8* restrict oframe)
{
  //
  for (u32 i = 0; i < H3; i++)
  {
    for (u32 j = 0; j < W3_3; j++)
    {
      u32 gx, i_W3_j, mag_approx; //gy is stored in mag_approx
      i_W3_j = i * W3 + j;

      gx = ( *(cframe + i_W3_j + 8) - *(cframe + i_W3_j) );
      mag_approx = gx;
      gx +=           *(cframe + i_W3_j + 2) - *(cframe + i_W3_j + 6) + 2 * ( *(cframe + i_W3_j + 5) - *(cframe + i_W3_j + 3) );
      mag_approx += - *(cframe + i_W3_j + 2) + *(cframe + i_W3_j + 6) + 2 * ( *(cframe + i_W3_j + 7) - *(cframe + i_W3_j + 1) );

      mag_approx = abs(mag_approx) + abs(gx);
      *(oframe + i_W3_j) = (mag_approx > THRESHOLD) ? 255 : (mag_approx);
    }
  }
}
