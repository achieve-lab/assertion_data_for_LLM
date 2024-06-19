# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 14:09:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 184693
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46201' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5JCsJAEEV/KwZx4RE8gKAg4i5rt1EEt0HiFJF0iImCGz2qN4kvjRG6ipp+/RqMpPBV17WcdJ+4QJGW6F/M55eERr40dcdH1m8vSr12uKUE2FATZbKKdVKlFGQMstMVtXqAV/Rv+By1KlTqoD14pA3sPuwjnTv5iF9X2tJL2JC5WGBTZhL2SQPYOZjVxV3yec0POdxYc2YWxBmXz7BL9+8XDSckdQ==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
