experiment_name = nil
executable     = "./sobel"
run_command    = "<executable> in/input.raw sout/output.raw"
batch_script    = ""
batch_command   = ""
number_processes = 1
number_nodes = 1
mpi_command    = ""
filter = {
   type = "number",
   value = 10,
}
profile_start = {
   unit = "none",
   value = 0,
}
run_directory  = "."
dataset        = ""
dataset_handler= "link"
-- frequencies    = {1500000, 1000000, }
decan_multi_variant = true
decan_all_variants = true
maximal_path_number = 4
is_sudo_available = false
lprof_params = '--include-kernel --sampling-rate=high'
lprof_post_process_params = {
}
vprof_params = ""
decan_params = ""
cqa_params = {}
keep_executable_location = false
multiruns_params = {
  {environment_variables = {{name = "OMP_NUM_THREADS", value = "2",},},name = "2T",},
  {environment_variables = {{name = "OMP_NUM_THREADS", value = "4",},},name = "4T",},
  {environment_variables = {{name = "OMP_NUM_THREADS", value = "8",},},name = "8T",},
  {environment_variables = {{name = "OMP_NUM_THREADS", value = "16",},},name = "16T",},
  {environment_variables = {{name = "OMP_NUM_THREADS", value = "32",},},name = "32T",},
}
scalability_reference = "main"
base_run_name = "1T"
environment_variables = {
  {name = "OMP_NUM_THREADS", value = "1"},
}
script_variables = {
}
qplot_script = nil
thread_filter_threshold = "0%"
object_coverage_threshold = 0.01
