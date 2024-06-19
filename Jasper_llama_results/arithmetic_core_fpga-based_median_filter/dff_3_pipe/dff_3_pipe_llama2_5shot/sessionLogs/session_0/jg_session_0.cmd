# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:21:48 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 79182
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38753' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY7NDsFQEIXPJRqx8BRWEl0Qu65tSyS2TaNKBfeGlsSGR/Um9WlU0sRM5u/MnMkxkoJHWZaqrH0neQo1w39mXt8mMGraZ241kcWzUaVOTa5PPKKvkU6yirRVoQxkCBLrgFvdwAv2F7LDrc7KtVECHmrJdZfrlM2VfoDWuVbsErCUOiEcXx0cH+aar1IPjuOT1Z7J/3sdVQpiHYkx0xQNOxh5pfwNkhQmiA==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dff_3_pipe/dff_3_pipe_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_dff_3_pipe.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dff_3_pipe.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
