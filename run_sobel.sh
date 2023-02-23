#!/bin/bash

source ~/.bashrc
#
~/ffmpeg -version >> "/dev/null"

if [ $? -ne 0 ] 
then
    echo "Error: Cannot invoke FFMPEG"
    exit 1
fi

#
#gnuplot --version >> "/dev/null"

#if [ $? -ne 0 ] 
#then
#    echo "Error: Cannot invoke GNUPLOT"
#    exit 1
#fi

#
#echo -e "[BEGIN]\n"

#if [ -f "in/input.raw" ]
#then
    #If input file exists nothing to be done
#    echo "Input file exists"
#    echo
#else    
    #Convert mp4 to raw format
#    echo "Converting video to raw format"
#    echo
    
#    ./cvt_vid.sh v2r "in/input.mp4" "in/input.raw" >> /dev/null 2>> /dev/null
#fi

#
dir="data_runs_sobel"
mkdir -p $dir $dir"/logs"

#
cp "plot_sob_all.gp" $dir

#Compiler optimizations
#for opt in "O1" "O2" "O3" "Ofast"
for opt in "Ofast"
do
    #
    echo "Running with flag: "$opt
    
    #
    mkdir -p $dir"/"$opt
    mkdir -p $dir"/"$opt"/data"

    #
    cp "plot_sob.gp" $dir"/"$opt
    
    #Going through sobel code variants
    #for variant in sob_baseline sobel_v1 sobel_v2 sobel_v3
    for variant in sobel_v3_ss
    do
	#
	echo -e "\tVariant: "$variant
	
  if [[ "$variant" == "sobel_v3*" ]]; then
      export OMP_NUM_THREADS=32
  fi

	#Compile variant
	make $variant O=$opt >> $dir"/logs/compile.log" 2>> $dir"/logs/compile_err.log"
	
  if [[ "$variant" != "sobel_v3_ss" ]]; then
    #Run & select run number & cycles 
    ./sobel in/input.raw sout/output.raw | cut -d';' -f1,3 > $dir"/"$opt"/data/"$variant
    #./sobel in/input.raw sout/output.raw 2> $dir/"cycles_${opt}_${variant}.dat" | cut -d';' -f1,3 > $dir"/"$opt"/data/"$variant
    
    #Convert raw file into mp4 video
    ./cvt_vid.sh r2v "sout/output.raw" "sout/output_"$variant".mp4" >> $dir"/logs/cvt.log" 2>> $dir"/logs/cvt_err.log"

  else
    ./sobel in/input_ws.raw sout/output_ws.raw | cut -d';' -f1,3 > $dir"/"$opt"/data/"$variant
    ./cvt_vid.sh r2v "sout/output_ws.raw" "sout/output_"$variant"_ws.mp4" >> $dir"/logs/cvt.log" 2>> $dir"/logs/cvt_err.log"
  fi

	echo
    done

    #
    cd $dir"/"$opt

    #Generate the plot
    #gnuplot -c "plot_sob.gp" > "plot_"$opt".png"

    cd ../..

    echo
done

#
cd $dir

#gnuplot -c "plot_sob_all.gp" > "plot_all.png" 

cd ..

#
make clean

#
echo -e "\n[DONE]"

#maqao oneview --create-report=one  binary=sobel run_command="<binary> input.raw output.raw" pinning_command="taskset -c 1" dataset="`pwd`/in"
