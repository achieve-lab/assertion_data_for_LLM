# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:10:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 69902
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41653' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY6xCsJAEEQnikEs/AhLUQvBLrVtFME2hGg0ol7QJIKNfqp/Ep+HEQ7c5fZmZ2f2zpMUPOq6lo32neIr1Jz8hff6gsCTG5++5TLLp3NLncbcSHxOX2OdZRRpp1IZzBAm1pE0usGXzK/UnDS6qNBWG/hQK9Rd1CmTCjzgrwutmSVsqNiQgFPcJ03wJTBSD0fOHqMD3eiPNrKvx6BYU7oZ7B59YX/9BhGEJkI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_fsm.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_fsm.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
