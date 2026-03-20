vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/dist_mem_gen_v8_0_17
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap dist_mem_gen_v8_0_17 modelsim_lib/msim/dist_mem_gen_v8_0_17
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_17  -incr -mfcu  "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../../NewCPU.gen/sources_1/ip/ROM_D/sim/ROM_D.v" \


vlog -work xil_defaultlib \
"glbl.v"

