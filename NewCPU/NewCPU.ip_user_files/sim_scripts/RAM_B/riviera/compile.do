transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_11
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_11 riviera/blk_mem_gen_v8_4_11
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_11 -l xil_defaultlib \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -v2k5 "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_11 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_11 -l xil_defaultlib \
"../../../../NewCPU.gen/sources_1/ip/RAM_B/sim/RAM_B.v" \


vlog -work xil_defaultlib \
"glbl.v"

