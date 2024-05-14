# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 18:36:18 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 140947
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32811' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY5LCsJAEETfKAZxIR7BtaAnyNptlIBb0fGDEp2gxoAbPao3GSvBCIPVTH+qqpsxQPz03lOj/VCKSJgqfjDvbxMbQlRzK2Tmr6BCp1luLJFenzFnHEv2FBzEjMSsyBSOUnwh/aqcKxwXbmzZiE9I5e7KvZNyVz/UX2cspFn5bF0dJ9ZMtGV1EXry51IdR02DP2eFD8UxIE4=' '-proj' '/data/vpulav2/Work/Jasper/crc_comb/crc_comb/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/crc_comb/crc_comb/.tmp/.initCmds.tcl' 'FPV_crc_comb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_comb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
