# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-27 18:55:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 196912
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33635' '-nowindow' '-style' 'windows' '-data' 'AAABIHicZY7PCgFRFMZ/l0yy8BCWipKUxaxth5TtJIwhuTcMsuFRvcn45mbU5Jzuued8f07HAOEzz3N81B8qARET5S/M+9uEhmoUc62KzF6VHxqluZQEem16HLHEbMnYCekKWXJQWm7CM/FnVae0nLiwYS08Yi51U+pEzFV9R7dOWYhLSKWLGXjlnTF9zSvthJYcTnsse+/51xa3OI8N5Rv5Wz9oZiMb' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_3.5/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_3.5/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit