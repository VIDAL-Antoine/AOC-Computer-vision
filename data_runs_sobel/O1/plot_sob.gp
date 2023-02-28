set term png size 1900,1000

set grid
 
set ylabel "Latency in cycles"
set xlabel "Frame number"

set yrange [1e6:2.15e9]

set title "Comparison between different implementaions of the Sobel filter"

plot "data/sob_baseline" w lp ,\
     "data/sobel_v1" w lp ,\
     "data/sobel_v2" w lp ,\
     "data/sobel_v3" w lp
