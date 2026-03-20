transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/dist_mem_gen_v8_0_17
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap dist_mem_gen_v8_0_17 activehdl/dist_mem_gen_v8_0_17
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l xil_defaultlib \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_17  -v2k5 "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l xil_defaultlib \
"../../../../NewCPU.gen/sources_1/ip/ROM_D/sim/ROM_D.v" \


vlog -work xil_defaultlib \
"glbl.v"

