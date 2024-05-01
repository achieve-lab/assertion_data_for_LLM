# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 14:31:04 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 50218
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43877' '-nowindow' '-style' 'windows' '-data' 'AAABGnicXY7NDsFAFIW/IRqx8AhiLeEJurZtRWIrokUF06gSNjyqNxmnjUrGvZn7c865d64BwqdzjtraD4WAiKn8Z+b9LUKDb1Xf8pHZy8vQaYYbSaDXZ8wJy5ItJZmQkZAVB7nlJrwUXyjmcsuZCymJ8Ii51F2pN2Kuqge6NWYhLmbHXbnQxiMTzay1D3pS59ph2asb/umqG6x0iepMv6b1lR+r9SNM' '-proj' '/data/vpulav2/Work/Jasper/Phy_sim/Phy_sim_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/Phy_sim/Phy_sim_goldmine/.tmp/.initCmds.tcl' 'FPV_Phy_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
