# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 20:57:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 128174
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44063' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYzNCsIwEIS/KBbx4AP4CII+Qc+9VhG8isQflNIUtRW86KP6JnESrNCLs2R3MzszBkif3nsi+g+1hJxM9YN5f5fU0EX497rM8tWZMGjNrSTRGzOjxLHhSM1JzFTMlkLluIuvdb+qVyrHhRt7duJzVlIPpT7o0kRnxoK1blYJjRKs9kL6MuaHOZffioORnJXyHGf9Jn88AR+gBCRy' '-proj' '/data/vpulav2/Work/Jasper/cavlc_len_gen/cavlc_len_gen/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/cavlc_len_gen/cavlc_len_gen/.tmp/.initCmds.tcl' 'FPV_cavlc_len_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_len_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
