# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-25 14:41:16 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 151860
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36797' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5NCsIwEIW/KBZx4RE8gKAn6NptK0K3Imr9wZpirVI3elRvEl+LLeQNmZm892YSA4Rv5xwN+i+lgIiFooP5/pvQ4KO+93xm+fEqDNrh1hLojJlxxbLmQMlJzFTMhovC8hRfSi+Uc4Xlxp09O/ERK7mHcqdSHuon+mtMIi3mSKVaaGPGXDNb7YOR3Ll2WM7N276vxg8+Ex+M' '-proj' '/data/vpulav2/Work/Jasper/Phy_sim/Phy_sim/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/Phy_sim/Phy_sim/.tmp/.initCmds.tcl' 'FPV_Phy_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
