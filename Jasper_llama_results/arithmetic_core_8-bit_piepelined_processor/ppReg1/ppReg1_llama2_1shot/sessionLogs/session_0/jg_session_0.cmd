# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:17:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 64574
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45509' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY7LCsJADEVPFYu48AtcuxAU6rprt/UBbkvx0SrqFG0V3Oin+ifjbbHCJExmcnOSjAeEL2sttbWfCj4RM/nfvM/vEXq4VuUtV1m8nRs6TXOD+Dp9xlwwxKSUHKSMpCSc5IaH9FL1m2IuN1wp2LGVHrES3RW9V+Wu90B/nbNWrWKX4lICJurYaBr0xOaaYDgqGzpUXG9MOOtMlQXamYks6p9+ARsmIzQ=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_ppReg1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ppReg1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
