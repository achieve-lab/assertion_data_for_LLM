# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:50:35 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 80643
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32961' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5ND8FAEIafEo04+BGOgkRce+HAsRWJa1PfBNtoS+LCT/VP1qtRSRMzmdmZ92N3HcB7WGvJo3pXc/EZK3/hvL6D51COz14pI9Nn6YRaYS4krqpJlzOGkC0ZeyFtIRFHpeEmPBOfqMdKw4WUNSvhPjOp61JvxFw1t/TXgLm4QNyEkVwJQ3kW9ORb6k5oyBELMxy0df5ow/z1iJNqoK0vZid9mv/6Dc5/JTU=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGBusArb/PSGBusArb_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGBusArb/PSGBusArb_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_PSGBusArb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGBusArb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top PSGBusArb

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
