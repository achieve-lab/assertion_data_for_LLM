# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:40:58 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 641316
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36515' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY69CsJAEIS/KAax8AmsLQSttEttJUQRbEPwL0rwgiYKNvqovsk5OYxws9ze7szc7QZA9LLW4tB+KoXEzBV/BJ9fEQX4qPuWz6ze3g2d5nFjCXX6jLlgSDhScRIzEpOSKwwP8ZX0m3KhMFwp2bMTH7OWuyv3Qcpd9UC7LtlIK9mykDuVc+K6XHpP3kI/GM7qhp6rnl+ISZi6bWaamakq3aZfK/QjnA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_tcLoad.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcLoad.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top tcLoad

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
