cd data_runs_sobel/
gnuplot -c "plot_sob_all.gp" > "plot_all.png"
for d in O1 O2 O3 Ofast;
do
  cd "$d"
  gnuplot -c "plot_sob.gp" > "plot_${d}.png"
  cd ..
done
