# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:14:24 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 51499
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39361' '-nowindow' '-style' 'windows' '-data' 'AAABLnicVY7NCsJADIS/Khbx4BP4BIKCCJ569iZVRPFWlvpPtUVbBS/6qL5JHddWaIbNJjOTEAfwnnmeY6P+UHLxGQv/cN5F4TlU49vXqszsVfmhUQ6XFlevTY8zMQE7Mg5iumIMkRBzF59JvyonQsyFlA1r8T5zuZtyb6XcVHd065SlNEMoTFiwoq+JUNugJW+iDTFHdaPClXHSi9Sldv9vKrAXGGmGobqBbthLT+3lH4coJqI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_accMUX.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/accMUX.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
