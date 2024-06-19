# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:22:59 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 133286
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44285' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5BD8FAEIVfiUYc/AhHQcK5Z9cSiWvTlFLBNrSVuPBT/ZP6bFSyiZns7Js3782uJyl41HUtG+07xVeoOfkL7/UFgSc3Pn3LZZZP55Y6jbmR+Jy+xjrLKNJOpTKYIUysI2l0gy+ZX6k5aXRRoa028KFWqLuoUyYVeMBfF1ozS9hQsSEBp7hPmuBLYKQejpw9Rge60R9tZF+PQbFmdFPYPfrC/voNEUwmPg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_fsm.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_fsm.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top cavlc_fsm

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
