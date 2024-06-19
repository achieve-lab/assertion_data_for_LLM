# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-12 16:45:26 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 80044
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36315' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY69CgIxEIS/KB5iYekjWAj6BNcIYnuKYCty/ivmiJ6KjT6qbxLnxBNSOEM2uzOzIQaIH957PqjeVSIShuIP5vVtYkOIYq6EyvgZ3FArl8tIpNOkyxHLjDU5WykdKXMOouUqPZd/Us1Ei+PMkoX0hInSdaVXci7q2/rriKk8x40BfVI2SqfsVR097aZ6FxrayqRYdppaf/IF3mJZInI=' '-proj' '/data/vpulav2/Work/Jasper/rxDAchecker/rxDAchecker/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxDAchecker/rxDAchecker/.tmp/.initCmds.tcl' 'FPV_rxDAchecker.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxDAchecker.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
pwd
exit
