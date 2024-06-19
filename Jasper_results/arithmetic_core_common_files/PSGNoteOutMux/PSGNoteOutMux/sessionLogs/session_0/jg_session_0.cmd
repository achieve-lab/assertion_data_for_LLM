# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-28 17:26:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 13547
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36891' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYxNCsIwEIW/KBZx4QE8gqAn6LquNBXBrYh/KGKKtipu9KjeJL4UK3TjGzKZeT9jgPjpvadE86EWYUlUP5j3d4gNdYS9UWemr9oPrSpcWSK9LgNOOBbsKNiL6YtZclQ5buIL6Rf1TOU4k7NhLd4yk7st91bKtUwmpMylpdJGTOQPbqt0zlj9zlDTSreho2Sme46Dtt6fTMAHfUQj1g==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGNoteOutMux/PSGNoteOutMux/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGNoteOutMux/PSGNoteOutMux/.tmp/.initCmds.tcl' 'FPV_PSGNoteOutMux.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGNoteOutMux.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top PSGNoteOutMux
