# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:16:32 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 41684
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41247' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRdBG7FLbJiLYhuBfFPWCSRRt9FF9k3M8jBB3uf2Zmd1bDwge1lqcNe8KPiFT+c+817cIPOr26Rt1ZPasZWhVw5XE1+sy5IQhZkvJTshASMJBbrgKL8XnipnccKZgzUp4yFzqttQbMRfVPd0asRAXkXJTzrXxyEgzS+2DjtSZdhj26vp/utj9mqhKGKubCE+lLdy1b88oJJE=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_Phy_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
