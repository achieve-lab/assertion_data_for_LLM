# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:34:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 843599
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35393' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY49C8IwEIafKBZxcHZ2FBQEx86uVQTXItZPxARtFVz0p/pP6ttgC7kjl7v3nuTOAPG7LEu8tV8KEQlzeWPm+09iQ2hV3QqV5Se4oVM/rpFIp8+YK5aUAwUnKSMpGy5yy1N6of5d0cktN3J2ZNITVqK7ovfqPJQPtOuCtXrVj5m4ieitfoKeOKfXlrOqYUNUc52olJnfYqpZR2W53/AHDa8iLg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_node.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/node.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
