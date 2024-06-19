# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:11:25 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 55650
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35835' '-nowindow' '-style' 'windows' '-data' 'AAABeHicnZDNDsFQEIVPiUYsPIiEhLW12JUQ2+aiqJ/eploSGx7Vm9TXRiXdmknn58yZc2+vI2n8zPNcpTUfBFeeJvjPnPe3GDuqW9E36sj8VctSq1quKC5fV31FsvK1V6YQpAdidMat7uAZ8ysxxq0SpQq0Bfe0gN2GvWNyo55y15lWzAy8kLhGJaAOUAjYTMAitq0uaBennNgOyWnJG5A3dFIH3RjE6ki3RP9fTb/8F8PUaEQ3ZO8AOy3f4AMtyzb4' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_ariableresetrandomwalkfilter.tcl'


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
  ${RTL_PATH}/property_llama2_1shot.sva

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
