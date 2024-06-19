# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:14:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 884861
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38169' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/PCoJAEMZ/Fkl06EGCIqFDB89eLYKuUlpZRCumBV3qUXsT+1Yy8NIMO7Pz/VlmHcB/VlVFHd2HiktIoPyF8/5efId22LnTRpavVodeY24krs6QMRcMEQdKjkJGQjaclYa78FL8VTVTGnIKdiTCQ1ZS96Xei7nVzoAFa3GJNLHUtuea52zxmKpO5I/1NgzkzMQaTppmfzx2t0y+SCq7qad9Ut2K+hcfXUQoKg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_decoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/decoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
