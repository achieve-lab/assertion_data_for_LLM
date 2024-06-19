# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:49:08 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 800372
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42459' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY+5CsJQEEVPFINY+CGCVtqlThtFsA0h7ogJ2YQ0+qn+SbwZjJDSGd4yZ+5c3nMA79k0DRbDWptLgK/8hfP+XjyHfrT1oE82r94Jo264k7haU+bcSQg5UXIRmYlE3JQJD/FS/Vx7qkzIKDiwFw/YSj2W+qhOZcY+a3bqxXKo5BDrnkkf2USh+cK8Q2rRTHXOQiwWg4m8UqNXVf5fLu37U/GQpf1mJXY2ZRsfiL0xYA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top cavlc_read_total_zeros

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
