# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:06:45 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 616236
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38319' '-nowindow' '-style' 'windows' '-data' 'AAABLnicVY7NCsJADIS/Khbx4BP4BIKCIJ569iZVRPFWSv2nukVbBS/6qL5Jna5VaIbNJpNJGAfwnnmeY6P+UHLxGQv/cN5l4TlUo+hrVWb2qvzQ+C3/JK5emx5nDAE7Mg5iumJCYsFwF59pflVOBMOFlA1r8T5zqZtSbzW5qe7I65SlZiGRMGHBir42Il2DlrSJLhiO6kalKuOkF6tL7f3vVuEnERMwtO4G8rBXlVrnH4hMJrU=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_accMUX.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/accMUX.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top accumulatorMUX

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
