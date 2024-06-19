# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:55:42 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 84434
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37859' '-nowindow' '-style' 'windows' '-data' 'AAABUniclY+9CsJAEIQnikEsfBBBC8UupdhGEWxDiP9EL8TkBBt9VN8kfh5GSOkuuzc7OzfceZKCR1VVctG+03yFmpO/8F5fEHhqxmduNZnls3FKnfpyLfGpvoa6yCjSXqWOMAOYWClpdIMv2V/pGWmUq9BWG/hQK9Rd1Ds2FjzmrQut2SU4WBwScI4+djdSkKVS/Eb4JCCph0OGyujENPvDI3KvjHWmJkxTuAM+hfvdG/eGLjY=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top cavlc_read_levels

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
