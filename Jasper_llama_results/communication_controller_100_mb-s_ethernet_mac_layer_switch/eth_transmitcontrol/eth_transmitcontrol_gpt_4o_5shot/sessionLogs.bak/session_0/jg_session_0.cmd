# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:08:55 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 941790
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40145' '-nowindow' '-style' 'windows' '-data' 'AAABUnicjY+9CsJAEIQnikEsfBBBK7VKYWUbRbANQeMfMRf0omCjj+qbxC+HEdK5y+3P7Myy50kKnmVZyln7QfAVao7/zHt/i8BT06q+1USWr0aWOrW4pvi8vobKZBRpr0JHkAFIrBQ3uoMXzK/EHDe6yCrRFjzUCnYX9o7JjXrKrQutmSWwDmQLP3b6M7utNmzIHGrYP3JIirLHltyhJ7rZn/rq5pwu0tj9YALvQGXd7z5Nqy9I' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
