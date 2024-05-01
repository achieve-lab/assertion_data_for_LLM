# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-23 22:50:38 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 33900
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41259' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY7PCgFxFIW/IZKFPIK14glmbYuUrcRghBGGsuFRvcn4RkZNzu13/5xz7u0XAOEjyzI+qN5NdYYMjB+C17cJA8rI50qZGT9LFWrFcmGp+1r0OJAwY01KLNOVmbMzEm7yqfrZfDQSTlyIWMoPmehu6F6pXO07/nXEVC3StbHuvRib+84LL0JT/9ErCVun9p8zxxvKbSB2' '-proj' '/data/vpulav2/Work/Jasper/eth_miim/eth_miim/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/eth_miim/eth_miim/.tmp/.initCmds.tcl' 'FPV_eth_miim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_miim.v \
  ${RTL_PATH}/eth_shiftreg.v \
  ${RTL_PATH}/eth_outputcontrol.v
  

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_miim

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
