set term png size 1900,1000

set grid
 
set ylabel "Latency in cycles"
set xlabel "Frame number"

#set yrange [0:1e9]

set title "Comparison between different implementaions of the color inversion"

plot "data/sob_baseline" w lp ,\
     "data/sobel_v1" w lp
