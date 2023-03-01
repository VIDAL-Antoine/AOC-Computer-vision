if [ "$#" -ne 1 ]; then
  echo "Usage : "$0" [version]"
  echo "v0 for the baseline version, v1/v2/v3... for the other versions. Add \"_ws\" for weak-scalability."
  echo "Example : "$0" v2, "$0" v3_ws"
  exit 1
fi

if [ ! -f in/input.raw ]; then
  echo "Missing raw file(s)."
  echo "Converting video to raw format"
  echo
  ./cvt_vid.sh v2r "in/input.mp4" "in/input.raw" >> /dev/null 2>> /dev/null
fi

module load maqao/2.15.5
mkdir -p maqao/

if [ "$1" == "v0" ]; then
  make sob_baseline O=Ofast
  maqao oneview -R1 --replace xp=./maqao/sobel_baseline lprof_params="--include-kernel --sampling-rate=high" executable=sobel run_command="<executable> in/input.raw sout/output.raw"
else
  make sobel_$1 O=Ofast

  if [ "$1" == "v1" ] || [ "$1" == "v2" ]; then
    maqao oneview -R1 --replace xp=./maqao/sobel_$1 lprof_params="--include-kernel --sampling-rate=high" executable=sobel run_command="<executable> in/input.raw sout/output.raw"
  elif [ "$1" == "v3" ]; then
    maqao oneview -R1 -WS --replace xp=./maqao/sobel_$1 c=config.lua
  elif [ "$1" == "v3_ws" ]; then
    if [ ! -f in/input_ws_2.raw ] || [ ! -f in/input_ws_4.raw ]; then
      echo "Missing raw file(s)."
      echo "Converting videos to raw format"
      echo
      ~/ffmpeg -stream_loop 1 -i in/input.mp4 -c copy in/input_ws_2.mp4
      ~/ffmpeg -stream_loop 3 -i in/input.mp4 -c copy in/input_ws_4.mp4
      ./cvt_vid.sh v2r "in/input_ws_2.mp4" "in/input_ws_2.raw" >> /dev/null 2>> /dev/null
      ./cvt_vid.sh v2r "in/input_ws_4.mp4" "in/input_ws_4.raw" >> /dev/null 2>> /dev/null
    fi
    maqao oneview -R1 --with-scalability=weak --replace xp=./maqao/sobel_$1 c=config_w.lua
  else
    echo "Unknown version."
    exit 1
  fi
fi
rm sobel

