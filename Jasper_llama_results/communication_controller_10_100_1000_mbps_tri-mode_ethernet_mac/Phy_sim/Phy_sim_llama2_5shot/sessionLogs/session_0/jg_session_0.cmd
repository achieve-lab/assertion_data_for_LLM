# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:16:03 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 41496
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42907' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRdBCsEttm4hgG4J/UdQLJlG00Uf1Tc7xMELc5fZnZnZvPSB4WGtx1rwr+IRM5T/zXt8i8Kjbp2/UkdmzlqFVDVcSX6/LkBOGmC0lOyEDIQkHueEqvBSfK2Zyw5mCNSvhIXOp21JvxFxU93RrxEJcRMpNOdfGIyPNLLUPOlJn2mHYq+v/6WL3a6IqYaxuIjyVtnDXvgHPFiSQ' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_sim/Phy_sim_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_Phy_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
