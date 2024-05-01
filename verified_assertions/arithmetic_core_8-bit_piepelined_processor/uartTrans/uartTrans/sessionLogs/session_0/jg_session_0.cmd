# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 18:28:27 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 119394
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40497' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY7NCsIwEIS/KBbx4MFH8CjoE/TstYriVYJ/KGJKaxW86KP6JnEarBBwlkx2Z2dCDJA+vfcEtB+ihIyp6gfz/japIUY9t2Jl/opu6DThxpLo9BlzwbHmQMVRykiK5axy3KVX2pfiXOUouLJjKz1jIXdX7r02N/VD/XXGKmRscC7FNuQnmjZ6E3pK5NIdJ02DP94aH1r+IWo=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top uartTrans

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
