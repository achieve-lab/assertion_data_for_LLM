# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:23:03 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 87315
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35587' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/QzRi4RGsRcJCYte1bYnEtqm6VehpaElseFRvcvwaldRM5vbPPxcD+A/nHKU073IeAVPpT8zrm/iGunzqRh2ZP2sRWtVwRfFkXYakWEJ2FCRCBkIijlLLTXih/kU+k1rO5GxYCw9YiN0We6vOVXlPv85YqhdrQ6qYsNLMSDOx9kFH7Ew7LAdV/T9eWF6NOMnGqia6uxeel9++AcmGJHQ=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top can_ibo

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
