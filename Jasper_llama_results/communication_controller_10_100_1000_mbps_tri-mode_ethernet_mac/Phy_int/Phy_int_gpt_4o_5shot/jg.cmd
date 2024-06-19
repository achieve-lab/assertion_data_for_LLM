# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:56:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 868908
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39137' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRdBKu9S2iQi2Iv4lIl7QRNFGH9U3OSeHEc5d9udmZ/cmAKKntRZnzYdSSMxU/rPg/W2iAN+qd8NHZi+vQqterimhosuQE4Yle0oyIQMhK45yw014qflFOZcbzhRs2QiPmYvdFnunyVV9T1oTFpolpNxVM+0WjBRr3YOO2LluGA569f94lYbc1bFTNNG/qbrCqf0A0OAkqA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

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
