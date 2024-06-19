# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:01:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 61912
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35047' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY65CsJQEEVvFINY+BGWohaCXWrbuIBtCC6Jor6gLwo2+qn+STwJRnjgDLPdubN4koJnURSqpPnA+Qo1RX/ivb9J4MmVsm64yPzlRKlVD9cUH+tqqLOMIiXKtQfpg8Q6okZ38Jz+FZ+hRhdZbbUBD7WE3Ya9o3Mj7/HrTCt6Br4FLf0CfqIR2ZqdUoeJjD1GB6rBH25UXY91wsZUE+6n8Gz19QckhCaE' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_outputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/outputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top outputReg

# Set up Clocks and Resets
clock -infer
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
