# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 15:22:11 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 400821
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38819' '-nowindow' '-style' 'windows' '-data' 'AAABXnicnY7NCoJQFITHIokWPUhQDxCuo51F0DasbmGWV0wL2tSj9ia3T8nAbefg+ZkzM1dPUvB0zqmO7oPiK9SM/IX3/g6Bp3ZUe6eNLF+tLvUacUPx+YYaK5XVRkeVikFGIJHOpNUdvOR+pWakVa5CRnvwUCvYfdgHLjfmOf+60JpbBC+mbnExzAYHgzIHS1FbXfCuXklQx/Si5k3oOzZpgG8GYnVim+L/r2cVH7ljMfg=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter/.tmp/.initCmds.tcl' 'FPV_ariableresetrandomwalkfilter.tcl'


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
  ${RTL_PATH}/property.sva

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
