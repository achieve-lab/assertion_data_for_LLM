# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:16:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 334169
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45509' '-nowindow' '-style' 'windows' '-data' 'AAABeHicrZC7CsJAEEVPFCVY+B0iKIjapRMsjSLYBvEt6oaYqNjop/on8W4wQgo7Z9iZ2Ttzlt11AO+RpimZle8KVXyG8q85r0/hORTN7ktFZfIsZKjkcD7iatVpccIQsCFhJ6UpZc5BbrhKT9Q/K4ZyQ0TMiqV0n+kfeFfTa3Uuqht665iZehE3RmKODMTYEywV0VZe6GSoiQulGPba9X4S9l6h6oCu6L5yR7fZaibO/uANW/o0SA==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva

# Elaborate design and properties
elaborate -top rxNumCounter

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
