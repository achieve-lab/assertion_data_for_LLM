# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 15:52:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 405180
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37043' '-nowindow' '-style' 'windows' '-data' 'AAABFHicbY7BCgFhFIW/IZMsrDyClWJjO2vbIWUrGUQyE4ay4VG9yfhGqCnndu/977nn3P4AiO5FUfBG/WYJiRkZPwTPzyMKqKKca1Vm8qh0aHzNX0lotulzIGXOhpytTE9mwd5Iucrn7k/WzEg5cmZFIh8zVd1UvXZz8d31r2Nm7hK5tX1oZl7N9Ax0Lr0KLT2Zl1J2Tp2/6hIvzTYhhA==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe/.tmp/.initCmds.tcl' 'FPV_dff_3_pipe.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dff_3_pipe.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
