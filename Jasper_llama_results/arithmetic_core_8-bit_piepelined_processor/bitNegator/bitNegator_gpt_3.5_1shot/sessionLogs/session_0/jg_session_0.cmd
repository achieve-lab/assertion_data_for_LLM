# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:08:12 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 617792
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46081' '-nowindow' '-style' 'windows' '-data' 'AAABMHicbY69CsJAEIQnikEsfAorQVHELrWlUQTb4F+iIl7Qi4KNPqpvEr8cRgi4y+3uzcwu40kKnnmey0X9QfEVakL+wnt/h8BTNYp/rYrMX5UuNcrlUuLz2urpLKNIiTIdQLogK51Iozt4Bn+lpqTRRVY7bcFDLVA3UccwN+YOXmdawq25ZDVFmXDLur0+fcNVqcVOCmJ05Df4qy78pMyRRmyO6UNc7OGs8/4B+zInDQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_bitNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bitNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

# Elaborate design and properties
elaborate -top bitNegator

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
