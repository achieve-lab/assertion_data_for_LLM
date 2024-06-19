# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:40:55 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 54457
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44277' '-nowindow' '-style' 'windows' '-data' 'AAABeHicnZDNDsFQEIVPiUYsPIiEhcTOWuxKiG1zUdRPb1MtiQ2P6k3qa6OSbs2k83PmzLm315E0fuZ5rtKaD4IrTxP8Z877W4wd1a3oG3Vk/qplqVUtVxSXr6u+Iln52itTCNIDMTrjVnfwjPmVGONWiVIF2oJ7WsBuw94xuVFPuetMK2YGXkhcoxJQBygEbCZgEdtWF7SLU05sh+S05A3IGzqpg24MYnWkW6L/r6Zf/othajSkG7F3gJ2Wb/ABLgM2/A==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_ariableresetrandomwalkfilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/variableresetrandomwalkfilter.v \
  ${RTL_PATH}/randomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top variableresetrandomwalkfilter

# Set up Clocks and Resets
clock MainClock
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
