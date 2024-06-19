# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 17:00:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 284706
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32873' '-nowindow' '-style' 'windows' '-data' 'AAABNHicdY69CsJAEIS/KAax8DEsBAUVu9S2UQTbEOK/4oWYKNjoo/om51wwQgp3uZ3d2ZljPSB4Wmspo/lQ8QmZKX/hvb9N4FEPNzfqzOJVQ2hV5kri63UZcMEQsaPgIKYvJuasNNzFF9pfVVOlISNnw1p8yFLqttRbbW7qe7p1zkq7mISTMJHD+Z0nYyhM9C905ErFGI6axn/07qZUfcRE3qlwpEv20uTl/R+wcSgP' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


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
