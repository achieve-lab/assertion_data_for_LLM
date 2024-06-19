# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 13:39:17 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 64627
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42219' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY7bCgFhFIW/IZILeQTXiieYa7dDyq3EjEMyE4Zyw6N6k/GNUJO1+/dhrbV3fwCE96IoeKN+MzWJGBk/BM9PEwZUUc61KjN5VCo0vstfS9PXYcCBlDlrcrYyfZkFeyPlKp+rn8yZkXLkTMxKPmKqu6U7UbnY9/zrmJlarGtjTbyYuDV0XnoR2vozr6TsnLp/zhIvyF0gZg==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
