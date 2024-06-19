# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:49:06 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 148165
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34063' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY/NCsJADIRnFYt48EEERT1Kz16rCF5LqX8t6hZtFbzoo/om9XO1Qk8mJNmZTELWSPLvZVnKWfNG8hRoiv/MPL8P36hub9yoM/NHrUqtariSeERXfR1lFWqrQglMDybSHre6whf0z+QMtzop11or+EAL1G3UGzoX3kNunWlJL0YXu2qZzkGWfZ9dCXhAxDBSh/nM9VPQ5O9k6C6LdCDGoBG37dDk7kcv88gsbA==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
