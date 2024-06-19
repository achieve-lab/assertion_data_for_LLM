# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:23:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 682259
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39145' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERfFIO48AgeQFAQcZe12yiC26DxT8gMmii40aN6k1gZjDDdTFdPdfUnAKJXVVU4az8VQmLm8r8Fn18SBfhW/1s+s3x7CJ2muZGEen1G5BgSjpScxQzFbMjkhof4UvWbopUbrhTs2YmPWUndlfqgyl35QLcuWKuWakIu3EqdMVZMhdCT2mqG4eI2+br6BqssYaqemXCizSepC3fvFxFfJIk=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_btl/can_btl_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_btl/can_btl_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_btl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_btl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
