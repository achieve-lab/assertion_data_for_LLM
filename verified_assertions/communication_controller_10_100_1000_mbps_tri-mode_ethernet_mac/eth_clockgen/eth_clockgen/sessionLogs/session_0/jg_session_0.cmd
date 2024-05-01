# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-23 21:55:19 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 19656
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37589' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY7NCsIwEIS/KBbx4NlHEEGfoGevVQSvIjX+Y4paBS/6qL5JnBQr5OAs2Z/Z2SEGSJ/eeyo0H0oJGWPFD+b9bVJDjDA3Ymb6iiq06uNakuh1GXLCsWBDyU7MQMySo8JxF19qf1EuFI4zVywr8RkzqdtSr7W5qe/rrxPm2lmptqp55ZJzkLuVz0h84KCju0Jujr2m3t+LgA8L1iO6' '-proj' '/data/vpulav2/Work/Jasper/eth_clockgen/eth_clockgen/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/eth_clockgen/eth_clockgen/.tmp/.initCmds.tcl' 'FPV_eth_clockgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_clockgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_clockgen

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
