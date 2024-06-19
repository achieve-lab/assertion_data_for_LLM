# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:21:52 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 79312
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38333' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY7NCoJQEIWPRRIteopWQUK0dd3WImgrkllJdS+lBW3qUXuT26dkIDTD/J05ZxhPUvh0zqm27oPkK9Ic/5n3/jahp7ZVc6eNLF+tKvUacUPxiaEmOsso1k6lDiBjkERH3OgOXrK/ki1udFGhrVLwSCvYfdgZmxv9iF8XWrNLwTLqjLBctWgClBuuSgM0lktGOVPwlx3XHyQ6ERU+5Yc9iqL+/AOR7iaF' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_dff_3_pipe.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dff_3_pipe.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
