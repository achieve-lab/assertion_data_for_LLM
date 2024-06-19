# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:55:54 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 868176
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34907' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERfFIO48AgeQNCNZJe120QEtyL+kiBO0ETRjR7Vm4yVwQjTzXT1VFd/AiB+WWtx1n0qhCTM5X8LPr8kDvCt+Xd8ZvH2EHptcysJ9YZMOGNYc6QmFzMWs+EkN9zF16pfFUu54ULFnp34hKXUfakPqtyUj3Rrykq1lIyHMFdvxVRvq3kwkLrUDEPhNvm65obS4Uw9kTDS5kzqyt37BRSLJJ0=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top Phy_int

# Set up Clocks and Resets
clock MAC_rx_clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
