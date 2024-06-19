# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:42:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 792678
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43671' '-nowindow' '-style' 'windows' '-data' 'AAABYHiclY67CsJAEEXvKgax8EMEBRG71MEuimAbQnwjJuQlpNFP9U/iyWKElM6wsztn7lzWSHKfdV3LRr+iOPLlkb8w7+/DNepG0/e6ZPPq3NKgXW4lDmesqe6KFeikQhfIBBLqRsZ6wAvmGTUhY6XKddAe7muLeoj6yKS0xp7W2jGLcChxiHin6EO7kbOfW+9AFTSlzzSDRTBphFdi6ZVu9ZdL8/8EHmiB45J7Dj1bbRMf5c0xUQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
