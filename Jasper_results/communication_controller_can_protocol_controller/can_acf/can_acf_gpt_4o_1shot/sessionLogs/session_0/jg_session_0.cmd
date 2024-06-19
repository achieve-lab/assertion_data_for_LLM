# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:48:14 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 167882
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44639' '-nowindow' '-style' 'windows' '-data' 'AAABYnicrY+7CsJAEEVPFCVY+AnWIigIlqltowi2IUTjA8kGTRRs9FP9k/VmMUKsnWHncefO7IwHBA9rLU7ad5kuIXPpV7zXJwg8mlLlrSayfDY8dOrmmuLr9RmTYYjYUXIQMhISc5IabsJL1S+yudRwpmDLRnjI6g/9vtipKlfFA926YK1aogmZfKwoZaKeRPOgJ3auGYajsuEPr9ohFzdi5jaa6t+9osJd+wbEAy/B' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top can_acf

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
