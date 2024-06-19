# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-05 19:02:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 48298
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36475' '-nowindow' '-style' 'windows' '-data' 'AAABAHicVY5LCsJAEETfKAbJwgPkCIKeIGu3iQjZBvGHEp34iQE3elRvMlaCUaaK7qmuroYxQPx0ztGi/1ALSJiJP5j3V8QGH83c8535y3th0B13kUA1YsIJS86Oir2csZwlhWip5VfaX9VL0XLhxoa1/ISF0kOlt9rcpSP9NSXT7sxRF4WyU9VKCkIlS91bDu30zzT4AEHoHjg=' '-proj' '/data/vpulav2/Work/Jasper/qmult/qmult/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/qmult/qmult/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
