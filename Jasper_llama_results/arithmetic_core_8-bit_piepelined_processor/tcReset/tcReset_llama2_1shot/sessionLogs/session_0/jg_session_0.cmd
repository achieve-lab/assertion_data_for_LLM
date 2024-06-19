# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:59:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 107693
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42881' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsJADEVPFYu48BNci6Cg667d1ge4LcVXleoUO1Vwo5/qn9TrYIWakExyc2YmHhA8yrLEWfOu5BMylf/Me32LwKNun75RV+bP2gmt6nKF+IouQ84YIvYUHKQMpMSkcsNNeqF5rpzJDRcsWzbSQ5ai26J3mlxV97TrjJVmljULcbnCMnJ9KqIjOtMbhqO6/h8XuV9jToqJurH0RKx1274B0Aokjg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top tcReset

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
