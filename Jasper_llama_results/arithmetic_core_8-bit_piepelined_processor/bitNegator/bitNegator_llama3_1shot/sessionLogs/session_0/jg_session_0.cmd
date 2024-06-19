# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:10 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 52265
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35987' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY67CsJQEERPFINY+BVWggGxTW1pFME2xFeiqDfojYKNfqp/EseLEQLusq+Z2WU9IHyUZYmz5l3JJ2Is/5n3+jahR90+c6OOzJ61Cq1quZL4ii4DThhiUgp2QvpCEg5yw014If6inMsNZywb1sIj5lK3pd6Kuarv6dcpC3FLXbJMpEx1y7q9QHWlq9DRTi7EsNcU/FXH7oOEo2KkaagfMjHWff4GsX4nBQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_bitNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bitNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
