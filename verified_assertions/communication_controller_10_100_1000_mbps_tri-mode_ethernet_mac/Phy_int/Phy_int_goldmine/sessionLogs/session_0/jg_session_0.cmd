# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 13:47:32 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 47046
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33869' '-nowindow' '-style' 'windows' '-data' 'AAABGnicXY7NDsFQEIW/SzRi4RHEWsITdG3bisRWRIsKbkNL2PCo3uQ6bVRyzWT+zjkzGQOET+cctbUfSgERU/nPzPvbhAbfqrnlI7OXV6HTLDeSQNFnzAnLki0lmZCRkBUHueUmvBR/Uc7lljMFKYnwiLnUXak3Yq7qB/o1ZiEuZsddNdNuwUSx1j3oSZ3rhmWvafinq36w0iUcayStv/wArGkjUA==' '-proj' '/data/vpulav2/Work/Jasper/Phy_int/Phy_int_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/Phy_int/Phy_int_goldmine/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
