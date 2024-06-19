# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:12:18 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 97549
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38293' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY/NCsJADIRnFYt48EEERQQv0rPXKoLXUupfi7pFWwUv+qi+Sf1crdCTCUl2JpOQNZL8e1mWcta8kTwFmuI/M8/vwzeq2xs36sz8UatSqxquJB7RVV9HWYXaqlAC04OJtMetrvAF/TM5w61OyrXWCj7QAnUb9YbOhfeQW2da0ovRxa5apnOQZd9nVwIeEDGM1GE+c/0UNPk7GbrLIh2IEWjMbTs0ufvRC/QALHA=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top crc_control_unit

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
