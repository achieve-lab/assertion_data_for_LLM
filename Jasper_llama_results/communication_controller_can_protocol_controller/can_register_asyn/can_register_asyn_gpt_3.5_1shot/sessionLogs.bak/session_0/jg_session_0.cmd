# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:30:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 695101
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36441' '-nowindow' '-style' 'windows' '-data' 'AAABTHicjY/NCsJADISnikU8+CCCgoq34tFrFcFrKVVbRbqlP4pe9FF9k/q1WKE3EzbJziSzWUuS8yzLUrV1HwRbrlb4z6z3t3Asta26d9rI5tXKUq8ZblpszlBjxTLyFKrQCWQE4uuCG93AC/iMmOBGqXIdtAd3taW7T/cR5ko9Y9e1dnABCjE5pTdENaunUhCf+g43AQl4QxqgkMAZnbkt/5itdk1APc3RWZCnMBEKef2vD/zZLSs=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn

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
