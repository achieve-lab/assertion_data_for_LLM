# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:19:43 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 60086
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38957' '-nowindow' '-style' 'windows' '-data' 'AAABMHicZY67CsJAEEVvFINY+A3WghaiXWrb+ABbCT7iirpLTBRs9FP9k3gSjBCcYWdn7r3z8CQFzzzPVVrzQfAVaor/zHt/k8BT3Yq6UUfmr9ovtarmSuLzuhroIqu1YmUyIH2QSCfc6g6ewV+JDrdKlGqnLXioJeo26j3MjbzHrTOt4Aw9jp5UC9SxhmQbJkod9I4pVkeq8Z/SsKvYkDCluCHSmTeimsAc6EvL2z8LVSev' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top inputRegister

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
