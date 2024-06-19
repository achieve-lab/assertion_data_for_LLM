# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:15:58 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 41281
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37507' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRVDQOrVtIoJtCP5FUS+YRNFGH9U3OcfDCHGX25+Z2b31gOBhrcVZ867gEzKV/8x7fYvAo26fvlFHZs9ahlY1XEl8vS5DThhitpTshAyEJBzkhqvwUnyumMkNZwrWrISHzKVuS70Rc1Hd060RC3ERKTflXBuPjDSz1D7oSJ1ph2Gvrv+ni92viaqEibqx8FTawl37Bs7eJIw=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_Phy_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top Phy_sim

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
