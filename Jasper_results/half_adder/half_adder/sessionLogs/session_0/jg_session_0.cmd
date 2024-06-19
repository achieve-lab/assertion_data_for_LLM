# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 22:22:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 9617
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46683' '-nowindow' '-style' 'windows' '-data' 'AAABFHicbY5NCsIwEIW/KBZx4cojuBL0BF27bUVwK8Vafyim1FbBjR7Vm8TXYoWAb8hk5v2EGCB8Oudo0X+oBUQsVT+Y93cIDT6aveczq5d3w6ALd5ZAZ8ycC5YtB2pOYmZiEnKV5S6+ln5VL1SWkoo9qfiItdxDuTMpN81T/TVmI+3YvpBpSuRNlShZKLkTCyNlCjGWs7bJX3eDD9rgIdo=' '-proj' '/data/vpulav2/Work/Jasper/half_adder/half_adder/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/half_adder/half_adder/.tmp/.initCmds.tcl' 'FPV_half_adder.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/half_adder.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top half_adder

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
