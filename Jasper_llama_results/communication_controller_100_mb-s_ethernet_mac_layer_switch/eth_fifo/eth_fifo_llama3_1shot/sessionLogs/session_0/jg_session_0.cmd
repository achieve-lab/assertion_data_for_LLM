# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:12:09 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 53617
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37635' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7NDsFQEIXPJRqx8AzWEhKx7dq2RGLbNPQqwW1oSWx4VG9SnxuV1Ezm78yZHyMpfFRVJS/tOy5QpBn6E/P6JqFRUz51q4ksno0oderhmhJgfY10klOsrUrtQIYgiQ6o0w28pH/B56jTWYVSbcAjLWF3YVs6V/IBv861opfCyoiWjZapMfWajVIPfs4Wp72/9c+M/eVER2xKNeF2Bl74j99voSVn' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -bbox_m eth_fifo

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit