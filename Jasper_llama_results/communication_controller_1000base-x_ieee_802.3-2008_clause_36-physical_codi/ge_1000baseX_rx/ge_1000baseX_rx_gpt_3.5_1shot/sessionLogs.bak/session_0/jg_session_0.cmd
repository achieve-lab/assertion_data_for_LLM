# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:43:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 911312
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36873' '-nowindow' '-style' 'windows' '-data' 'AAABRHichY/JCsJAEERfFIN48EMERREvkrPXKIJ4Cy5xQ5yQRcWLfqp/EiuDEXKym+nprq4qZhzAe+Z5jo36Q8XFZ6L8hfP+Np5DNYq5VkVmr8oNjVJcUlydNl0uGAL2ZByFdISsOCsNN+GZ9olqpDTEpIRshfvMxW6KvdPmqr6nt05ZWK9QdUDf5lp+iZClsJi7eCkb+UNL6kiY4aRp/EdX+EbSBgzlMbLMhIPUqf3PB9ZbKVM=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
