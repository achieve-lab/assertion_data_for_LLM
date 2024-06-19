# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:45:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 146601
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41641' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCsJADISnikU8+Bwi6KHgrWevVQSvpf4r6pa1reBFH9U3qV8XK/RgQpLNZCZkPUnhsyxLOWs/SL4iTfGfee/vI/TUtKpvNZH5q1GlTi2uKT7R10hXGcXaK9cRZAiS6Iwb3cFz5jdyihtZZdpqAx5pAbsLe8ek4D3g1pmWzFZsyqgWbkFYNlQ7x6BrqtRDl4IbneiCv4rYXZLoQgR0E/ADqsz94AMY0Cj2' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/bit_reversal/bit_reversal_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/bit_reversal/bit_reversal_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_bit_reversal.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bit_reversal.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top bit_reversal

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
