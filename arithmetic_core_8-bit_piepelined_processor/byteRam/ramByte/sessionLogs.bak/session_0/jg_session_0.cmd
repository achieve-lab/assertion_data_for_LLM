# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 15:13:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 62598
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44189' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5BCsIwFERfFIu48AgeQKgn6MqF2yqCWxFbRVFTqlV0o0f1JnEabCHzyeRnZvITAyRv5xwe3ZcoImWmamG+/yYxhKjPnVBZfIIdes3lJhJpDYm5YFmzp+IgZSxlw0lleUiv5F/FhcpSciMnk56yVLqv9E7OXf1If52zkldqwpkpT5+eiLeaBwOlC7mWo387zNX4AT3zH4I=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/byteRam/ramByte/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/byteRam/ramByte/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top byteRam
exit
