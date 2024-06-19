# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:13:35 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 54079
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42545' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY69CsJAEIS/KAax8CmsBANap7aNItiGoNEomgsxUbDRR/VNzvEwQsBdbn9mZo/xgPBhrcVF967iEzFX/sJ7fYfQox2fvdNGls9Wh15z3Eh8vSETcgwxe2oOQsZCEk5Kw014Lf6iWigNJRUpW+ERK6n7Uu/EXDWP5HXBWlwqVaZe6qdcasOZQNhGv8JAN4U4w1Fb8FcdOweJpoSZtqk8ZGIq5/wNu/wnKA==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top eth_random

# Set up Clocks and Resets
clock MTxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
