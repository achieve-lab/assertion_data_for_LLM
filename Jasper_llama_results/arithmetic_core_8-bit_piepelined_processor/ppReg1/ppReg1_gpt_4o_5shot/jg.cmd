# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:40:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 640123
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39613' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY7LCsIwEEVPFYu48AtcuxAUBN117bY+wG0RH60iJmir4EY/1T+pN8UKmSGTmTsnmQmA6FWWJZU1nwohMTP534LPL4kCfHN1w1cWb++GVv24RkKdLkMuGBJSCo5SBlI2nOWGh/RC/ZuilRuu5OzZSY9ZiW6LPqhzV97TrnPW6jl2KS5lzEgvtvoNOmKtfjCcVPU9ys23IhMm1TZTzcyU5dWmXxyUI0w=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ppReg1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ppReg1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top ppReg1

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
