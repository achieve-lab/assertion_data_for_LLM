# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:22:59 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 87135
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42519' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/QzRi4RGsRULCumvbEoltU3Wr0NPQktjwqN7k+DUqqZnM7Z9/LgbwH845Smne5TwCptKfmNc38Q11+dSNOjJ/1iK0quGK4sm6DEmxhOwoSIQMhEQcpZab8EL9i3wmtZzJ2bAWHrAQuy32Vp2r8p5+nbFUL9aGVDFhpZmRZmLtg47YmXZYDqr6f7ywvBpxkk1UjXV3Lzwvv30DyU4kcA==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
