# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:22:21 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 86516
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37105' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIW/SzRi4RGsRULSsOzatkRi2zT+SnAbWsSGR/UmdTQquWZy5+ecc2fGAMGjKApKq98VPELG8p+Z17cIDK59+pqLTJ9Ohkb1uZJ4em36HLFEbMjZCukJidnLLVfhufizYiq3nMhYsRQeMpO6KfVazEV1R7dOmIs7SH9jJK3FZ6C80DxoSZ1qhmWnrvuni8qtsdCYoTpfexMxWXntG7pgJB8=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/mux4to1/mux4to1_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/mux4to1/mux4to1_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_mux4to1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mux4to1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top mux4to1

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
