# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:32:56 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 92287
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45931' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5PD8FAEMVfiUYcfAZnCYm49uxaInFtNpRWsA0tiQsf1TdZPxuV1Ex2/rz3dmYCSdHDOSdv7TshVKwZ/rPg9S2iQE379K0msng2stSpP9eSkNfXSCdZJdqpUg4yBDE64FY38Ar+Qixwq7NKpdqAx1qi7qLewlypB9w61wouRZWRj0zMiWP6NROlHvqCKVZ7v+tfmfjNhspoSjdhd4a69Be/AXNRJXc=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_miim/eth_miim_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_miim/eth_miim_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_miim.tcl'


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
  ${RTL_PATH}/property_llama3_1shot.sva

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