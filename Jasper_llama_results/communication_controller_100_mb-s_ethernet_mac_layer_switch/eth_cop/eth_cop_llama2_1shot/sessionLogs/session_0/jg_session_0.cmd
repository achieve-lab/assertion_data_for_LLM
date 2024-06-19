# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:07:57 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 45310
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37875' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIVPiUYsPIK1SEhYd21bIrFtmiqt4N7QktjwqN6kPo1KrpnM35kzP56k4FFVlWpp33G+Qs3Rn3ivbxJ4cuVTt1xk+XSi1GmGG4qP9TXWSUaRdiqVg4xAYh1Qoxt4Sf+Ct6jRWYVSbcBDrWB3YW/pXMkH/LrQml4KKyMmTFhNqBL2ST3Ylh1Ge6rhHy+qr8Y6YjOqKXczOkX97RvT9iSe' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
