# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:29:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 780710
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35641' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY+9CsJAEIQnikEsfBBBQUSr1GmjCLZB4j8hd2gSwUYf1TeJXw4jpHGX29mb3RnuPEnBs6oqueg+KL4iheQvvPe3CTy1o7532szq1UKp14ibFZ8z1FiZjGIdVegMM4LZKiWN7vAF8xvVkkZX5dprBx9pzXaf7QOT0ilDLbVhluBQ4pDQp+xnzr/GCfoEThqgtPgZXbgt/mhqtOhizdDPwSkvOqHM3T8+AC8pew==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_len_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_len_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

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
