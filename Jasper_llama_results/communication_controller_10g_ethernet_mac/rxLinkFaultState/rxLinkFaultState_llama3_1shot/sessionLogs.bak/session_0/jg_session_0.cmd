# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:48:34 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 33499
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34599' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIS/KAax8EEERbGT1FZClIBtCP5rzAVNVGz0UX2TOB5GSOUu+zc7c+w5gPcoigJr9buSi89Y/jPn9W08h6p95loVmT0rFRqluKS4ijZdEgwhG3J2QjpCImK54So81/6snMoNJzJWLIX7BGI3xV5rc1Hf161T5tqduDHRawkHYZHUsXSBIrL6nvJCGLSkT8U37DWN/ipDe1nEUTHUNNBtW6kz+6M3z1Yr6Q==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
