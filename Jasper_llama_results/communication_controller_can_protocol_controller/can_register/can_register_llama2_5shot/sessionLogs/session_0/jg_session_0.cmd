# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:00:11 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 33126
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35875' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIQnikEsfA4RtAjYpbaNItiGEDUaNBfyo2Cjj+qbxM/DCCnc5fZnZmfZcyT5j6ZpZK1/J7gKtMR/5ry+he+oa5++10XWz06WBq24HXF5Y82UyShUolonkClIpDNudAOv4UtijhsVqrTXDjzQhukh0weYK/WEW1fawsVsyMgFswlbS6sqNCfHbJZG6HIQo5TO+6sI7SWRLjyPbgFzRFXZH7wBEMQo3g==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register/can_register_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register/can_register_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_can_register.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top can_register

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
