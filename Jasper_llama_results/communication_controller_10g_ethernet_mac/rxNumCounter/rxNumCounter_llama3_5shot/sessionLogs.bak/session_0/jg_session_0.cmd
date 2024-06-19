# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:46:49 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 32437
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33975' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NDsFQEIW/Eo1YeA6RsCB23UkslUhsm8ZPEdymWsSGR/UmdXqjki7M5M7PmXMmcx3Ae+Z5jrX6Q8HFZyL/mfP+Fp5D1Yq+VkXmr0qGRikuKa5emx5nDAERGXshXSEhR7nhJjzT/KIYyw0JKRvWwn0WYjfF3mpyVd3RrTOWmiXcmUpzYixNsaFQJfSVV9oMLeliIYaDusFfRWAvCYWHDNWNdMtOjNT+4AMUcijn' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
