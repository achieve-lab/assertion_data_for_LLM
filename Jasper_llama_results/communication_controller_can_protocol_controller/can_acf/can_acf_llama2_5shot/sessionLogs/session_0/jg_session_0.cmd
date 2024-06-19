# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:07:21 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 18865
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41851' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIW/Eo1YeARrkbCQ2HVtWyKxbW5KqdDb0JLY8KjepI5GJddM5u/MmR8PCB5VVVFL+y7nEzKX/sR7fZPAw5VP3XKR5dOJ0GmGG4ov6zMmwxKxoyQVMhJiOEotN+Gl+hf5XGo5U7BlIzxkJXZX7ESdq/KBfl2wVi/WhkzRKEuYaCbWPuiJnWuH5aBq+MeL6quGk2yqaqa7e3GL+ts3wsokVA==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_acf/can_acf_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_acf/can_acf_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
