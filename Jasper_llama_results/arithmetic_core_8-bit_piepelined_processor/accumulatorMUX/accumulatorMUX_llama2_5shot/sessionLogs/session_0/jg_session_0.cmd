# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:14:19 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 51334
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37199' '-nowindow' '-style' 'windows' '-data' 'AAABLnicVY69CsJAEIS/KAax8Al8AkELQavUdhJFFLtwxH+iCZoo2Oij+iZxPBMhO9ze7szssg7gPfM8x0b9oeTiMxb+4byLwnOoxrevVZnZq/JDoxwuLa5emx5nYgJ2ZBzEdMUYIiHmLj6TflVOhJgLKRvW4n3mcjfl3kq5qe7o1ilLaYZQmLBgRV8TobZBS95EG2KO6kaFK+OkF6lL7f7fVGAvMNIMA3VD3bCXntrLP4dOJqU=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_accMUX.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/accMUX.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top accumulatorMUX

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
