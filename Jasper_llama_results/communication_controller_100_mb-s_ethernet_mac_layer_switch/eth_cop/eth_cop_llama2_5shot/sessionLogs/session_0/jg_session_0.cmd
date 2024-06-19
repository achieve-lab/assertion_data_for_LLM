# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:08:02 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 45513
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42919' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIVPiUYsPIK1SFhI7Lq2LZHYNk2VVnBvaElseFRvUp9GJddM5u/MmR9PUvCoqkq1tO84X6Hm6E+81zcJPLnyqVsusnw6Ueo0ww3Fx/oa6ySjSDuVykFGILEOqNENvKR/wVvU6KxCqTbgoVawu7C3dK7kA35daE0vhZUREyasJlQJ+6QebMsOoz3V8I8X1VdjHbEp1Yy7GZ2i/vYN1C4kog==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top eth_cop

# Set up Clocks and Resets
clock wb_clk_i
reset wb_rst_i

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
