# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:27:45 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 690995
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33693' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIS/Uwxi4XOIoIVol9o2imAbJGpUJBfyo2Cjj+qbxMlhhBTucvszO7PsGcB/VlWFs+5DwSNgKf+ZeX8L39C2uu+0kfWrlaHXiBuKpzdkQoIlJKbkLGQsZMdVbrkLLzXPFVO5JaPgwF54wEbsvthHTW6qR7p1xVazSBsS5UzcWFtzp8qYKkfaDAPpUiGWi7rZX0V9V6o6ZO6uXGhyUlW4H3wAEfoo8g==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register/can_register_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register/can_register_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_register.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exi
