# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:26:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 135440
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42285' '-nowindow' '-style' 'windows' '-data' 'AAABYniclY67CsJAEEVvFINY+CGCgtgGS7GLItiGEI0P1A15CTb6qf5JPFmMkNIZdnfmzJ3LOpK8Z1VVstF9cLnytSB/4by/heeoHXXfaZP1q/VKvWa5kbicoca6ySjQQYVOkBEk1IU0usML5hl3QhqlyrXXDu5rg7qPOmZSUs/560pbZhEOJQ4RdYo+tBs5+7n1rhUGHpOZJtAIKg1wS9gwOtMt//QJ7K9DXTkzuinsaLV1fABCoDHT' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
