set term png size 1900,1000

set grid
 
set ylabel "Latency in cycles"
set xlabel "Frame number"

#set yrange [1e6:2.15e9]

set multiplot layout 2,2 rowsfirst 

set title "O1 compiler optimization"
plot "O1/data/sobel_v1" w lp t "v1" ,\
     "O1/data/sobel_v2" w lp t "v2" ,\
     "O1/data/sobel_v3" w lp t "v3"

set title "O2 compiler optimization"
plot "O2/data/sobel_v1" w lp t "v1" ,\
     "O2/data/sobel_v2" w lp t "v2" ,\
     "O2/data/sobel_v3" w lp t "v3"

set title "O3 compiler optimization"
plot "O3/data/sobel_v1" w lp t "v1" ,\
     "O3/data/sobel_v2" w lp t "v2" ,\
     "O3/data/sobel_v3" w lp t "v3"

set title "Ofast compiler optimization"
plot "Ofast/data/sobel_v1" w lp t "v1" ,\
     "Ofast/data/sobel_v2" w lp t "v2" ,\
     "Ofast/data/sobel_v3" w lp t "v3"

unset multiplot
