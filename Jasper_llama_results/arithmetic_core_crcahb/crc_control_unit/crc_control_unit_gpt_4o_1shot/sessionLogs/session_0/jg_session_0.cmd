# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:12:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 829393
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36201' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY/NCsJADISnikU8+CCCouBJevZaRfAqUv9axF20VfCij+qb1K+rFfZkwiaZSSZkA0nRoyxLOWveCaFiTfGfBa9vEQXyrcINn5k/vSy1anE9EvK66usko5X2KpTC9GDWOuJGN/iC/oVocaOzcm21gY+1YLrN9I7OlXrIrTMt6SXMJS4b1DnIsO+zKwUPeAmM1EFvXT8DTf4qqzuty2N39YjbDlS5+9Eb9P4sgA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
