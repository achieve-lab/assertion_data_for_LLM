# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:24 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 22585
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41057' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY67CsJAEEXvKgax8BusBQWtU9tGEWxDiMYHmg2aKNjop/on63ExQpxhXnfuPIyk8OGck5f2HRco0gz9iXl9k9CoKZ+61UQWz0aUOvVwTQmwvkbKZRVrq0p7kCFIoiNqdQOv6F/wBWp1VqmN1uCRlrC7sDM6V/IBv861opeyISdmbMyYGjOVslHqwS/YYnXwt/6Zsb+c6IRNqSbc3oGX/uM3Z9ElSA==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_fifo/can_fifo_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_fifo/can_fifo_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_can_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
