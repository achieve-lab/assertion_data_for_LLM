# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 14:13:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 188844
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43347' '-nowindow' '-style' 'windows' '-data' 'AAABYnicrY+7CsJAEEVPFCVY+AnWIigIlqltowi2QeIrItkQEwUb/VT/ZL1ZjBBrZ5jH3rkzO+MBwcNai5P2Xa5LyFz6Fe/1SQKPplTvVhNZPhsROnVzTfFlfcakGCIOlCRCRkI2nKWGm/BS9Yt8JjXkFOzYCg9Z/aHfF3uvylX5QLcuWKsWa0LqYi6bqCfWPOiJnQkznPQa/vCqHTJxI2Zuo6n+PSor3LVvyf8v3Q==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
