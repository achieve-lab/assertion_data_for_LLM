# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 19:18:13 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 168234
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35795' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5BCsIwEEVflBbpwiN4AEFP0LXbtghupbRWFGmKtgpu9KjeJP4WK+QPmZn8/2cSA8Qv5xwDpk+lkISN4g/z+TWxwUd/n/hM9vYqBOPwaAl15qyosew50nESsxSTc1FYHuI76TflRmG50nKgFJ+wlXsmdyXlrn6hv6bspBXaUKvm6irWmim0DyK5G+2wnIe3fV+PLzffH1A=' '-proj' '/home/vpulav2/Work/Jasper/can_acf/can_acf/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_acf/can_acf/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
