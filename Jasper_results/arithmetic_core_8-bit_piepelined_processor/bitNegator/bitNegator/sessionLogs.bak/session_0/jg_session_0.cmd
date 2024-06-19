# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-20 16:18:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 314767
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42299' '-nowindow' '-style' 'windows' '-data' 'AAABFHicbY5LCsJAEETfKAbJwpVHcCXoCbJ2mSiCW/EbFHGCThTc6FG9yVgJRhiwmulPVXUzBkie3ntqtB9KERkTxQ/m/W0SQ4hqboXM7BVU6DTLjSXS6zHijGVJTslBzFDMipPCchdfSr8qFwrLBceOrfiMudxdufdSbuoH+uuUhbS1LjlSOXPdcvXeWHWjqxBrpxBjOWrq/3VX+ADfxiIE' '-proj' '/data/vpulav2/Work/Jasper/bitNegator/bitNegator/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/bitNegator/bitNegator/.tmp/.initCmds.tcl' 'FPV_bitNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bitNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top bitNegator
exit
