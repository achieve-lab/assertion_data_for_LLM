# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 18:16:16 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 150014
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44469' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYxLCsJAEETfKAZx4QE8gqAnyDrbRAS3IlGDIpkwMQpu9KjeZKwMRsjGavpXXdUGiJ/eewKGD5WIlETxg3l/h9jQR7sP+szq1esw6sydJFJOWVBi2VLQcBIzF7PjorDcxTe616qVwuK4cmAvPmUt9Vjqoy634EzI2OiW60Op7qQt9LUOLqe+1JTrN0zkrMRZztpmfzwtPqsAJMQ=' '-proj' '/home/vpulav2/Work/Jasper/can_registers/can_registers/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_registers/can_registers/.tmp/.initCmds.tcl' 'FPV_can_registers.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_registers.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -bbox_m can_registers
exit
