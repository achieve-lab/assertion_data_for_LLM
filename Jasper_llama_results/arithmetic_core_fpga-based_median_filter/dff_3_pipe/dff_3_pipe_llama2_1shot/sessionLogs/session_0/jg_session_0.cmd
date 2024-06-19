# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:21:44 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 79067
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34599' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY7NCoJQEIXPLZJo0VO0ChKqreu2FkFbkcwyqnspLWhTj9qb2JdkIDTD/J2ZMxwjKXiUZanK2neSp1Az/Gfm9W0Co6Z95lYTWTwbVerU5PrEI/oa6SSrSFsVykCGILEOuNUNvGB/ITvc6qxcGyXgoZZcd7lO2VzpB2ida8UuAUupU8Lx1cHxYa75KvXgOD5Z7Zn8v9dRpSDWkZgwjdGwg5FXyt+R3CaE' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_dff_3_pipe.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dff_3_pipe.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
