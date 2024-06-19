# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:59:27 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 107822
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37301' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsJADEVPFYu48BNci6ALwV3XbusD3Jbiq0p1ip0quNFP9U/qdbBCTUgmuTkzEw8IHmVZ4qx5V/IJmcp/5r2+ReBRt0/fqCvzZ+2EVnW5QnxFlyFnDBF7Cg5SBlJiUrnhJr3QPFfO5IYLli0b6SFL0W3RO02uqnvadcZKM8uahbhcYRm5PhXREZ3pDcNRXf+Pi9yvMSfFWN1EeiLWum3f0EIkkg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top tcReset

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
