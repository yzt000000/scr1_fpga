vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/sys_pll/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/sys_pll/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/sys_pll/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/sys_pll/ipshared/b65a" \
"../../../bd/sys_pll/ip/sys_pll_clk_wiz_0_0/sys_pll_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/sys_pll/ip/sys_pll_clk_wiz_0_0/sys_pll_clk_wiz_0_0.v" \
"../../../bd/sys_pll/sim/sys_pll.v" \

vlog -work xil_defaultlib \
"glbl.v"

