# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 13:45:40 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 66349
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44281' '-nowindow' '-style' 'windows' '-data' 'AAABHnicZY5LDgFREEVPEyIG1iCGElZgbIpITEV0t0/wxDcxYal20k4Lko5beVWv7r1VqQjo3bMs443yzVRlQN/4IXp+Pr2IIvK+VGRGj0KFynf4a6n6GnTYEZiy4MxKpi0zY2MErvJn9aN5bwQOnEiI5QeMddd0pyoX/01vHTJRS3QtrakbU6e69nM3Ql3/3i2BtV3rz5nfEXTGbGV26jleRcYkJg==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
