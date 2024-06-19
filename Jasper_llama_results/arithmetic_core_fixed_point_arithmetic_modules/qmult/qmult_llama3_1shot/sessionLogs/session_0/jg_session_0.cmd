# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:25:30 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 70696
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37193' '-nowindow' '-style' 'windows' '-data' 'AAABGnicVY69CsJAEIS/Uwxi4QNYWwkKYpvaNopgGw7/JXpREwUbfVTfJI6HEbPL/szsLLsGCB9FUeCtflcKiBjLf2Ze3yY0VO2Da1Vm+qxUaJTLpSRQtOlzxBGzIWcnpifGksgdN/G55hflVO44k7FiKT5iJnVT6rUmV/Ud/TphrtmJgzYSaQeKhTpoSZlq37EX6v5pYn/NCltGQkPd20qX+S/fr9UjOQ==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top qmult

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