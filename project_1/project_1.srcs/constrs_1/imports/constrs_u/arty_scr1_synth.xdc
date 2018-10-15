##
## Copyright by Syntacore LLC © 2016, 2017. See LICENSE for details
## @file       <arty_scr1_synth.xdc>
## @brief      Constraint file for Xilinx Vivado synthesis.
##

## Primary Clocks
#set_property -dict {PACKAGE_PIN H32 IOSTANDARD DIFF_SSTL12} [get_ports OSC_100]
set_property -dict {PACKAGE_PIN G32 IOSTANDARD DIFF_SSTL12} [get_ports clk_in_n]
set_property -dict {PACKAGE_PIN H32 IOSTANDARD DIFF_SSTL12} [get_ports clk_in_p]
create_clock -period 6.400 -name OSC_100 -waveform {0.000 3.200} -add [get_ports clk_in_n]
create_clock -period 40.000 -name SYS_CLK_VIRT -waveform {0.000 20.000}
create_clock -period 100.000 -name JTAG_TCK -waveform {0.000 50.000} -add [get_ports {JD[3]}]
create_clock -period 100.000 -name JTAG_TCK_VIRT -waveform {0.000 50.000}
