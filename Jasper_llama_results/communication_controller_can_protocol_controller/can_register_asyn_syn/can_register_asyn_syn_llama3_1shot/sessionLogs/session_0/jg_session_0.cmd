# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:51:42 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 32506
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34877' '-nowindow' '-style' 'windows' '-data' 'AAABWniclY/NCsIwEISnikU8+CCCgniTHsVrFcFrKfUfbUp/FL3oo/om9TNaoUd3SXZ3ZjJJHEnevSxL2Wje2Fz5mpK/cJ7fxnNUj/fcqCPzR61KrepwJXFZXfUVyyjQVoX2ID2QUEfS6AJewGfsCWmUKtdaK3BfC9Rt1BuYM/2Yt860hItwiKkp2i2umT2VgoT0V8t96gAm4i6pg1OCxujANPnDI7CvDXVijZiG4Dt8cvvLF8mWMKU=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn_syn

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
