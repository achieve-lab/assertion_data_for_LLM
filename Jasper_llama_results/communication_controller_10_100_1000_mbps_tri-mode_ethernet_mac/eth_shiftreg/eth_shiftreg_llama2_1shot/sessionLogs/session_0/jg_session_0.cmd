# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:07:31 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 52269
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39459' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY69CsJAEIQnikEsfA4RFEyd2jaKYBuCnhpRL5hEwUYf1TeJX4IRrnCX/ZuZvVtPUvisqkqNdR8kX5Hm+M+897cJPblWzx0XWb6cKvXa5VbiE0NNdJFVrL1KpSBjkEQn3OoOXsLn5Ay3uqqQ0RY80gp1H/UO5kY/4taF1nAG1YGak1P4gj3DD1O6DS9LA/YyUKsjU/B3I24uSXQmAqZZo7DwtX0AFggo5g==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_shiftreg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_shiftreg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top eth_shiftreg

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
