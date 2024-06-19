# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:13:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 623632
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41381' '-nowindow' '-style' 'windows' '-data' 'AAABInicVY47C8JAEIS/KAax8CdYi6CVdqksbOMDbIOv+EC9EBNFG/2p/pM4ORIhu9ze7szc3jiA986yDBv1l4qLz0T5D+dbNJ5DNfK5VkVmn8oNjfJxKXF12vS5YgjYk3IU0hOy4qw0PISn4m+qkdIQk7BjK9xnIXVT6lDMXX1HXqcsxcXacGHM06oHqhvtg5bUkVjDSVOXdaGYW33uIdIcMLSORvr3oC6xbn/PoCSa' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
