# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-28 17:17:45 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 8359
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37769' '-nowindow' '-style' 'windows' '-data' 'AAABFHicbY69CsJAEIS/UwxiYeUjWAn6BKlNZyKCrYh/KJILJlGw0Uf1Tc45McKBs+ze7szscgaIH845PmjfVSJSpoofzOvbxIYQfm6FzPwZvNBplhtLpOwzJsey4kDNUcxIzJqzwnITX0svVQuF5ULFjq34lIXcXbn3Uq7qh/prxlJaJi1hJr93J8qcifqNrkJPO4UuWU6aBn/dHm+7SCEa' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGNoteGen/PSGNoteGen/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGNoteGen/PSGNoteGen/.tmp/.initCmds.tcl' 'FPV_PSGNoteGen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGNoteGen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top PSGNoteGen
