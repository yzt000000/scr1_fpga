##
## Copyright by Syntacore LLC © 2016, 2017. See LICENSE for details
## @file       <arty_scr1_physical.xdc>
## @brief      Physical constraints file for Xilinx Vivado implementation.
##

## Clock
set_property -dict {PACKAGE_PIN H32 IOSTANDARD DIFF_SSTL12} [get_ports OSC_100]

#set_property IOSTANDARD DIFF_SSTL12 [get_ports USER_SI570_CLOCK_P]
#set_property PACKAGE_PIN H32 [get_ports USER_SI570_CLOCK_P]
#set_property PACKAGE_PIN G32 [get_ports USER_SI570_CLOCK_N]
#set_property IOSTANDARD DIFF_SSTL12 [get_ports USER_SI570_CLOCK_N]


## Reset signal
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS12} [get_ports RESETn]

##RGB LEDs



##LEDs

##Buttons


##Switches

##Pmod Header JD
set_property -dict {PACKAGE_PIN L31 IOSTANDARD LVCMOS18} [get_ports {JD[0]}]
set_property -dict {PACKAGE_PIN M31 IOSTANDARD LVCMOS18} [get_ports {JD[1]}]
set_property -dict {PACKAGE_PIN R29 IOSTANDARD LVCMOS18} [get_ports {JD[6]}]

set_property -dict {PACKAGE_PIN N28 IOSTANDARD LVCMOS18} [get_ports {JD[4]}]
set_property -dict {PACKAGE_PIN M30 IOSTANDARD LVCMOS18} [get_ports {JD[5]}]
set_property -dict {PACKAGE_PIN N30 IOSTANDARD LVCMOS18} [get_ports {JD[3]}]
set_property -dict {PACKAGE_PIN P30 IOSTANDARD LVCMOS18} [get_ports {JD[7]}]
set_property -dict {PACKAGE_PIN P29 IOSTANDARD LVCMOS18} [get_ports {JD[2]}]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {JD_IBUF[3]}]
set_property PULLDOWN true [get_ports {JD[3]}]
set_property PULLUP true [get_ports {JD[2]}]
set_property PULLUP true [get_ports {JD[4]}]
set_property PULLUP true [get_ports {JD[5]}]
set_property PULLUP true [get_ports {JD[6]}]
set_property PULLUP true [get_ports {JD[7]}]


##USB-UART Interface
set_property -dict {PACKAGE_PIN AY14  IOSTANDARD LVCMOS18} [get_ports FTDI_RXD]
set_property -dict {PACKAGE_PIN AY15  IOSTANDARD LVCMOS18} [get_ports FTDI_TXD]

##ChipKit Single Ended Analog Inputs
##NOTE: The ck_an_p pins can be used as single ended analog inputs with voltages from 0-3.3V (Chipkit Analog pins A0-A5).
##      These signals should only be connected to the XADC core. When using these pins as digital I/O, use pins ck_io[14-19].



## set_property CONFIG_MODE SPIx4 [current_design]
## set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
## set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
## set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
## connect_debug_port dbg_hub/clk [get_nets clk_riscv]
