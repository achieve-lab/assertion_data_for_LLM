# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 13:52:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 119159
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37147' '-nowindow' '-style' 'windows' '-data' 'AAABBHicVY5LCsJAEETfKAYR8QSeQNC1i6yycJtIwK2IPxTJBGOiuDFH9SZjRYww1Ux/qqqbMUD4cs7xRfepFBCzUPxh3r8mNPho5o7PLGuvQq9dbi2B3ogpGZY1R0pOYiZiNlwUlrv4UnqhnCssV27s2YmPSeXuy32QUqkf668JK2kFkbwPdXNm2tjqGgzkzXXBctY09FwNPq1oHjw=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/sBox_8/sBox_8/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/sBox_8/sBox_8/.tmp/.initCmds.tcl' 'FPV_sBox_8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/sBox_8.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top sBox_8
eixt
exit
