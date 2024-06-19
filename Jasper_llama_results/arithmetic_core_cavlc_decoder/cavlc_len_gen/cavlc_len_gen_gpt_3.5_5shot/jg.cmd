# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:29:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 781171
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45445' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY+9CsJAEIS/KAax8EEEbSRWqdNGEWyDxH9CLmgSwUYf1Tc5J4cR0rjL7ezN7gx3HhA+rbW46D9UfGIi5S+897cJPbrR3HtdZvXqIAxacbvi64yZkmNIOFJxFjMRsyVTGu7iK81vqoXScKVkz058zFrbQ20fNKmdMmLJRrNUDrUcUvWZ9nPn3+BM+lQcjKQs5Ge46Lb4o2mwkC5hLn0gDPSik5Sl+8cHAGcpfw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_len_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_len_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top cavlc_len_gen

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
