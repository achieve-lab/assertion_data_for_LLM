# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:17:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 99896
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38585' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NDsFQEIXPJRqx8CCChYRV17YlEtumqaINbkOL2PCo3qS+Nirpxkzu/JwzZzLXSHKfRVGosvaD4MjTHP+ZeX8L16hpZd9qIstXI0udWlyPOLy+RjrJytdOuWKQAUigA251A8/hL8QUtzorU6QNuKcV012mtzBX6iG3LrSGK5GcHOmukJiiilGXm8bUIdulHtqUjVYJ3eyvyq8uCnTkTeimYHu4rPrJB4hzKtI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_exceptions/fpu_exceptions_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_exceptions/fpu_exceptions_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_fpu_exceptions.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_exceptions.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top fpu_exceptions

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
