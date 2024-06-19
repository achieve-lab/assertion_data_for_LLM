# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:16:59 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 36311
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40097' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAEEXPKgax8BOsRdBG7FLbRhFsQ4iviLohJgo2+qn+SbxZjBBn2HncObO7BvCfZVnirP1Q8AiYy39m3t/CNzSt6ltNZflqZOjUyzXi6fQZc8ESsqcgkTKSEnGSW+7SC82viqnckpGzZSM9YCW6K3qnyU31QH9dsNYsFlntVWzGRDnWfdATnUqxHNUN/7jQvRpx1pmqm+ndg4jc/fYD4cAk3w==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/counter/counter_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/counter/counter_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
