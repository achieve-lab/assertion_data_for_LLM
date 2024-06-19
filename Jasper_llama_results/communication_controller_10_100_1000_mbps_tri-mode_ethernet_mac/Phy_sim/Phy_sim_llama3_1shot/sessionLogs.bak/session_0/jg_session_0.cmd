# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:16:07 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 41573
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43623' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRVAQ29S2iQi2IfgXRb1gEkUbfVTf5BwPI8Rdbn9mZvfWA4KHtRZnzbuCT8hU/jPv9S0Cj7p9+kYdmT1rGVrVcCXx9boMOWGI2VKyEzIQknCQG67CS/G5YiY3nClYsxIeMpe6LfVGzEV1T7dGLMRFpNyUc208MtLMUvugI3WmHYa9uv6fLna/JqoSJurGwlNpC3ftG87wJI0=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_Phy_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
