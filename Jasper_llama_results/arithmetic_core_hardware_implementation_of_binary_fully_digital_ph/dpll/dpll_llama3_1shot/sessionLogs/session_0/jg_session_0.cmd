# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:32:00 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 73079
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38545' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY47C8JAEIS/UwxiYW1tKSiIbWrbKIJtCMYn6gVNFGz0p/pPzslhAtllXzOzd2uA8O2cw1v7pRQQMZfXZr7/JjQ0rZxbTWT5aVToVMuVJFD0GXPFErOn4ChkJCThLLc8hRfi78qZ3HIjZ0sqPGIldVfqnZiH+oFuXbAWlwopX5hIvVGFnnSZti0nTcNaEfuccFHMNE3110Gq3F/4Aw6HIic=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_dpll.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dpll.v \
  ${RTL_PATH}/phasecomparator.v \
  ${RTL_PATH}/freqdivider.v \
  ${RTL_PATH}/variableresetrandomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top dpll

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
