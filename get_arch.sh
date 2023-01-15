mkdir -p arch arch/cpu arch/caches
uname -a > arch/OS.txt
gcc --version > arch/gcc.txt
ldd --version > arch/ldd.txt
cat /proc/cpuinfo > arch/cpu/cpuinfo
cat /sys/devices/system/cpu/cpu0/cache/index0/* > arch/caches/L1i
cat /sys/devices/system/cpu/cpu0/cache/index1/* > arch/caches/L1d
cat /sys/devices/system/cpu/cpu0/cache/index2/* > arch/caches/L2
cat /sys/devices/system/cpu/cpu0/cache/index3/* > arch/caches/L3
lstopo-no-graphics > arch/lstopo.txt

