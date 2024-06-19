# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:59:37 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 43211
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39209' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5PD8FAEMVfiUYcfAZnCRdx69m1ROLabCitYBtaEhc+qm+yfjYqqZns/Hnv7cwEkqKHc07e2ndCqFgz/GfB61tEgZr26VtNZPFsZKlTf64lIa+vkU6ySrRTpRxkCGJ0wK1u4BX8hVjgVmeVSrUBj7VE3UW9hblSD7h1rhVciiojH5mYE8f0ayZKPfQFU6z2fte/MvGbDZXRhG7K7gx16S9+A3OJJXs=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_miim/eth_miim_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_miim/eth_miim_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_miim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_miim.v \
  ${RTL_PATH}/eth_shiftreg.v \
  ${RTL_PATH}/eth_outputcontrol.v
  

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top eth_miim

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
