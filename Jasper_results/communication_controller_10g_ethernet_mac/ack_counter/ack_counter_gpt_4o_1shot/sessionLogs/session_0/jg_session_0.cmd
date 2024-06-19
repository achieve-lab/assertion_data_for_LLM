# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 17:00:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 285636
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42039' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIS/KAax8DEsBEXBMrVtFME2hPgXFS/ERMFGH9U3OeeCEVK4y+3P7MwxHhA8rbVU0X6o+ITMlb/w3t8h8GiG21tNZPlqdOjU4pri6/UZccEQsackFTIUEnNWGu7CS92vqpnSkFOwZSM8ZCV2V+ydLjfNA3ldsNYtJuGknkjh9E6TM1ZP9C/0pMqEGI7aJn/4zlOmOWJWOZzKx0FTUbn/AGXZKBo=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ack_counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
