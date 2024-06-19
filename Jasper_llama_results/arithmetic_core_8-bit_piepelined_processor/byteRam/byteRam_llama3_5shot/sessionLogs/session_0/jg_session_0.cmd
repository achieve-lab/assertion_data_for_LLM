# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:15:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 64253
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35905' '-nowindow' '-style' 'windows' '-data' 'AAABInicVY67CsJAEEVPFINY+AnWImgjdqksbOMDbEN8K+qGmCja6Kf6J/FmSYTMsLMzd87OrAN47yzLsFZ/Kbj4TOR/c75F4jlULa9rVWX2qdzQKB+XiKvTps8VQ8CelKOUnpSQs9zwkJ6qf1OM5IaYhC0b6T4L0U3RO3Xuyjv665SlerEmXBjztPRAca150BIdqWs4qeqyKoi55QO7Nc9ChqpG2nsQm9jf/gDOfCSH' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -bbox_m byteRam

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
