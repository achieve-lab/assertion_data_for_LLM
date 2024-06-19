# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:22:39 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 80013
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42553' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY47C8JAEIS/UwxiYW1tKSiIbWrbKIJtCMYn6gVNFGz0p/pPzslhAtnl9nZnZh8GCN/OOby1XwoBEXN5beb7T0JD08q61USWn8YPnaq5kgR6fcZcscTsKTgKGQlJOMstT+GF+LtiJrfcyNmSCo9YSd2VeifmoXygWxesxZUTU+kmUm80CXrSZeq2nFQNa0XsNyVc9Gaqptp1EJf7C38MiyIb' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/node/node_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/node/node_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_node.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/node.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
