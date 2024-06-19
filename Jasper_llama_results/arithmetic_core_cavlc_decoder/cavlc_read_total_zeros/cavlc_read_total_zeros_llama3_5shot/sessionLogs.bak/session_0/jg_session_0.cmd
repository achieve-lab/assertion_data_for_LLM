# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:33:48 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 60201
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41441' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY67CsJAEEVPFINY+CGCNmJnnTaKYBtCfKMm5CWk0U/1T+LNYISUzrCzO2fuXNYBls+6rrHoVyouPp7yF877+1g6dKPpe12yfnVuGLTLrcTVGTPlTkzAkYKzyEQk5KqMeYgXmmeqiTImJWfPTtxnI/VQ6oMmpRl7rNhqFsmhlEOkdyp9aBu59nPzDqhEU/UZM7FIDEbySoxe1Hl/uQT245CbzlzdQuxkyiY+h5kxTQ==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
