# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:11:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 825192
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40713' '-nowindow' '-style' 'windows' '-data' 'AAABSHichY+9CsJAEIQnikEsfBBBUcQutW0UwVYk/iWId2iiYKOP6pvEL6cRrnKX25+Z2WUvkBQ9yrKUs+adECrWFP9Z8PoWUSDfqr7hI/Onl6VWPVxLQl5XfZ1ktNJehVKQHshaR9zoBl7AX4gWNzor11Yb8FgL1G3UO5gr9ZBbZ1rCJegSlw3TOZ1h32dXSj/gJSBSh3nr+Myd9m+yutO6PGbLhDziugOq3P3pDUiFLHU=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
