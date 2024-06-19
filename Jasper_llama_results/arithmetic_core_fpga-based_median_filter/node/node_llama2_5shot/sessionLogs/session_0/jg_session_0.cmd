# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:22:35 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 79798
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43411' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY47C8JAEIS/UwxiYW1tKWgh2KW2jSLYhmB8ol7QRMFGf6r/5JwcJpBdbm93ZvZhgPDtnMNb+6UQEDGX12a+/yQ0NK2sW01k+Wn80KmaK0mg12fMFUvMnoKjkJGQhLPc8hReiL8rZnLLjZwtqfCIldRdqXdiHsoHunXBWlw5MZVuIvVGk6AnXaZuy0nVsFbEflPCRW+qaqZdB3G5v/AHDLEiHg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/node/node_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/node/node_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_node.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/node.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top node

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
