# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:08:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 618040
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38883' '-nowindow' '-style' 'windows' '-data' 'AAABMHicbY69CsJAEIQnikEsfAorQREkXWpLowi2wd9EES/oRcFGH9U3Ob8EIwTc5Xb3ZmaX8SSFT+ecymg+KL4iTchfeO/vEHqqR/Fv1JH5q9alVrVcSXxeVwOdZRQrUa4DSB9kpRNpdAfP4a/UjDS6yGqnLXikBeo26j3MjbmH15mWcGsuWU1RJtyy5d6QvuGq1GEnAzE68hv9VRd+MuZYYzYDeoCLFM6W3j/7aicR' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_bitNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bitNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
