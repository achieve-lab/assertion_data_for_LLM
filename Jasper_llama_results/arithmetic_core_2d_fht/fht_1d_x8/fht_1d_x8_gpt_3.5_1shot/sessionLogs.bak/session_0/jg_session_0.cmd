# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:41:12 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 594095
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36137' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY7BCsJADETfKhbx4Ed4FCyICB569lpF8FpErVXELdaqeNFP9U/qdLFCwQmbTWYmIQYInkVR4NB8KHmETBU/mPe3CAx1lH2jzsxftR9a1XBl8fS6DDhhidiRsxfTF7PiqLDcxOfSM+VUYTlzYctGfMhC7rbcsZSr6p5unbGUFpPIFzF0zjsTfPVr7YSOJlLtsRzU+X+85S2p40bSx07L5LLiSnwAKHoldQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
