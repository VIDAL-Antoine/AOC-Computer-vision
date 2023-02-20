if [ "$#" -ne 1 ]; then
  echo "Usage : "$0" [version]"
  echo "v0 for the baseline version, v1/v2/v3... for the other versions"
  echo "Example : "$0" v2"
  exit 1
else
  if [ ! -f in/input.raw ] || [ ! -f sout/output.raw ]; then
    echo "Missing raw file(s). Check if in/input.raw and sout/output.raw exist."
    exit 1
  else
    #module load maqao/2.15.3 gcc/10.2.0 2018/make/4.3 
    mkdir -p maqao/
    if [ "$1" == "v0" ]; then
      make sob_baseline
      maqao oneview -R1 --replace xp=./maqao_local/sobel_baseline lprof_params="--include-kernel --sampling-rate=high" executable=sobel run_command="<executable> in/input.raw sout/output.raw"
    else
      make sobel_$1

      if [ "$1" == "v1" ] || [ "$1" == "v2" ]; then
        maqao oneview -R1 --replace xp=./maqao_local/sobel_$1 lprof_params="--include-kernel --sampling-rate=high" executable=sobel run_command="<executable> in/input.raw sout/output.raw"

      elif [ "$1" == "v3" ]; then
        maqao oneview -R1 -WS --replace xp=./maqao_local/sobel_v3_SS c=config.lua
        #maqao oneview -R1 --with-scalability=weak --replace xp=./maqao_local/sobel_v3_WS c=config_w.lua
      else
        echo "Unknown version."
        exit 1
      fi
    fi
    rm sobel
  fi
fi

