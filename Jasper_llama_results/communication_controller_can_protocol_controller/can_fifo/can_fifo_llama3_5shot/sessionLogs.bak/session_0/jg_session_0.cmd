# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:40 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 23046
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42219' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY67CsJAEEXvKgax8BusBW3ELrVtFME2hGh8oNmgiYKNfqp/sh4XI8QZ5nXnzsNICh/OOXlp33GBIs3Qn5jXNwmNmvKpW01k8WxEqVMP15QA62ukXFaxtqq0BxmCJDqiVjfwiv4FX6BWZ5XaaA0eaQm7CzujcyUf8OtcK3opG3JixsaMqTFTKRulHvyCLVYHf+ufGfvLiU7YhGrK7R146T9+A2gbJU0=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_fifo/can_fifo_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_fifo/can_fifo_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_can_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
