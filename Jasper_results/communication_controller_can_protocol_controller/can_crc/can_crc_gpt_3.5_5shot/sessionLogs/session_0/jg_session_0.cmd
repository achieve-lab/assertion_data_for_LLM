# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 14:11:56 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 187098
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36329' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5JCsJAEEVfFIO48AgeQNCNZJe12yiC2yBxDJIOMVFwo0f1Ju1PY4SuoqZfv4YAiF/WWpz0n3IhCUvpX4LPL4kDfGnrno+s316EQTfcUULZmBkFhpQTDRchUyE7rlLDQ3ij/k2+lBoqag7shSdsxB6KfVTnrnyiX1ds1cu0oXCxks01k2kfjMQuhRlyd8nntT+U4qYsNBMpRrp8Frt2/34BDV8keQ==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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