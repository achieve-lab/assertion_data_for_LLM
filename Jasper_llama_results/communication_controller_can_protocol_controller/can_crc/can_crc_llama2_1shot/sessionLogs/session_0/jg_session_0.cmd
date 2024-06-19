# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:36:03 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 24217
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36213' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCoJQEIa/UyTRokdoHUFBrV23tQjaitjNKI+YFrSpR+1N7O+Qgc0wt3/+uRjAf1RVhZP2Xc4jYC79iXl9E9/QlE/daiLLZyNCpx6uKZ6sz5gUS8iekkTISEjESWq5CS/Vv8hnUktOwZaN8ICV2F2xd+pclQ/064K1erE2pC7msolmYu2DntiZMMtR1fCPF7qrEWfZTNVUdw/iFu7bN8iOJGw=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_crc/can_crc_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_crc/can_crc_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top can_crc

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
