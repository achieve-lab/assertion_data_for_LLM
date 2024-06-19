# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 10:08:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 516932
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40229' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIQnikEsfA4RtBDtUttJFME2iPGX4IV4UbHRR/VNzi/BCCnc5fZ2Z2eOOU9S8HTOqYzmg+Ir1JT8hff+NoGnehRzo44sXrVbalXiiuJzuhroLKNIe+U6gvRB1kpIoxt4zv5CTUmjTFZbxeChlrDbsHdsrvQ9vM61YpfpztbyjtUMVYw+QTdk3tBJHXQpPKMT0+ivovCVgkUaly4neDnQ2fIHHw/aKN4=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
