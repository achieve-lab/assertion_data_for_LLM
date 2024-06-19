# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 17:29:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 288636
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45763' '-nowindow' '-style' 'windows' '-data' 'AAABdHicrY+7CsJAEEVPFCVY+BkWgoKKXWrbKIJtCPERH7ghJgo2+qn+SbwbjJDCzhl2HnfuXWYcwHsURUFpzbtCG5+Z/GvO61N4DnWzfaOOLJ61DK1KXFFcvS4DzhgCduTshfSFhJzkhpvwXPOLYiI3pGRsWAv3Wf5B74q91eSquqdb56w0C4k4KkdSWL3VpAyVI/0LHakSIYaDuvEPvt0pUR0wkXaqPNImsThZef8bfUUzbA==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ack_counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
