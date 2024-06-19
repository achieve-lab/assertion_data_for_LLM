# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:20:23 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 43117
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38959' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/Eo1YeARrkbCQ2HVt24rEtmncWsFpOCVseFRvUr8TldRM5vbPPxcPCB5lWeKkeZfzCZlKf+K9vkngUZdP3agjs2ctQqsarii+rMuQI4aYLQWZkIGQhL3UcBVeqH+Wz6WGE5Y1K+Ehc7HbYm/UuSjv6deIhXoRKTfFTLOWkWypfdARO9cOw05V/48Xu6sJB9lY1UR3U3Gt+/YNz6oklA==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
