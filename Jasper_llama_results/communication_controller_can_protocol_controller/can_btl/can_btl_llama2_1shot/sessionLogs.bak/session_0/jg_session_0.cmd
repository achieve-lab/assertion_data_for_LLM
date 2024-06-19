# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:11:20 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 19757
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44503' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY65CsJQEEVvFINY+AnWIihondo2imAbYtyJeUETBRv9VP8kHh9GeM4w2507iycpeFRVJSvNO85XqCn6E+/1TQJPrnzqhovMn06UWvVwTfGxrobKZBRpp1IHkAFIrBQ1uoGX9C/4HDU6q9BGa/BQC9ht2Fs6V/Iev860pJewISOuYKca4ROi1IGds8PoSNX/40X2aqwTNqEac3cPt7DfvgHMniSA' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_btl/can_btl_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_btl/can_btl_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_can_btl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_btl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top can_btl

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
