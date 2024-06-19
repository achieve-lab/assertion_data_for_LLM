# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:41:22 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 63749
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40631' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY47C8JAEIS/UwxiYW1tKSiIbWrbKIJtCMYn6kVNFGz0p/pPzvEwgexwe7uzsw8DhC/nHN6aT7mAiKlQmfn8g9BQt1/eqDPzd+2HVtlcSgK9LkPOWGK2FOzFDMQkHAXLQ3yh+k0+EyxXctak4iMWUrel3qhyV9zTrTOWql00IRVGUq80CTrSZeq2HJT1K0XsNyWc9CbKxtq1kyr3F34BB6ciAw==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qadd/qadd_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qadd/qadd_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_qadd.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qadd.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top qadd

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
