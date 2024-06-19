# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 12:52:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 578773
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42831' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIS/KAax8DlE0EK0S20bRbA9xL9EQi7ERMFGH9U3iZPDCCnc5fZ2Z2aPOQ8InlVV4aL7UPEJWSp/4b2/TeDRjnrutJH1q3VDr1luJL7OkAkpFsOZkljIWMiORGm5Cy/FX1UzpSWn4MhBeMhG6r7UJzE39SN5XbEVlwspVA2R3kqlT7SVMxW6Vw8D7WVCLBdNs78bta+aMcydy4W8ROoK94MPHeQpEA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/rptr_handler/rptr_handler_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/rptr_handler/rptr_handler_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_rptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
