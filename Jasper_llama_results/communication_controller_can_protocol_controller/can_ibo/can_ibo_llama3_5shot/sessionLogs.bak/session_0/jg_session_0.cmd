# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:40:49 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 25945
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45319' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/QzRi4RGsRcJG7Lq2LZHYNlW3Cj0NLYkNj+pNjl+jkprJ3P7552IA/+Gco5TmXc4jYCr9iXl9E99Ql0/dqCPzZy1CqxquKJ6sy5AUS8iOgkTIQEjEUWq5CS/Uv8hnUsuZnA1r4QELsdtib9W5Ku/p1xlL9WJtSBUTVpoZaSbWPuiInWmH5aCq/8cLy6sRJ9lY1UR398Lz8ts3yZgkdQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
