# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:33:53 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 30265
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34225' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVvFINY+B0iaKHYpbaNItiG4CtKzIY1UbDRT/VP1mMwQgpn2NmZM3OXWU9S8HDOqbL2neAr1Bz/mff6JoGnpn3qVpMsn41b6tTiesTn9DVSJqNIB5U6QoaQWCludIOX9C/EHDeyKrTTFh5qxXSX6T2dK/mAXRda07OQghgp4a2M+RSV1Ri6IZd66HKI0Ylq8lcRVZvEOnOmVDN2SVAV1Q/eHMAo/Q==' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/rptr_handler/rptr_handler_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/rptr_handler/rptr_handler_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_rptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
