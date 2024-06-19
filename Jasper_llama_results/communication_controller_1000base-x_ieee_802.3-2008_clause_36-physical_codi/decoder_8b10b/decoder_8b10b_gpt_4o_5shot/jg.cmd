# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:14:51 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 885484
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42897' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/PCoJAEMZ/Fkl06EGCoqCgg2evFkFXKS0rohXTgi71qL2JfSsZeGmGndn5/iyzDuA9y7KkivZDxSXAV/7CeX8vnkMz7NxqIstXo0OnNtcSV6fPkAuGkISCo5CBkA1npeEuvBB/VU2VhoycHbHwgJXUXan3Ym6V02fBWlwsTSS17ZnmOVsmjFVH8kd6G3pypmINJ03TPx67WypfKJXddKZ9Drrl1S8+XXwoLg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_decoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/decoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
