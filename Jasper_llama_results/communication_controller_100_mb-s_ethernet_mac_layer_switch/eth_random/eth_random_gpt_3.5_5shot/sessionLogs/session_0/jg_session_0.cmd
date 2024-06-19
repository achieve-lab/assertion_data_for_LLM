# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:00:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 932798
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38191' '-nowindow' '-style' 'windows' '-data' 'AAABMHicbY5BC4JQEITHIokO/YpOQRGEN89dLYKuEmVplO9hWtClfmr/xD4lA6Fd3u6+mdllHEn+syxL1dF9UFwFWpC/cN7fwXfUjurfaSOrV6tLvWa5kbi8oSZKZRTqqEIJyBhkqzNpdAcv4K9USxplyhVpDx5ojbqP+gBzYx7hdakNXIQqpmdcSlEbXTQF23FVGrBj4YxO/GZ/1ZUfCx5qzqZH93ARw+W19w8GUSc1' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
