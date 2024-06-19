# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:06:33 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 39275
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36015' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIU/iyRa9BwRFFRb120tgrYiZml/V0oL2tSj9iZ2vGTgohnu/Jw5c5jrAN6zLEustR8KLj5z+c+c97fwHJpW9a0msnw1MnTq5Zri6vUZccYQsKMgFTIUEnKUG+7CC82vipnccCEnZiPcZyV2V+ytJjfVA926YK1ZLFaiHFmViIPUY+mMhVcY9LSXSc2wVzf9uxHYS0JOejN1E92SiJHbH3wACnIouw==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_clockgen/eth_clockgen_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_clockgen/eth_clockgen_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_clockgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_clockgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top eth_clockgen

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
