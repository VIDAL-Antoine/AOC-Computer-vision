# AOC - Basic Computer Vision Project

This is the instruction manual for the AOC project: Basic Computer Vision Project. This project was carried out by SOLCOURT Antoine and VIDAL Antoine as part of the Master Degree in High Performance Computing at UVSQ Paris-Saclay (Calcul Haute Performance et Simulation in French, CHPS).

## Contents

1. Project presentation
2. Project structure
3. Getting started
4. Useful scripts
5. Credits



## Project presentation

The aim is to be able to detect the outlines of a video (to make subsequent processing). Several methods exist for edge detection: the chosen method is the *Sobel* filter. The aim is to produce the best-performing code using this filter.




## Project structure

* `arch/`: contains the characteristics of the execution environment (CPU, kernel version...)

* `data_runs_sobel/`: contains program performance data (number of cycles, etc.). `gnuplot` is then used to produce graphs comparing the results of different versions.

* `in/` : contains the source video on which we try to detect the outlines (pouring tea on a cup of tea).

* `maqao/`: contains the [Maqao](https://www.maqao.org/index.html) reports giving us detailed information on the performance, assembler code, etc. of our source code.

* `sout/`: contains output videos with white outlines and black backgrounds.



## Getting started

### Automatic version

Simply run `./run_sobel.sh`. This script will process all versions with all possible optimizations and then use `gnuplot` to display the results graphically. 

If you wish to process only one version or a certain optimization, simply edit the `run_sobel.sh` file with any text editor and modify the lines `for opt in "O1" "O2" "O3" "Ofast"` and `for variant in sob_baseline sobel_v1 sobel_v2 sobel_v3`.

### Manual version

#### Compilation

You need the `gcc` compiler with the `OpenMP` library. Compilation is then carried out using a `Makefile`. Simply type `make`, then the version of your choice and add the desired compilation flag with `O=` :

* `sob_baseline`: the unoptimized base version
* `sobel_v1`: basic version with compilation options added
* `sobel_v2`: source code modification and optimization at *Sobel* filter level
* `sobel_v3`: parallelization and I/O reduction

Example: `make sobel_v3 O=O3`.

Each new version accumulates modifications from previous versions. The resulting executable is always named `sobel`.






#### Execution

##### Convert video from mp4 to binary format

Once you've obtained the executable, you first need to convert the video to binary format so that you can detect its outlines. This is done using `ffmpeg` with the following command: 

`./cvt_vid.sh v2r in/input.mp4 in/input.raw >> /dev/null 2>> /dev/null`. 

##### Applying the *Sobel* filter

The following command runs the *Sobel* filter on video in binary format:

`./sobel in/input.raw sout/output.raw | cut -d';' -f1,3 > data_runs_sobel/Ofast/data/sobel_v3`

Here, the results are stored in the file `data_runs_sobel/Ofast/data/sobel_v3`, but it is entirely possible to change the destination and file name. Filtered video is stored in the file `sout/output.raw`.

##### Convert video from binary to mp4 format

To convert video from binary format (after applying the *Sobel* filter and stored here in `sout/output.raw`) to .mp4 format, use the following command: 

`./cvt_vid.sh r2v sout/output.raw sout/output_sobel_v3.mp4 >> data_runs_sobel/logs/cvt.log 2>> data_runs_sobel/logs/cvt_err.log`

You can also replace `output_sobel_v3.mp4` with the name of your choice (e.g. `output_sobel_v2.mp4` for version 2).




## Useful scripts

Various scripts have been added to make the program easier to use:

* `get_arch.sh`: script creating the `arch/` folder and containing various information on the execution environment: kernel version, `gcc` compiler version, `ldd` version (for shared libraries), processor information such as cache size or flags (supported instruction sets...).

* `get_report_maqao.sh`: script to create `Maqao` reports by simply supplying the version to be analyzed, e.g. `./get_report_maqao v2`. Add `_ws` for low scalability execution (only available on version 3, i.e. `v3_ws`).




## Credits

### Authors 

* SOLCOURT Antoine and VIDAL Antoine: project realization and developers
* IBNAMAR Mohammed-Salah: tutor, contribution of resources on videos and the *Sobel* filter.

### Tools

* `gcc` compiler with `OpenMP` library
* `gnuplot` for graphics
* `ffmpeg` for video conversion
* `Godbolt` for assembler code analysis
* `Maqao` for performance reports
* `Visual Studio Code` and `VIM` for text editing
* `Git` and `Github` for versioning and file hosting
* `Overleaf` (and therefore LaTeX) for report writing
