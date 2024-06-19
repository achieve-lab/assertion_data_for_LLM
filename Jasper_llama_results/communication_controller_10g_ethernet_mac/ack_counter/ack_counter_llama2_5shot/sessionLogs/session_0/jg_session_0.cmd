# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:14:04 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 35154
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34957' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY67CsJAFETPKgax8DMsBEUEu9S2UQTbEOL7tSEmCjb6qf7JOglGSOG97H3MnVnGAP7TOUcZzYeKR8BU+Qvz/g6+oR7F3qgj81etQ6sSVxRPr8uAC5aQLTl7IX0hESel5S481/2qmigtKRlrVsIDFmK3xd7octPck9cZS90iYo7qsRSFvtCkDNVj/QsdqRIhloO20R9+WLqIOOuNtU3kYydGVrr/AGTbKAo=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ack_counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top ack_counter

# Set up Clocks and Resets
clock clock
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
