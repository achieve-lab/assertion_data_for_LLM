# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:39:51 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 25811
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46151' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/QzRi4RGsRUIitl3blkhsm6pbhZ6GlsSGR/Umx69RSc1kbv/8czGA/3DOUUrzLucRMJX+xLy+iW+oy6du1JH5sxahVQ1XFE/WZUiKJWRHQSJkICTiKLXchBfqX+QzqeVMzoa18ICF2G2xt+pclff064ylerE2pIoJK82MNBNrH3TEzrTDclDV/+OF5dWIk2yiaqy7e+F5+e0byWAkcQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_ibo/can_ibo_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
