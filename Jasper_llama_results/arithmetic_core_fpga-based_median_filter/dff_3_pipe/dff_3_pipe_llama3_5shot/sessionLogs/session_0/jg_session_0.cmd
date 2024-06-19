# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:21:56 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 79421
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35975' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY7NCoJQEIWPRRIteopWQW6ineu2FkFbkcxKqnspLWhTj9qb3D4lA6EZ5u/MOcN4ksKnc061dR8kX5Hm+M+897cJPbWtmjttZPlqVanXiBuKTww10VlGsXYqdQAZgyQ64kZ38JL9lWxxo4sKbZWCR1rB7sPO2NzoR/y60JpdCpZRp4TlqkUToNxwVRqgsVwyypmCv+y4/iDRiajwGT/sURT15x+SJiaJ' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_dff_3_pipe.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dff_3_pipe.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top dff_3_pipe

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
